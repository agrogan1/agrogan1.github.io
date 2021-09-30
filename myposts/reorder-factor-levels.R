#' ---
#' title: "Reordering the Levels Of A Factor For ggplot Graphs"
#' output:
#'   html_document:
#'     highlight: haddock
#'     fig_height: 2
#' ---

# get the data

load("social-service-agency.RData") # simulated data

library(ggplot2) # beautiful graphs

# first graph

ggplot(clients, # the data I am using
                  aes(x = program, # x is program
                      y = mental_health_T2, # y is mental health
                      fill = program)) + # fill is also program
  labs(y = "mental health at time 2") + # labels
  scale_fill_viridis_d() + # beautiful fills
  theme_minimal() + # minimal theme
  stat_summary(fun = "mean", # summarize at mean
               geom = "bar") + # bar geometry 
  labs(title = "Bar Chart")

# What if I want to reorder the categories?
# I do this by reordering the factor levels 
# in the order I want.

clients$program <- factor(clients$program,
                          levels = c("Program B",
                                     "Program A",
                                     "Program D", 
                                     "Program C"))

# second graph

ggplot(clients, # the data I am using
       aes(x = program, # x is program
           y = mental_health_T2, # y is mental health
           fill = program)) + # fill is also program
  labs(y = "mental health at time 2") + # labels
  scale_fill_viridis_d() + # beautiful fills
  theme_minimal() + # minimal theme
  stat_summary(fun = "mean", # summarize at mean
               geom = "bar") + # bar geometry 
  labs(title = "Bar Chart")
