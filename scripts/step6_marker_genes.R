# Find markers for each cluster
cluster_markers <- FindAllMarkers(pbmc, only.pos = TRUE, min.pct = 0.25, logfc.threshold = 0.25)

# Save markers to a file
write.table(cluster_markers, file = "cluster_markers.txt", row.names = TRUE, col.names = TRUE)

# Visualize marker gene expression for a cluster
FeaturePlot(pbmc, features = c("MS4A1", "CD79A"))