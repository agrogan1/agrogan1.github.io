# sort bibliography

library(RefManageR)

mybib <- ReadBib("agrogan.bib")

mybib <- sort(mybib, sorting = "nyt") # sort by name - year - title

WriteBib(mybib, file = "agrogan.bib")

