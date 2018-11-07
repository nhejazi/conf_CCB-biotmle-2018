plot(x = eif_test, type = "pvals_adj")

plot(x = eif_test, type = "pvals_raw")

pdf(file = here("figs", "supervised_heatmap.pdf"))
heatmap_ic(x = eif_test,
           clustering.method = "hierarchical",
           left.label = "none",
           #bottom.label = "variable",
           #col.dendrogram = TRUE,
           pretty.order.rows = TRUE,
           pretty.order.cols = TRUE,
           #smooth.heat = TRUE,
           scale = TRUE,
           design = as.numeric(A == min(A)),
           FDRcutoff = 0.2,
           top = 50)
dev.off()

