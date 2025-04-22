#!/bin/bash --login

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=10   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=6144M   # memory per CPU core
#SBATCH -J "Index_"   # job name
BASEDIR=~/nobackup/archive/01.RawData
REF=~/nobackup/archive/01.RawData/Cutthroat/PGA_assembly.fasta
ANC=$BASEDIR/reference/GCA_013265735.3_USDA_OmykA_1.1_genomic.fna

conda activate ANGSD
angsd -b Snake.txt -ref $REF -anc $REF  -out $BASEDIR/Cutt_results/SFS/Snake_Corrected \
                -uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -trim 0 -C 50 \
                -minMapQ 20 -minQ 20 -minInd 1 -setMinDepth 5 -setMaxDepth 60 -doCounts 1 \
                -GL 1 -doSaf 1 -nThreads 8
