plot(x = eif_test, type = "pvals_adj")

plot(x = eif_test, type = "pvals_raw")

heatmap_ic(x = eif_test,
           clustering.method = "hierarchical",
           left.label = "none",
           smooth.heat = TRUE,
           scale = TRUE,
           design = as.numeric(A == max(A)),
           FDRcutoff = 1,
           top = nrow(eif_test))

