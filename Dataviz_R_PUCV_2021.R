cran_packages <- c("broom","car","corrplot","devtools","flextable","FSA","ggplot2","ggpubr","ggrepel","gridExtra","gtsummary","Hmisc","knitr",
                   "patchwork","pheatmap","RColorBrewer","rcompanion","readxl","report","rmarkdown","rmarkdown","scales","tidyverse","viridis")
git_packages <- c("vqv/ggbiplot")

# Instalar paquetes CRAN
.inst <- cran_packages %in% installed.packages()
if(any(!.inst)) {
  install.packages(cran_packages[!.inst])
}

# Instalar paquetes GitHub
.inst <- git_packages %in% installed.packages()
if(any(!.inst)) {
  devtools::install_github(git_packages[!.inst])
}