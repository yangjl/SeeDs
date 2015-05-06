### Jinliang Yang
### May 6th, 2015
### find the common set of SNPs between ames and SeeDs

source("lib/get_two.R")
library(data.table)
two <- get_two() #[1] 525477      9
###>>> Loaded [ 729528 ] SeeDs SNPs
###>>> Loaded [ 554187 ] Ames SNPs
flt <- subset(twoset, MAF.x > 0.05 & MAF.y > 0.05 & missing.x < 0.6 & missing.y < 0.6)


###>>> Output SeeDs 525k
get_bed_seeds(mysnpid = two$snpid, outputfile="/group/jrigrp4/SeeData/SeeDs_common_525k.bed5", writetable=TRUE)

####>>> Output Ames 525k
get_bed_ames(mysnpid= two$snpid, outputfile="/group/jrigrp4/SeeData/Ames_common_525k.bed5", writetable=TRUE)

###>>> plots
pdf("graphs/SNPs_MAF_missing.pdf", width=7, height=7)
par(mfrow=c(2,2))
hist(two$MAF.x, breaks=50, xlab="Minor Allele Frequency", main="MAF of SeeDs")
hist(two$missing.x, breaks=50, xlab="Missing Rate", main="Missing Rate of SeeDs")
hist(two$MAF.y, breaks=50, xlab="Minor Allele Frequency", main="MAF of Ames")
hist(two$missing.y, breaks=50, xlab="Missing Rate", main="Missing Rate of Ames")
dev.off()

