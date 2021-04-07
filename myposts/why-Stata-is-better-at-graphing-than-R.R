#_1
library(readr) # library to import data
    
clients <- read_csv("clients.csv") # import data
    
library(ggplot2)
    
library(michigancolors)

ggplot(clients, # the data that I am using
  aes(x = program, # 'aesthetic' includes x
      y = mental_health_T2, # and y
      fill = program)) + 
  stat_summary(fun = mean, # summarizing y 
               geom = "bar") + # with bars
  scale_fill_manual(values = michigancolors()) +
  theme(axis.text.x = element_text(size = rel(.3)))
#_2q
# ggsave("mybarR.png", width = 3, height = 3)
#_^
