# Replication Package: This folder contains the code and instructions to replicate the findings of ”The Returns to Regulatory Redundancy: Evidence from Tobacco 21”. Under review at XXXX

## Data Availability Statement
- **Raw Data:** Data is publicly available but not provided in this folder due to file size limits. Instructions are provided to download YRBSS data and get access to covariates.
- **Data Access:** Contact Christian Saenz for data access
- **Note:** If using restricted data, the scripts provided here assume you have placed the raw files in the `/data` folder.

## Software Requirements
- **Primary Software:** Stata 16.1 or greater
- **Required Packages/Libraries:** - Stata: `ssc install reghdfe`, `ssc install boottest`

## Instructions
1. Download replication folder.

2. Download the following data files and insert into the YRBSS folder.

o sadc_2023_state_a_d.dat

o sadc_2023_state_e_h.dat

o sadc_2023_state_i_l.dat

o sadc_2023_state_m.dat

o sadc_2023_state_n_p.dat

o sadc_2023_state_q_t.dat

o sadc_2023_state_u_z.dat

o sadc_ms_2023_state_a_m.dat

o sadc_ms_2023_state_n_z.dat

3. Download the following data files and insert into the YRBSS folder.

o nytcovid.dta

o T21cntyst9024.dta

4. On line 2 of .do file, change directory to your local directory.

5. Ensure packages are installed.

6. Run entire .do file at once.

7. Estimated Run Time: 30 minutes

## List of Tables and Figures
Exhibit | Lines in Do File.do | Output File

Figure 1. Youth Sample | 1009-1023 | Trend1.pdf

Figure 2. Youth Sample | 1025-1049 | Trend2.pdf, Trend3.pdf 

Figure 3. Event studies for YRBSS | vaping 452-466 | Fig1.pdf

Figure 3. Event studies for YRBSS | vaping 650-664 | Fig2.pdf

Figure 4. Robustness results for YRBSS| vaping 469-543 |

Figure 4. Robustness results for YRBSS |

smoking 666-741 |

Figure 4. YRBSS | 1051-1057 | Robust_YRBSS.pdf

Figure 4. BRFSS formatted | 1059-1065 | Robust_BRFSS_Edited.pdf

Figure 5. Leave one out YRBSS vaping | 545-553 |

Figure 5. Leave one out YRBSS smoking | 743-752 |

Figure 5. Leave one out YRBSS | 1068-1075 | L1O_YRBSS.pdf

Figure B1. Event studies | YRBSS 850-864, 975-989 | Fig3.pdf,Fig4.pdf

Table 1. YRBSS | 468-480 | 667-678

Appendix Table B1. Cigar | 866-878 |

Appendix Table B1. Oral Tobacco | 991-1003 |

## Contact
For questions regarding this replication package, contact Christian Saenz at christian.saenz@yale.edu
