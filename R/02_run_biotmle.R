library(biotmle)
g_lib = c("SL.mean", "SL.speedglm")
Q_lib = c("SL.mean", "SL.speedglm")
biotmle_results <- biomarkertmle(se = se[1:100,], varInt = 1, family = "gaussian",
                                 g_lib = g_lib, Q_lib = Q_lib, parallel = TRUE
                                )
eif_test <- modtest_ic(biotmle = biotmle_results)

plot(x = eif_test, type = "pvals_adj")

plot(x = eif_test, type = "pvals_raw")

heatmap_ic(x = eif_test,
           clustering.method = "hierarchical",
           #smooth.heat = TRUE,
           scale = TRUE,
           design = as.numeric(A == max(A)),
           FDRcutoff = 1,
           top = nrow(eif_test))
