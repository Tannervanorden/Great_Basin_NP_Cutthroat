#!/bin/bash --login

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=8   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=10000M   # memory per CPU core
#SBATCH -J "SAF"   # job name


#../angsd/misc/realSFS Hendrys_O.saf.idx  -P 4 > HendrysO.sfs
#../angsd/misc/realSFS PineR.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list  >  PineR.sfs
#../angsd/misc/realSFS Mill.saf.idx  -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list > Mill.sfs
#../angsd/misc/realSFS  Birch.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list > Birch.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list > Mountain_Dell.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list > Trout_Creek.sfs
#../angsd/misc/realSFS  Rainbow.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Rainbow.sfs
##../angsd/misc/realSFS Silver_Corrected_2.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Silver_Corrected_2.sfs

#../angsd/misc/realSFS South_Baker_Corrected.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > South_Baker_Corrected.sfs

#../angsd/misc/realSFS BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > BigWash.sfs
#../angsd/misc/realSFS Deadman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Deadman.sfs
#../angsd/misc/realSFS Lehman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Lehman.sfs
#../angsd/misc/realSFS Silver.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Silver.sfs
#../angsd/misc/realSFS South_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > South_Baker.sfs
#../angsd/misc/realSFS Silver_Corrected.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Silver_Corrected.sfs
#../angsd/misc/realSFS Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Willard.sfs
#../angsd/misc/realSFS South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > South_BigWash.sfs
#../angsd/misc/realSFS Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Shingle.sfs
#../angsd/misc/realSFS Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Smith.sfs
#../angsd/misc/realSFS Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Strawberry.sfs
#../angsd/misc/realSFS Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Wiliams.sfs
#../angsd/misc/realSFS Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Snake.sfs
#../angsd/misc/realSFS Historical_Mill_2003.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill_2003.sfs
#../angsd/misc/realSFS Historical_Mill_2009.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Mill_2009.sfs
#../angsd/misc/realSFS Historical_Bigwash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Historical_Bigwash.sfs
#../angsd/misc/realSFS Historical_South_Bigwash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Historical_South_Bigwash.sfs
#../angsd/misc/realSFS Historical_Deadman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Historical_Deadman.sfs
#../angsd/misc/realSFS Historical_Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Historical_Snake.sfs
#../angsd/misc/realSFS Historical_Hendrys.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Historical_Hendrys.sfs
#../angsd/misc/realSFS Historical_Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Historical_Strawberry.sfs
#../angsd/misc/realSFS Historical_Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Historical_Willard.sfs
#../angsd/misc/realSFS Historical_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Historical_Baker.sfs

## 3 population comparison

#../angsd/misc/realSFS Hendrys.saf.idx Mill.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Mill.sfs
#../angsd/misc/realSFS Hendrys.saf.idx PineR.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.PineR.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Birch.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Birch.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Mountain_Dell.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Mountain_Dell.sfs

#../angsd/misc/realSFS fst index Hendrys.saf.idx Mill.saf.idx PineR.saf.idx -sfs Hendrys.Mill.sfs -sfs Hendrys.PineR.sfs -sfs Mill.PineR.sfs -P 24 -fstout Three24.pbs 
#../angsd/misc/realSFS fst stats Three.pbs.fst.idx > Three.txt


## 2 population comparison
#../angsd/misc/realSFS Hendrys.saf.idx Rainbow.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Hendrys.Rainbow.sfs
#../angsd/misc/realSFS Mill.saf.idx Rainbow.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Mill.Rainbow.sfs


## FST

#../angsd/misc/realSFS fst index Hendrys.saf.idx Mill.saf.idx -sfs Hendrys.Mill.sfs -fstout Hendrys_Mill
#../angsd/misc/realSFS fst stats Hendrys_Mill.fst.idx > Hendrys_Mill_fst.txt
#../angsd/misc/realSFS fst index Hendrys.saf.idx PineR.saf.idx -sfs Hendrys.PineR.sfs -fstout Hendrys_Pine
#../angsd/misc/realSFS fst stats Hendrys_Pine.fst.idx -P 8 > Hendrys_Pine_fst.txt 
#../angsd/misc/realSFS fst index Mill.saf.idx PineR.saf.idx -sfs Mill.PineR.sfs -fstout Mill_Pine
#../angsd/misc/realSFS fst stats Mill_Pine.fst.idx -P 8 > Mill_Pine_fst.txt


## Nucleotide Diversity


#../angsd/misc/realSFS Historical_Mill_2003.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill_2003.sfs
#../angsd/misc/realSFS Historical_Mill_2009.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Mill_2009.sfs
#../angsd/misc/realSFS Historical_Bigwash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Historical_Bigwash.sfs
#../angsd/misc/realSFS Historical_South_Bigwash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Historical_South_Bigwash.sfs

#../angsd/misc/realSFS saf2theta Silver_Corrected.saf.idx -sfs Silver_Corrected.sfs -P 8 -outname Silver_Corrected
#../angsd/misc/realSFS saf2theta Historical_Mill_2003.saf.idx -sfs Mill_2003.sfs -P 4 -outname Mill_2003
#../angsd/misc/realSFS saf2theta Historical_Mill_2009.saf.idx -sfs Mill_2009.sfs -P 4 -outname Mill_2009
#../angsd/misc/realSFS saf2theta Historical_Bigwash.saf.idx -sfs Historical_Bigwash.sfs -P 4 -outname Historical_Bigwash
#../angsd/misc/realSFS saf2theta Historical_South_Bigwash.saf.idx -sfs Historical_South_Bigwash.sfs -P 4 -outname Historical_South_Bigwash
#../angsd/misc/realSFS saf2theta Historical_Deadman.saf.idx -sfs Historical_Deadman.sfs -P 4 -outname Historical_Deadman
#../angsd/misc/realSFS saf2theta Historical_Snake.saf.idx -sfs Historical_Snake.sfs -P 4 -outname Historical_Snake
#../angsd/misc/realSFS saf2theta Historical_Strawberry.saf.idx -sfs Historical_Strawberry.sfs -P 4 -outname Historical_Strawberry
#../angsd/misc/realSFS saf2theta Historical_Willard.saf.idx -sfs Historical_Willard.sfs -P 4 -outname Historical_Willard
#../angsd/misc/realSFS saf2theta Historical_Hendrys.saf.idx -sfs Historical_Hendrys.sfs -P 4 -outname Historical_Hendrys

#../angsd/misc/realSFS saf2theta Hendrys.saf.idx -sfs Hendrys.sfs -P 24 -outname Hendrys24
#../angsd/misc/realSFS saf2theta PineR.saf.idx -sfs  PineR.sfs -P 24 -outname PineR24
#../angsd/misc/realSFS saf2theta Mill.saf.idx -sfs Mill.sfs -outname Mill
#../angsd/misc/realSFS saf2theta Birch.saf.idx -sfs Birch.sfs -outname Birch
#../angsd/misc/realSFS saf2theta Mountain_Dell.saf.idx -sfs Mountain_Dell.sfs -outname Mountain_Dell
#../angsd/misc/realSFS saf2theta Trout_Creek.saf.idx -sfs Trout_Creek.sfs -outname Trout_Creek

#../angsd/misc/realSFS saf2theta BigWash.saf.idx -sfs BigWash.sfs -P 8 -outname BigWash
#../angsd/misc/realSFS saf2theta Snake.saf.idx -sfs Snake.sfs -P 8 -outname Snake
#../angsd/misc/realSFS saf2theta Deadman.saf.idx -sfs Deadman.sfs -P 8 -outname Deadman
#../angsd/misc/realSFS saf2theta Lehman.saf.idx -sfs Lehman.sfs -P 8 -outname Lehman
#../angsd/misc/realSFS saf2theta Silver.saf.idx -sfs Silver.sfs -P 8 -outname Silver
#../angsd/misc/realSFS saf2theta South_Baker.saf.idx -sfs South_Baker.sfs -P 8 -outname South_Baker
#../angsd/misc/realSFS saf2theta Willard.saf.idx -sfs Willard.sfs -P 8 -outname Willard
#../angsd/misc/realSFS saf2theta South_BigWash.saf.idx -sfs South_BigWash.sfs -P 8 -outname South_BigWash
#../angsd/misc/realSFS saf2theta Shingle.saf.idx -sfs Shingle.sfs -P 8 -outname Shingle
#../angsd/misc/realSFS saf2theta Smith.saf.idx -sfs Smith.sfs -P 8 -outname Smith
#../angsd/misc/realSFS saf2theta Strawberry.saf.idx -sfs Strawberry.sfs -P 8 -outname Strawberry
#../angsd/misc/realSFS saf2theta Williams.saf.idx -sfs Williams.sfs -P 8 -outname Williams
#../angsd/misc/realSFS saf2theta Historical_Strawberry.saf.idx -sfs Historical_Strawberry.sfs -P 4 -outname Historical_S
#../angsd/misc/realSFS saf2theta Silver_Corrected_2.saf.idx -sfs Silver_Corrected_2.sfs -P 8 -outname Silver_corrected_2
#../angsd/misc/realSFS saf2theta South_Baker_Corrected.saf.idx -sfs South_Baker_Corrected.sfs -P 8 -outname South_Baker_Corrected
#../angsd/misc/thetaStat do_stat South_Baker_Corrected.thetas.idx -win 10000 -step 1000 -outname South_Baker_Corrected.thetas.windows.gz
## Sliding Window

#../angsd/misc/thetaStat do_stat Snake.thetas.idx -win 10000 -step 1000 -outnames Snake.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Mill_2003.thetas.idx  -win 10000 -step 1000 -outname Mill_2003.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Mill_2009.thetas.idx -win 10000 -step 1000 -outname Mill_2009.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Historical_Bigwash.thetas.idx -win 10000 -step 1000 -outname Historical_Bigwash.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Historical_South_Bigwash.thetas.idx -win 10000 -step 1000 -outname Historical_South_Bigwash.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Historical_Deadman.thetas.idx -win 10000 -step 1000 -outname Historical_Deadman.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Historical_Snake.thetas.idx -win 10000 -step 1000 -outname Historical_Snake.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Historical_Hendrys.thetas.idx -win 10000 -step 1000 -outnames Historical_Hendrys.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Strawberry.thetas.idx -win 10000 -step 1000 -outnames Historical_Strawberry.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Historical_Willard.thetas.idx -win 10000 -step 1000 -outnames Historical_Willard.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Silver_Corrected.thetas.idx -win 10000 -step 1000 -outnames Silver_Corrected_2.thetas.windows.gz
../angsd/misc/thetaStat do_stat South_Baker_Corrected.thetas.idx -win 10000 -step 1000 -outnames South_Baker_Corrected.thetas.windows.gz


#../angsd/misc/thetaStat do_stat Hendrys.thetas.idx -win 100000000 -step 1000000 -outnames Hendrys.thetas.windows.gz
#../angsd/misc/thetaStat do_stat PineR24.thetas.idx -win 100000000 -step 1000000 -outnames PineR.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Mill.thetas.idx -win 100000000 -step 1000000 -outnames Mill.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Birch.thetas.idx -win 100000000 -step 1000000 -outnames Birch.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Mountain_Dell.thetas.idx -win 100000000 -step 1000000 -outnames Mountain_Dell.thetas.windows.gz


#../angsd/misc/realSFS Hendrys.saf.idx PineR.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.PineR.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Mill.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Mill.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Birch.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Birch.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Mountain_Dell.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Mountain_Dell.sfs
#../angsd/misc/realSFS Hendrys.saf.idx  Trout_Creek.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Trout_Creek.sfs
#../angsd/misc/realSFS Hendrys.saf.idx BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Bigwash.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Deadman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Deadman.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Lehman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Lehman.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Silver.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Silver.sfs
#../angsd/misc/realSFS Hendrys.saf.idx South_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Southbaker.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Willard.sfs
#../angsd/misc/realSFS Hendrys.saf.idx South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.SouthBigwash.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Shingle.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Smith.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Strawberry.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Williams.sfs
#../angsd/misc/realSFS Hendrys.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Snake.sfs

#../angsd/misc/realSFS PineR.saf.idx Mill.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Mill.sfs
#../angsd/misc/realSFS PineR.saf.idx Birch.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Birch.sfs
#../angsd/misc/realSFS PineR.saf.idx Mountain_Dell.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Mountain_Dell.sfs
#../angsd/misc/realSFS PineR.saf.idx Trout_Creek.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Trout_Creek.sfs
#../angsd/misc/realSFS PineR.saf.idx BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Bigwash.sfs
#../angsd/misc/realSFS PineR.saf.idx Deadman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Deadman.sfs
#../angsd/misc/realSFS PineR.saf.idx Lehman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Lehman.sfs
#../angsd/misc/realSFS PineR.saf.idx Silver.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Silver.sfs
#../angsd/misc/realSFS PineR.saf.idx  South_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Southbaker.sfs
#../angsd/misc/realSFS PineR.saf.idx Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Willard.sfs
#../angsd/misc/realSFS PineR.saf.idx South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.SouthBigwash.sfs
#../angsd/misc/realSFS PineR.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Shingle.sfs
#../angsd/misc/realSFS PineR.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Smith.sfs
#../angsd/misc/realSFS PineR.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Strawberry.sfs
#../angsd/misc/realSFS PineR.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Williams.sfs
#../angsd/misc/realSFS PineR.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > PineR.Snake.sfs

#../angsd/misc/realSFS Mill.saf.idx Birch.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Birch.sfs
#../angsd/misc/realSFS Mill.saf.idx Mountain_Dell.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Mountain_Dell.sfs
#../angsd/misc/realSFS Mill.saf.idx Trout_Creek.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Trout_Creek.sfs
#../angsd/misc/realSFS Mill.saf.idx BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Bigwash.sfs
#../angsd/misc/realSFS Mill.saf.idx Deadman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Deadman.sfs
#../angsd/misc/realSFS Mill.saf.idx Lehman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Lehman.sfs
#../angsd/misc/realSFS Mill.saf.idx Silver.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Silver.sfs
#../angsd/misc/realSFS Mill.saf.idx South_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Southbaker.sfs
#../angsd/misc/realSFS Mill.saf.idx Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Willard.sfs
#../angsd/misc/realSFS Mill.saf.idx South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.SouthBigwash.sfs
#../angsd/misc/realSFS Mill.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Shingle.sfs
#../angsd/misc/realSFS Mill.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Smith.sfs
#../angsd/misc/realSFS Mill.saf.idx  Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Strawberry.sfs
#../angsd/misc/realSFS Mill.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Williams.sfs
#../angsd/misc/realSFS Mill.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.Snake.sfs



#../angsd/misc/realSFS Birch.saf.idx Mountain_Dell.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Mountain_Dell.sfs
#../angsd/misc/realSFS Birch.saf.idx Trout_Creek.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Trout_Creek.sfs
#../angsd/misc/realSFS Birch.saf.idx BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Bigwash.sfs
#../angsd/misc/realSFS Birch.saf.idx Deadman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Deadman.sfs
#../angsd/misc/realSFS Birch.saf.idx Lehman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Lehman.sfs
#../angsd/misc/realSFS Birch.saf.idx Silver.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Silver.sfs
#../angsd/misc/realSFS Birch.saf.idx South_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Southbaker.sfs
#../angsd/misc/realSFS Birch.saf.idx Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Willard.sfs
#../angsd/misc/realSFS Birch.saf.idx South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.SouthBigwash.sfs
#../angsd/misc/realSFS Birch.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Shingle.sfs
#../angsd/misc/realSFS Birch.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Smith.sfs
#../angsd/misc/realSFS Birch.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Strawberry.sfs
#../angsd/misc/realSFS Birch.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Williams.sfs
#../angsd/misc/realSFS Birch.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Birch.Snake.sfs

#../angsd/misc/realSFS Mountain_Dell.saf.idx Trout_Creek.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.Trout_Creek.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.Bigwash.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx Deadman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.Deadman.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx Lehman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.Lehman.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx Silver.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.Silver.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx South_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.Southbaker.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.Willard.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.SouthBigwash.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.Shingle.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.Smith.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.Strawberry.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.Williams.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mountain_Dell.Snake.sfs

#../angsd/misc/realSFS Trout_Creek.saf.idx BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Trout_Creek.Bigwash.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx Deadman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Trout_Creek.Deadman.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx Lehman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Trout_Creek.Lehman.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx Silver.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Trout_Creek.Silver.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx South_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Trout_Creek.Southbaker.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Trout_Creek.Willard.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Trout_Creek.SouthBigwash.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Trout_Creek.Shingle.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Trout_Creek.Smith.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Trout_Creek.Strawberry.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx  Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Trout_Creek.Williams.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Trout_Creek.Snake.sfs

#../angsd/misc/realSFS BigWash.saf.idx Deadman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > BigWash.Deadman.sfs
#../angsd/misc/realSFS BigWash.saf.idx Lehman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > BigWash.Lehman.sfs
#../angsd/misc/realSFS BigWash.saf.idx  Silver.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > BigWash.Silver.sfs
#../angsd/misc/realSFS BigWash.saf.idx South_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > BigWash.Southbaker.sfs
#../angsd/misc/realSFS BigWash.saf.idx Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > BigWash.Willard.sfs
#../angsd/misc/realSFS BigWash.saf.idx  South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > BigWash.SouthBigwash.sfs
#../angsd/misc/realSFS BigWash.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > BigWash.Shingle.sfs
#../angsd/misc/realSFS BigWash.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > BigWash.Smith.sfs
#../angsd/misc/realSFS BigWash.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > BigWash.Strawberry.sfs
#../angsd/misc/realSFS BigWash.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 BigWash.Williams.sfs
#../angsd/misc/realSFS BigWash.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > BigWash.Snake.sfs


#../angsd/misc/realSFS Deadman.saf.idx  Lehman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Deadman.Lehman.sfs
#../angsd/misc/realSFS Deadman.saf.idx Silver.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Deadman.Silver.sfs
#../angsd/misc/realSFS Deadman.saf.idx South_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Deadman.Southbaker.sfs
#../angsd/misc/realSFS Deadman.saf.idx Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Deadman.Willard.sfs
#../angsd/misc/realSFS Deadman.saf.idx South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Deadman.SouthBigwash.sfs
#../angsd/misc/realSFS Deadman.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Deadman.Shingle.sfs
#../angsd/misc/realSFS Deadman.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Deadman.Smith.sfs
#../angsd/misc/realSFS Deadman.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Deadman.Strawberry.sfs
#../angsd/misc/realSFS Deadman.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Deadman.Williams.sfs
#../angsd/misc/realSFS Deadman.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Deadman.Snake.sfs

#../angsd/misc/realSFS Lehman.saf.idx Silver.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Lehman.Silver.sfs
#../angsd/misc/realSFS Lehman.saf.idx South_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Lehman.Southbaker.sfs
#../angsd/misc/realSFS Lehman.saf.idx Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Lehman.Willard.sfs
#../angsd/misc/realSFS Lehman.saf.idx South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Lehman.SouthBigwash.sfs
#../angsd/misc/realSFS Lehman.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Lehman.Shingle.sfs
#../angsd/misc/realSFS Lehman.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Lehman.Smith.sfs
#../angsd/misc/realSFS Lehman.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Lehman.Strawberry.sfs
#../angsd/misc/realSFS Lehman.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Lehman.Williams.sfs
#../angsd/misc/realSFS Lehman.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Lehman.Snake.sfs

#../angsd/misc/realSFS Silver.saf.idx South_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Silver.Southbaker.sfs
#../angsd/misc/realSFS Silver.saf.idx Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Silver.Willard.sfs
#../angsd/misc/realSFS Silver.saf.idx South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Silver.SouthBigwash.sfs
#../angsd/misc/realSFS Silver.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Silver.Shingle.sfs
#../angsd/misc/realSFS Silver.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Silver.Smith.sfs
#../angsd/misc/realSFS Silver.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Silver.Strawberry.sfs
#../angsd/misc/realSFS Silver.saf.idx  Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Silver.Williams.sfs
#../angsd/misc/realSFS Silver.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Silver.Snake.sfs

#../angsd/misc/realSFS South_Baker.saf.idx Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > South_Baker.Willard.sfs
#../angsd/misc/realSFS South_Baker.saf.idx South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > South_Baker.SouthBigwash.sfs
#../angsd/misc/realSFS South_Baker.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > South_Baker.Shingle.sfs
#../angsd/misc/realSFS South_Baker.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > South_Baker.Smith.sfs
#../angsd/misc/realSFS South_Baker.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > South_Baker.Strawberry.sfs
#../angsd/misc/realSFS South_Baker.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > South_Baker.Williams.sfs
#../angsd/misc/realSFS South_Baker.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > South_Baker.Snake.sfs


#../angsd/misc/realSFS Willard.saf.idx South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Willard.SouthBigwash.sfs
#../angsd/misc/realSFS Willard.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Willard.Shingle.sfs
#../angsd/misc/realSFS Willard.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Willard.Smith.sfs
#../angsd/misc/realSFS Willard.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Willard.Strawberry.sfs
#../angsd/misc/realSFS Willard.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Willard.Williams.sfs
#../angsd/misc/realSFS Willard.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Willard.Snake.sfs

#../angsd/misc/realSFS South_BigWash.saf.idx Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > South_BigWash.Shingle.sfs
#../angsd/misc/realSFS South_BigWash.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > South_BigWash.Smith.sfs
#../angsd/misc/realSFS South_BigWash.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > South_BigWash.Strawberry.sfs
#../angsd/misc/realSFS South_BigWash.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > South_BigWash.Williams.sfs
#../angsd/misc/realSFS South_BigWash.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > South_BigWash.Snake.sfs

#../angsd/misc/realSFS Shingle.saf.idx Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Shingle_BigWash.Smith.sfs
#../angsd/misc/realSFS Shingle.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Shingle_BigWash.Strawberry.sfs
#../angsd/misc/realSFS Shingle.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Shingle.Williams.sfs
#../angsd/misc/realSFS Shingle.saf.idx  Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Shingle.Snake.sfs

#../angsd/misc/realSFS Smith.saf.idx Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Smith_BigWash.Strawberry.sfs
#../angsd/misc/realSFS Smith.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Smith.Williams.sfs
#../angsd/misc/realSFS Smith.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Smith.Snake.sfs

#../angsd/misc/realSFS Strawberry.saf.idx Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Strawberry.Williams.sfs
#../angsd/misc/realSFS Strawberry.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Strawberry.Snake.sfs

#../angsd/misc/realSFS Williams.saf.idx Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Williams.Snake.sfs

#../angsd/misc/realSFS fst index Hendrys.saf.idx Mill.saf.idx PineR.saf.idx -sfs Hendrys.Mill.sfs -sfs Hendrys.PineR.sfs -sfs Mill.PineR.sfs -P 24 -fstout Three24.pbs 
#../angsd/misc/realSFS fst stats Three.pbs.fst.idx > Three.txt


## 2 population comparison
#../angsd/misc/realSFS Hendrys.saf.idx Rainbow.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Hendrys.Rainbow.sfs
#../angsd/misc/realSFS Mill.saf.idx Rainbow.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Mill.Rainbow.sfs


## FST

## Hendrys
#../angsd/misc/realSFS fst index Hendrys.saf.idx Mill.saf.idx -sfs Hendrys.Mill.sfs -fstout Hendrys_Mill
#../angsd/misc/realSFS fst stats Hendrys_Mill.fst.idx > Hendrys_Mill_fst.txt
#../angsd/misc/realSFS fst index Hendrys.saf.idx PineR.saf.idx -sfs Hendrys.PineR.sfs -fstout Hendrys_Pine
#../angsd/misc/realSFS fst stats Hendrys_Pine.fst.idx -P 8 > Hendrys_Pine_fst.txt 
#../angsd/misc/realSFS fst index  Hendrys.saf.idx Birch.saf.idx -sfs Hendrys.Birch.sfs -fstout Hendrys_Birch
#../angsd/misc/realSFS fst stats Hendrys_Birch.fst.idx > Hendrys_Birch.fst.txt
#../angsd/misc/realSFS fst index  Hendrys.saf.idx Mountain_Dell.saf.idx -sfs Hendrys.Mountain_Dell.sfs -fstout Hendrys_Mountain_Dell
#../angsd/misc/realSFS fst stats Hendrys_Mountain_Dell.fst.idx > Hendrys.Mountain_Dell.fst.txt
#../angsd/misc/realSFS fst index Hendrys.saf.idx Trout_Creek.saf.idx -sfs Hendrys.Trout_Creek.sfs -fstout Hendrys_Trout_Creek
#../angsd/misc/realSFS fst stats Hendrys_Trout_Creek.fst.idx > Hendrys_Trout_Creek.fst.txt

#../angsd/misc/realSFS fst index Mill.saf.idx PineR.saf.idx -sfs Mill.PineR.sfs -fstout Mill_Pine
#../angsd/misc/realSFS fst stats Mill_Pine.fst.idx -P 8 > Mill_Pine_fst.txt


## Nucleotide Diversity

#../angsd/misc/realSFS saf2theta Hendrys.saf.idx -sfs Hendrys.sfs -P 24 -outname Hendrys24


#../angsd/misc/realSFS Hendrys_O.saf.idx  -P 4 > HendrysO.sfs
#../angsd/misc/realSFS PineR.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list  >  PineR.sfs
#../angsd/misc/realSFS Mill.saf.idx  -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list > Mill.sfs
#../angsd/misc/realSFS  Birch.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list > Birch.sfs
#../angsd/misc/realSFS Mountain_Dell.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list > Mountain_Dell.sfs
#../angsd/misc/realSFS Trout_Creek.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list > Trout_Creek.sfs
#../angsd/misc/realSFS  Rainbow.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Rainbow.sfs


#../angsd/misc/realSFS BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > BigWash.sfs
#../angsd/misc/realSFS Deadman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Deadman.sfs
#../angsd/misc/realSFS Lehman.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Lehman.sfs
#../angsd/misc/realSFS Silver.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Silver.sfs
#../angsd/misc/realSFS South_Baker.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > South_Baker.sfs
#../angsd/misc/realSFS Willard.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Willard.sfs
#../angsd/misc/realSFS South_BigWash.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > South_BigWash.sfs
#../angsd/misc/realSFS Shingle.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Shingle.sfs
#../angsd/misc/realSFS Smith.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Smith.sfs
#../angsd/misc/realSFS Strawberry.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Strawberry.sfs
#../angsd/misc/realSFS Williams.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 24 > Wiliams.sfs
#../angsd/misc/realSFS Snake.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Snake.sfs

## 3 population comparison

#../angsd/misc/realSFS Hendrys.saf.idx Mill.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.Mill.sfs
#../angsd/misc/realSFS Hendrys.saf.idx PineR.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Hendrys.PineR.sfs
#../angsd/misc/realSFS Mill.saf.idx PineR.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 4 > Mill.PineR.sfs


#../angsd/misc/realSFS fst index Hendrys.saf.idx Mill.saf.idx PineR.saf.idx -sfs Hendrys.Mill.sfs -sfs Hendrys.PineR.sfs -sfs Mill.PineR.sfs -P 24 -fstout Three24.pbs 
#../angsd/misc/realSFS fst stats Three.pbs.fst.idx > Three.txt


## 2 population comparison
#../angsd/misc/realSFS Hendrys.saf.idx Rainbow.saf.idx -sites ~/compute/01.RawData/Cutt_results/ngsLD/LD_Results/Pruned_mafs/Original_LDPruned_snps.list -P 8 > Hendrys.Rainbow.sfs
