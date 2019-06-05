library(readxl)

World_Bank_Data_Demo <- read_excel("World Bank Data Demo.xlsx")

library(tidyr) # spread and gather

library(dplyr) # data wrangling including select()

library(ggplot2)

World_Bank_Data_Demo %>% 
  select(country, year, population, Gini) %>% # select vars of interest
  gather(key, # key variable
         value, # value
         3:4) %>% # columns to gather
  ggplot(aes(x = year, # x is year
             y = value)) + # y is value
  geom_point() +
  geom_smooth() +
  facet_wrap(~key, # facet wrap on indicator
             scales = "free") # they are on different scales