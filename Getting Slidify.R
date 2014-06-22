# R Code to get slidify

# install devtools
devtools::install_github("devtools")
library(devtools)

# install slidify
if (!require("devtools"))
  install.packages("devtools")
devtools::install_github("rstudio/shinyapps")
library(slidify)

# Create a project named Temp_Converter
author("Temp_Converter")

