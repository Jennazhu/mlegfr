## code to prepare `DATASET` dataset goes here
modelpath <-  "C:/Users/Jenna Zhu/OneDrive - University of Mississippi Medical Center/thesis/2-programs/equation developing/"
mfp1 <- readRDS(paste0(modelpath, "model output/mfp1.rds"))
gam1 <- readRDS(paste0(modelpath, "model output/gam1.rds"))
rf1  <- readRDS(paste0(modelpath, "model output/rf1.rds"))


modelpath1 <-  "C:/Users/Jenna Zhu/OneDrive - University of Mississippi Medical Center/thesis/2-programs/calculatorApp/1-data/"
load(paste0(modelpath1,"example_data.RData"))


usethis::use_data(mfp1, gam1, rf1, example_data,internal = TRUE,overwrite = TRUE)
