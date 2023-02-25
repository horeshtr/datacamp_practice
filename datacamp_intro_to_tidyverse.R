# Datacamp - Introduction to the tidyverse

if(!require(gapminder)) install.packages("gapminder")
if(!require(dplyr)) install.packages("dplyr")

library(gapminder)
library(dplyr)


#### Wrangling data using dplyr

# filter

# filtering for one year
gapminder %>%
  filter(year == 2007)

# filtering for one country
gapminder %>%
  filter(country = "United States")

# filtering for multiple conditions
gapminder %>%
  filter(year == 2007, country == "United States")


# arrange

# sort by ascending GDP per capita
gapminder %>%
  arrange(gdpPercap)

# sort by descending GDP per capita
gapminder %>%
  arrange(desc(gdpPercap))


# mutate

# create a column for total GDP
gapminder %>%
  mutate(gdp = pop * gdpPercap)


### Visualizing data using ggplot2

# 