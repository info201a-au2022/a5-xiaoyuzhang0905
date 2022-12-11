co2_data <- read.csv("../a5-xiaoyuzhang0905/owid-co2-data.csv")
co2_data


library("dplyr")
library("ggplot2")

# interactive page:
continent_co2 <- co2_data %>%
  filter(country == "Asia" | country == "Africa" | country == "Europe" | country == "South America" | country == "North America" | country == "Oceania" | country == "Antarctica") %>%
  group_by(country) %>%
  summarise(co2 = sum(co2, na.rm = TRUE))
continent_co2

get_co2 <- function(upper_count, lower_count) {
  co2 <- continent_co2 %>%
    group_by(country) %>%
    filter(co2 > lower_count & co2 < upper_count)
  return(co2)
}
 test_1 <- get_co2(500000, 400000)
 test_1
 
 get_co2_chart <- function(upper_count, lower_count) {
   co2 <- get_co2( upper_count, lower_count)
   co2_bar_chart <- ggplot(data = co2) +
     geom_col(mapping = aes(x = country, y = co2), color = "white", fill = "orange") +
     labs(x = "Continents", y = "CO2 Emissions Value", title = "Total Value of CO2 Emissions by Continents from 1750 to 2021")
     
   return(co2_bar_chart)
 }
 
 get_co2_chart(500000, 400000)
 
 # continents select vales
 continent_select_values <- c("Asia", "Africa", "Europe", "South America", "North America", "Oceania", "Antarctica")
 continent_select_values
 
 
 