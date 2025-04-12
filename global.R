# Carregar pacotes
library(shiny)
library(ggplot2)
library(dplyr)
library(colourpicker)

# Carregar base de dados
tech_filter <- tech_filter
tech_sudeste <- tech_sudeste
tech_sudeste$mes_ano <- as.Date(tech_sudeste$mes_ano)
