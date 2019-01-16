library(dplyr)
library(dslabs)
data(gapminder)
df <- gapminder %>% filter(year == 2012 & continent == "Africa" & fertility <= 3 & life_expectancy >= 70) %>% select(country,region) 
