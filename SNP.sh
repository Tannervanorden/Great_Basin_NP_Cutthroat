#!/bin/bash --login

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=8   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=10000M   # memory per CPU core
#SBATCH -J "SNP"   # job name
BASEDIR=~/compute/01.RawData

conda activate ANGSD
angsd -GL 1 -nThreads 8 -doGlf 2  -doMajorMinor 1 -doMaf 1/2   -SNP_pval 1.1102e-16 -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list   -bam $BASEDIR/Cutt_bam/Park.txt -out $BASEDIR/Cutt_results/Original
