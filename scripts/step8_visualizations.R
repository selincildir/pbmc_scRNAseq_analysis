# Violin plot of a marker gene across clusters
VlnPlot(pbmc, features = "MS4A1", group.by = "seurat_clusters")


# Heatmap of top marker genes
# Define top markers for each cluster
top10 <- cluster_markers %>%
  group_by(cluster) %>%
  top_n(n = 10, wt = avg_log2FC)

# Generate the heatmap 
heatmap <- DoHeatmap(
  pbmc,
  features = top10$gene,
  size = 4, # Text size for genes
  group.bar = FALSE # Remove the top color scale (cluster bar)
) +
  scale_fill_gradientn(
    colors = c("navy", "white", "firebrick"), # High-contrast gradient
    name = "Expression Level"
  ) +
  theme(
    axis.text.x = element_blank(), # Remove the x-axis text (bottom grey section)
    axis.ticks.x = element_blank(), # Remove x-axis ticks
    axis.text.y = element_text(size = 10), # Adjust text size for genes
    axis.title.x = element_blank(), # Remove x-axis title if present
    plot.margin = unit(c(1, 1, 1, 1), "cm") # Add padding to prevent text cutoff
  )

# Save the cleaned heatmap
ggsave(
  "heatmap_top10_markers_cleaned.png",
  plot = heatmap,
  width = 10, height = 8, dpi = 300
)
