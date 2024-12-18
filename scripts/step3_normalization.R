# Normalize data
pbmc <- NormalizeData(pbmc, normalization.method = "LogNormalize", scale.factor = 10000)

# Identify highly variable features
pbmc <- FindVariableFeatures(pbmc, selection.method = "vst", nfeatures = 2000)

# Save top variable genes
top10 <- head(VariableFeatures(pbmc), 10)
write.table(top10, file = "top10_variable_genes.txt", row.names = FALSE, col.names = TRUE)

# Visualize variable features
VariableFeaturePlot(pbmc)
ggsave("variable_features_plot.png")