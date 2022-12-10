
# Load the data
co2_data <- read.csv("~/DESKTOP/owid-co2-data.csv")
co2_data

# Asia coal co2 from 2015 to 2021
Asia_coal_co2 <- co2_data %>%
  filter(country == "Asia") %>%
  filter(year %in% c("2015", "2016", "2017", "2018", "2019", "2020", "2021")) %>%
  select(coal_co2) 
Asia_coal_co2

year <- c("2015", "2016", "2017", "2018", "2019", "2020", "2021")
year

Asia_coal_co2_2015_2021 <- data.frame(year, Asia_coal_co2)
Asia_coal_co2_2015_2021

# Africa co2 from 2015 to 2021
Africa_coal_co2 <- co2_data %>%
  filter()

# Europe co2 from 2015 to 2021


# South America co2 from 2015 to 2021

# North America co2 from 2015 to 2021

# Oceania co2 from 2015 to 2021

# Antarctica co2 from 2015 to 2021






