# sort bibliography

library(RefManageR)

mybib <- ReadBib("agrogan.bib")

mybib <- sort(mybib, sorting = "nyt") # sort by name - year - title

WriteBib(mybib, file = "agrogan.bib")

# fix strings with Spanish accents
# because RefManageR somehow kludges them

bibliography  <- readLines("agrogan.bib")

bibliography  <- gsub(pattern = "Ignacio Mart{\\a'\\i}n-Bar{\\a'o}", 
                      replace = "Ignacio Martín-Baró", 
                      x = bibliography,
                      fixed = TRUE)

bibliography  <- gsub(pattern = "Ellacur{\\a'\\i}a", 
                      replace = "Ellacuría", 
                      x = bibliography,
                      fixed = TRUE)


writeLines(bibliography, con="agrogan.bib")
