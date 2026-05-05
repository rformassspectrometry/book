if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

deps <- c("dplyr", "factoextra", "ggplot2", "gplots", "limma",
          "magrittr", "MsCoreUtils", "MsDataHub", "MSnID", "mzID", "mzR",
          "patchwork", "PSMatch", "PTMods", "QFeatures", "rpx", "Spectra",
          "tidyr", "tidyverse", "impute", "MSnID")
BiocManager::install(deps, ask = FALSE, udpate = TRUE)

deps2 <- c("lgatto/msmbstyle", "BiocStyle", "bookdown")
BiocManager::install(deps2, ask = FALSE, udpate = TRUE)
