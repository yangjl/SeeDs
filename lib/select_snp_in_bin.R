select_snp_in_bin <- function(df = two, binsize=1000000){
    
    df$chr <- gsub("_.*", "", df$snpid)
    df$chr <- gsub("S", "", df$chr)
    df$pos <- as.numeric(as.character(gsub(".*_", "", df$snpid)))
    
    df$bin <- paste(df$chr, round(df$pos/binsize, 0), sep="_")
    df$bin <- as.character(df$bin)
    df$snpid <- as.character(df$snpid)
    allbin <- unique(df$bin)
    myid <- sapply(1:length(allbin), 
                   function(i){
                       subdf <- subset(df, bin %in% allbin[i])
                       #idx <- sample(1:nrow(subdf), 1)
                       #print(i);
                       return(subdf[sample(nrow(subdf), 1), ]$snpid);
                   })
    return(myid)
}