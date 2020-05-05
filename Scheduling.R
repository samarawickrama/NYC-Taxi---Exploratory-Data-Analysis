
rm(list = ls())

if (!require(rstudioapi)) install.packages('rstudioapi')
library(rstudioapi)

# Getting the path of your current open file
current_path = rstudioapi::getActiveDocumentContext()$path 
setwd(dirname(current_path ))
print(getwd())

rmarkdown::render('Database_Handler.Rmd')

rmarkdown::render('Exploratory_Data_Analysis.Rmd')

rmarkdown::render('Modelling.Rmd')

rmarkdown::render('Prescriptive_Analytics.Rmd')






