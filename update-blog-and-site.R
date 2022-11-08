# update blog and site

library(rmarkdown)

# first render blog index to update blog post .RData file

render("./myposts/index.Rmd") 

# then render home page

render("index.Rmd")



