### Jinliang Yang
### purpose: transform ZeaGBSv2.7 Ames inbred => bed+ format


tab <- read.delim("head100.txt", header=TRUE, sep="\t")

source("lib/gbs2bed_ames.R")
library(data.table)
gbs2bed_ames(gbsfile="/group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_Ames.hmp.txt",
             outfile="/group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_Ames.bed5")

### log
#>>> Read 955690 rows and 3335 (of 3335) columns from 5.960 GB file in 00:05:00
#>>> Changed to BED5+ format and start filtering ...
#>>> Remaining [ 557311 ] sites with two variations!
#>>> Start to IUPAC=>N transforming, recoding and writing ...


snpfrq -p /group/jrigrp4/AllZeaGBSv2.7impV5 -i ZeaGBSv27_Ames.bed5 -s 6 -m "0" -a 0 -b 1 -c 2 -o ZeaGBSv27_Ames.frq

####### Plot the missing rate and MAF
frq <- fread("/group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_Ames.frq", header=TRUE)
frq <- as.data.frame(frq)

par(mfrow=c(1,2))
hist(frq$MAF, breaks=50, xlab="Minor Allele Frequency", main="MAF of Ames")
hist(frq$missing, breaks=50, xlab="Missing Rate", main="Missing Rate of Ames")


dim(subset(frq, MAF > 0.01 & missing < 0.6))



