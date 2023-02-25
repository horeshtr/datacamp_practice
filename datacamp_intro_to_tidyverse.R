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

# load the ggplot2 package if needed
if(!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

# create a subset of only 2007 data
gapminder_2007 <- gapminder %>%
  filter(year == 2007)

# visualize life expectancy by GDP per capita with ggplot2
ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point()

# log scales
ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point() + 
  scale_x_log10()

# additional aesthetics
ggplot(gapminder_2007, 
       aes(x = gdpPercap, y = lifeExp, color = continent, size = pop)) + 
  geom_point() + 
  scale_x_log10()


