# SeeDs data some potential project ideas

## Data description

1. Some 4700 individuals
2. 4127 with spatial coordinates and hence elevation (lat range -38 to 30)
3. Span in dates is 1943-2010 (some years sampled more intensely than others)


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

#### Caveats

We need clear hypotheses.  Pyäjärvi lacked these, and then unless we find something super awesome, we're left with a very descriptive paper of less interest. What are these? We will find SNPs with Bayenv, we will find traits under selection with SQuaT, and we will find admixture with Spacemix.  So what? 

