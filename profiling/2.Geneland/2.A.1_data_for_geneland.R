### Jinliang Yang
### May 6, 2015
### prepare input data for Genelan


### genotype data
source("lib/get_two.R")
library(data.table, lib="~/bin/Rlib/")
source("lib/select_snp_in_bin.R")


two <- get_two() #[1] 525477      9




testid <- select_snp_in_bin(df = two, binsize=1000000)

ids <- data.frame(snpid=testid, other=1)
write.table(ids, "largedata/snpid_sample1.csv", sep=",", row.names=FALSE, quote=FALSE)

id2 <- select_snp_in_bin(df = two, binsize=1000000)

####################
ids <- read.csv("largedata/snpid_sample1.csv")
snp1 <- get_bed_seeds(mysnpid = as.character(ids$snpid), outputfile="", writetable=FALSE)

#####################





