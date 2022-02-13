library(shiny)
library(fpp3)


selectInput(
    inputId = selected.purpose
    label = Select Purpose
    choices = unique(tourism$Purpose)
),
