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

###
summary(gapminder)
                country           year      infant_mortality life_expectancy
 Albania            :   57   Min.   :1960   Min.   :  1.50   Min.   :13.20  
 Algeria            :   57   1st Qu.:1974   1st Qu.: 16.00   1st Qu.:57.50  
 Angola             :   57   Median :1988   Median : 41.50   Median :67.54  
 Antigua and Barbuda:   57   Mean   :1988   Mean   : 55.31   Mean   :64.81  
 Argentina          :   57   3rd Qu.:2002   3rd Qu.: 85.10   3rd Qu.:73.00  
 Armenia            :   57   Max.   :2016   Max.   :276.90   Max.   :83.90  
 (Other)            :10203                  NA's   :1453                    
   fertility       population             gdp               continent   
 Min.   :0.840   Min.   :3.124e+04   Min.   :4.040e+07   Africa  :2907  
 1st Qu.:2.200   1st Qu.:1.333e+06   1st Qu.:1.846e+09   Americas:2052  
 Median :3.750   Median :5.009e+06   Median :7.794e+09   Asia    :2679  
 Mean   :4.084   Mean   :2.701e+07   Mean   :1.480e+11   Europe  :2223  
 3rd Qu.:6.000   3rd Qu.:1.523e+07   3rd Qu.:5.540e+10   Oceania : 684  
 Max.   :9.220   Max.   :1.376e+09   Max.   :1.174e+13                  
 NA's   :187     NA's   :185         NA's   :2972                       
             region    
 Western Asia   :1026  
 Eastern Africa : 912  
 Western Africa : 912  
 Caribbean      : 741  
 South America  : 684  
 Southern Europe: 684  
 (Other)        :5586
