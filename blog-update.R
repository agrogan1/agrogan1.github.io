# blog update

library(rmarkdown)

# render first to update blog post data RData file

render("./myposts/index.Rmd") 

# render home page

render("index.Rmd")
