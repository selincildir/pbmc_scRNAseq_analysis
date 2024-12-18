# Load libraries
library(dplyr)
library(Seurat)
library(patchwork)

# Read PBMC data
pbmc.data <- Read10X(data.dir = "~/Bioinformatics/pbmc_scRNAseq_analysis/data/pbmc3k_filtered_gene_bc_matrices/filtered_gene_bc_matrices/hg19")
pbmc <- CreateSeuratObject(counts = pbmc.data, project = "pbmc3k", min.cells = 3, min.features = 200)
pbmc

# Save basic Seurat object summary to a file
capture.output(pbmc, file = "seurat_object_summary.txt")

