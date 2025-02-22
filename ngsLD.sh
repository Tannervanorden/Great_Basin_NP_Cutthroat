#!/bin/bash --login

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=2   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=8144M   # memory per CPU core
#SBATCH -J "ngsLD"   # job name

BASEDIR=~/compute/01.RawData
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/apps/spack/root/opt/spack/linux-rhel7-haswell/gcc-11.3.0/gsl-2.7.1-hktznfrcg5qkeixgvqs7caiq5tm7ykyr/lib

export LD_LIBRARY_PATH

./ngsLD \
--geno /home/tannerv1/compute/01.RawData/Original_Hendrys_LD.geno.gz \
--pos ~/compute/01.RawData/Original_Hendrys_LD.pos.gz \
--probs \
--n_ind 12 \
--n_sites 98165 \
--n_threads 2  \
--out $BASEDIR/Cutt_results/ngsLD/LD_Results/Hendrys.ld
