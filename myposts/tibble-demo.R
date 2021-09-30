#' ---
#' title: "Example of Making a DataFrame / Tibble From Published Data"
#' output:
#'   html_document:
#'     highlight: haddock
#' ---

# Use tribble to make a tibble / data.frame
# from published data


# Overview of tribble: https://tibble.tidyverse.org/reference/tribble.html
# Published Data: https://www.prri.org/research/despite-partisan-rancor-despite-partisan-rancor-americans-broadly-support-lgbtq-rights-broadly-support-lgbtq-rights/
# Table 4.1

library(tibble)

mydata <- tribble(
  ~age, ~AllAmericans, ~CompletelyAgainst, ~SomewhatAgainst, ~SomewhatInFavor, ~CompletelyFavor, ~DontKnow,
  "Ages 18-29", 21, 13, 15, 20, 26, 14,
  "Ages 30-49", 33, 27, 27, 36, 36, 27,
  "Ages 50-64", 25, 32, 28, 25, 22, 27,
  "Ages 65+", 21, 28, 29, 20, 16, 31
)

mydata # replay

library(ggplot2)

ggplot(mydata,
       aes(x = age,
           y = CompletelyFavor,
           fill = CompletelyFavor)) +
  labs(title = "Views Toward LBTQ Policies") +
  geom_col() + # columns
  scale_fill_viridis_c()