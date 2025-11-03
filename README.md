# Genome-wide CRISPR screen reveals an uncharacterized spliceosome regulator as a potential immunotherapeutic target for cancer therapy

## Overview
This repository contains the code and data for the publication "Genome-wide CRISPR screen reveals an uncharacterized spliceosome regulator as a potential immunotherapeutic target for cancer therapy" in iMeta (2025). The repository provides reproducible analysis workflows for all figures presented in the manuscript, focusing on the role of C9orf50 in alternative splicing regulation and immune cell function.

## Repository Structure
The repository is organized by figure number, with each directory containing the R Markdown (Rmd) files, data, and output figures for the respective analyses. Additionally, a central Data directory contains all figure data in Excel format for easy access.

```
C9orf50_iMeta/
├── Data/            # Central repository of all figure data in Excel format
│   ├── Figure 1.xlsx
│   ├── Figure 2.xlsx
│   ├── Figure 3.xlsx
│   ├── Figure 4.xlsx
│   ├── Figure 5.xlsx
│   ├── Figure 6.xlsx
│   ├── Figure 7.xlsx
│   └── Figure 8.xlsx
├── Fig1/            # Figure 1 analysis (contains Figure 1.xlsx)
├── Fig2/            # Figure 2 analysis (contains Figure 2.xlsx)
├── Fig3/            # KOG functional annotation, RNA-seq analysis (contains Figure 3.xlsx)
├── Fig4/            # Alternative splicing analysis (contains Figure 4.xlsx)
├── Fig5/            # ISG gene expression analysis (contains Figure 5.xlsx)
├── Fig6/            # Single-cell RNA-seq analysis (contains Figure 6.xlsx)
├── Fig7/            # Clinical and pancancer survival analysis (contains Figure 7.xlsx)
├── Fig8/            # Additional analysis (contains Figure 8.xlsx)
└── .gitignore       # Git ignore file for repository maintenance
```

## Data Availability
All data used in the publication are available in two formats:

1. **Central Data Directory**: The `/Data` folder contains all figure data in Excel format (`Figure X.xlsx`), providing a convenient way to access and review the data used for each figure without navigating through individual analysis directories.

2. **Figure-Specific Directories**: Each `FigX` folder also contains its corresponding `Figure X.xlsx` file with the **raw data for each figure**. These Excel files are specifically formatted for direct import into **GraphPad PRISM**, allowing researchers to easily reproduce all graphical results shown in the publication without additional data processing.

**Note**: The Excel files in both the central Data directory and Figure-specific directories contain the raw numerical data presented in the figures, organized in a format compatible with GraphPad PRISM. Users can import these files directly into PRISM to recreate the exact graphs and statistical analyses shown in the manuscript.

## Contents by Figure

### Fig1: Genome-scale in vivo CRISPR Screen Analysis
- **Figure 1.xlsx**: Complete data for Figure 1
- **Figure Caption**: Genome-scale in vivo clustered regularly interspaced short palindromic repeats (CRISPR) screen identifies C9ORF50 as a critical driver of cancer progression.
- Analysis scripts and supporting files

### Fig2: Liquid-Liquid Phase Separation Analysis
- **Figure 2.xlsx**: Complete data for Figure 2
- **Figure Caption**: C9ORF50 drives liquid-liquid phase separation (LLPS) to form dynamic nuclear condensates.
- Analysis scripts and supporting files

### Fig3: Spliceosome Association and Gene Expression
- **Fig3A.KOG_dotplot.Rmd**: KOG functional annotation analysis of proteins identified in IP-MS experiments
- **Fig3FGH.RNA-seqAnalysis.Rmd**: RNA-seq analysis of differentially expressed genes
- **Figure 3.xlsx**: Complete data for Figure 3
- **Figure Caption**: C9ORF50 associates with the spliceosome machinery and regulates spliceosome-related gene expression.
- **2.func.anno/**: Functional annotation results including GO, KOG, KEGG, IPR, subcellular localization, and transcription factor analysis
- **Figs/**: Visualization outputs for RNA-seq analysis
- **Rdata/**: Processed data objects for reproducibility
- Supporting data files: ISG.csv, Splicesome.csv, chemokines.csv, gene sets, and enrichment results

### Fig4: Alternative Splicing Regulation
- **Fig4AB.Rmd**: Analysis of alternative splicing events and differential binding
- **Fig4DEF.Rmd**: Detailed alternative splicing analysis and visualization
- **Figure 4.xlsx**: Complete data for Figure 4
- **Figure Caption**: C9ORF50 deficiency impairs spliceosome function via aberrant alternative splicing events in spliceosome-related genes.
- **Figs/**: Visualization outputs for splicing analysis
- **Rdata/**: Processed data objects for reproducibility
- Supporting data: C9TopSwitches.csv, SampleSheetForDiffBind2.csv, Top500_IR_genes.csv, deg.csv, peakDiff.txt

### Fig5: Antitumor Immunity Activation
- **Fig5B-C.ISG_Analysis.Rmd**: Interferon-stimulated gene expression analysis
- **Figure 5.xlsx**: Complete data for Figure 5
- **Figure Caption**: C9ORF50 knockout activates antitumor immunity through cytoplasmic accumulation of double-stranded RNA.
- **Rdata/**: Processed data objects for reproducibility
- Supporting data: ISG.csv and visualization outputs

### Fig6: Tumor Microenvironment Remodeling
- **Fig6-D-E-F.Rmd**: Single-cell RNA-seq analysis including cell type annotation and subset analysis
- **Figure 6.xlsx**: Complete data for Figure 6
- **Figure Caption**: C9ORF50 knockout remodels the tumor microenvironment (TME) into an immune-stimulatory state.
- **Figs/**: Extensive collection of single-cell analysis visualizations
- **rdata/**: Processed single-cell data objects
- Supporting data: Cell markers (Macrophage marker.xlsx, Marker.xlsx), cell annotations (TcellAnnotation.csv), and enrichment results

### Fig7: Clinical Outcomes and Tumor-Associated Expression
- **Fig7-A-B.Rmd**: Clinical stage expression analysis and survival analysis
- **Figure 7.xlsx**: Complete data for Figure 7
- **Figure Caption**: C9ORF50 correlates with adverse clinical outcomes and exhibits tumor-associated expression.
- **Data/**: Contains pancancer expression data for C9orf50 and related genes (XENA_pancancer_c9orf50.tsv, XENA_pancancer_CD274.tsv, XENA_pancancer_PDCD1LG2.tsv)
- **Surv/**: Comprehensive survival analysis results across multiple cancer types and survival metrics (OS, DSS, PFI, DFI)
- Additional scripts: fig7FG.Rmd, fig7H.Rmd, Util.R
- Supporting data: TumorNormalData2.xlsx, Xena COADREAD clinical.tsv, c9orf50_expression_groups.csv

### Fig8: Therapeutic Targeting of C9ORF50
- **Figure 8.xlsx**: Complete data for Figure 8
- **Figure Caption**: Therapeutic targeting of C9ORF50 via RNA interference suppresses cancer progression.
- Analysis scripts and supporting files

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

## Reproducibility
All analyses are fully reproducible using the provided R Markdown files. The scripts include session information at the end to document the exact versions of R and packages used. The processed data objects are stored in `Rdata/` directories within each figure folder to facilitate quick reproduction of results without rerunning computationally intensive steps.

## Citation
If you use this code or data in your research, please cite:

Tong Shao#, Chuanyang Liu#, et al. (2025).Genome-wide CRISPR screen reveals an uncharacterized spliceosome regulator as a potential immunotherapeutic target for cancer therapy. iMeta

Chuanyang Liu, et al. Predator: A novel method for targeted protein degradation. bioRxiv 2020. https://www.biorxiv.org/content/10.1101/2020.07.31.231787v1

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Contact
For questions or issues regarding this repository, please contact:
liuchuanyang13@nudt.edu.cn
