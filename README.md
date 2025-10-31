# C9orf50: Regulation of Alternative Splicing and Chemokine Signaling in Immune Cells

## Overview
This repository contains the code and data for the publication "C9orf50 regulates alternative splicing and chemokine signaling in immune cells" in iMeta journal (2025). The repository provides reproducible analysis workflows for the figures presented in the manuscript, focusing on the role of C9orf50 in alternative splicing regulation and immune cell function.

## Repository Structure
The repository is organized by figure number, with each directory containing the R Markdown (Rmd) files, data, and output figures for the respective analyses:

```
C9orf50_iMeta/
├── Fig3/            # KOG functional annotation, RNA-seq analysis
├── Fig4/            # Alternative splicing analysis
├── Fig5/            # ISG gene expression analysis
├── Fig6/            # Single-cell RNA-seq analysis
└── Fig7/            # Clinical and pancancer survival analysis
```

## Contents by Figure

### Fig3: Functional Annotation and RNA-seq Analysis
- **Fig3A.KOG_dotplot.Rmd**: KOG functional annotation analysis of proteins identified in IP-MS experiments
- **Fig3FGH.RNA-seqAnalysis.Rmd**: RNA-seq analysis of differentially expressed genes
- Supporting data files: ISG.csv, Splicesome.csv, chemokines.csv

### Fig4: Alternative Splicing Regulation
- **Fig4AB.Rmd**: Analysis of alternative splicing events and differential binding
- **Fig4DEF.Rmd**: Detailed alternative splicing analysis and visualization
- Supporting data includes splicing events, peak annotations, and differential gene expression results

### Fig5: ISG Gene Expression Analysis
- **Fig5B-C.ISG_Analysis.Rmd**: Interferon-stimulated gene expression analysis
- Supporting data: ISG.csv and visualization outputs

### Fig6: Single-cell RNA-seq Analysis
- **Fig6-D-E-F.Rmd**: Single-cell RNA-seq analysis including cell type annotation and subset analysis
- Supporting data includes cell markers, annotation results, and visualization outputs

### Fig7: Clinical and Pancancer Analysis
- **Fig7-A-B.Rmd**: Clinical stage expression analysis and survival analysis
- **Data/**: Contains pancancer expression data for C9orf50 and related genes
- **Surv/**: Contains survival analysis results across multiple cancer types

## Getting Started

### Prerequisites
To reproduce the analyses, you will need:
- R (version 4.0 or higher)
- RStudio (recommended for Rmd files)
- Required R packages (installable via the scripts)

### Running the Analyses
1. Clone this repository to your local machine
2. Open the R Markdown (.Rmd) files in RStudio
3. Set the appropriate working directory in the scripts
4. Knit the Rmd files to generate the analyses and figures

Each Rmd file contains an `install_and_load_packages` function that will automatically install any missing required packages.

## Data Availability
The data used in this study is available within this repository, with the exception of large raw datasets which can be requested from the corresponding author. Processed data used for generating the figures is included in the respective figure directories.

## Reproducibility
All analyses are fully reproducible using the provided R Markdown files. The scripts include session information at the end to document the exact versions of R and packages used.

## Citation
If you use this code or data in your research, please cite:

1. Shao T#, Liu C#, et al. (2025). C9orf50 regulates alternative splicing and chemokine signaling in immune cells. iMeta
2. Chuanyang Liu, et al. Predator: A novel method for targeted protein degradation. bioRxiv 2020. https://www.biorxiv.org/content/10.1101/2020.07.31.231787v1

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Contact
For questions or issues regarding this repository, please contact：
liuchuanyang13@nudt.edu.cn
