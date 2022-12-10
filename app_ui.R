library(shiny)
library(ggplot2)
library(markdown)

source("")

page_one <- tabPanel(
  "Introduction",
  titlePanel(img(src = "co2 emission.jpeg")),
  
  headerPanel("Introduction"),
  
  mainPanel(
    p("Introduce the topic......"),
    p(),
    h4("What is the average total CO2 emissions in North America from 1750 to 2021, in millions of tons?"),
    p(" uses the variable: co2 (codebook, line 9) answer: 2043.1 millions of tons. explanation of the above question........"),
    p(),
    h4("Which continent has the highest total cumulative CO2 emissions? in which year?"),
    p("uses the variable: cumulative_co2 (codebook, line 27) answer: Asia in 2021 has the highest 557596.6, explanation of the above question...."),
    p(),
    h4("Which continent has the lowest total culmulative CO2 emissions? in which year?"),
    p("sues the variable: cumulative_co2 (codebook, line 27) answer: Asia in 1830 has the lowest 0.002, explanation of the above question.....")
  )
)
