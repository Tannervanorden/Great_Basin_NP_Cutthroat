# Great_Basin_NP_Cutthroat
This is a repository full of code used for population genetic analysese and corresponding figures made following this tutorial "https://github.com/nt246/lcwgs-guide-tutorial" using low coverage whole genomes from Great Basin National Park Bonneville cutthroat trout. Many of the .sh scripts were used multiple time so file names were subbed in and out. Nulceotide diversity(π) values were calculated from angsd Thetastat and was read into a csv file using angsdr.

Trimmomatic.sh, deduplicate.sh, Reference_Build.sh, and map_sort_filter.sh represent how raw reads were mapped to the Greenback Cutthroat Trout Reference genome.

SNP.sh and ngsLD.sh were used to find the original SNPs shared by different Bonneville Cutthroat Trout populations.

SAF.sh, and SFS.sh in conjunction with Nucleotide_Diversity_RGraphs.R were used to calculate nucleotide diversity(π) and Fst according to instructions found in the tutorial. 

Plot_nucleotideDiversity.py was used to plot the nucleotide diversity(π) for all populations though Hendrys.py and Mill.py represent how to plot individual populations
  Hendrys.py is the graph of historical compared to modern nucleotide diversity(π) in Hendry's Creek.
  Mill.py is the graph of historical compared to modern nucleotide diversity(π) in Mill Creek.

PCA.sh is an example of a how PCA was conducted in this study.

Original.R is the PCA plot of all original populations compared to other Bonneville Cutthroat Trout.

High_Diversity_PCA_Unedited.R is the PCA plot of all populations sticked with multiple different strains compared to Great Basin National Park stocking sources.

FST.R was used to create the heat map of FST values of different Bonneville cutthroat trout populations.

Heterozygosity.R is an example file that was used to calculate heterozygosity. This was following the tutorial found here "https://www.popgen.dk/angsd/index.php/Heterozygosity"


