deps <- c("BiocStyle", "dplyr", "factoextra", "ggplot2", "gplots",
          "limma", "magrittr", "MsCoreUtils", "msdata", "MSnID",
          "mzID", "mzR", "patchwork", "PSMatch", "QFeatures", "rpx",
          "Spectra", "tidyr", "tidyverse", "lgatto/msmbstyle")

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install(deps, ask = FALSE, udpate = TRUE)
