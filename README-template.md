# The Returns to Regulatory Redundancy: Evidence from Tobacco 21
**Authors:** Christian Saenz, James Flynn, Mike Pesko

**Status:** Under Review  

**Maintainer:** Christian Saenz, Post Doctoral Scholar, Yale University 

**Last Updated:** May 2026

## Overview

We consider the impact of state laws that prohibit conduct already barred under federal law. In particular, we examine the effectiveness of state minimum legal sales laws for tobacco, or tobacco 21 laws, implemented after the federal T21 law in December 2019. Using difference-in-differences modeling that exploits the staggered implementation of tobacco 21 legislation (T21) in 28 states after 2019, we find that these state T21 laws consistently have little to no effect on smoking and vaping among adults ages 18 to 20, nor for high school youth. Our findings indicate that state T21 laws offer little marginal benefit under a unified federal T21 regime. We discuss voluntary compliance as a likely explanation for these findings.

## Repository Structure
├── data/           # Raw and processed data (not committed — see .gitignore)  
├── code/           # Analysis scripts  
├── figures/        # Tables, figures, and results  
├── manuscript/     # Notes, meeting summaries, documentation  
└── README.md

## Requirements

Stata 16.1 or greater

## How to Run

After aquiring YRBSS data and moving to data folder, run YRBSS.do. After aquiring BRFSS data and moving to data folder, first run 01_brfss_clean, then 02_brfss_analysis.

## Data Sources

Combined YRBSS data is publicly available. Go to Data and Documentation | Youth Risk Behavior Surveillance System (YRBSS) | CDC, go to Combined High School tab, go to 2023 tab (most recent year), go to ASCII, download state files (e.g. State A-D, E-H, I-L, …). Do the same for Middle School files although these aren’t used in our data because of low participation. These .dat files go into the YRBSS folder.

Other data needed is in the Controls folder. You need nytcovid.dta and T21cntyst9024.dta files. These are proprietary so reach out to Christian Saenz (Christian.saenz@yale.edu) and I can share these.

## Contact

Christian Saenz — christian.saenz@yale.edu — School of Public Health, Yale University
