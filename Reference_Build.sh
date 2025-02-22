#!/bin/bash --login

#SBATCH --time=60:00:00   # walltime
#SBATCH --ntasks=8   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=8192M   # memory per CPU core

BASEDIR=~/compute/01.RawData
REFERENCE=~/compute/01.RawData/Cutthroat/PGA_assembly.fasta
REFBASENAME="${REFERENCE%.*}"

conda activate samtools
samtools faidx $REFERENCE

conda activate Picard
picard CreateSequenceDictionary R=$REFERENCE O=$REFBASENAME'.dict'

conda activate bowtie2 
bowtie2-build $REFERENCE $REFBASENAME 
