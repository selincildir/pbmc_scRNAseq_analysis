# PBMC scRNA-seq Training Analysis
This repository documents a training analysis of a Peripheral Blood Mononuclear Cells (PBMC) dataset obtained from [10X Genomics](https://www.10xgenomics.com/). The dataset comprises 2700 single cells sequenced on the Illumina NextSeq 500 platform. This analysis follows the PBMC3k tutorial provided by the [Satija Lab](https://satijalab.org/seurat/articles/pbmc3k_tutorial) and serves as a hands-on learning resource for single-cell RNA sequencing (scRNA-seq) analysis.

## Objectives
The main goal of this training exercise is to help learners understand the steps involved in scRNA-seq analysis using Seurat. By following this repository, users will gain practical experience with:

- Data Pre-processing: Importing and filtering the dataset to remove low-quality cells and unwanted sources of variation.
- Quality Control: Evaluating cell metrics such as gene count, UMIs, and mitochondrial gene expression.
- Normalization and Scaling: Transforming data to allow meaningful comparisons across cells.
- Dimensionality Reduction: Performing PCA and other techniques for visualisation and downstream clustering.
- Clustering: Identifying distinct populations of cells within the dataset.
- Visualisation: Creating visual representations of the data, including UMAP/t-SNE plots and marker gene expression profiles.

## Dataset Information
- Source: [10X Genomics](https://www.10xgenomics.com/)
- Content: 2700 single cells
- Sequencing Platform: Illumina NextSeq 500

## Key Features
- Step-by-step analysis aligned with the Seurat PBMC3k tutorial.
- Annotated scripts and functions for scRNA-seq beginners.
- Visualisation and interpretation of clustering results and marker genes.
- Fully reproducible workflow for training purposes.

## How to Clone the Repository
To clone the repository, run the following command:

#### bash:
```
git clone https://github.com/selincildir/pbmc_scRNAseq_analysis.git
cd pbmc_scRNAseq_analysis
```

Follow the provided scripts in sequential order to perform the analysis.

Refer to the [PBMC3k tutorial](https://satijalab.org/seurat/articles/pbmc3k_tutorial) for additional context and explanations.

## Dependencies
Ensure you have the following tools and packages installed:

- R (>= 4.0)
- Seurat R package (>= 4.0)
- Other required packages: ggplot2, dplyr, patchwork
- Refer to [tutorial's setup instructions](https://satijalab.org/seurat/articles/pbmc3k_tutorial) for additional dependencies.

## Learning Outcomes
By completing this training analysis, you will:

- Understand the key steps in scRNA-seq data analysis.
- Gain hands-on experience with the Seurat toolkit.
- Develop skills to analyse and interpret single-cell datasets.

## Acknowledgements
This analysis is based on the PBMC3k tutorial provided by the Seurat team. The tutorial and dataset are freely available at https://satijalab.org/seurat.
