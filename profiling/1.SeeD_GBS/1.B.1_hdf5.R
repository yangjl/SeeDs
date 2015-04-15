### Jinliang Yang
### April 14th, 2015


allzea <- read.csv("data//AllZeaGBSv2.7_publicSamples_metadata20140411.csv")
table(allzea$GermplasmSet)
table(allzea$Project)



install.packages("devtools")
install.packages("methods")
install.packages("Rcpp")

library("devtools")

install_github("vsbuffalo/tasselr")

