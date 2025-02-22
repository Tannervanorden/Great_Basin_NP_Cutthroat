#!/bin/bash --login

#SBATCH --time=40:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=130000M   # memory per CPU core
#SBATCH -J "PCA"   # job name
BASEDIR=~/compute/01.RawData
REF=~/compute/01.RawData/Cutthroat/PGA_assembly.fasta

#~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list

conda activate ANGSD

angsd -b Original_bam_WillShin.txt  -anc $REF -out $BASEDIR'/Cutt_results/Plink_Top_100_Original'  \
    -GL 1 -doGlf 2 -doMajorMinor 3 -doMAF 1 -doGeno 1 -doPost 1 -doIBS 1 -doCounts 1 -doCov 1 -makeMatrix 1 -doPlink 2 -sites ~/compute/01.RawData/Cleaned_Ordered_SNP_Data.tsv
