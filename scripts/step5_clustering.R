# Nearest-neighbor graph construction
pbmc <- FindNeighbors(pbmc, dims = 1:10)

# Clustering using Louvain algorithm
pbmc <- FindClusters(pbmc, resolution = 0.5)

# Save clustering results
write.table(Idents(pbmc), file = "clustering_results.txt", row.names = TRUE, col.names = TRUE)

# Visualize clusters using a UMAP plot
pbmc <- RunUMAP(pbmc, dims = 1:10)
DimPlot(pbmc, reduction = "umap", group.by = "seurat_clusters")