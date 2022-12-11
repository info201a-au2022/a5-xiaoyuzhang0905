library(shiny)
library(ggplot2)
library(DT)
library(rsconnect)

source("A5 app.R")

page_one <- tabPanel(
  "Introduction",
  
  headerPanel("Introduction"),
  
  mainPanel(
    p("This site does some light research on co2 emissions by using various types of CO2 data from the Our World in Data website for all parts of the world and all continents. The main objective of the study is ‘to compare total co2 emissions from the seven continents of the world from 1750 to 2021, the longest time frame recorded in the database.’ The data used is the co2 variable in the database, which refers to annual total production-based emissions of CO2, excluding land-use change, measured in million tonnes. The reason for deciding to study the world's continents rather than countries is that a comparison of CO2 emissions between continents gives a clearer picture of the overall situation in a region than a comparison of CO2 between countries.But before I explore this comparative case, I want to explore three values based on my personal interest
      Here are the three questions I explored："),
    p(),
    h4("1. What is the average total CO2 emissions in North America from 1750 to 2021, in millions of tons?"),
    p(" For this question, I used the variable 'co2' from the dataset to explore. After calculating, the average total emissions in North America from 1750 to 2021 is 2043.1 millions of tons.The reason for my interest in this issue is that North America is a large continent and also the United States and Canada, two economically and technologically advanced countries, occupy most of the area of this continent. So I am curious about what kind of level of co2 emissions the developed countries can bring."),
    p(),
    h4("2. Which continent has the highest total cumulative CO2 emissions?"),
    p("To explore answer of this question, I calculated by using the variable 'cumulative_co2' from the dataset. For the, result, Asia is the continent who has the highest total cumulative CO2 emissions, which is around 557596.6 millions of tons. Because the highest cumulative emissions represent the total cumulative value from 1750 to 2021, the result will represent the continent with the highest level of co2 emissions and environmental pollution among all continents in the world. "),
    p(),
    h4("3. Which continent has the lowest total culmulative CO2 emissions? in which year?"),
    p("Contrary to the second question. Here I investigate the continent who has the lowest total cumulative CO2 emissions at the very beginning, and the result is something I didn't expect. The result shows that Asia is the cotinent who has the lowest cumulative CO2 emission value, which is 0.002 million of tons. Based on the second research question and the results of this question, Asia, as the country with both the lowest and the highest cumulative emissions, is able to reflect the fact that Asia may have developed faster than other countries in terms of industrial and technological development in the last century, leading to the results of this study."),
    p()
  )
)

page_two <- tabPanel(
  "Cotinent Total CO2 Emissions", 
  headerPanel("How's the Total CO2 Emissions Level for each Continent in the World?"),
  sidebarPanel(
    sliderInput("co2_slider", label = h3("CO2 Emission Value"), min = 0, max = 600000, value = c(0, 600000)), 
    selectInput(
      "x_var", 
      label = "Continent Options",
      choices = continent_select_values,
      selected = "North America"
      ),
    p("Data from: owid-co2-data.csv")
  ),
  mainPanel(
    plotOutput("co2_bar", height = "650px"),
    h4("Chart Summary"),
    p("The purpose of the research here is to compare the total emissions of the world's seven continents from the past to the present, with the aim of using the above graphs to determine which regions of the planet have higher CO2 emissions and are likely to be more polluted. The bar chart here provides the total CO2 emissions for seven continents, namely Asia, Africa, Europe, South America, North America, Oceania, and Antarctica, from 1750 to 2021. The slider on the left helps the page viewer to filter the countries that tend to have high, medium, and low levels of emissions, while the selectbar allows the viewer to focus on one continent at a time. The results of the bar chart show that the total CO2 emissions of Asia, Europe, and North America are more different from the other four continents, with Asia having the highest emissions of the seven continents."),
  )
)



ui <- fluidPage( 
  navbarPage (
    "Continent Total CO2 Emissions",
    page_one,
    page_two,
  )
)