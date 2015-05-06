### Jinliang Yang
### April 9th, 2015


chrfrq <- function(){
    chr <- data.frame()
    for(i in 1:10){
        tem <- read.table(paste0("/group/jrigrp4/SeeData/chr", i, "_filetered_unimputed.frq"), header=TRUE)
        chr <- rbind(chr, tem)
    }
    return(chr)
}

chr <- chrfrq()
dim(chr)

par(mfrow=c(1,2))
hist(chr$MAF, breaks=50, xlab="Minor Allele Frequency", main="MAF of SeeDs")
hist(chr$missing, breaks=50, xlab="Missing Rate", main="Missing Rate of SeeDs")


dim(subset(chr, MAF > 0.01 & missing < 0.6))
#[1] 249116      5
