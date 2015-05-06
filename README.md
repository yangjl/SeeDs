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

Some additional thoughts on these studies - common gardens employed, trait data measured (these are things we don't have). How to get around this?

## Further idea for pop. structure/outlier alleles of interest
[Duforet-Frebourg et al. 2015 preprint pca-adapt](http://arxiv.org/abs/1504.04543)

## Origin of the modern maize

Compute the relatedness of the Ames Inbred lines (N = 2,000) with SeeDs data. The results will enable us to investigate the following questions?

- The origin of the modern maize relative to the diverse landraces.
- The underrepresented landraces?
- The enrichment of the climate and local adaptation alleles in these underrepresented landraces?

## JRI Ideas

#### Coop it up.

* Bedassle (through time) in coordination with Bradburd: identify important environmental variables.  
* Bayenv: find loci associting with environment.  
* SQuaT: find phenotypes from 44 NAM traits showing selection  
* Spacemix: use mexicana and parviglumis GBS samples to look for gene flow?

#### Popgen

* effect size of SNPs and allele frequency  
* GERP and spatial distribution (GERP SNPs limited in space as expected if deleterious?)
* inversion popgen (see ideas in Fang et al. and Pyäjärvi et al.)
* SCAT to localize domestication location better than in van Heerwaarden 2011?

### Quantgen vs. popgen approaches to contemporary evolution - KC
Something more to consider here is that I'm approaching this from an almost total quantgen/micro evol. perspective. I view this dataset as being valuable in the "contemporary evolutionary rate" sense.  Interested to look at the dynamics of _s_ and $beta$ through time, but perhaps what might be neat is getting an estimate of s/beta using both types of approaches (e.g. Mathieson, perhaps some way of pulling it out of Bayenv). Do you get similar estimates of s? Why? Why not? Does s approach 0 for some traits through time, but not others? Why? Why not? What does this say about macro/micro evolutionary rates of evolution via selection? 

Some relevant papers to consider (some are old classics, but others new) with respect to the pace of selection/evolution by selection:
[Ellner et al. 2011](http://onlinelibrary.wiley.com/doi/10.1111/j.1461-0248.2011.01616.x/full)
[Hendry and Kinnison 1999](http://www.jstor.org/stable/2640428?seq=1#page_scan_tab_contents)
[Kinnison and Hendry 2001](http://link.springer.com/chapter/10.1007/978-94-010-0585-2_10)
[Morrissey and Hadfield 2012](http://onlinelibrary.wiley.com/doi/10.1111/j.1558-5646.2011.01444.x/full)

#### Caveats

We need clear hypotheses.  Pyäjärvi lacked these, and then unless we find something super awesome, we're left with a very descriptive paper of less interest. What are these? We will find SNPs with Bayenv, we will find traits under selection with SQuaT, and we will find admixture with Spacemix.  So what?