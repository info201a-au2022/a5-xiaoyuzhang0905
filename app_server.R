# What is the average total CO2 emissions in North America from 1750 to 2021?
co2_data[co2_data == 0] <- NA

N_America_ave_co2 <- co2_data %>%
  filter(country == "North America") %>%
  select(co2) %>%
  summarize(co2 = mean(co2, na.rm = TRUE))
N_America_ave_co2

# Which continent has the highest total cumulative CO2 emissions? 
continent_cumulative_co2_data <- co2_data %>%
  filter(country == "Asia" | country == "Africa" | country == "Europe" | country == "South America" | country == "North America" | country == "Oceania" | country == "Antarctica") %>%
  select(country, year, cumulative_co2)
continent_cumulative_co2_data

highest_cumulative_co2 <- continent_cumulative_co2_data %>%
  filter(cumulative_co2 == max(cumulative_co2, na.rm = TRUE)) %>%
  select(country, year, cumulative_co2)
highest_cumulative_co2

# Which continent has the highest total cumulative CO2 emissions?
lowest_cumulative_co2 <- continent_cumulative_co2_data %>%
  filter(cumulative_co2 == min(cumulative_co2, na.rm = TRUE)) %>%
  select(country, year, cumulative_co2)
lowest_cumulative_co2


