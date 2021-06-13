cran_packages <- c("broom","corrplot","devtools","flextable","FSA","ggplot2","ggpubr","ggrepel","gridExtra","gtsummary","Hmisc","knitr",
                   "patchwork","pheatmap","RColorBrewer","rcompanion","report","rmarkdown","rmarkdown","scales","tidyverse","viridis")
git_packages <- c("vqv/ggbiplot")

# Instalar paquetes CRAN
.inst <- cran_packages %in% installed.packages()
if(any(!.inst)) {
  install.packages(cran_packages[!.inst])
}

# Instalar paquetes GitHub
.inst <- git_source %in% installed.packages()
if(any(!.inst)) {
  devtools::install_github(git_source[!.inst])
}