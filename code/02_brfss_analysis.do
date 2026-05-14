********************************************************************************
* 02_brfss_analysis.do
* Flynn, Pesko, and Saenz (2026)
* "The Returns to Regulatory Redundancy: Evidence from Tobacco 21"
*
* PURPOSE:
*   Constructs outcome variables, assigns treatment, merges controls, and runs
*   all BRFSS-based analyses for the adult sample (ages 18-20). Produces
*   Figures 1A, 2A, 3A, 4A, and 5A from the paper and appendix.
*
* INPUTS:
*   data\brfss_t21.dta              -- Cleaned BRFSS panel from 01_brfss_clean.do
*   data\hansen_extend_controls.dta -- Time-varying policy controls (Hansen et al.
*                                      specification)
*   data\our_controls.dta           -- Full set of time-varying controls from
*                                      Section 3.2 (taxes, bans, economic vars)
*   data\nytcovid.dta               -- State-quarter COVID infection and death
*                                      rates from the New York Times
*
* OUTPUTS:
*   regressions\smoker_[spec].dta / ecig_[spec].dta  -- Saved regression results
*                                                        for each robustness spec
*   Figures 1A, 2A, 3A, 4A, 5A                       -- Displayed/exported graphs
*
* STRUCTURE:
*   1. Define global control variable lists
*   2. Construct smoking and vaping outcome variables
*   3. Figure 1A: National descriptive trends (2009-2024)
*   4. Assign treatment groups (never-treated, early-treated, post-2020 treated)
*   5. Figure 2A: Trends by treatment status (2016-2024)
*   6. Assign month-precise T21 treatment indicators by state
*   7. Build stacked DiD dataset (main specification)
*   8. Table 1 / Figure 3A: Main stacked DiD results and event studies
*   9. Figure 4A: Robustness checks (TWFE, Hansen model, wild bootstrap,
*      continuous treatment, no weights, age trends, no controls, T21 grades,
*      COVID controls)
*  10. Figure 5A: Leave-one-out analysis dropping each treated state
*
* NOTES:
*   - Treatment dates are assigned at the state-month level using effective
*     dates from Tobacco21.org (see Table A1 of the paper).
*   - Kansas (state==20) is dropped because it passed its law in 2023, at the
*     edge of the analysis window.
*   - Early-treated states (pre-2020 state laws) are dropped from the main
*     estimation sample; they appear only in the descriptive figures.
*   - Standard errors are clustered at the state-stack level throughout.
********************************************************************************

cd ""

global state_con demo_earnings_st econ_unemploy_st
global tobacco_con cig_tax_total cig_TreatEfW_st cig_TreatEfR_st cig_TreatEfB_st
global ecig_con ecig_taxstandTC_v2_st 
global alc_marij_con alc_beer_tax_st marij_mml_st marij_receffect_st

global our_controls cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total ///
 cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st  ///
 marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

use data\brfss_t21.dta, clear

rename iyear year 
rename iday day
rename imonth month
rename _state state
destring month year, replace

*coordinate variables across years
replace sex = sexvar if missing(sex)
replace race = race2 if missing(race)

drop if year == 2025
drop if state > 57

*drop if missing smoke100 or smokday2
drop if smoke100 == 7 | smoke100 == 9
drop if smokday == 7 | smokday == 9

*smoking participation variable
gen smoker = 0
replace smoker = 1 if inlist(smokday,1,2) & smoke100 == 1
tab smoker

*daily smoking
gen smoke_every_day = 0
replace smoke_every_day = 1 if smokday == 1

*quit variable
gen quit = .
replace quit = 0 if smoke100 == 1 & inlist(smokday,1,2)
replace quit = 1 if smoke100 == 1 & smokday == 3

*current vaping
gen any_user = .
replace any_user = 0 if ecignow == 3
replace any_user = 1 if ecignow == 2
replace any_user = 1 if ecignow == 1

*daily vaping
gen daily_user = .
replace daily_user = 0 if ecignow == 3
replace daily_user = 0 if ecignow == 2
replace daily_user = 1 if ecignow == 1

***********
*Figure 1A*
***********
preserve 
collapse smoker quit smoke_every_day [pweight=_llcpwt], by(year)
twoway (line quit year, lcolor(black) lpattern(solid)) (line smoker year, lcolor(black) lpattern(dash)) ///
	   (line smoke_every year, lcolor(black) lpattern(dot)), xtitle("") xticks(2009(2)2023) xlabels(2009(2)2023) ///
		legend(label(1 "Quit") label(2 "Smoker") label(3 "Daily Smoker")rows(1)) ///
		ytitle("Smoking Activity in the Last 30 Days") ///
		xline(2019.5,lpattern(dot)) ///
		yline(.2 .4 .6, lcolor(gs14)) ///
		yticks(0(.2).6) ylabels(0(.2).6) ///
		graphregion(color(white) lcolor(none)) ///
		plotregion(lcolor(none))
restore

*TREATMENT ASSIGNMENT
*no state laws through 2023
*MT, AZ, WI, NC, SC, AK, MO, WV
gen never_treat = inlist(state, 2, 4, 29, 30, 37, 45, 55, 54)

*state-law following national laws
*AL, CO, FL, GA, ID, IN, IA, KY, LA, MI, MN, MS, NE, NV, NH, NM, ND, OK, PA, RI, SD, TN, UT, WY
gen post_treat = inlist(state, 1, 8, 12, 13, 16, 18, 19, 21, 22, 26, 27, 28, 31, 32, 33, 35, 38, 40, 42, 44, 46, 47, 49, 56)
gen early_treat = inlist(state, 5, 6, 9, 10, 15, 17, 19, 23, 24, 25, 34, 36, 39, 41, 48, 50, 51, 53, 11)

***********
*Figure 2A*
***********
preserve 
keep if year >= 2016
gen treat_time = 1
replace treat_time = 2 if post_treat == 1
replace treat_time = 3 if never_treat == 1
collapse smoker smoke_every quit [pweight=_llcpwt], by(year treat_time)
label define ttime_l 1 "Early Law" 2 "Post-2020 State Law" 3 "No State Law"
label values treat_time ttime_l
twoway (line smoker year if treat_time == 3, lcolor(black) lpattern(dot)) ///
	   (line smoker year if treat_time == 1, lpatter(dash) lcolor(black)) ///
	   (line smoker year if treat_time == 2, lcolor(black) lpattern(solid)), ///
	    yline(.04 .08 .12, lcolor(gs14)) ///
		xline(2019.5,lpatter(dash)) xtitle("") ytitle("% Smokers") ///
		yticks(0(.04).12) ylabels(0(.04).12) ///
		legend(label(1 "Never Treated") label(2 "Early Treated") label(3 "Late Treated") rows(1)) ///
		graphregion(color(white) lcolor(none)) ///
		plotregion(lcolor(none))
restore

drop if year > 2023 | year < 2016

*drop Kansas because they passed a law in 2023
drop if state == 20

gen treat_period = .
replace treat_period = 1 if early_treat == 1
replace treat_period = 2 if post_treat == 1 
replace treat_period = 3 if never_treat == 1

*Assign treatment using tobacco21.org
gen t21 = 0
*AL
replace t21 = 1 if state == 1 & year > 2021
replace t21 = 1 if state == 1 & year == 2021 & month > 8
*CO
replace t21 = 1 if state == 8 & year > 2020
replace t21 = 1 if state == 8 & year == 2020 & month > 7
*FL
replace t21 = 1 if state == 12 & year > 2021
replace t21 = 1 if state == 12 & year == 2021 & month > 10
*GA
replace t21 = 1 if state == 13 & year > 2020
replace t21 = 1 if state == 13 & year == 2020 & month > 8
*ID
replace t21 = 1 if state == 16 & year > 2022
replace t21 = 1 if state == 16 & year == 2022 & month > 7
*IN
replace t21 = 1 if state == 18 & year > 2020
replace t21 = 1 if state == 18 & year == 2020 & month > 7
*IA
replace t21 = 1 if state == 19 & year > 2020
replace t21 = 1 if state == 19 & year == 2020 & month > 7
*KY
replace t21 = 1 if state == 21 & year > 2020
replace t21 = 1 if state == 21 & year == 2020 & month > 4
*LA
replace t21 = 1 if state == 22 & year > 2021
replace t21 = 1 if state == 22 & year == 2021 & month > 8
*MI
replace t21 = 1 if state == 26 & year > 2022
replace t21 = 1 if state == 26 & year == 2022 & month > 8
*MN
replace t21 = 1 if state == 27 & year > 2020
replace t21 = 1 if state == 27 & year == 2020 & month > 6
*MS
replace t21 = 1 if state == 28 & year > 2020
replace t21 = 1 if state == 28 & year == 2020 & month > 7
*NE
replace t21 = 1 if state == 31 & year > 2020
replace t21 = 1 if state == 31 & year == 2020 & month > 9
*NV
replace t21 = 1 if state == 32 & year > 2021
replace t21 = 1 if state == 32 & year == 2021 & month > 6
*NH
replace t21 = 1 if state == 33 & year > 2020
replace t21 = 1 if state == 33 & year == 2020 & month > 8
*NM
replace t21 = 1 if state == 35 & year > 2020
replace t21 = 1 if state == 35 & year == 2020 & month > 9
*ND
replace t21 = 1 if state == 38 & year > 2021
replace t21 = 1 if state == 38 & year == 2021 & month > 8
*OK
replace t21 = 1 if state == 40 & year > 2020
replace t21 = 1 if state == 40 & year == 2020 & month > 6
*PA
replace t21 = 1 if state == 42 & year > 2020
replace t21 = 1 if state == 42 & year == 2020 & month > 7
*RI
replace t21 = 1 if state == 44 & year > 2021
replace t21 = 1 if state == 44 & year == 2021 & month > 7
*SD
replace t21 = 1 if state == 46 & year > 2020
replace t21 = 1 if state == 46 & year == 2020 & month > 3
*TN
replace t21 = 1 if state == 47 & year > 2021
replace t21 = 1 if state == 47 & year == 2021 & month > 1
*UT
replace t21 = 1 if state == 49 & year > 2020
replace t21 = 1 if state == 49 & year == 2020 & month > 7
*WY
replace t21 = 1 if state == 56 & year > 2020
replace t21 = 1 if state == 56 & year == 2020 & month > 3

*ADD OUR CONTROLS HERE
*merge m:1 state year using data\controls\hansen_extend_controls.dta
merge m:1 state year using data\hansen_extend_controls.dta
drop _merge

*merge m:1 state year using data\controls\our_controls.dta
merge m:1 state year using data\our_controls.dta
drop _merge

drop if treat_period == 1

*TWFE specification for robustness figure (Figure 4A)
reg smoker t21 $our_controls ///
    i.age i.state i.month i.year i.sex i.race ///
    [pweight=_llcpwt], cluster(state)
regsave using regressions\smoker_twfe, ci replace

*E-cig TWFE specification for robustness figure (Figure 4A)
reg any_user t21 $our_controls ///
    i.age i.month i.sex i.race i.year i.state ///
	[pweight=_llcpwt], cluster(state)
	regsave using regressions\ecig_twfe, ci replace
	
*age-specific linear time-trends for robustness figure
gen time = ym(year, month)
format time %tm
gen time_linear = time - ym(2016,1)  // makes 0 = Jan 2009

*************************
*Stacked DID Regressions*
*************************

*first, get earliest year-month each state was treated
sort year month
egen year_month = group(year month)
tabstat year_month, by(year)
gen treat_year = .
replace treat_year = year if t21 == 1
gen treat_year_month = .
replace treat_year_month = year_month if t21 == 1
bysort state: egen first_year_month = min(treat_year_month)
bysort state: egen first_year = min(treat_year)
bysort state: egen ever_treat = max(t21)

*get list of months where stacks begin
tab first_year_month

foreach stack in 52 53 55 56 57 58 62 67 68 69 73 80 81{
*create stacks based on treatment months
preserve
drop if ever_treat == 1 & first_year_month != `stack'
tab state if ever_treat == 1
gen stack = `stack'
sum treat_year if ever_treat == 1
local year = r(min)
display `year'
keep if year >= `year' - 4 & year <= `year' + 1
gen event_year = year - `year'
forvalues event = 2(1)4{
gen lead`event' = ever_treat == 1 & event_year == -`event'
}
forvalues event = 0(1)1{
gen lag`event' = ever_treat == 1 & event_year == `event'
}
save data\stack_`stack'.dta, replace
restore
}

clear
foreach stack in 52 53 55 56 57 58 62 67 68 69 73 80 81{
append using data\stack_`stack'.dta
}

gen stack_year_fe = stack*100 + (year-2000)
gen stack_state_fe = stack*100 + state

set matsize 800

********************************************
*MAIN SPECIFICATIONS FOR PANEL A OF TABLE 1*
********************************************

*our model - current smoking
reg smoker t21 $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\smoker_preferred, ci replace

*our model - daily use
reg smoke_every t21 $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\daily_preferred, ci replace

*e-cig user
reg any_user t21 $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\ecig_preferred, ci replace

*daily user
reg daily_user t21 $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\ecig_daily, ci replace

****************************
*EVENT-STUDY SPECIFICATIONS*
****************************
	
*Event-study - current smoking
reg smoker lead* lag* $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
regsave using regressions\smoker_event_stack_ols, ci replace

*Event-study - current vaping
reg any_user lead* lag* $our_controls i.age ///
    i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
regsave using regressions\ecig_event_stack_ols, ci replace

*Event-study - daily smoker
reg smoke_every lead* lag* $our_controls i.age ///
    i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
regsave using regressions\smoke_every_event_stack_ols, ci replace

*Event-study - current vaping
reg daily_user lead* lag* $our_controls i.age ///
    i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
regsave using regressions\daily_ecig_event_stack_ols, ci replace

****************************************
*FIGURE 3A - COMBINED EVENT-STUDY GRAPH*
****************************************
preserve
clear
use regressions\smoker_event_stack_ols.dta
gen spec = 1 
append using regressions\smoke_every_event_stack_ols.dta
replace spec = 2 if missing(spec)
keep if strpos(var, "lead") | strpos(var, "lag")

set obs 12
replace coef = 0 if missing(coef)
replace var = "-1" if missing(var)
bysort spec: gen count = _n
replace spec = count if missing(spec)
drop count
replace var = subinstr(var,"lead","-",.)
replace var = subinstr(var,"lag","",.)

destring var, replace
sort spec var

replace var = var -.1 if spec == 1
replace var = var +.1 if spec == 2

twoway (scatter coef var if spec == 1,ms(circle)mc(black)) ///
	   (rcap ci_lower ci_upper var if spec == 1,lc(black)) ///
	   (scatter coef var if spec == 2,ms(triangle)mc(black)) ///
	   (rcap ci_lower ci_upper var if spec == 2,lc(black)), ///
	   xline(-.5,lp(dash)) ///
	   ylabel(-.15 -.1 -.05 0 .05 .1 .15) ///
       yline(-.15 -.1 -.05 0 .05 .1 .15, lcolor(gs14)) ///
       yline(0, lp(dash) lc(black)) ///
       ytitle("Change in outcome") ///
       xtitle("Event time (annual)") ///
       legend(order(1 "Current use" 3 "Daily use") ///
       rows(1) position(11) ring(0) colgap(2) ///
	   region(lcolor(black) lwidth(medthick))) ///
       plotregion(lcolor(none)) ///
	   graphregion(color(white)) ///
	   xscale(lcolor(black) lwidth(medthick)) ///
	   yscale(lcolor(black) lwidth(medthick))
restore

****************************************
*FIGURE 3B - COMBINED EVENT-STUDY GRAPH*
****************************************
preserve
clear
use regressions\ecig_event_stack_ols.dta
gen spec = 1 
append using regressions\daily_ecig_event_stack_ols.dta
replace spec = 2 if missing(spec)
keep if strpos(var, "lead") | strpos(var, "lag")

set obs 12
replace coef = 0 if missing(coef)
replace var = "-1" if missing(var)
bysort spec: gen count = _n
replace spec = count if missing(spec)
drop count
replace var = subinstr(var,"lead","-",.)
replace var = subinstr(var,"lag","",.)

destring var, replace
sort spec var

replace var = var -.1 if spec == 1
replace var = var +.1 if spec == 2

graph set window fontface "Times New Roman"

twoway (scatter coef var if spec == 1,ms(circle)mc(black)) ///
	   (rcap ci_lower ci_upper var if spec == 1,lc(black)) ///
	   (scatter coef var if spec == 2,ms(triangle)mc(black)) ///
	   (rcap ci_lower ci_upper var if spec == 2,lc(black)), ///
	   xline(-.5,lp(dash)) ///
	   ylabel(-.3 -.2 -.1 0 .1 .2 .3) ///
       yline(-.3 -.2 -.1 0 .1 .2 .3, lcolor(gs14)) ///
       yline(0, lp(dash) lc(black)) ///
       ytitle("Change in outcome") ///
       xtitle("Event time (annual)") ///
       legend(order(1 "Current use" 3 "Daily use") ///
       rows(1) position(11) ring(0) colgap(2) ///
	   region(lcolor(black) lwidth(medthick))) ///
	   plotregion(lcolor(none)) ///
	   graphregion(color(white)) ///
	   xscale(lcolor(black) lwidth(medthick)) ///
	   yscale(lcolor(black) lwidth(medthick))
restore

**************************************
*SPECIFICATIONS FOR ROBUSTNESS FIGURE*
**************************************	
	
*Hansen model on post-2020 smoking participation for Figure 4a
logit smoker t21 $state_con $tobacco_con $ecig_con $alc_marij_con c.time_linear##i.age ///
    i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
margins, dydx(t21) post
	regsave using regressions\smoker_hansen, ci replace

*Hansen e-cig model on post-2020 ecig use for Figure 4a
logit any_user t21 $state_con $tobacco_con $ecig_con $alc_marij_con c.time_linear##i.age ///
    i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
margins, dydx(t21) post
	regsave using regressions\ecig_hansen, ci replace

*Wild Cluster Boostrap - current smoker	
reg smoker t21 $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	boottest t21=0, reps(10001) bootcluster(stack_state_fe)	
	matrix CI = r(CI)
	regsave using regressions\smoker_wild_cb, ci replace
	preserve
	use regressions\smoker_wild_cb, clear
	replace ci_lower = CI[1,1] if var == "t21"
	replace ci_upper = CI[1,2] if var == "t21"
	save regressions\smoker_wild_cb, replace
	restore
	
*Wild Cluster Boostrap - current ecig	
reg any_user t21 $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	boottest t21=0, reps(10001) bootcluster(stack_state_fe)
	matrix CI = r(CI)
	regsave using regressions\ecig_wild_cb, ci replace
	preserve
	use regressions\ecig_wild_cb, clear
	replace ci_lower = CI[1,1] if var == "t21"
	replace ci_upper = CI[1,2] if var == "t21"
	save regressions\ecig_wild_cb, replace
	restore

*Treatment intensity variable - current smoking Figure 4a
reg smoker tob21_cntywt $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\smoker_continuous, ci replace
	
*Treatment intensity variable - current vaping Figure 4a
reg any_user tob21_cntywt $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\ecig_continuous, ci replace
	
*Unweighted model for robustness Figure 4a
reg smoker t21 $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	, cluster(stack_state_fe)
	regsave using regressions\smoker_unweighted, ci replace

*Unweighted e-cig model for robustness Figure 4a
reg any_user t21 $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	, cluster(stack_state_fe)
	regsave using regressions\ecig_unweighted, ci replace

*Add age-specific linear time trends for robustness Figure 4a
reg smoker t21 $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe c.time_linear##i.age ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\smoker_lineartrends, ci replace

*Age-specific linear time trends e-cig model for robustness Figure 4a
reg any_user t21 $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe c.time_linear##i.age ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\ecig_lineartrends, ci replace

*No controls model for robustness Figure 4a
reg smoker t21 ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\smoker_nocontrols, ci replace

*No controls e-cig model for robustness Figure 4a
reg any_user t21 ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\ecig_nocontrols, ci replace

*continuous treatment measure based on grade of state law
gen t21_cont = t21
replace t21_cont = 2 if inlist(state,1,13,16,21,32,33,42,47,49,54) & t21 == 1
replace t21_cont = 3 if inlist(state,18,20,22,44) & t21 == 1
replace t21_cont = 4 if inlist(state,8,27) & t21 == 1

*scale new treatment variable to have same mean as previous one for interpretation
sum t21
scalar t21_mean = r(mean)
sum t21_cont
scalar t21_cont_mean = r(mean)
scalar t21_cont_scalar = t21_mean/t21_cont_mean
replace t21_cont = t21_cont * t21_cont_scalar
sum t21_cont

*Continuous treatment specification - smoker Figure 4a
reg smoker t21_cont $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\smoker_grades, ci replace

*Continuous treatment specification - current vaping Figure 4a
reg any_user t21_cont $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\ecig_grades, ci replace

*Add COVID Controls
gen yq = yq(year, quarter(mdy(month, 1, year)))
format yq %tq

rename state fips
merge m:1 yq fips using data\nytcovid.dta
rename fips state
rename COVIDDeathsPerCap covid_death_rate
replace covid_death_rate = 0 if missing(covid_death_rate)
replace cases_avg_per = 0 if missing(cases_avg_per)	

*Add COVID controls - current smoker Figure 4a
reg smoker t21 $our_controls covid_death_rate cases_avg_per ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\smoker_covid, ci replace

*Add COVID controls - current e-cig Figure 4a
reg any_user t21 $our_controls covid_death_rate cases_avg_per ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
	regsave using regressions\ecig_covid, ci replace

**********************
*ROBUSTNESS FIGURE 4A*
**********************
preserve
clear	
local i = 10
gen dv = ""
gen spec = ""
gen spec_num = .
foreach spec in preferred twfe hansen wild_cb continuous unweighted lineartrends nocontrols grades covid{
append using regressions\smoker_`spec'
replace dv = "Current smoking" if missing(dv)
append using regressions\ecig_`spec'
replace dv = "Current vaping" if missing(dv)
replace spec = "`spec'" if missing(spec)
replace spec_num = `i' if missing(spec_num)
local i = `i' - 1
}
	
keep if var == "t21" | var == "tob21_cntywt" | var == "t21_cont"

replace spec_num = spec_num + .1 if dv == "Current smoking"
replace spec_num = spec_num - .1 if dv == "Current vaping"

label define spec_l 10 "Preferred Specification[1]" 9 "Two-way fixed effects" 8 "Hansen et al. (2023) model" 7 "[1] with alternative SEs" 6 "[1] with T21 intensity" 5 "[1] without survey weights" 4 "[1] with age-specific trends" 3 "[1] with no controls" 2 "[1] with continuous treatment" 1 "[1] with COVID controls"
label values spec_num spec_l

format spec_num %9.1f
drop r2

set scheme s1mono
graph set window fontface "Times New Roman"
graph set eps fontface Timestwoway 

twoway (scatter spec_num coef if dv == "Current smoking", mcolor(black)) ///
	   (rcap ci_upper ci_lower spec_num if dv == "Current smoking", horizontal lcolor(black)) ///
	   (scatter spec_num coef if dv == "Current vaping", mcolor(black) ms(diamond)) ///
	   (rcap ci_upper ci_lower spec_num if dv == "Current vaping", horizontal lcolor(black)), ///
       xline(0,lpattern(solid)lc(black)) ylabel(1 2 3 4 5 6 7 8 9 10,valuelabel angle(horizontal) noticks) ///
	   xticks(-.1(.05).1) xlabels(-.1(.05).1) xtitle("Change in outcome") xscale(alt) /// ///
	   legend(order(1 "Current smoking" 3 "Current vaping")position(6) ring(1) row(1)) ///
	   ytitle("") graphregion(color(white) lstyle(none)) ///
	   plotregion(lcolor(none) fcolor(none)) yscale(noline) /// 
	   xsize(10) ysize(15) scale(0.85)
restore      

************************
*LEAVE-ONE-OUT ANALYSIS*
************************

*cycle through treated states and drop each one, then rerun main specification on current smoking and vaping
foreach st in 1 8 12 13 16 18 19 21 22 26 27 28 31 32 33 35 38 40 42 44 46 47 49 56{
preserve
drop if state == `st'

*drop stack if this was the only treated unit in the stack
bysort stack: egen max_treat = max(t21)
drop if max_treat == 0

*our model
reg smoker t21 $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
regsave using regressions\smoker_loo_`st', ci replace

reg any_user t21 $our_controls ///
    i.age i.month i.sex i.race i.stack_year_fe i.stack_state_fe ///
	[pweight=_llcpwt], cluster(stack_state_fe)
regsave using regressions\ecig_user_loo_`st', ci replace

restore
}	

*Leave-one-out figure (Figure 5a)
local i = 1
clear
gen state = .
gen spec = .
gen model = .

append using regressions\daily_preferred.dta
replace model = 1 if missing(model)

append using regressions\ecig_preferred.dta
replace model = 2 if missing(model)
replace spec = `i' if missing(spec)
local i = `i' + 1

foreach st in 1 8 12 13 16 18 19 21 22 26 27 28 31 32 33 35 38 40 42 44 46 47 49 56{
append using regressions\smoker_loo_`st'
replace model = 1 if missing(model)
append using regressions\ecig_user_loo_`st'
replace model = 2 if missing(model)
replace state = `st' if missing(state)
replace spec = `i' if missing(spec)
local i = `i' + 1
}


keep if var == "t21"

label define state_l 1 "Main" 2 "AL" 3 "CO" 4 "FL" 5 "GA" 6 "ID" 7 "IN" 8 "IA" 9 "KY" 10 "LA" 11 "MI" ///
 12 "MN" 13 "MS" 14 "NE" 15 "NV" 16 "NH" 17 "NM" 18 "ND" 19 "OK" 20 "PA" 21 "RI" 22 "SD" 23 ///
 "TN" 24 "UT" 25 "WV"
label values spec state_l

replace spec = spec - .15 if model == 1
replace spec = spec + .15 if model == 2

twoway (scatter coef spec if model == 1,msymbol(circle) mcolor(gs2) mlabel("")) ///
	(rcap ci_lower ci_upper spec if model == 1, lcolor(gs2) lwidth(thin)) ///
	(scatter coef spec if model == 2,msymbol(diamond) msize(small) mcolor(gs2) mlabel("")) ///
	(rcap ci_lower ci_upper spec if model == 2, lcolor(gs2) lwidth(thin)), ///
    ylabel(-.1 -.05 .00 .05 .1) ///
    yline(-.1 -.05 .00 .05 .1, lcolor(gs14)) ///
	yticks(-.1(.05).1) ylabels(-.1(.05).1) ///
	yline(0,lp(dash)) xticks(1(1)25) xlabels(1(1)25) ///
    xlabel(, valuelabel labsize(small)) ///
	xtitle("Omitted States") ///
    legend(order(1 "Current smoking" 3 "Current vaping")) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
	xsize(20) ysize(6.67)
