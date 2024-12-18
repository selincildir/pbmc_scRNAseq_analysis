# Scale data
pbmc <- ScaleData(pbmc)

# PCA
pbmc <- RunPCA(pbmc, features = VariableFeatures(pbmc))

# Visualize PCA
ElbowPlot(pbmc)
