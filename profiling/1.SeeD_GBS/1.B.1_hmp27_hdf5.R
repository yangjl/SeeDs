### Jinliang Yang
### April 14th, 2015


allzea <- read.csv("data//AllZeaGBSv2.7_publicSamples_metadata20140411.csv")

table(allzea$Project)

table(allzea$GermplasmSet)

ames <- subset(allzea, GermplasmSet %in% "Ames" & Project != "Imputation Test")

ames$taxa <- paste(ames$DNASample, ames$LibraryPrepID, sep=":")
write.table(ames$taxa, "data/Taxa_ames_3324.txt", row.names=FALSE, col.names=FALSE, quote=FALSE, sep="\t")

idx <- grep("250007467", allzea$FullName)


table(ames$Project)
table(ames$GermplasmSet)



#####
source("~/Documents/Github/zmSNPtools/Rcodes/setUpslurm.R")

codechunk <- paste("module load gcc jdk/1.8 tassel/5",
                   ### dump as hmp
                   paste(
"run_pipeline.pl -Xmx64g -h5 /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5", 
"-export /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114 -exportType Hapmap"), 
                   ### sort it
                    paste("run_pipeline.pl -Xmx64g -SortGenotypeFilePlugin -inputFile /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.hmp.txt",
                          "-outputFile /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_sorted -fileType Hapmap")
                          
                    )

#first you'll need to sort the GBS 2.7 - this takes awhile (1 hour) - so just copy my version from here:/group/jrigrp4/Justin_Kate/GBS2.7
# 'sortedGBS.hmp.txt' - if you want to do it yourself
run_pipeline.pl -Xmx64g -SortGenotypeFilePlugin -inputFile AllZeaGBSv2.7_publicSamples_imputedV3b_agpv3.hmp.gz -outputFile sortedGBS -fileType Hapmap

# for GBS 2.7, the "keep_list_NAM_children.txt" is just a one column list of GBS runs I want to keep
run_pipeline.pl -Xmx64g -fork1 -h ZeaGBSv27_sorted.hmp.txt -includeTaxaInfile /home/jolyang/Documents/Github/SeeDs/data/Taxa_ames_3324.txt -export ZeaGBSv27_Ames -exportType Hapmap -runfork1

# to export - whatever the hdf5 file is - if you want plink -'Plink' or 'Hapmap' for hmp
run_pipeline.pl -Xmx64g -fork1 -h5 $file -export -exportType VCF -runfork1

module load gcc jdk/1.8 tassel/5
run_pipeline.pl -Xmx64g -h5 ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5 -export Zea_Ames -exportType Hapmap -includeTaxaInfile /home/jolyang/Documents/Github/SeeDs/data/Taxa_ames_3324.txt



sep="\n")

setUpslurm(slurmsh="slurm-scripts/run_h5_hmp.sh",
           codesh= codechunk,
           wd=NULL, jobid="hdf5-hmp", email=TRUE)

--get-user-env


test <- read.delim("head100.txt", sep="\t",  header=TRUE)

install.packages("data.table")
library(data.table)


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



module load gcc jdk/1.8 tassel/5
run_pipeline.pl -Xmx64g -fork1 -SortGenotypeFilePlugin -inputFile ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5 -outputFile sortedGBS -fileType Hapmap -runfork1

