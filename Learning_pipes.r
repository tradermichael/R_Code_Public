# Loading the libraries
library(dplyr)
data(murders)

# Create new data frame called my_states which has murder rate, rate rank, and states in regions : northeast & west.
my_states <- murders %>% mutate(rate = total/population * 100000, rank = rank(-rate)) %>% filter(region %in% c("Northeast","West") & rate <1) %>% select(state,rate,rank)
