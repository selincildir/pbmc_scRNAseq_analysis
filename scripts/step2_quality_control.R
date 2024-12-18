# QC metrics: number of features (genes), UMIs, mitochondrial gene expression
pbmc[["percent.mt"]] <- PercentageFeatureSet(pbmc, pattern = "^MT-")

# Visualize QC metrics
VlnPlot(pbmc, features = c("nFeature_RNA", "nCount_RNA", "percent.mt"), ncol = 3)

# Save QC plot
ggsave("qc_violin_plot.png")

# Filter cells
pbmc <- subset(pbmc, subset = nFeature_RNA > 200 & nFeature_RNA < 2500 & percent.mt < 5)

# Save filtered summary
capture.output(pbmc, file = "filtered_seurat_summary.txt")