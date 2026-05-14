********************************************************************************
* 01_brfss_clean.do
* Flynn, Pesko, and Saenz (2026)
* "The Returns to Regulatory Redundancy: Evidence from Tobacco 21"
*
* PURPOSE:
*   Imports and cleans raw BRFSS survey data (2009-2024) for the adult sample
*   analysis (ages 18-20). Produces the cleaned analysis file brfss_t21.dta.
*
* INPUTS:
*   data\CDBRFS09.XPT, data\CDBRFS10.XPT  -- BRFSS public use files, 2009-2010
*   data\LLCP[year].XPT                   -- BRFSS public use files, 2011-2024
*   (Raw XPT files available from CDC: https://www.cdc.gov/brfss/annual_data)
*
* OUTPUTS:
*   data\brfss_t21.dta   -- Cleaned, appended BRFSS panel (2009-2024),
*                           restricted to adults ages 18-20, with harmonized
*                           smoking and e-cigarette variables
*
* NOTES:
*   - BRFSS file naming conventions changed after 2010 (CDBRFS -> LLCP);
*     the two loops handle each format separately.
*   - The e-cigarette question (ecignow) is missing in some years; it is
*     created as missing where absent so the append does not fail.
*   - Survey weight variable also changed over time (_finalwt -> _llcpwt);
*     both are retained and harmonized at the end.
*   - The e-cigarette response code 4 is recoded to 3 to align response
*     categories consistently across survey years.
********************************************************************************

cd ""

foreach year in 09 10 {
clear
import sasxport data\CDBRFS`year'.XPT

keep _state iday imonth iyear age educa income race sex smokday smoke100 _smoker _finalwt

destring iday imonth iyear, replace
keep if age >= 18 & age <= 20

save data\brfss_20`year'.dta, replace
}

forvalues year = 2011(1)2024 {
clear
import sasxport data\LLCP`year'.XPT

*if ecignow is missing, this creates it and logs it as missing
cap gen ecignow = .

cap rename _age80 age
cap rename _race race
cap rename _race1 race

keep _state iday imonth iyear age educa income race sex smokday smoke100 _smoker _llcpwt ecignow*

destring iday imonth iyear, replace
keep if age >= 18 & age <= 20

save data\brfss_`year'.dta, replace
}


clear 
forvalues year = 2009(1)2024{
append using data\brfss_`year'.dta
}

replace ecignow = ecignow1 if missing(ecignow) & !missing(ecignow1)
replace ecignow = ecignow2 if missing(ecignow) & !missing(ecignow2)
replace ecignow = 3 if ecignow == 4
replace ecignow = . if ecignow == 7 | ecignow == 9

replace _llcpwt = _finalwt if missing(_llcpwt)

tabstat ecignow, by(iyear)

save data\brfss_t21.dta, replace

