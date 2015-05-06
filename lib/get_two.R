### get common sets of SNPs
get_two <- function(){
    ###>>> SeeDs without any filtering
    chr <- data.frame()
    for(i in 1:10){
        tem <- read.table(paste0("/group/jrigrp4/SeeData/chr", i, "_filetered_unimputed.frq"), header=TRUE)
        chr <- rbind(chr, tem)
    }
    message(sprintf("###>>> Loaded [ %s ] SeeDs SNPs", nrow(chr)))
    ###>>> Ames data
    ames <- fread("/group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_Ames.frq", header=TRUE)
    ames<- as.data.frame(ames)
    message(sprintf("###>>> Loaded [ %s ] Ames SNPs", nrow(ames) ))
    
    ###>>> merge the two sets
    twoset <- merge(chr, ames, by="snpid")
    return(twoset)
}

get_bed_seeds <- function(mysnpid = two$snpid, outputfile="/group/jrigrp4/SeeData/SeeDs_common_525k.bed5", writetable=TRUE){
    ###>>> SeeDs without any filtering
    chr <- data.frame()
    
    i =1
    tem <- fread(paste0("/group/jrigrp4/SeeData/chr", i, "_filetered_unimputed.hmp"), header=TRUE, sep="\t")
    tem <- as.data.frame(tem)
    tem$snpid <- as.character(tem$snpid)
    tem <- subset(tem, snpid %in% mysnpid)
    if(writetable){
        write.table(chr, outputfile, sep="\t", row.names=FALSE, quote=FALSE)
    }else{
        chr <- rbind(chr, tem)
    }
    
    for(i in 2:10){
        tem <- fread(paste0("/group/jrigrp4/SeeData/chr", i, "_filetered_unimputed.hmp"), header=TRUE, sep="\t")
        tem <- as.data.frame(tem)
        tem$snpid <- as.character(tem$snpid)
        tem <- subset(tem, snpid %in% mysnpid)
        if(writetable){
            write.table(chr, outputfile, sep="\t", row.names=FALSE, col.names=FALSE, quote=FALSE, append=TRUE)
        }else{
            chr <- rbind(chr, tem)
        }
        chr <- rbind(chr, tem)
    }
    #message(sprintf("###>>> Loaded [ %s ] SeeDs SNPs", nrow(chr)))
    if(!writetable){
        return(chr)
    }
}

get_bed_ames <- function(mysnpid= two$snpid, outputfile="", writetable=TRUE){
    ###>>> Ames data
    ames <- fread("/group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_Ames.bed5", header=TRUE)
    ames<- as.data.frame(ames)
    message(sprintf("###>>> Loaded [ %s ] Ames SNPs", nrow(ames) ))
    
    ###>>> merge the two sets
    ames <- subset(ames, snpid %in% snpid)
    if(writetable){
        write.table(ames, outputfile, sep="\t", row.names=FALSE, quote=FALSE)
    }else{
        return(ames)
    }
    
}