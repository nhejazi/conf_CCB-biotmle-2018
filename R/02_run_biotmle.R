library(biotmle)
g_lib = c("SL.mean", "SL.speedglm")
Q_lib = c("SL.mean", "SL.speedglm")
biotmle_results <- biomarkertmle(se = se[1:250,], varInt = 1, family = "gaussian",
                                 g_lib = g_lib, Q_lib = Q_lib, parallel = TRUE
                                )
eif_test <- modtest_ic(biotmle = biotmle_results)

