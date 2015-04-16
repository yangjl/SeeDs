### Jinliang Yang
### April 14th, 2015


allzea <- read.csv("data//AllZeaGBSv2.7_publicSamples_metadata20140411.csv")

table(allzea$Project)

table(allzea$GermplasmSet)

ames <- subset(allzea, GermplasmSet %in% "Ames" & Project != "Imputation Test")
write.table(ames$FullName, "data/Taxa_ames_3324.txt", row.names=FALSE, col.names=FALSE, quote=FALSE, sep="\t")

table(ames$Project)

codechunk <- paste("module load gcc jdk/1.8 tassel/5",
                   "run_pipeline.pl -h5 /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5 
-export /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114_ames.hmp -exportType Hapmap 
-includeTaxaInfile data/Taxa_ames_3324.txt",
                   sep="\n")


source("~/Documents/Github/zmSNPtools/Rcodes/setUpslurm.R")

setUpslurm(slurmsh="slurm-scripts/run_h5_hmp.sh",
           codesh= codechunk,
           wd=NULL, jobid="hdf5-hmp", email=TRUE)









#######
allzea <- read.csv("data//AllZeaGBSv2.7_publicSamples_metadata20140411.csv")
table(allzea$GermplasmSet)
table(allzea$Project)



install.packages("devtools")
install.packages("methods")
install.packages("Rcpp")

library("devtools")

install_github("vsbuffalo/tasselr")


library("tasselr")
gbs <- initTasselHDF5("/group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5")

gbs2 <- loadBiallelicGenotypes(gbs)


module load gcc jdk/1.8 tassel/5
#run_pipeline.pl -Xmx64g -fork1 
run_pipeline.pl -hdf5Schema /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5 -export /group/jrigrp4/AllZeaGBSv2.7impV5/schema.txt


-­includeTaxaInFi efile


module load gcc jdk/1.8 tassel/5
run_pipeline.pl -Xmx64g -fork1 -SortGenotypeFilePlugin -inputFile ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5 -outputFile sortedGBS -fileType Hapmap -runfork1

