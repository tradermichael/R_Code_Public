# Loading the libraries
library(dplyr)
data(murders)

# Create new data frame called my_states which has murder rate, rate rank, and states in regions : northeast & west.
my_states <- murders %>% mutate(rate = total/population * 100000, rank = rank(-rate)) %>% filter(region %in% c("Northeast","West") & rate <1) %>% select(state,rate,rank)



library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)
## fill out the missing parts in filter and aes
gapminder %>% filter(year == 2012 & continent == "Africa" ) %>%
  ggplot(aes(y=life_expectancy , x=fertility  )) +
  geom_point()
