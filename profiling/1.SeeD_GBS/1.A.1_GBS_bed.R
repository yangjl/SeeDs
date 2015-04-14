### Jinliang Yang
### 4/7/2015
### transform GBS format to BED+ format with haplotype call

seeds <- read.delim("data/seeds_09.02.2015_22.38.10.txt")
#[1] 22022    51
idtab <- read.csv("data/SeeD_SID_to_GID.csv")
length(unique(idtab$GID)) #4020
length(unique(idtab$SampleID)) #4710
# Note: 690 accessions were genotyped multiple times

subseed <- subset(seeds, general_identifier %in% idtab$GID)
### 3493 unique accessions with collection information!
out <- merge(idtab, seeds, by.x="GID", by.y="general_identifier")

##### transform GBS to BED+ format
source("lib/gbs2bed.R")
for(i in 5:9){
    gbs2bed(gbsfile= paste0("/group/jrigrp4/SeeData/All_SeeD_2.7_chr", i, "_no_filter.unimputed.hmp.txt"),
            outfile= paste0("/group/jrigrp4/SeeData/chr", i, "_filetered_unimputed.hmp"))
    
}

##### run the following python code to get the SNP frq and missing rate
### run in terminal:
snpfrq -p /group/jrigrp4/SeeData/ -i chr10_filetered_unimputed.hmp -s 6 -m "0N" -a 0 -b 1 -c 2 -o chr10_filetered_unimputed.frq
snpfrq -p /group/jrigrp4/SeeData/ -i chr9_filetered_unimputed.hmp -s 6 -m "0N" -a 0 -b 1 -c 2 -o chr9_filetered_unimputed.frq
snpfrq -p /group/jrigrp4/SeeData/ -i chr8_filetered_unimputed.hmp -s 6 -m "0N" -a 0 -b 1 -c 2 -o chr8_filetered_unimputed.frq
snpfrq -p /group/jrigrp4/SeeData/ -i chr7_filetered_unimputed.hmp -s 6 -m "0N" -a 0 -b 1 -c 2 -o chr7_filetered_unimputed.frq
snpfrq -p /group/jrigrp4/SeeData/ -i chr6_filetered_unimputed.hmp -s 6 -m "0N" -a 0 -b 1 -c 2 -o chr6_filetered_unimputed.frq
snpfrq -p /group/jrigrp4/SeeData/ -i chr5_filetered_unimputed.hmp -s 6 -m "0N" -a 0 -b 1 -c 2 -o chr5_filetered_unimputed.frq
snpfrq -p /group/jrigrp4/SeeData/ -i chr4_filetered_unimputed.hmp -s 6 -m "0N" -a 0 -b 1 -c 2 -o chr4_filetered_unimputed.frq
snpfrq -p /group/jrigrp4/SeeData/ -i chr3_filetered_unimputed.hmp -s 6 -m "0N" -a 0 -b 1 -c 2 -o chr3_filetered_unimputed.frq
snpfrq -p /group/jrigrp4/SeeData/ -i chr2_filetered_unimputed.hmp -s 6 -m "0N" -a 0 -b 1 -c 2 -o chr2_filetered_unimputed.frq
snpfrq -p /group/jrigrp4/SeeData/ -i chr1_filetered_unimputed.hmp -s 6 -m "0N" -a 0 -b 1 -c 2 -o chr1_filetered_unimputed.frq







