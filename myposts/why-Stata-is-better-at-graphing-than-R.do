capture log close
log using "why-Stata-is-better-at-graphing-than-R", smcl replace
//_1
display c(current_date)
//_2
display c(current_time)
//_3
import delimited "clients.csv", encoding(ISO-8859-2) clear // import data
    
graph bar mental_health_t2, over(program) scheme(michigan) asyvars // bar graph of mental health over program
//_4q
quietly graph export mybarStata.png, width(500) replace
//_^
log close
