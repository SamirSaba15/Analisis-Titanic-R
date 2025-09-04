# Ejecuta: source("install.R")
pkgs <- c(
  "tidyverse",
  "janitor",
  "caret",
  "pROC",
  "randomForest",
  "plotly",
  "readr",
  "stringr",
  "ggplot2"
)

to_install <- setdiff(pkgs, rownames(installed.packages()))
if (length(to_install)) install.packages(to_install, dependencies = TRUE)
print("Paquetes listos.")
