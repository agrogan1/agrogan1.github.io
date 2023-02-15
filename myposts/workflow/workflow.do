* Learning About Penguins

* Ask A Question

* What can I learn about penguins?
  
* Open The Raw Data

use "https://github.com/agrogan1/Stata/raw/master/do-files/penguins.dta", clear 

* Clean and Wrangle Data

generate big_penguin = body_mass_g > 4000 // create a big penguin variable

* Descriptive Statistics

summarize culmen_length_mm culmen_depth_mm flipper_length_mm body_mass_g

tabulate big_penguin

tabulate species

* Visualize The Data

graph bar body_mass_g, over(species) scheme(s1color) // bar graph

twoway scatter culmen_length_mm body_mass_g, scheme(s1color) // scatterplot

* Analyze

regress culmen_length_mm body_mass_g // regress culmen length on body mass

