*** Set CD ***
cd "C:\Users\saunc\Documents\T21 Replication"

*** Formatting ***
set scheme s2color
graph set window fontface "Times New Roman"
graph set eps fontface Timestwoway 

*** Compile YRBSS Data ***
*** Highschool Part 1 ***
forvalues x=1/1 {
infix str sitecode 1-5 str sitename 6-55 str sitetype 56-105 sitetypenum 106-113 year 114-121 survyear 122-124 weight 125-134 stratum 135-142 PSU 143-150 record 151-158 age 159-161 sex 162-164 grade 165-167 race4 168-170 race7 171-173 stheight 174-181 stweight 182-189 bmi 190-197 bmipct 198-205 qnobese 206-208 qnowt 209-211 str q65 212-212 str q64 213-213 str q63 214-214 sexid 215-222 sexid2 223-230 sexpart 231-238 sexpart2 239-246 transg 247-254 sextrans 255-262 str q8 263-263 str q9 264-264 str q10 265-265 str q11 266-266 str q12 267-267 str q13 268-268 str q14 269-269 str q15 270-270 str q16 271-271 str q17 272-272 str q18 273-273 str q19 274-274 str q20 275-275 str q21 276-276 str q22 277-277 str q23 278-278 str q24 279-279 str q25 280-280 str q26 281-281 str q27 282-282 str q28 283-283 str q29 284-284 str q30 285-285 str q31 286-286 str q32 287-287 str q33 288-288 str q34 289-289 str q35 290-290 str q36 291-291 str q37 292-292 str q38 293-293 str q39 294-294 str q40 295-295 str q41 296-296 str q42 297-297 str q43 298-298 str q44 299-299 str q45 300-300 str q46 301-301 str q47 302-302 str q48 303-303 str q49 304-304 str q50 305-305 str q51 306-306 str q52 307-307 str q53 308-308 str q54 309-309 str q55 310-310 str q56 311-311 str q57 312-312 str q58 313-313 str q59 314-314 str q60 315-315 str q61 316-316 str q62 317-317 str q66 318-318 str q67 319-319 str q68 320-320 str q69 321-321 str q70 322-322 str q71 323-323 str q72 324-324 str q73 325-325 str q74 326-326 str q75 327-327 str q76 328-328 str q77 329-329 str q78 330-330 str q79 331-331 str q80 332-332 str q81 333-333 str q82 334-334 str q83 335-335 str q84 336-336 str q85 337-337 str q86 338-338 str q87 339-339 qn8 340-342 qn9 343-345 qn10 346-348 qn11 349-351 qn12 352-354 qn13 355-357 qn14 358-360 qn15 361-363 qn16 364-366 qn17 367-369 qn18 370-372 qn19 373-375 qn20 376-378 qn21 379-381 qn22 382-384 qn23 385-387 qn24 388-390 qn25 391-393 qn26 394-396 qn27 397-399 qn28 400-402 qn29 403-405 qn30 406-408 qn31 409-411 qn32 412-414 qn33 415-417 qn34 418-420 qn35 421-423 qn36 424-426 qn37 427-429 qn38 430-432 qn39 433-435 qn40 436-438 qn41 439-441 qn42 442-444 qn43 445-447 qn44 448-450 qn45 451-453 qn46 454-456 qn47 457-459 qn48 460-462 qn49 463-465 qn50 466-468 qn51 469-471 qn52 472-474 qn53 475-477 qn54 478-480 qn55 481-483 qn56 484-486 qn57 487-489 qn58 490-492 qn59 493-495 qn60 496-498 qn61 499-501 qn62 502-504 qn66 505-507 qn67 508-510 qn68 511-513 qn69 514-516 qn70 517-519 qn71 520-522 qn72 523-525 qn73 526-528 qn74 529-531 qn75 532-534 qn76 535-537 qn77 538-540 qn78 541-543 qn79 544-546 qn80 547-549 qn81 550-552 qn82 553-555 qn83 556-558 qn84 559-561 qn85 562-564 qn86 565-567 qn87 568-570 qnfrcig 571-573 qndaycig 574-576 qnfrevp 577-579 qndayevp 580-582 qnfrskl 583-585 qndayskl 586-588 qnfrcgr 589-591 qndaycgr 592-594 qntb2 595-597 qntb3 598-600 qntb4 601-603 qntb5 604-606 qniudimp 607-609 qnothhpl 610-612 qnbcnone 613-615 qnfr0 616-618 qnfr1 619-621 qnfr2 622-624 qnveg0 625-627 qnveg1 628-630 qnveg2 631-633 qnveg3 634-636 qnsoda1 637-639 qnsoda2 640-642 qnbk7day 643-645 qnpa0day 646-648 qnpa7day 649-651 qndlype 652-654 qnnodnt 655-657 str qbasicneedsace 658-658 str qclose2people 659-659 str qconsentsexcont 660-660 str qcurrentopioid 661-661 str qemoabuseace 662-662 str qhallucdrug 663-663 str qincarparentace 664-664 str qintviolenceace 665-665 str qlivedwabuseace 666-666 str qlivedwillace 667-667 str qmusclestrength 668-668 str qparentalmonitoring 669-669 str qphyabuseace 670-670 str qphyviolenceace 671-671 str qsexabuseace 672-672 str qsportsdrink 673-673 str qsunburn 674-674 str qtalkadultace 675-675 str qtalkfriendace 676-676 str qtransgender 677-677 str qtreatbadlyace 678-678 str qunfairlyace 679-679 str qunfairlydisc 680-680 str qverbalabuseace 681-681 str qwater 682-682 qnbasicneedsace 683-685 qnclose2people 686-688 qnconsentsexcont 689-691 qncurrentopioid 692-694 qnemoabuseace 695-697 qnhallucdrug 698-700 qnillict 701-703 qnincarparentace 704-706 qnintviolenceace 707-709 qnlivedwabuseace 710-712 qnlivedwillace 713-715 qnmusclestrength 716-718 qnparentalmonitoring 719-721 qnphyabuseace 722-724 qnphyviolenceace 725-727 qnsexabuseace 728-730 qnsportsdrink 731-733 qnspdrk1 734-736 qnspdrk2 737-739 qnsunburn 740-742 qntalkadultace 743-745 qntalkfriendace 746-748 qntransgender 749-751 qntreatbadlyace 752-754 qnunfairlyace 755-757 qnunfairlydisc 758-760 qnverbalabuseace 761-763 qnwater 764-766 qnwater1 767-769 qnwater2 770-772 qnwater3 773-775 using ".\YRBSS\sadc_2023_state_a_d.dat"

save "./Working Files/HS1.dta",replace

clear
}

*** Highschool Part 2 ***
forvalues x=1/1 {
infix str sitecode 1-5 str sitename 6-55 str sitetype 56-105 sitetypenum 106-113 year 114-121 survyear 122-124 weight 125-134 stratum 135-142 PSU 143-150 record 151-158 age 159-161 sex 162-164 grade 165-167 race4 168-170 race7 171-173 stheight 174-181 stweight 182-189 bmi 190-197 bmipct 198-205 qnobese 206-208 qnowt 209-211 str q65 212-212 str q64 213-213 str q63 214-214 sexid 215-222 sexid2 223-230 sexpart 231-238 sexpart2 239-246 transg 247-254 sextrans 255-262 str q8 263-263 str q9 264-264 str q10 265-265 str q11 266-266 str q12 267-267 str q13 268-268 str q14 269-269 str q15 270-270 str q16 271-271 str q17 272-272 str q18 273-273 str q19 274-274 str q20 275-275 str q21 276-276 str q22 277-277 str q23 278-278 str q24 279-279 str q25 280-280 str q26 281-281 str q27 282-282 str q28 283-283 str q29 284-284 str q30 285-285 str q31 286-286 str q32 287-287 str q33 288-288 str q34 289-289 str q35 290-290 str q36 291-291 str q37 292-292 str q38 293-293 str q39 294-294 str q40 295-295 str q41 296-296 str q42 297-297 str q43 298-298 str q44 299-299 str q45 300-300 str q46 301-301 str q47 302-302 str q48 303-303 str q49 304-304 str q50 305-305 str q51 306-306 str q52 307-307 str q53 308-308 str q54 309-309 str q55 310-310 str q56 311-311 str q57 312-312 str q58 313-313 str q59 314-314 str q60 315-315 str q61 316-316 str q62 317-317 str q66 318-318 str q67 319-319 str q68 320-320 str q69 321-321 str q70 322-322 str q71 323-323 str q72 324-324 str q73 325-325 str q74 326-326 str q75 327-327 str q76 328-328 str q77 329-329 str q78 330-330 str q79 331-331 str q80 332-332 str q81 333-333 str q82 334-334 str q83 335-335 str q84 336-336 str q85 337-337 str q86 338-338 str q87 339-339 qn8 340-342 qn9 343-345 qn10 346-348 qn11 349-351 qn12 352-354 qn13 355-357 qn14 358-360 qn15 361-363 qn16 364-366 qn17 367-369 qn18 370-372 qn19 373-375 qn20 376-378 qn21 379-381 qn22 382-384 qn23 385-387 qn24 388-390 qn25 391-393 qn26 394-396 qn27 397-399 qn28 400-402 qn29 403-405 qn30 406-408 qn31 409-411 qn32 412-414 qn33 415-417 qn34 418-420 qn35 421-423 qn36 424-426 qn37 427-429 qn38 430-432 qn39 433-435 qn40 436-438 qn41 439-441 qn42 442-444 qn43 445-447 qn44 448-450 qn45 451-453 qn46 454-456 qn47 457-459 qn48 460-462 qn49 463-465 qn50 466-468 qn51 469-471 qn52 472-474 qn53 475-477 qn54 478-480 qn55 481-483 qn56 484-486 qn57 487-489 qn58 490-492 qn59 493-495 qn60 496-498 qn61 499-501 qn62 502-504 qn66 505-507 qn67 508-510 qn68 511-513 qn69 514-516 qn70 517-519 qn71 520-522 qn72 523-525 qn73 526-528 qn74 529-531 qn75 532-534 qn76 535-537 qn77 538-540 qn78 541-543 qn79 544-546 qn80 547-549 qn81 550-552 qn82 553-555 qn83 556-558 qn84 559-561 qn85 562-564 qn86 565-567 qn87 568-570 qnfrcig 571-573 qndaycig 574-576 qnfrevp 577-579 qndayevp 580-582 qnfrskl 583-585 qndayskl 586-588 qnfrcgr 589-591 qndaycgr 592-594 qntb2 595-597 qntb3 598-600 qntb4 601-603 qntb5 604-606 qniudimp 607-609 qnothhpl 610-612 qnbcnone 613-615 qnfr0 616-618 qnfr1 619-621 qnfr2 622-624 qnveg0 625-627 qnveg1 628-630 qnveg2 631-633 qnveg3 634-636 qnsoda1 637-639 qnsoda2 640-642 qnbk7day 643-645 qnpa0day 646-648 qnpa7day 649-651 qndlype 652-654 qnnodnt 655-657 str qbasicneedsace 658-658 str qclose2people 659-659 str qconsentsexcont 660-660 str qcurrentopioid 661-661 str qemoabuseace 662-662 str qhallucdrug 663-663 str qincarparentace 664-664 str qintviolenceace 665-665 str qlivedwabuseace 666-666 str qlivedwillace 667-667 str qmusclestrength 668-668 str qparentalmonitoring 669-669 str qphyabuseace 670-670 str qphyviolenceace 671-671 str qsexabuseace 672-672 str qsportsdrink 673-673 str qsunburn 674-674 str qtalkadultace 675-675 str qtalkfriendace 676-676 str qtransgender 677-677 str qtreatbadlyace 678-678 str qunfairlyace 679-679 str qunfairlydisc 680-680 str qverbalabuseace 681-681 str qwater 682-682 qnbasicneedsace 683-685 qnclose2people 686-688 qnconsentsexcont 689-691 qncurrentopioid 692-694 qnemoabuseace 695-697 qnhallucdrug 698-700 qnillict 701-703 qnincarparentace 704-706 qnintviolenceace 707-709 qnlivedwabuseace 710-712 qnlivedwillace 713-715 qnmusclestrength 716-718 qnparentalmonitoring 719-721 qnphyabuseace 722-724 qnphyviolenceace 725-727 qnsexabuseace 728-730 qnsportsdrink 731-733 qnspdrk1 734-736 qnspdrk2 737-739 qnsunburn 740-742 qntalkadultace 743-745 qntalkfriendace 746-748 qntransgender 749-751 qntreatbadlyace 752-754 qnunfairlyace 755-757 qnunfairlydisc 758-760 qnverbalabuseace 761-763 qnwater 764-766 qnwater1 767-769 qnwater2 770-772 qnwater3 773-775 using ".\YRBSS\sadc_2023_state_e_h.dat"

save "./Working Files/HS2.dta",replace

clear
}

*** Highschool Part 3 ***
forvalues x=1/1 {
infix str sitecode 1-5 str sitename 6-55 str sitetype 56-105 sitetypenum 106-113 year 114-121 survyear 122-124 weight 125-134 stratum 135-142 PSU 143-150 record 151-158 age 159-161 sex 162-164 grade 165-167 race4 168-170 race7 171-173 stheight 174-181 stweight 182-189 bmi 190-197 bmipct 198-205 qnobese 206-208 qnowt 209-211 str q65 212-212 str q64 213-213 str q63 214-214 sexid 215-222 sexid2 223-230 sexpart 231-238 sexpart2 239-246 transg 247-254 sextrans 255-262 str q8 263-263 str q9 264-264 str q10 265-265 str q11 266-266 str q12 267-267 str q13 268-268 str q14 269-269 str q15 270-270 str q16 271-271 str q17 272-272 str q18 273-273 str q19 274-274 str q20 275-275 str q21 276-276 str q22 277-277 str q23 278-278 str q24 279-279 str q25 280-280 str q26 281-281 str q27 282-282 str q28 283-283 str q29 284-284 str q30 285-285 str q31 286-286 str q32 287-287 str q33 288-288 str q34 289-289 str q35 290-290 str q36 291-291 str q37 292-292 str q38 293-293 str q39 294-294 str q40 295-295 str q41 296-296 str q42 297-297 str q43 298-298 str q44 299-299 str q45 300-300 str q46 301-301 str q47 302-302 str q48 303-303 str q49 304-304 str q50 305-305 str q51 306-306 str q52 307-307 str q53 308-308 str q54 309-309 str q55 310-310 str q56 311-311 str q57 312-312 str q58 313-313 str q59 314-314 str q60 315-315 str q61 316-316 str q62 317-317 str q66 318-318 str q67 319-319 str q68 320-320 str q69 321-321 str q70 322-322 str q71 323-323 str q72 324-324 str q73 325-325 str q74 326-326 str q75 327-327 str q76 328-328 str q77 329-329 str q78 330-330 str q79 331-331 str q80 332-332 str q81 333-333 str q82 334-334 str q83 335-335 str q84 336-336 str q85 337-337 str q86 338-338 str q87 339-339 qn8 340-342 qn9 343-345 qn10 346-348 qn11 349-351 qn12 352-354 qn13 355-357 qn14 358-360 qn15 361-363 qn16 364-366 qn17 367-369 qn18 370-372 qn19 373-375 qn20 376-378 qn21 379-381 qn22 382-384 qn23 385-387 qn24 388-390 qn25 391-393 qn26 394-396 qn27 397-399 qn28 400-402 qn29 403-405 qn30 406-408 qn31 409-411 qn32 412-414 qn33 415-417 qn34 418-420 qn35 421-423 qn36 424-426 qn37 427-429 qn38 430-432 qn39 433-435 qn40 436-438 qn41 439-441 qn42 442-444 qn43 445-447 qn44 448-450 qn45 451-453 qn46 454-456 qn47 457-459 qn48 460-462 qn49 463-465 qn50 466-468 qn51 469-471 qn52 472-474 qn53 475-477 qn54 478-480 qn55 481-483 qn56 484-486 qn57 487-489 qn58 490-492 qn59 493-495 qn60 496-498 qn61 499-501 qn62 502-504 qn66 505-507 qn67 508-510 qn68 511-513 qn69 514-516 qn70 517-519 qn71 520-522 qn72 523-525 qn73 526-528 qn74 529-531 qn75 532-534 qn76 535-537 qn77 538-540 qn78 541-543 qn79 544-546 qn80 547-549 qn81 550-552 qn82 553-555 qn83 556-558 qn84 559-561 qn85 562-564 qn86 565-567 qn87 568-570 qnfrcig 571-573 qndaycig 574-576 qnfrevp 577-579 qndayevp 580-582 qnfrskl 583-585 qndayskl 586-588 qnfrcgr 589-591 qndaycgr 592-594 qntb2 595-597 qntb3 598-600 qntb4 601-603 qntb5 604-606 qniudimp 607-609 qnothhpl 610-612 qnbcnone 613-615 qnfr0 616-618 qnfr1 619-621 qnfr2 622-624 qnveg0 625-627 qnveg1 628-630 qnveg2 631-633 qnveg3 634-636 qnsoda1 637-639 qnsoda2 640-642 qnbk7day 643-645 qnpa0day 646-648 qnpa7day 649-651 qndlype 652-654 qnnodnt 655-657 str qbasicneedsace 658-658 str qclose2people 659-659 str qconsentsexcont 660-660 str qcurrentopioid 661-661 str qemoabuseace 662-662 str qhallucdrug 663-663 str qincarparentace 664-664 str qintviolenceace 665-665 str qlivedwabuseace 666-666 str qlivedwillace 667-667 str qmusclestrength 668-668 str qparentalmonitoring 669-669 str qphyabuseace 670-670 str qphyviolenceace 671-671 str qsexabuseace 672-672 str qsportsdrink 673-673 str qsunburn 674-674 str qtalkadultace 675-675 str qtalkfriendace 676-676 str qtransgender 677-677 str qtreatbadlyace 678-678 str qunfairlyace 679-679 str qunfairlydisc 680-680 str qverbalabuseace 681-681 str qwater 682-682 qnbasicneedsace 683-685 qnclose2people 686-688 qnconsentsexcont 689-691 qncurrentopioid 692-694 qnemoabuseace 695-697 qnhallucdrug 698-700 qnillict 701-703 qnincarparentace 704-706 qnintviolenceace 707-709 qnlivedwabuseace 710-712 qnlivedwillace 713-715 qnmusclestrength 716-718 qnparentalmonitoring 719-721 qnphyabuseace 722-724 qnphyviolenceace 725-727 qnsexabuseace 728-730 qnsportsdrink 731-733 qnspdrk1 734-736 qnspdrk2 737-739 qnsunburn 740-742 qntalkadultace 743-745 qntalkfriendace 746-748 qntransgender 749-751 qntreatbadlyace 752-754 qnunfairlyace 755-757 qnunfairlydisc 758-760 qnverbalabuseace 761-763 qnwater 764-766 qnwater1 767-769 qnwater2 770-772 qnwater3 773-775 using ".\YRBSS\sadc_2023_state_i_l.dat"

save "./Working Files/HS3.dta",replace

clear
}

*** Highschool Part 4 ***
forvalues x=1/1 {
infix str sitecode 1-5 str sitename 6-55 str sitetype 56-105 sitetypenum 106-113 year 114-121 survyear 122-124 weight 125-134 stratum 135-142 PSU 143-150 record 151-158 age 159-161 sex 162-164 grade 165-167 race4 168-170 race7 171-173 stheight 174-181 stweight 182-189 bmi 190-197 bmipct 198-205 qnobese 206-208 qnowt 209-211 str q65 212-212 str q64 213-213 str q63 214-214 sexid 215-222 sexid2 223-230 sexpart 231-238 sexpart2 239-246 transg 247-254 sextrans 255-262 str q8 263-263 str q9 264-264 str q10 265-265 str q11 266-266 str q12 267-267 str q13 268-268 str q14 269-269 str q15 270-270 str q16 271-271 str q17 272-272 str q18 273-273 str q19 274-274 str q20 275-275 str q21 276-276 str q22 277-277 str q23 278-278 str q24 279-279 str q25 280-280 str q26 281-281 str q27 282-282 str q28 283-283 str q29 284-284 str q30 285-285 str q31 286-286 str q32 287-287 str q33 288-288 str q34 289-289 str q35 290-290 str q36 291-291 str q37 292-292 str q38 293-293 str q39 294-294 str q40 295-295 str q41 296-296 str q42 297-297 str q43 298-298 str q44 299-299 str q45 300-300 str q46 301-301 str q47 302-302 str q48 303-303 str q49 304-304 str q50 305-305 str q51 306-306 str q52 307-307 str q53 308-308 str q54 309-309 str q55 310-310 str q56 311-311 str q57 312-312 str q58 313-313 str q59 314-314 str q60 315-315 str q61 316-316 str q62 317-317 str q66 318-318 str q67 319-319 str q68 320-320 str q69 321-321 str q70 322-322 str q71 323-323 str q72 324-324 str q73 325-325 str q74 326-326 str q75 327-327 str q76 328-328 str q77 329-329 str q78 330-330 str q79 331-331 str q80 332-332 str q81 333-333 str q82 334-334 str q83 335-335 str q84 336-336 str q85 337-337 str q86 338-338 str q87 339-339 qn8 340-342 qn9 343-345 qn10 346-348 qn11 349-351 qn12 352-354 qn13 355-357 qn14 358-360 qn15 361-363 qn16 364-366 qn17 367-369 qn18 370-372 qn19 373-375 qn20 376-378 qn21 379-381 qn22 382-384 qn23 385-387 qn24 388-390 qn25 391-393 qn26 394-396 qn27 397-399 qn28 400-402 qn29 403-405 qn30 406-408 qn31 409-411 qn32 412-414 qn33 415-417 qn34 418-420 qn35 421-423 qn36 424-426 qn37 427-429 qn38 430-432 qn39 433-435 qn40 436-438 qn41 439-441 qn42 442-444 qn43 445-447 qn44 448-450 qn45 451-453 qn46 454-456 qn47 457-459 qn48 460-462 qn49 463-465 qn50 466-468 qn51 469-471 qn52 472-474 qn53 475-477 qn54 478-480 qn55 481-483 qn56 484-486 qn57 487-489 qn58 490-492 qn59 493-495 qn60 496-498 qn61 499-501 qn62 502-504 qn66 505-507 qn67 508-510 qn68 511-513 qn69 514-516 qn70 517-519 qn71 520-522 qn72 523-525 qn73 526-528 qn74 529-531 qn75 532-534 qn76 535-537 qn77 538-540 qn78 541-543 qn79 544-546 qn80 547-549 qn81 550-552 qn82 553-555 qn83 556-558 qn84 559-561 qn85 562-564 qn86 565-567 qn87 568-570 qnfrcig 571-573 qndaycig 574-576 qnfrevp 577-579 qndayevp 580-582 qnfrskl 583-585 qndayskl 586-588 qnfrcgr 589-591 qndaycgr 592-594 qntb2 595-597 qntb3 598-600 qntb4 601-603 qntb5 604-606 qniudimp 607-609 qnothhpl 610-612 qnbcnone 613-615 qnfr0 616-618 qnfr1 619-621 qnfr2 622-624 qnveg0 625-627 qnveg1 628-630 qnveg2 631-633 qnveg3 634-636 qnsoda1 637-639 qnsoda2 640-642 qnbk7day 643-645 qnpa0day 646-648 qnpa7day 649-651 qndlype 652-654 qnnodnt 655-657 str qbasicneedsace 658-658 str qclose2people 659-659 str qconsentsexcont 660-660 str qcurrentopioid 661-661 str qemoabuseace 662-662 str qhallucdrug 663-663 str qincarparentace 664-664 str qintviolenceace 665-665 str qlivedwabuseace 666-666 str qlivedwillace 667-667 str qmusclestrength 668-668 str qparentalmonitoring 669-669 str qphyabuseace 670-670 str qphyviolenceace 671-671 str qsexabuseace 672-672 str qsportsdrink 673-673 str qsunburn 674-674 str qtalkadultace 675-675 str qtalkfriendace 676-676 str qtransgender 677-677 str qtreatbadlyace 678-678 str qunfairlyace 679-679 str qunfairlydisc 680-680 str qverbalabuseace 681-681 str qwater 682-682 qnbasicneedsace 683-685 qnclose2people 686-688 qnconsentsexcont 689-691 qncurrentopioid 692-694 qnemoabuseace 695-697 qnhallucdrug 698-700 qnillict 701-703 qnincarparentace 704-706 qnintviolenceace 707-709 qnlivedwabuseace 710-712 qnlivedwillace 713-715 qnmusclestrength 716-718 qnparentalmonitoring 719-721 qnphyabuseace 722-724 qnphyviolenceace 725-727 qnsexabuseace 728-730 qnsportsdrink 731-733 qnspdrk1 734-736 qnspdrk2 737-739 qnsunburn 740-742 qntalkadultace 743-745 qntalkfriendace 746-748 qntransgender 749-751 qntreatbadlyace 752-754 qnunfairlyace 755-757 qnunfairlydisc 758-760 qnverbalabuseace 761-763 qnwater 764-766 qnwater1 767-769 qnwater2 770-772 qnwater3 773-775 using ".\YRBSS\sadc_2023_state_m.dat"

save "./Working Files/HS4.dta",replace

clear
}

*** Highschool Part 5 ***
forvalues x=1/1 {
infix str sitecode 1-5 str sitename 6-55 str sitetype 56-105 sitetypenum 106-113 year 114-121 survyear 122-124 weight 125-134 stratum 135-142 PSU 143-150 record 151-158 age 159-161 sex 162-164 grade 165-167 race4 168-170 race7 171-173 stheight 174-181 stweight 182-189 bmi 190-197 bmipct 198-205 qnobese 206-208 qnowt 209-211 str q65 212-212 str q64 213-213 str q63 214-214 sexid 215-222 sexid2 223-230 sexpart 231-238 sexpart2 239-246 transg 247-254 sextrans 255-262 str q8 263-263 str q9 264-264 str q10 265-265 str q11 266-266 str q12 267-267 str q13 268-268 str q14 269-269 str q15 270-270 str q16 271-271 str q17 272-272 str q18 273-273 str q19 274-274 str q20 275-275 str q21 276-276 str q22 277-277 str q23 278-278 str q24 279-279 str q25 280-280 str q26 281-281 str q27 282-282 str q28 283-283 str q29 284-284 str q30 285-285 str q31 286-286 str q32 287-287 str q33 288-288 str q34 289-289 str q35 290-290 str q36 291-291 str q37 292-292 str q38 293-293 str q39 294-294 str q40 295-295 str q41 296-296 str q42 297-297 str q43 298-298 str q44 299-299 str q45 300-300 str q46 301-301 str q47 302-302 str q48 303-303 str q49 304-304 str q50 305-305 str q51 306-306 str q52 307-307 str q53 308-308 str q54 309-309 str q55 310-310 str q56 311-311 str q57 312-312 str q58 313-313 str q59 314-314 str q60 315-315 str q61 316-316 str q62 317-317 str q66 318-318 str q67 319-319 str q68 320-320 str q69 321-321 str q70 322-322 str q71 323-323 str q72 324-324 str q73 325-325 str q74 326-326 str q75 327-327 str q76 328-328 str q77 329-329 str q78 330-330 str q79 331-331 str q80 332-332 str q81 333-333 str q82 334-334 str q83 335-335 str q84 336-336 str q85 337-337 str q86 338-338 str q87 339-339 qn8 340-342 qn9 343-345 qn10 346-348 qn11 349-351 qn12 352-354 qn13 355-357 qn14 358-360 qn15 361-363 qn16 364-366 qn17 367-369 qn18 370-372 qn19 373-375 qn20 376-378 qn21 379-381 qn22 382-384 qn23 385-387 qn24 388-390 qn25 391-393 qn26 394-396 qn27 397-399 qn28 400-402 qn29 403-405 qn30 406-408 qn31 409-411 qn32 412-414 qn33 415-417 qn34 418-420 qn35 421-423 qn36 424-426 qn37 427-429 qn38 430-432 qn39 433-435 qn40 436-438 qn41 439-441 qn42 442-444 qn43 445-447 qn44 448-450 qn45 451-453 qn46 454-456 qn47 457-459 qn48 460-462 qn49 463-465 qn50 466-468 qn51 469-471 qn52 472-474 qn53 475-477 qn54 478-480 qn55 481-483 qn56 484-486 qn57 487-489 qn58 490-492 qn59 493-495 qn60 496-498 qn61 499-501 qn62 502-504 qn66 505-507 qn67 508-510 qn68 511-513 qn69 514-516 qn70 517-519 qn71 520-522 qn72 523-525 qn73 526-528 qn74 529-531 qn75 532-534 qn76 535-537 qn77 538-540 qn78 541-543 qn79 544-546 qn80 547-549 qn81 550-552 qn82 553-555 qn83 556-558 qn84 559-561 qn85 562-564 qn86 565-567 qn87 568-570 qnfrcig 571-573 qndaycig 574-576 qnfrevp 577-579 qndayevp 580-582 qnfrskl 583-585 qndayskl 586-588 qnfrcgr 589-591 qndaycgr 592-594 qntb2 595-597 qntb3 598-600 qntb4 601-603 qntb5 604-606 qniudimp 607-609 qnothhpl 610-612 qnbcnone 613-615 qnfr0 616-618 qnfr1 619-621 qnfr2 622-624 qnveg0 625-627 qnveg1 628-630 qnveg2 631-633 qnveg3 634-636 qnsoda1 637-639 qnsoda2 640-642 qnbk7day 643-645 qnpa0day 646-648 qnpa7day 649-651 qndlype 652-654 qnnodnt 655-657 str qbasicneedsace 658-658 str qclose2people 659-659 str qconsentsexcont 660-660 str qcurrentopioid 661-661 str qemoabuseace 662-662 str qhallucdrug 663-663 str qincarparentace 664-664 str qintviolenceace 665-665 str qlivedwabuseace 666-666 str qlivedwillace 667-667 str qmusclestrength 668-668 str qparentalmonitoring 669-669 str qphyabuseace 670-670 str qphyviolenceace 671-671 str qsexabuseace 672-672 str qsportsdrink 673-673 str qsunburn 674-674 str qtalkadultace 675-675 str qtalkfriendace 676-676 str qtransgender 677-677 str qtreatbadlyace 678-678 str qunfairlyace 679-679 str qunfairlydisc 680-680 str qverbalabuseace 681-681 str qwater 682-682 qnbasicneedsace 683-685 qnclose2people 686-688 qnconsentsexcont 689-691 qncurrentopioid 692-694 qnemoabuseace 695-697 qnhallucdrug 698-700 qnillict 701-703 qnincarparentace 704-706 qnintviolenceace 707-709 qnlivedwabuseace 710-712 qnlivedwillace 713-715 qnmusclestrength 716-718 qnparentalmonitoring 719-721 qnphyabuseace 722-724 qnphyviolenceace 725-727 qnsexabuseace 728-730 qnsportsdrink 731-733 qnspdrk1 734-736 qnspdrk2 737-739 qnsunburn 740-742 qntalkadultace 743-745 qntalkfriendace 746-748 qntransgender 749-751 qntreatbadlyace 752-754 qnunfairlyace 755-757 qnunfairlydisc 758-760 qnverbalabuseace 761-763 qnwater 764-766 qnwater1 767-769 qnwater2 770-772 qnwater3 773-775 using ".\YRBSS\sadc_2023_state_n_p.dat"

save "./Working Files/HS5.dta",replace

clear
}

*** Highschool Part 6 ***
forvalues x=1/1 {
infix str sitecode 1-5 str sitename 6-55 str sitetype 56-105 sitetypenum 106-113 year 114-121 survyear 122-124 weight 125-134 stratum 135-142 PSU 143-150 record 151-158 age 159-161 sex 162-164 grade 165-167 race4 168-170 race7 171-173 stheight 174-181 stweight 182-189 bmi 190-197 bmipct 198-205 qnobese 206-208 qnowt 209-211 str q65 212-212 str q64 213-213 str q63 214-214 sexid 215-222 sexid2 223-230 sexpart 231-238 sexpart2 239-246 transg 247-254 sextrans 255-262 str q8 263-263 str q9 264-264 str q10 265-265 str q11 266-266 str q12 267-267 str q13 268-268 str q14 269-269 str q15 270-270 str q16 271-271 str q17 272-272 str q18 273-273 str q19 274-274 str q20 275-275 str q21 276-276 str q22 277-277 str q23 278-278 str q24 279-279 str q25 280-280 str q26 281-281 str q27 282-282 str q28 283-283 str q29 284-284 str q30 285-285 str q31 286-286 str q32 287-287 str q33 288-288 str q34 289-289 str q35 290-290 str q36 291-291 str q37 292-292 str q38 293-293 str q39 294-294 str q40 295-295 str q41 296-296 str q42 297-297 str q43 298-298 str q44 299-299 str q45 300-300 str q46 301-301 str q47 302-302 str q48 303-303 str q49 304-304 str q50 305-305 str q51 306-306 str q52 307-307 str q53 308-308 str q54 309-309 str q55 310-310 str q56 311-311 str q57 312-312 str q58 313-313 str q59 314-314 str q60 315-315 str q61 316-316 str q62 317-317 str q66 318-318 str q67 319-319 str q68 320-320 str q69 321-321 str q70 322-322 str q71 323-323 str q72 324-324 str q73 325-325 str q74 326-326 str q75 327-327 str q76 328-328 str q77 329-329 str q78 330-330 str q79 331-331 str q80 332-332 str q81 333-333 str q82 334-334 str q83 335-335 str q84 336-336 str q85 337-337 str q86 338-338 str q87 339-339 qn8 340-342 qn9 343-345 qn10 346-348 qn11 349-351 qn12 352-354 qn13 355-357 qn14 358-360 qn15 361-363 qn16 364-366 qn17 367-369 qn18 370-372 qn19 373-375 qn20 376-378 qn21 379-381 qn22 382-384 qn23 385-387 qn24 388-390 qn25 391-393 qn26 394-396 qn27 397-399 qn28 400-402 qn29 403-405 qn30 406-408 qn31 409-411 qn32 412-414 qn33 415-417 qn34 418-420 qn35 421-423 qn36 424-426 qn37 427-429 qn38 430-432 qn39 433-435 qn40 436-438 qn41 439-441 qn42 442-444 qn43 445-447 qn44 448-450 qn45 451-453 qn46 454-456 qn47 457-459 qn48 460-462 qn49 463-465 qn50 466-468 qn51 469-471 qn52 472-474 qn53 475-477 qn54 478-480 qn55 481-483 qn56 484-486 qn57 487-489 qn58 490-492 qn59 493-495 qn60 496-498 qn61 499-501 qn62 502-504 qn66 505-507 qn67 508-510 qn68 511-513 qn69 514-516 qn70 517-519 qn71 520-522 qn72 523-525 qn73 526-528 qn74 529-531 qn75 532-534 qn76 535-537 qn77 538-540 qn78 541-543 qn79 544-546 qn80 547-549 qn81 550-552 qn82 553-555 qn83 556-558 qn84 559-561 qn85 562-564 qn86 565-567 qn87 568-570 qnfrcig 571-573 qndaycig 574-576 qnfrevp 577-579 qndayevp 580-582 qnfrskl 583-585 qndayskl 586-588 qnfrcgr 589-591 qndaycgr 592-594 qntb2 595-597 qntb3 598-600 qntb4 601-603 qntb5 604-606 qniudimp 607-609 qnothhpl 610-612 qnbcnone 613-615 qnfr0 616-618 qnfr1 619-621 qnfr2 622-624 qnveg0 625-627 qnveg1 628-630 qnveg2 631-633 qnveg3 634-636 qnsoda1 637-639 qnsoda2 640-642 qnbk7day 643-645 qnpa0day 646-648 qnpa7day 649-651 qndlype 652-654 qnnodnt 655-657 str qbasicneedsace 658-658 str qclose2people 659-659 str qconsentsexcont 660-660 str qcurrentopioid 661-661 str qemoabuseace 662-662 str qhallucdrug 663-663 str qincarparentace 664-664 str qintviolenceace 665-665 str qlivedwabuseace 666-666 str qlivedwillace 667-667 str qmusclestrength 668-668 str qparentalmonitoring 669-669 str qphyabuseace 670-670 str qphyviolenceace 671-671 str qsexabuseace 672-672 str qsportsdrink 673-673 str qsunburn 674-674 str qtalkadultace 675-675 str qtalkfriendace 676-676 str qtransgender 677-677 str qtreatbadlyace 678-678 str qunfairlyace 679-679 str qunfairlydisc 680-680 str qverbalabuseace 681-681 str qwater 682-682 qnbasicneedsace 683-685 qnclose2people 686-688 qnconsentsexcont 689-691 qncurrentopioid 692-694 qnemoabuseace 695-697 qnhallucdrug 698-700 qnillict 701-703 qnincarparentace 704-706 qnintviolenceace 707-709 qnlivedwabuseace 710-712 qnlivedwillace 713-715 qnmusclestrength 716-718 qnparentalmonitoring 719-721 qnphyabuseace 722-724 qnphyviolenceace 725-727 qnsexabuseace 728-730 qnsportsdrink 731-733 qnspdrk1 734-736 qnspdrk2 737-739 qnsunburn 740-742 qntalkadultace 743-745 qntalkfriendace 746-748 qntransgender 749-751 qntreatbadlyace 752-754 qnunfairlyace 755-757 qnunfairlydisc 758-760 qnverbalabuseace 761-763 qnwater 764-766 qnwater1 767-769 qnwater2 770-772 qnwater3 773-775 using ".\YRBSS\sadc_2023_state_q_t.dat"

save "./Working Files/HS6.dta",replace

clear
}

*** Highschool Part 7 ***
forvalues x=1/1 {
infix str sitecode 1-5 str sitename 6-55 str sitetype 56-105 sitetypenum 106-113 year 114-121 survyear 122-124 weight 125-134 stratum 135-142 PSU 143-150 record 151-158 age 159-161 sex 162-164 grade 165-167 race4 168-170 race7 171-173 stheight 174-181 stweight 182-189 bmi 190-197 bmipct 198-205 qnobese 206-208 qnowt 209-211 str q65 212-212 str q64 213-213 str q63 214-214 sexid 215-222 sexid2 223-230 sexpart 231-238 sexpart2 239-246 transg 247-254 sextrans 255-262 str q8 263-263 str q9 264-264 str q10 265-265 str q11 266-266 str q12 267-267 str q13 268-268 str q14 269-269 str q15 270-270 str q16 271-271 str q17 272-272 str q18 273-273 str q19 274-274 str q20 275-275 str q21 276-276 str q22 277-277 str q23 278-278 str q24 279-279 str q25 280-280 str q26 281-281 str q27 282-282 str q28 283-283 str q29 284-284 str q30 285-285 str q31 286-286 str q32 287-287 str q33 288-288 str q34 289-289 str q35 290-290 str q36 291-291 str q37 292-292 str q38 293-293 str q39 294-294 str q40 295-295 str q41 296-296 str q42 297-297 str q43 298-298 str q44 299-299 str q45 300-300 str q46 301-301 str q47 302-302 str q48 303-303 str q49 304-304 str q50 305-305 str q51 306-306 str q52 307-307 str q53 308-308 str q54 309-309 str q55 310-310 str q56 311-311 str q57 312-312 str q58 313-313 str q59 314-314 str q60 315-315 str q61 316-316 str q62 317-317 str q66 318-318 str q67 319-319 str q68 320-320 str q69 321-321 str q70 322-322 str q71 323-323 str q72 324-324 str q73 325-325 str q74 326-326 str q75 327-327 str q76 328-328 str q77 329-329 str q78 330-330 str q79 331-331 str q80 332-332 str q81 333-333 str q82 334-334 str q83 335-335 str q84 336-336 str q85 337-337 str q86 338-338 str q87 339-339 qn8 340-342 qn9 343-345 qn10 346-348 qn11 349-351 qn12 352-354 qn13 355-357 qn14 358-360 qn15 361-363 qn16 364-366 qn17 367-369 qn18 370-372 qn19 373-375 qn20 376-378 qn21 379-381 qn22 382-384 qn23 385-387 qn24 388-390 qn25 391-393 qn26 394-396 qn27 397-399 qn28 400-402 qn29 403-405 qn30 406-408 qn31 409-411 qn32 412-414 qn33 415-417 qn34 418-420 qn35 421-423 qn36 424-426 qn37 427-429 qn38 430-432 qn39 433-435 qn40 436-438 qn41 439-441 qn42 442-444 qn43 445-447 qn44 448-450 qn45 451-453 qn46 454-456 qn47 457-459 qn48 460-462 qn49 463-465 qn50 466-468 qn51 469-471 qn52 472-474 qn53 475-477 qn54 478-480 qn55 481-483 qn56 484-486 qn57 487-489 qn58 490-492 qn59 493-495 qn60 496-498 qn61 499-501 qn62 502-504 qn66 505-507 qn67 508-510 qn68 511-513 qn69 514-516 qn70 517-519 qn71 520-522 qn72 523-525 qn73 526-528 qn74 529-531 qn75 532-534 qn76 535-537 qn77 538-540 qn78 541-543 qn79 544-546 qn80 547-549 qn81 550-552 qn82 553-555 qn83 556-558 qn84 559-561 qn85 562-564 qn86 565-567 qn87 568-570 qnfrcig 571-573 qndaycig 574-576 qnfrevp 577-579 qndayevp 580-582 qnfrskl 583-585 qndayskl 586-588 qnfrcgr 589-591 qndaycgr 592-594 qntb2 595-597 qntb3 598-600 qntb4 601-603 qntb5 604-606 qniudimp 607-609 qnothhpl 610-612 qnbcnone 613-615 qnfr0 616-618 qnfr1 619-621 qnfr2 622-624 qnveg0 625-627 qnveg1 628-630 qnveg2 631-633 qnveg3 634-636 qnsoda1 637-639 qnsoda2 640-642 qnbk7day 643-645 qnpa0day 646-648 qnpa7day 649-651 qndlype 652-654 qnnodnt 655-657 str qbasicneedsace 658-658 str qclose2people 659-659 str qconsentsexcont 660-660 str qcurrentopioid 661-661 str qemoabuseace 662-662 str qhallucdrug 663-663 str qincarparentace 664-664 str qintviolenceace 665-665 str qlivedwabuseace 666-666 str qlivedwillace 667-667 str qmusclestrength 668-668 str qparentalmonitoring 669-669 str qphyabuseace 670-670 str qphyviolenceace 671-671 str qsexabuseace 672-672 str qsportsdrink 673-673 str qsunburn 674-674 str qtalkadultace 675-675 str qtalkfriendace 676-676 str qtransgender 677-677 str qtreatbadlyace 678-678 str qunfairlyace 679-679 str qunfairlydisc 680-680 str qverbalabuseace 681-681 str qwater 682-682 qnbasicneedsace 683-685 qnclose2people 686-688 qnconsentsexcont 689-691 qncurrentopioid 692-694 qnemoabuseace 695-697 qnhallucdrug 698-700 qnillict 701-703 qnincarparentace 704-706 qnintviolenceace 707-709 qnlivedwabuseace 710-712 qnlivedwillace 713-715 qnmusclestrength 716-718 qnparentalmonitoring 719-721 qnphyabuseace 722-724 qnphyviolenceace 725-727 qnsexabuseace 728-730 qnsportsdrink 731-733 qnspdrk1 734-736 qnspdrk2 737-739 qnsunburn 740-742 qntalkadultace 743-745 qntalkfriendace 746-748 qntransgender 749-751 qntreatbadlyace 752-754 qnunfairlyace 755-757 qnunfairlydisc 758-760 qnverbalabuseace 761-763 qnwater 764-766 qnwater1 767-769 qnwater2 770-772 qnwater3 773-775 using ".\YRBSS\sadc_2023_state_u_z.dat"

save "./Working Files/HS7.dta",replace

clear
}

*** Combine Files ***
use "./Working Files/HS1"
append using "./Working Files/HS2"
append using "./Working Files/HS3"
append using "./Working Files/HS4"
append using "./Working Files/HS5"
append using "./Working Files/HS6"
append using "./Working Files/HS7"

save "./Working Files/HS_COMB.dta",replace

*** High School Analysis ***
use "./Working Files/HS_COMB.dta"

*** Clean YRBSS HS File ***
forvalues x=1/1 {

*** T21 laws ***
*** https://tobacco21.org/state-grades/ ***
*** No state T21 law: AK, AZ, MT, MO, NC, SC, WI ***
replace sitecode="NY" if sitecode=="NYA"
replace sitecode="AZ" if sitecode=="AZB"
gen state_T21=.

replace state_T21=0 if sitecode=="AL"
replace state_T21=1 if sitecode=="AL" & year>=2021

replace state_T21=0 if sitecode=="AR"
replace state_T21=1 if sitecode=="AR" & year>=2021

replace state_T21=0 if sitecode=="CA"
replace state_T21=1 if sitecode=="CA" & year>=2017

replace state_T21=0 if sitecode=="CO"
replace state_T21=1 if sitecode=="CO" & year>=2021

replace state_T21=0 if sitecode=="CT"
replace state_T21=1 if sitecode=="CT" & year>=2021

replace state_T21=0 if sitecode=="DC"
replace state_T21=1 if sitecode=="DC" & year>=2017

replace state_T21=0 if sitecode=="DE"
replace state_T21=1 if sitecode=="DE" & year>=2021

replace state_T21=0 if sitecode=="FL"
replace state_T21=1 if sitecode=="FL" & year>=2021

replace state_T21=0 if sitecode=="GA"
replace state_T21=1 if sitecode=="GA" & year>=2021

replace state_T21=0 if sitecode=="HI"
replace state_T21=1 if sitecode=="HI" & year>=2017

replace state_T21=0 if sitecode=="ID"
replace state_T21=1 if sitecode=="ID" & year>=2023

replace state_T21=0 if sitecode=="IL"
replace state_T21=1 if sitecode=="IL" & year>=2021

replace state_T21=0 if sitecode=="IN"
replace state_T21=1 if sitecode=="IN" & year>=2021

replace state_T21=0 if sitecode=="IA"
replace state_T21=1 if sitecode=="IA" & year>=2021

replace state_T21=0 if sitecode=="KS"
replace state_T21=1 if sitecode=="KS" & year>=2023

replace state_T21=0 if sitecode=="KY"
replace state_T21=1 if sitecode=="KY" & year>=2021

replace state_T21=0 if sitecode=="LA"
replace state_T21=1 if sitecode=="LA" & year>=2021

replace state_T21=0 if sitecode=="ME"
replace state_T21=1 if sitecode=="ME" & year>=2019

replace state_T21=0 if sitecode=="MD"
replace state_T21=1 if sitecode=="MD" & year>=2021

replace state_T21=0 if sitecode=="MA"
replace state_T21=1 if sitecode=="MA" & year>=2019

replace state_T21=0 if sitecode=="MI"
replace state_T21=1 if sitecode=="MI" & year>=2023

replace state_T21=0 if sitecode=="MN"
replace state_T21=1 if sitecode=="MN" & year>=2021

replace state_T21=0 if sitecode=="MS"
replace state_T21=1 if sitecode=="MS" & year>=2021

replace state_T21=0 if sitecode=="NE"
replace state_T21=1 if sitecode=="NE" & year>=2021

replace state_T21=0 if sitecode=="NV"
replace state_T21=1 if sitecode=="NV" & year>=2021

replace state_T21=0 if sitecode=="NH"
replace state_T21=1 if sitecode=="NH" & year>=2021

replace state_T21=0 if sitecode=="NJ"
replace state_T21=1 if sitecode=="NJ" & year>=2019

replace state_T21=0 if sitecode=="NM"
replace state_T21=1 if sitecode=="NM" & year>=2021

replace state_T21=0 if sitecode=="NY"
replace state_T21=1 if sitecode=="NY" & year>=2021

replace state_T21=0 if sitecode=="ND"
replace state_T21=1 if sitecode=="ND" & year>=2021

replace state_T21=0 if sitecode=="OH"
replace state_T21=1 if sitecode=="OH" & year>=2021

replace state_T21=0 if sitecode=="OK"
replace state_T21=1 if sitecode=="OK" & year>=2021

replace state_T21=0 if sitecode=="OR"
replace state_T21=1 if sitecode=="OR" & year>=2019

replace state_T21=0 if sitecode=="PA"
replace state_T21=1 if sitecode=="PA" & year>=2021

replace state_T21=0 if sitecode=="RI"
replace state_T21=1 if sitecode=="RI" & year>=2021

replace state_T21=0 if sitecode=="SD"
replace state_T21=1 if sitecode=="SD" & year>=2021

replace state_T21=0 if sitecode=="TN"
replace state_T21=1 if sitecode=="TN" & year>=2021

replace state_T21=0 if sitecode=="TX"
replace state_T21=1 if sitecode=="TX" & year>=2021

replace state_T21=0 if sitecode=="UT"
replace state_T21=1 if sitecode=="UT" & year>=2021

replace state_T21=0 if sitecode=="VT"
replace state_T21=1 if sitecode=="VT" & year>=2021

replace state_T21=0 if sitecode=="VA"
replace state_T21=1 if sitecode=="VA" & year>=2021

replace state_T21=0 if sitecode=="WA"
replace state_T21=1 if sitecode=="WA" & year>=2019

replace state_T21=0 if sitecode=="WV"
replace state_T21=1 if sitecode=="WV" & year>=2025

replace state_T21=0 if sitecode=="WY"
replace state_T21=1 if sitecode=="WY" & year>=2021

*** E-cigarette Use ***
gen ENDS_curr=.

*** Never vaped ***
replace ENDS_curr=0 if q35=="2"

*** Ever vaped but vape 0 days currently ***
replace ENDS_curr=0 if q35=="1" & inlist(q36,"1")

*** Ever vaped and vape more than 0 days currently ***
replace ENDS_curr=1 if q35=="1" & inlist(q36,"2","3","4","5","6","7")

*** Daily vapers are current vapers who vape every day ***
gen ENDS_daily=.

*** Never vaped ***
replace ENDS_daily=0 if q35=="2"

*** Ever vaped but vape less than every day currently ***
replace ENDS_daily=0 if q35=="1" & inlist(q36,"1","2","3","4","5","6")

*** Ever vaped and vape every day currently ***
replace ENDS_daily=1 if q35=="1" & inlist(q36,"7")

*** Frequent vapers (20 days or more) ***
gen ENDS_freq=.

*** Never vaped ***
replace ENDS_freq=0 if q35=="2"

*** Ever vaped but vape less than 20 days currently ***
replace ENDS_freq=0 if q35=="1" & inlist(q36,"1","2","3","4","5")

*** Ever vaped and vape 20 days or more currently ***
replace ENDS_freq=1 if q35=="1" & inlist(q36,"6","7")

*** Cigarette Use ***
gen CIG_curr=.

*** Never smoked ***
replace CIG_curr=0 if q31=="2"

*** Ever smoked but smoke 0 days currently ***
replace CIG_curr=0 if q31=="1" & inlist(q33,"1")

*** Ever smoked and smoke more than 0 days currently ***
replace CIG_curr=1 if q31=="1" & inlist(q33,"2","3","4","5","6","7")

*** Daily smokers are current smokers who smoke every day ***
gen CIG_daily=.

*** Never smoked ***
replace CIG_daily=0 if q31=="2"

*** Ever smoked but smoke less than every day currently ***
replace CIG_daily=0 if q31=="1" &  inlist(q33,"1","2","3","4","5","6")

*** Ever smoked and smoke every day currently ***
replace CIG_daily=1 if q31=="1" & inlist(q33,"7")

*** Frequent smokers are current smokers who smoke 20 days or more ***
gen CIG_freq=.

*** Never smoked ***
replace CIG_freq=0 if q31=="2"

*** Ever smoked but smoke less than every day currently ***
replace CIG_freq=0 if q31=="1" &  inlist(q33,"1","2","3","4","5")

*** Ever smoked and smoke every day currently ***
replace CIG_freq=1 if q31=="1" & inlist(q33,"6","7")

*** Cigar Use ***
gen CIGAR_curr=.

*** Smoke 0 days currently ***
replace CIGAR_curr=0 if inlist(q39,"1")

*** Smoke more than 0 days currently ***
replace CIGAR_curr=1 if inlist(q39,"2","3","4","5","6","7")

*** Daily smokers are current smokers who smoke every day ***
gen CIGAR_daily=.

*** Smoke less than every day currently ***
replace CIGAR_daily=0 if inlist(q39,"1","2","3","4","5","6")

*** Smoke every day currently ***
replace CIGAR_daily=1 if inlist(q39,"7")

*** Frequent smokers are current smokers who smoke 20 days or more ***
gen CIGAR_freq=.

*** Ever smoked but smoke less than every day currently ***
replace CIGAR_freq=0 if inlist(q39,"1","2","3","4","5")

*** Ever smoked and smoke every day currently ***
replace CIGAR_freq=1 if inlist(q39,"6","7")

*** Oral Use ***
gen ORAL_curr=.

*** Smoke 0 days currently ***
replace ORAL_curr=0 if inlist(q38,"1")

*** Smoke more than 0 days currently ***
replace ORAL_curr=1 if inlist(q38,"2","3","4","5","6","7")

*** Daily smokers are current smokers who smoke every day ***
gen ORAL_daily=.

*** Smoke less than every day currently ***
replace ORAL_daily=0 if inlist(q38,"1","2","3","4","5","6")

*** Smoke every day currently ***
replace ORAL_daily=1 if inlist(q38,"7")

*** Frequent smokers are current smokers who smoke 20 days or more ***
gen ORAL_freq=.

*** Ever smoked but smoke less than every day currently ***
replace ORAL_freq=0 if inlist(q38,"1","2","3","4","5")

*** Ever smoked and smoke every day currently ***
replace ORAL_freq=1 if inlist(q38,"6","7")

*** Save ***
save "./Working Files/HS_COMB.dta", replace

clear
}

*** Vaping Use Analysis ***
forvalues x=1/1 {
use "./Working Files/HS_COMB.dta"
collapse (mean) ENDS_curr [pweight=weight], by(sitecode year state_T21)

*** Drop pre-2017 ***
drop if year<2017

*** Drop if early-treated with state T21 law ***
gen flag=1 if inlist(year,2017,2019) & state_T21==1
bysort sitecode: egen max_flag=max(flag)
drop if max_flag==1
drop flag max_flag
drop if inlist(sitecode,"NY","NJ","OH","CT","MD","TX","VT","DE") | inlist(sitecode,"IL","VA","MA","ME","OR","DC","CA","HI")

*** Drop missing observations ***
drop if ENDS_curr==.

*** Make strongly balanced ***
encode sitecode,gen(sitecode_n)
tsset sitecode_n year
tsfill,full
drop if mod(year,2)==0

*** Create stacks ***
*** 2021 stack requires 2017,2019,2021 non-missing outcomes for never-treated and 2021-treated units. 2023 stack requires 2019, 2021, 2023 non-missing outcomes for never-treated and 2023-treated units. ***
gen non_miss=1 if ENDS_curr!=.
gen non_miss_2017=1 if non_miss==1 & year==2017
gen non_miss_2019=1 if non_miss==1 & year==2019
gen non_miss_2021=1 if non_miss==1 & year==2021
gen non_miss_2023=1 if non_miss==1 & year==2023
bysort sitecode: fillmissing non_miss_2017 non_miss_2019 non_miss_2021 non_miss_2023,with(max)
bysort sitecode: egen max_non_miss=total(non_miss) if inrange(year,2017,2021) & non_miss_2017==1 & non_miss_2019==1 & non_miss_2021==1
rename max_non_miss stack_2021
bysort sitecode: egen max_non_miss=total(non_miss) if inrange(year,2019,2023) & non_miss_2019==1 & non_miss_2021==1 & non_miss_2023==1
rename max_non_miss stack_2023
drop non_miss* 

*** Make balanced ***
keep if stack_2021==3 | stack_2023==3
expand 2 if stack_2021==3 & stack_2023==3
gen sum_stack=stack_2021+stack_2023
replace sum_stack=3 if sum_stack==.
bysort sitecode year: gen tag=_n
replace tag=2 if stack_2023==3 & sum_stack==3
gen stack=.
replace stack=2021 if year==2017
replace stack=2023 if year==2023
replace stack=2021 if tag==1
replace stack=2023 if tag==2

*** Prepare stacks ***
drop tag stack_2021 stack_2023 sum_stack
duplicates drop sitecode year stack,force

*** Year of T21 ***
bysort sitecode (year): gen year_T21=year+2 if state_T21==0 & state_T21[_n+1]==1
bysort sitecode (year): replace year_T21=1990 if state_T21==1 & year==2017
bysort sitecode: fillmissing year_T21,with(max)

gen late=1 if inrange(year_T21,2021,2023)
gen never=1 if year_T21==.

keep if (stack==2021 & inlist(year_T21,2021,.)) | (stack==2023 & inlist(year_T21,2023,.))

*** Event Study Leads/Lags ***
gen tau_m2=0 
replace tau_m2=1 if late==1 & (year-year_T21)==-4

gen tau_m1=0 
replace tau_m1=1 if late==1 & (year-year_T21)==-2

gen tau_p0=0 
replace tau_p0=1 if late==1 & (year-year_T21)==0

*** Merge covariates ***
statastates, a(sitecode) nogen
rename state_fips state
gen quarter=1
merge m:1 year state quarter using "./Controls/T21cntyst9024",keep(3) gen(cov_merge)

*** Save as vaping_analysis ***
save "./Working Files/vaping_analysis",replace
}

forvalues x=1/1 {
use "./Working Files/HS_COMB.dta"
expand 2
bysort record: gen stack=2021+_n*2-2
merge m:1 sitecode year stack using "./Working Files/vaping_analysis",keep(3)

*** E-cigarette Use Event Study ***
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

reghdfe ENDS_curr c.tau_m2 c.tau_p0 c.tau_m1 `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
est store est1

reghdfe ENDS_freq c.tau_m2 c.tau_p0 c.tau_m1 `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
est store est2

reghdfe ENDS_daily c.tau_m2 c.tau_p0 c.tau_m1 `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
est store est3

coefplot (est1,msymbol(circle)) (est2,msymbol(triangle)) (est3,msymbol(diamond) msize(small)) ,vert keep(tau_m2 tau_p0) order(tau_m2 "." tau_p0) omitted ytitle("Change in outcome") xtitle("Event time (biennial)") xlabel(1 "-2" 2 "-1" 3 "0") graphregion(color(white)) yline(0,lpattern(dash) lcolor(gs2)) ylabel(-0.15(0.05)0.15,gmin gmax) mcolor(gs2) lcolor(gs2) ciopts(color(gs2) recast(rcap)) xline(2.5,lpattern(dash) lcolor(gs2)) addplot(scatteri 0 2 0 2,mcolor(gs2)) legend(order(2 4 6) label(2 "Current use") label(4 "Frequent use") label(6 "Daily use") pos(11) ring(0) rows(1))
graph export "./Figures/Fig1.pdf",as(pdf) replace

*** Reduced form ***
gen post=0
replace post=1 if year>=year_T21 
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

reghdfe ENDS_curr c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

reghdfe ENDS_freq c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

reghdfe ENDS_daily c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

tabstat ENDS_curr ENDS_freq ENDS_daily if late==1 & year<year_T21 [aw=weight]

*** Robustness ***
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

*** TWFE ***
gen keep_twfe=0
replace keep_twfe=1 if (stack==2021 & inrange(year,2017,2021)) | (stack==2023 & year==2023)
reghdfe ENDS_curr c.post `covars1' `covars2' if keep_twfe==1 [pw=weight],a(i.sitecode_n i.year) vce(cluster sitecode_n#stack)

*** Hansen model ***
local covars1 i.race4 i.sex i.grade
local covars2 econ_unemploy_st demo_income_st cig_tax_total ecig_taxstandTC_v2_st alc_beer_tax_st marij_mml_st marij_receffect_st
logit ENDS_curr i.post `covars1' `covars2' i.year#i.stack i.sitecode_n i.year c.year#i.age#i.stack [pw=weight], vce(cluster sitecode_n)

margins,dydx(post)

*** Wild bootstrap ***
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore
gen statestack=real(string(sitecode_n,"%02.0f")+string(stack,"%04.0f"))

reghdfe ENDS_curr c.post `covars1' `covars2' i.year#i.stack [pw=weight],a(i.statestack) vce(cluster statestack)
boottest post=0, reps(10001) bootcluster(statestack)

*** Continuous T21 treatment ***
reghdfe ENDS_curr c.tob21_cntywt `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

*** without survey weights ***
reghdfe ENDS_curr c.post `covars1' `covars2',a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

*** with age-specific trends ***
reghdfe ENDS_curr c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack c.year#i.age) vce(cluster sitecode_n#stack)

*** with no controls ***
reghdfe ENDS_curr c.post [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

*** add covid death controls ***
statastates,a(sitecode) nogen
rename state_fips fips
gen yq=yq(year,quarter)
format yq %tq
merge m:1 fips yq using "./Controls/nytcovid.dta",keepusing(COVIDDeathsPerCap cases_avg_per_100k) nogen keep(1 3)
replace COVIDDeathsPerCap=0 if COVIDDeathsPerCap==.
replace cases_avg_per_100k=0 if cases_avg_per_100k==.

local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

reghdfe ENDS_curr c.post `covars1' `covars2' COVIDDeathsPerCap cases_avg_per_100k [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

*** continuous grade treatment ***
gen post_cont=post
replace post_cont=5 if post==1 & inlist(sitecode,"CO","CT","MA","MN","NY")
replace post_cont=4 if post==1 & inlist(sitecode,"CA", "DE", "IN", "KS", "LA", "RI", "VA")
replace post_cont=3 if post==1 & (inlist(sitecode, "AL", "GA", "HI", "ID", "IL", "KY", "ME", "MD") | inlist(sitecode,"NV", "NH", "NJ", "PA", "TN", "UT", "VT", "WA", "WV"))
replace post_cont=1 if post==1 & (inlist(sitecode,"AR", "FL", "IA", "MI", "MS", "NE", "NM") | inlist(sitecode,"ND", "OH", "OK", "OR", "SD", "TX", "WY"))
replace post_cont=post_cont*0.32

local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

reghdfe ENDS_curr c.post_cont `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

*** leave one out ***
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

levelsof sitecode if year_T21!=.,local(states)
foreach m of local states {
qui reghdfe ENDS_curr c.post `covars1' `covars2' if sitecode!="`m'" [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
di "beta" e(b)[1,1] " SE: (" sqrt(e(V)[1,1]) ") " " `m'"
}


clear
}

*** Smoking Use Analysis ***
forvalues x=1/1 {
use "./Working Files/HS_COMB.dta"
collapse (mean) CIG_curr [pweight=weight], by(sitecode year state_T21)

*** Drop pre-2017 ***
drop if year<2017

*** Drop if early-treated with state T21 law ***
gen flag=1 if inlist(year,2017,2019) & state_T21==1
bysort sitecode: egen max_flag=max(flag)
drop if max_flag==1
drop flag max_flag
drop if inlist(sitecode,"NY","NJ","OH","CT","MD","TX","VT","DE") | inlist(sitecode,"IL","VA","MA","ME","OR","DC","CA","HI")

*** Drop missing observations ***
drop if CIG_curr==.

*** Make strongly balanced ***
encode sitecode,gen(sitecode_n)
tsset sitecode_n year
tsfill,full
drop if mod(year,2)==0

*** Create stacks ***
*** 2021 stack requires 2017,2019,2021 non-missing outcomes for never-treated and 2021-treated units. 2023 stack requires 2019, 2021, 2023 non-missing outcomes for never-treated and 2023-treated units. ***
gen non_miss=1 if CIG_curr!=.
gen non_miss_2017=1 if non_miss==1 & year==2017
gen non_miss_2019=1 if non_miss==1 & year==2019
gen non_miss_2021=1 if non_miss==1 & year==2021
gen non_miss_2023=1 if non_miss==1 & year==2023
bysort sitecode: fillmissing non_miss_2017 non_miss_2019 non_miss_2021 non_miss_2023,with(max)
bysort sitecode: egen max_non_miss=total(non_miss) if inrange(year,2017,2021) & non_miss_2017==1 & non_miss_2019==1 & non_miss_2021==1
rename max_non_miss stack_2021
bysort sitecode: egen max_non_miss=total(non_miss) if inrange(year,2019,2023) & non_miss_2019==1 & non_miss_2021==1 & non_miss_2023==1
rename max_non_miss stack_2023
drop non_miss* 

*** Make balanced ***
keep if stack_2021==3 | stack_2023==3
expand 2 if stack_2021==3 & stack_2023==3
gen sum_stack=stack_2021+stack_2023
replace sum_stack=3 if sum_stack==.
bysort sitecode year: gen tag=_n
replace tag=2 if stack_2023==3 & sum_stack==3
gen stack=.
replace stack=2021 if year==2017
replace stack=2023 if year==2023
replace stack=2021 if tag==1
replace stack=2023 if tag==2

*** Prepare stacks ***
drop tag stack_2021 stack_2023 sum_stack
duplicates drop sitecode year stack,force

*** Year of T21 ***
bysort sitecode (year): gen year_T21=year+2 if state_T21==0 & state_T21[_n+1]==1
bysort sitecode (year): replace year_T21=1990 if state_T21==1 & year==2017
bysort sitecode: fillmissing year_T21,with(max)

gen late=1 if inrange(year_T21,2021,2023)
gen never=1 if year_T21==.

keep if (stack==2021 & inlist(year_T21,2021,.)) | (stack==2023 & inlist(year_T21,2023,.))

*** Event Study Leads/Lags ***
gen tau_m2=0 
replace tau_m2=1 if late==1 & (year-year_T21)==-4

gen tau_m1=0 
replace tau_m1=1 if late==1 & (year-year_T21)==-2

gen tau_p0=0 
replace tau_p0=1 if late==1 & (year-year_T21)==0

*** Merge covariates ***
statastates, a(sitecode) nogen
rename state_fips state
gen quarter=1
merge m:1 year state quarter using "./Controls/T21cntyst9024",keep(3) gen(cov_merge)

*** Save as vaping_analysis ***
save "./Working Files/smoking_analysis",replace
}

forvalues x=1/1 {
use "./Working Files/HS_COMB.dta"
expand 2
bysort record: gen stack=2021+_n*2-2
merge m:1 sitecode year stack using "./Working Files/smoking_analysis",keep(3)

*** Smoking Event Study ***
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

reghdfe CIG_curr c.tau_m2 c.tau_p0 c.tau_m1 `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
est store est1

reghdfe CIG_freq c.tau_m2 c.tau_p0 c.tau_m1 `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
est store est2

reghdfe CIG_daily c.tau_m2 c.tau_p0 c.tau_m1 `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
est store est3

coefplot (est1,msymbol(circle)) (est2,msymbol(triangle)) (est3,msymbol(diamond) msize(small)) ,vert keep(tau_m2 tau_p0) order(tau_m2 "." tau_p0) omitted ytitle("Change in outcome") xtitle("Event time (biennial)") xlabel(1 "-2" 2 "-1" 3 "0") graphregion(color(white)) yline(0,lpattern(dash) lcolor(gs2)) ylabel(-0.15(0.05)0.15,gmin gmax) mcolor(gs2) lcolor(gs2) ciopts(color(gs2) recast(rcap)) xline(2.5,lpattern(dash) lcolor(gs2)) addplot(scatteri 0 2 0 2,mcolor(gs2)) legend(order(2 4 6) label(2 "Current use") label(4 "Frequent use") label(6 "Daily use") pos(11) ring(0) rows(1))
graph export "./Figures/Fig2.pdf",as(pdf) replace

*** Reduced form ***
gen post=0
replace post=1 if year>=year_T21
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

reghdfe CIG_curr c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

reghdfe CIG_freq c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

reghdfe CIG_daily c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

tabstat CIG_curr CIG_freq CIG_daily if late==1 & year<year_T21 [aw=weight]

*** Robustness ***
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

*** TWFE ***
gen keep_twfe=0
replace keep_twfe=1 if (stack==2021 & inrange(year,2017,2021)) | (stack==2023 & year==2023)
reghdfe CIG_curr c.post `covars1' `covars2' if keep_twfe==1 [pw=weight],a(i.sitecode_n i.year) vce(cluster sitecode_n#stack)

*** Hansen model ***
local covars1 i.race4 i.sex i.grade
local covars2 econ_unemploy_st demo_income_st cig_tax_total ecig_taxstandTC_v2_st alc_beer_tax_st marij_mml_st marij_receffect_st
logit CIG_curr i.post `covars1' `covars2' i.year#i.stack i.sitecode_n i.year c.year#i.age#i.stack [pw=weight], vce(cluster sitecode_n)

margins,dydx(post)

*** Wild bootstrap ***
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore
gen statestack=real(string(sitecode_n,"%02.0f")+string(stack,"%04.0f"))

reghdfe CIG_curr c.post `covars1' `covars2' i.year#i.stack [pw=weight],a(i.statestack) vce(cluster statestack)
boottest post=0, reps(10001) bootcluster(statestack)

*** Continuous T21 treatment ***
reghdfe CIG_curr c.tob21_cntywt `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

*** without survey weights ***
reghdfe CIG_curr c.post `covars1' `covars2',a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

*** with age-specific trends ***
reghdfe CIG_curr c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack c.year#i.age) vce(cluster sitecode_n#stack)

*** with no controls ***
reghdfe CIG_curr c.post [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

*** add covid death controls ***
statastates,a(sitecode) nogen
rename state_fips fips
gen yq=yq(year,quarter)
format yq %tq
merge m:1 fips yq using "./Controls/nytcovid.dta",keepusing(COVIDDeathsPerCap cases_avg_per_100k) nogen keep(1 3)
replace COVIDDeathsPerCap=0 if COVIDDeathsPerCap==.
replace cases_avg_per_100k=0 if cases_avg_per_100k==.

local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

reghdfe CIG_curr c.post `covars1' `covars2' COVIDDeathsPerCap cases_avg_per_100k [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

*** continuous grade treatment ***
gen post_cont=post
replace post_cont=5 if post==1 & inlist(sitecode,"CO","CT","MA","MN","NY")
replace post_cont=4 if post==1 & inlist(sitecode,"CA", "DE", "IN", "KS", "LA", "RI", "VA")
replace post_cont=3 if post==1 & (inlist(sitecode, "AL", "GA", "HI", "ID", "IL", "KY", "ME", "MD") | inlist(sitecode,"NV", "NH", "NJ", "PA", "TN", "UT", "VT", "WA", "WV"))
replace post_cont=1 if post==1 & (inlist(sitecode,"AR", "FL", "IA", "MI", "MS", "NE", "NM") | inlist(sitecode,"ND", "OH", "OK", "OR", "SD", "TX", "WY"))
replace post_cont=post_cont*0.32

local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

reghdfe CIG_curr c.post_cont `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

*** leave one out ***
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

levelsof sitecode if year_T21!=.,local(states)
di `states'
foreach m of local states {
qui reghdfe CIG_curr c.post `covars1' `covars2' [pw=weight] if sitecode!="`m'",a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
di "beta" e(b)[1,1] " SE: (" sqrt(e(V)[1,1]) ") " " `m'"
}



clear
}

*** Cigar Use Analysis ***
forvalues x=1/1 {
use "./Working Files/HS_COMB.dta"
collapse (mean) CIGAR_curr [pweight=weight], by(sitecode year state_T21)

*** Drop pre-2017 ***
drop if year<2017

*** Drop if early-treated with state T21 law ***
gen flag=1 if inlist(year,2017,2019) & state_T21==1
bysort sitecode: egen max_flag=max(flag)
drop if max_flag==1
drop flag max_flag
drop if inlist(sitecode,"NY","NJ","OH","CT","MD","TX","VT","DE") | inlist(sitecode,"IL","VA","MA","ME","OR","DC","CA","HI")

*** Drop missing observations ***
drop if CIGAR_curr==.

*** Make strongly balanced ***
encode sitecode,gen(sitecode_n)
tsset sitecode_n year
tsfill,full
drop if mod(year,2)==0

*** Create stacks ***
*** 2021 stack requires 2017,2019,2021 non-missing outcomes for never-treated and 2021-treated units. 2023 stack requires 2019, 2021, 2023 non-missing outcomes for never-treated and 2023-treated units. ***
gen non_miss=1 if CIGAR_curr!=.
gen non_miss_2017=1 if non_miss==1 & year==2017
gen non_miss_2019=1 if non_miss==1 & year==2019
gen non_miss_2021=1 if non_miss==1 & year==2021
gen non_miss_2023=1 if non_miss==1 & year==2023
bysort sitecode: fillmissing non_miss_2017 non_miss_2019 non_miss_2021 non_miss_2023,with(max)
bysort sitecode: egen max_non_miss=total(non_miss) if inrange(year,2017,2021) & non_miss_2017==1 & non_miss_2019==1 & non_miss_2021==1
rename max_non_miss stack_2021
bysort sitecode: egen max_non_miss=total(non_miss) if inrange(year,2019,2023) & non_miss_2019==1 & non_miss_2021==1 & non_miss_2023==1
rename max_non_miss stack_2023
drop non_miss* 

*** Make balanced ***
keep if stack_2021==3 | stack_2023==3
expand 2 if stack_2021==3 & stack_2023==3
gen sum_stack=stack_2021+stack_2023
replace sum_stack=3 if sum_stack==.
bysort sitecode year: gen tag=_n
replace tag=2 if stack_2023==3 & sum_stack==3
gen stack=.
replace stack=2021 if year==2017
replace stack=2023 if year==2023
replace stack=2021 if tag==1
replace stack=2023 if tag==2

*** Prepare stacks ***
drop tag stack_2021 stack_2023 sum_stack
duplicates drop sitecode year stack,force

*** Year of T21 ***
bysort sitecode (year): gen year_T21=year+2 if state_T21==0 & state_T21[_n+1]==1
bysort sitecode (year): replace year_T21=1990 if state_T21==1 & year==2017
bysort sitecode: fillmissing year_T21,with(max)

gen late=1 if inrange(year_T21,2021,2023)
gen never=1 if year_T21==.

keep if (stack==2021 & inlist(year_T21,2021,.)) | (stack==2023 & inlist(year_T21,2023,.))

*** Event Study Leads/Lags ***
gen tau_m2=0 
replace tau_m2=1 if late==1 & (year-year_T21)==-4

gen tau_m1=0 
replace tau_m1=1 if late==1 & (year-year_T21)==-2

gen tau_p0=0 
replace tau_p0=1 if late==1 & (year-year_T21)==0

*** Merge covariates ***
statastates, a(sitecode) nogen
rename state_fips state
gen quarter=1
merge m:1 year state quarter using "./Controls/T21cntyst9024",keep(3) gen(cov_merge)

*** Save as vaping_analysis ***
save "./Working Files/cigar_analysis",replace
}

forvalues x=1/1 {
use "./Working Files/HS_COMB.dta"
expand 2
bysort record: gen stack=2021+_n*2-2
merge m:1 sitecode year stack using "./Working Files/cigar_analysis",keep(3)

*** Smoking Event Study ***
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

reghdfe CIGAR_curr c.tau_m2 c.tau_p0 c.tau_m1 `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
est store est1

reghdfe CIGAR_freq c.tau_m2 c.tau_p0 c.tau_m1 `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
est store est2

reghdfe CIGAR_daily c.tau_m2 c.tau_p0 c.tau_m1 `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
est store est3

coefplot (est1,msymbol(circle)) (est2,msymbol(triangle)) (est3,msymbol(diamond) msize(small)) ,vert keep(tau_m2 tau_p0) order(tau_m2 "." tau_p0) omitted ytitle("Change in outcome") xtitle("Event time (biennial)") xlabel(1 "-2" 2 "-1" 3 "0") graphregion(color(white)) yline(0,lpattern(dash) lcolor(gs2)) ylabel(-0.1(0.05)0.1,gmin gmax) mcolor(gs2) lcolor(gs2) ciopts(color(gs2) recast(rcap)) xline(2.5,lpattern(dash) lcolor(gs2)) addplot(scatteri 0 2 0 2,mcolor(gs2)) legend(order(2 4 6) label(2 "Current use") label(4 "Frequent use") label(6 "Daily use") pos(11) ring(0) rows(1))
graph export "./Figures/Fig3.pdf",as(pdf) replace

*** Reduced form ***
gen post=0
replace post=1 if year>=year_T21
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

reghdfe CIGAR_curr c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

reghdfe CIGAR_freq c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

reghdfe CIGAR_daily c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

tabstat CIGAR_curr CIGAR_freq CIGAR_daily if late==1 & year<year_T21 [aw=weight]

clear

}

*** Oral Use Analysis ***
forvalues x=1/1 {
use "./Working Files/HS_COMB.dta"
collapse (mean) ORAL_curr [pweight=weight], by(sitecode year state_T21)

*** Drop pre-2017 ***
drop if year<2017

*** Drop if early-treated with state T21 law ***
gen flag=1 if inlist(year,2017,2019) & state_T21==1
bysort sitecode: egen max_flag=max(flag)
drop if max_flag==1
drop flag max_flag
drop if inlist(sitecode,"NY","NJ","OH","CT","MD","TX","VT","DE") | inlist(sitecode,"IL","VA","MA","ME","OR","DC","CA","HI")

*** Drop missing observations ***
drop if ORAL_curr==.

*** Make strongly balanced ***
encode sitecode,gen(sitecode_n)
tsset sitecode_n year
tsfill,full
drop if mod(year,2)==0

*** Create stacks ***
*** 2021 stack requires 2017,2019,2021 non-missing outcomes for never-treated and 2021-treated units. 2023 stack requires 2019, 2021, 2023 non-missing outcomes for never-treated and 2023-treated units. ***
gen non_miss=1 if ORAL_curr!=.
gen non_miss_2017=1 if non_miss==1 & year==2017
gen non_miss_2019=1 if non_miss==1 & year==2019
gen non_miss_2021=1 if non_miss==1 & year==2021
gen non_miss_2023=1 if non_miss==1 & year==2023
bysort sitecode: fillmissing non_miss_2017 non_miss_2019 non_miss_2021 non_miss_2023,with(max)
bysort sitecode: egen max_non_miss=total(non_miss) if inrange(year,2017,2021) & non_miss_2017==1 & non_miss_2019==1 & non_miss_2021==1
rename max_non_miss stack_2021
bysort sitecode: egen max_non_miss=total(non_miss) if inrange(year,2019,2023) & non_miss_2019==1 & non_miss_2021==1 & non_miss_2023==1
rename max_non_miss stack_2023
drop non_miss* 

*** Make balanced ***
keep if stack_2021==3 | stack_2023==3
expand 2 if stack_2021==3 & stack_2023==3
gen sum_stack=stack_2021+stack_2023
replace sum_stack=3 if sum_stack==.
bysort sitecode year: gen tag=_n
replace tag=2 if stack_2023==3 & sum_stack==3
gen stack=.
replace stack=2021 if year==2017
replace stack=2023 if year==2023
replace stack=2021 if tag==1
replace stack=2023 if tag==2

*** Prepare stacks ***
drop tag stack_2021 stack_2023 sum_stack
duplicates drop sitecode year stack,force

*** Year of T21 ***
bysort sitecode (year): gen year_T21=year+2 if state_T21==0 & state_T21[_n+1]==1
bysort sitecode (year): replace year_T21=1990 if state_T21==1 & year==2017
bysort sitecode: fillmissing year_T21,with(max)

gen late=1 if inrange(year_T21,2021,2023)
gen never=1 if year_T21==.

keep if (stack==2021 & inlist(year_T21,2021,.)) | (stack==2023 & inlist(year_T21,2023,.))

*** Event Study Leads/Lags ***
gen tau_m2=0 
replace tau_m2=1 if late==1 & (year-year_T21)==-4

gen tau_m1=0 
replace tau_m1=1 if late==1 & (year-year_T21)==-2

gen tau_p0=0 
replace tau_p0=1 if late==1 & (year-year_T21)==0

*** Merge covariates ***
statastates, a(sitecode) nogen
rename state_fips state
gen quarter=1
merge m:1 year state quarter using "./Controls/T21cntyst9024",keep(3) gen(cov_merge)

*** Save as vaping_analysis ***
save "./Working Files/oral_analysis",replace
}

forvalues x=1/1 {
use "./Working Files/HS_COMB.dta"
expand 2
bysort record: gen stack=2021+_n*2-2
merge m:1 sitecode year stack using "./Working Files/oral_analysis",keep(3)

*** Smoking Event Study ***
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

reghdfe ORAL_curr c.tau_m2 c.tau_p0 c.tau_m1 `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
est store est1

reghdfe ORAL_freq c.tau_m2 c.tau_p0 c.tau_m1 `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
est store est2

reghdfe ORAL_daily c.tau_m2 c.tau_p0 c.tau_m1 `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)
est store est3

coefplot (est1,msymbol(circle)) (est2,msymbol(triangle)) (est3,msymbol(diamond) msize(small)) ,vert keep(tau_m2 tau_p0) order(tau_m2 "." tau_p0) omitted ytitle("Change in outcome") xtitle("Event time (biennial)") xlabel(1 "-2" 2 "-1" 3 "0") graphregion(color(white)) yline(0,lpattern(dash) lcolor(gs2)) ylabel(-0.1(0.05)0.1,gmin gmax) mcolor(gs2) lcolor(gs2) ciopts(color(gs2) recast(rcap)) xline(2.5,lpattern(dash) lcolor(gs2)) addplot(scatteri 0 2 0 2,mcolor(gs2)) legend(order(2 4 6) label(2 "Current use") label(4 "Frequent use") label(6 "Daily use") pos(11) ring(0) rows(1))
graph export "./Figures/Fig4.pdf",as(pdf) replace

*** Reduced form ***
gen post=0
replace post=1 if year>=year_T21
local covars1 i.age i.race4 i.sex i.grade
local covars2 cig_tax_total ecig_taxstandTC_v2_st cigar_tax_large_total cigar_tax_little_total cig_ban_avg ecig_ban_avg cig_flavm_st ecig_flav_st cigar_flav_st alc_beer_tax_st marij_mml_st marij_receffect_st econ_unemploy_st demo_income_st demo_edu_HSorMore

reghdfe ORAL_curr c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

reghdfe ORAL_freq c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

reghdfe ORAL_daily c.post `covars1' `covars2' [pw=weight],a(i.sitecode_n#i.stack i.year#i.stack) vce(cluster sitecode_n#stack)

tabstat ORAL_curr ORAL_freq ORAL_daily if late==1 & year<year_T21 [aw=weight]

clear
}

*** Descriptive trends ***
forvalues x=1/1 {
use "./Working Files/HS_COMB.dta"

gen OTHER_curr=.
replace OTHER_curr=0 if CIGAR_curr==0
replace OTHER_curr=0 if ORAL_curr==0
replace OTHER_curr=1 if CIGAR_curr==1 | ORAL_curr==1
collapse (mean) OTHER_curr ENDS_curr CIG_curr [pweight=weight], by(year)

*** Descriptive trends ***
twoway (line CIG_curr year, lcolor(gs2)) (line ENDS_curr year, lcolor(gs2) lpattern(longdash)) (line  OTHER_curr year, lcolor(gs2) lpattern(shortdash)) if inrange(year,2009,2023), graphregion(color(white)) ylabel(0(0.1)0.3,gmin gmax) xline(2020,lpattern(dash) lcolor(gs2)) xlabel(2009(2)2023) legend(order(1 2 3) label(1 "Cigarette smoking") label(2 "Vaping") label(3 "Cigar or oral tobacco") pos(6) rows(1)) ytitle("Current use") xtitle("Year")
graph export "./Figures/Trend1.pdf",as(pdf) replace

clear
}

*** Descriptive trends by treatment status ***
forvalues x=1/1 {
use "./Working Files/HS_COMB.dta"

gen early=0
replace early=1 if inlist(sitecode,"NY", "NJ", "OH", "CT", "MD", "TX", "VT", "DE") | inlist(sitecode,"IL","VA","MA", "ME", "OR", "DC", "CA", "HI")

gen late=0
replace late=1 if inlist(sitecode,"WV","KS","MI","ID","FL","AL","LA","RI","NV") | inlist(sitecode,"ND","NM","TN","NE") | inlist(sitecode,"MN","NH","GA","CO","MS","IN","PA") | inlist(sitecode,"SD","UT","WY","IA","OK","KY","AR") | inlist(,sitecode,"WA")

gen never=0
replace never=1 if early==0 & late==0

collapse (mean) ENDS_curr CIG_curr [pweight=weight], by(year late early never)

*** Descriptive trends ***
twoway (line CIG_curr year if never==1, lcolor(gs2) lpattern(dot)) (line CIG_curr year if early==1, lcolor(gs2) lpattern(longdash)) (line CIG_curr year if late==1, lcolor(gs2) lpattern(solid)) if inrange(year,2017,2023), graphregion(color(white)) ylabel(0(0.1)0.3,gmin gmax) xline(2020,lpattern(dash) lcolor(gs2)) xlabel(2017(2)2023) legend(order(1 2 3) label(1 "Never treated") label(2 "Early treated") label(3 "Late treated") pos(6) rows(1)) ytitle("Current use") xtitle("Year")
graph export "./Figures/Trend2.pdf",as(pdf) replace

*** Descriptive trends ***
twoway (line ENDS_curr year if never==1, lcolor(gs2) lpattern(dot)) (line ENDS_curr year if early==1, lcolor(gs2) lpattern(longdash)) (line ENDS_curr year if late==1, lcolor(gs2) lpattern(solid)) if inrange(year,2017,2023), graphregion(color(white)) ylabel(0(0.1)0.3,gmin gmax) xline(2020,lpattern(dash) lcolor(gs2)) xlabel(2017(2)2023) legend(order(1 2 3) label(1 "Never treated") label(2 "Early treated") label(3 "Late treated") pos(6) rows(1)) ytitle("Current use") xtitle("Year")
graph export "./Figures/Trend3.pdf",as(pdf) replace

clear
}

*** Summary figure ***
matrix input A = (-0.005 -0.016 -0.005 -0.005 -0.008 0.004 -0.005 -0.005 0.006 -0.000161 \ 0.008 0.008 0.005 0.018 0.007 0.006 0.008 0.006 0.013 0.0061)
matrix input B = (0.009 0.014 0.014 0.009 0.012 -0.004 0.009 0.014 0.031 -0.00013 \ 0.015 0.019 0.015 0.020 0.013 0.015 0.015 0.014 0.017 0.018)

coefplot (mat(A),label(b1) mlabel("") axis(1) mcolor(gs2)) (mat(B),label(b2) mlabel("") axis(2) mcolor(gs2) msymbol(diamond) msize(small)) ,se(2) xline(0) graphregion(lstyle(none) color(white) fcolor(white) lcolor(white) icolor(white) ifcolor(white) ilcolor(white)) plotregion(lstyle(none) color(white) fcolor(white) lcolor(white) icolor(white) ifcolor(white) ilcolor(white))  xtitle("",axis(1)) xtitle("Change in outcome",axis(2)) xlabel(-0.1(0.05)0.1,axis(2)) xlabel(-0.1(0.05)0.1,axis(1) labcolor(none) noticks) grid(none) yscale(noline) xscale(noline) ylabel(1 "Preferred specification [1]    " 2 "Two-way fixed effects     " 3 "Hansen et al. (2023) model     " 4 "[1] with alternative SE's     " 5 "[1] with T21 intensity     " 6 "[1] without survey weights" 7 "[1] with age-specific trends" 8 "[1] with no controls" 9 "[1] with continuous treatment" 10 "[1] with COVID controls" ,noticks) legend(order(2 "Current smoking" 4 "Current vaping") position(6) ring(1)) xline(0,axis(2) lcolor(gs2)) ciopts(recast(rcap) color(gs2))
graph display, xsize(10) ysize(15) scale(0.85)
graph export "./Figures/Robust_YRBSS.pdf",as(pdf) replace

*** re-format BRFSS figure ***
matrix input A = (.0037526 .0036402 .0045365 .0037526 .0029377 -.0045545 .0037942 .008909 .0017112 .002952 \ .0080727 .0065524 .0089 .0080727 .0065519 .0048091 .0080732 .0074244 .0079143 .0080917)
matrix input B = (.0103374 -.0047899 .003691 .0103374 .0327088 -.0045545 .010299 -.011581 -.0048894 .012058 \ .0181995 .0221811 .0152 .0181995 .0159225 .0048091 .0180459 .0170452 .017548 .0181216)

coefplot (mat(A),label(b1) mlabel("") axis(1) mcolor(gs2)) (mat(B),label(b2) mlabel("") axis(2) mcolor(gs2) msymbol(diamond) msize(small)) ,se(2) xline(0) graphregion(lstyle(none) color(white) fcolor(white) lcolor(white) icolor(white) ifcolor(white) ilcolor(white)) plotregion(lstyle(none) color(white) fcolor(white) lcolor(white) icolor(white) ifcolor(white) ilcolor(white))  xtitle("",axis(1)) xtitle("Change in outcome",axis(2)) xlabel(-0.1(0.05)0.1,axis(2)) xlabel(-0.1(0.05)0.1,axis(1) labcolor(none) noticks) grid(none) yscale(noline) xscale(noline) ylabel(1 "Preferred specification [1]    " 2 "Two-way fixed effects     " 3 "Hansen et al. (2023) model     " 4 "[1] with alternative SE's     " 5 "[1] with T21 intensity     " 6 "[1] without survey weights" 7 "[1] with age-specific trends" 8 "[1] with no controls" 9 "[1] with continuous treatment" 10 "[1] with COVID controls" ,noticks) legend(order(2 "Current smoking" 4 "Current vaping") position(6) ring(1)) xline(0,axis(2) lcolor(gs2)) ciopts(recast(rcap) color(gs2))
graph display, xsize(10) ysize(15) scale(0.85)
graph export "./Figures/Robust_BRFSS_Edited.pdf",as(pdf) replace


*** Leave one out figure ***
matrix input A =  (-0.005 -.00287968 -.00799734 -.00558208 .00244487 -.01477299 -.00488087 -.00487959 . -.00395591 -.00405132 . -.00304681 -.00651987 -.00472398 \ 0.008 .00658245 .0085449 .00865835 .00865877 .00759265 .00797149 .00772615 . .00832046 .00876676 . .00758727 .0085264 .00780462)

matrix input B = (0.009 .01039278 . .00763577 .0074401 . .01057226 .00881434 .00592137 .00460565 .01477564 .00510774 .00145899 .00051883 .00930563\ 0.015 .01475501 . .01512666 .01524245 . .01841044 .01426191 .01521558 .01473129 .01555567 .01368419 .01651185 .01516407 .0151791)

coefplot (mat(A),label(b1) mlabel("") mcolor(gs2)) (mat(B),label(b2) mlabel("") mcolor(gs2) msymbol(diamond) msize(small)) ,se(2) yline(0) graphregion(lstyle(none) color(white) fcolor(white) lcolor(white) icolor(white) ifcolor(white) ilcolor(white)) plotregion(lstyle(none) color(white) fcolor(white) lcolor(white) icolor(white) ifcolor(white) ilcolor(white)) ytitle("Change in outcome") ylabel(-0.1(0.05)0.1) grid(none) xlabel(1 "Main" 2 "AR" 3 "IA" 4 "KY" 5 "MD" 6 "MI" 7 "ND" 8 "NE" 9 "NH" 10 "NM" 11 "NV" 12 "OK" 13 "PA" 14 "TN" 15 "UT") legend(order(2 "Current smoking" 4 "Current vaping")) yline(0, lcolor(gs2)) ciopts(recast(rcap) color(gs2)) vertical xtitle("Omitted States")
graph display, xsize(30) ysize(10)
graph export "./Figures/L10_YRBSS.pdf",as(pdf) replace

