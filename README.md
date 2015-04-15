# SeeDs data some potential project ideas

## Data description

### Landrace accessions:
1. Some 4,700 individuals
2. **4,127** with spatial coordinates and hence elevation (lat range -38 to 30)
3. Note 3,493 accessions are unique.
4. Span in dates is 1943-2010 (some years sampled more intensely than others)

### GBS data:
For GWAS, the data need to be imputed. For others, imputation maybe not necessary. The statistics of the unimputed GBSv2.7:  
1. The total number of SNPs is 729, 528; it rapidly reduced to 249,116 with MAF > 0.01 and missing rate < 0.6.  
2. Data could be found here on *farm*:  
```
/group/jrigrp4/SeeData
```

### Climate data

## IDEA 1: 
The consistency/dynamics of the selection differential $s$ (probably better to look at this) or $\beta$ (not this - selection gradient) through time on a given trait or set of alleles underlying a trait.
The idea here is that the selection gradient may end up being a net 0 for a set of alleles (can we find a single population?). 

- Look at SNPs for GWAS - Alberto's paper.
- Does balancing or directional selection predominate through time on alleles that are affiliated with a fitness correlate early flowering?
- Track change in allele frequency affiliated with a given GWAS SNP for flowering time or whatever else Alberto measured through time $$\frac{df_{A}}{dt}=sf_{A}(1-f_{A})$$

We'll have to correct for population structure, and correlated temporal measurements - or just treat each year as a separate generation.

## SPACEMIX
Assess the movement of alleles associated with flowering time and their movement latitudinally through space. 

## Qx?
Should we try it out here? 


## Scan for Climate and local adaptation

Let us grab climate data from [here](http://www.worldclim.org/current) and conduct GWAS on them. We can follow the below papers for further interpretation.

[Fournier-Level et al, 2011](http://www.ncbi.nlm.nih.gov/pubmed/21980109)  
[Hancock  et al, 2011](http://www.ncbi.nlm.nih.gov/pubmed/21980108)

## Origin of the modern maize

Compute the relatedness of the Ames Inbred lines (N = 2,000) with SeeDs data. The results will enable us to investigate the following questions?

- The origin of the modern maize relative to the diverse landraces.
- The underrepresented landraces?
- The enrichment of the climate and local adaptation alleles in these underrepresented landraces?

## To do list Tuesday next week - April 21 st
1. Clean the Ames and SeeDs data, possibly 55k chip for teosinte parviglumis and mexicana - **Jinliang**
2. Climate data - **KATE** - store on shared drive.
