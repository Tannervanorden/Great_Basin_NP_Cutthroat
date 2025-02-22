#!/bin/bash --login

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=128   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=2500M   # memory per CPU core
BASEDIR=~/compute/01.RawData
SAMPLELIST=$BASEDIR/raw_fastq/23_2.txt
SAMPLETABLE=$BASEDIR/raw_fastq/23_2.tsv
FASTQDIR=$BASEDIR/adapter_clipped/ # Path to the directory where fastq file are stored. 
FASTQSUFFIX1=_adapter_clipped_f_paired.fastq.gz # Suffix to fastq files. Use forward reads with paired-end data. 
FASTQSUFFIX2=_adapter_clipped_r_paired.fastq.gz # Suffix to fastq files. Use reverse reads with paired-end data. 
MAPPINGPRESET=very-sensitive # The pre-set option to use for mapping in bowtie2 (very-sensitive for end-to-end (global) mapping [typically used when we have a full genome reference], very-sensitive-local for partial read mapping that allows soft-clipping [typically used when mapping genomic reads to a transcriptome]
REFERENCE=~/compute/01.RawData/Cutthroat/PGA_assembly.fasta
REFNAME=PGA_assembly.fasta # Reference name to add to output files, e.g. gadMor2

## Loop over each sample
for SAMPLEFILE in `cat $SAMPLELIST`; do
    
    ## Extract relevant values from a table of sample, sequencing, and lane ID (here in columns 4, 3, 2, respectively) for each sequenced library
    SAMPLE_ID=`grep -P "${SAMPLEFILE}\t" $SAMPLETABLE | cut -f 4`
    POP_ID=`grep -P "${SAMPLEFILE}\t" $SAMPLETABLE | cut -f 5`
    SEQ_ID=`grep -P "${SAMPLEFILE}\t" $SAMPLETABLE | cut -f 3`
    LANE_ID=`grep -P "${SAMPLEFILE}\t" $SAMPLETABLE | cut -f 2`
    SAMPLE_UNIQ_ID=$SAMPLE_ID'_'$POP_ID'_'$SEQ_ID'_'$LANE_ID  # When a sample has been sequenced in multiple lanes, we need to be able to identify the files from each run uniquely
    
    ## Extract data type from the sample table
    DATATYPE=`grep -P "${SAMPLEFILE}\t" $SAMPLETABLE | cut -f 6`
    
    ## The input and output path and file prefix
    SAMPLETOMAP=$FASTQDIR$SAMPLE_UNIQ_ID
    SAMPLEBAM=$BASEDIR'/Non_bam/'$SAMPLE_UNIQ_ID
    
    ## Define platform unit (PU), which is the lane number
    PU=`grep -P "${SAMPLEFILE}\t" $SAMPLETABLE | cut -f 2`
    
    ## Define reference base name
    REFBASENAME="${REFERENCE%.*}"
    
    ## Map reads to the reference 
    echo $SAMPLE_UNIQ_ID
    

    module load bowtie2
    # Map the paired-end reads 
    # We ignore the reads that get orphaned during adapter clipping because that is typically a very small proportion of reads. If a large proportion of reads get orphaned (loose their mate so they become single-end), these can be mapped in a separate step and the resulting bam files merged with the paired-end mapped reads.
    bowtie2 -q --phred33 --$MAPPINGPRESET -p 128 -I 0 -X 1500 --fr --rg-id $SAMPLE_UNIQ_ID --rg SM:$SAMPLE_ID --rg LB:$SAMPLE_ID --rg PU:$PU --rg PL:ILLUMINA -x $REFBASENAME -1 $SAMPLETOMAP$FASTQSUFFIX1 -2 $SAMPLETOMAP$FASTQSUFFIX2 -S $SAMPLEBAM'_'$DATATYPE'_bt2_'$REFNAME'.sam' 2> $BASEDIR/raw_fastq/bowtie.log
    
    module load samtools
    ## Convert to bam file for storage (including all the mapped reads)
    samtools view -bS -F 4  $SAMPLEBAM'_'$DATATYPE'_bt2_'$REFNAME'.sam' > $SAMPLEBAM'_'$DATATYPE'_bt2_'$REFNAME'.bam'
    rm -f $SAMPLEBAM'_'$DATATYPE'_bt2_'$REFNAME'.sam'
    
    ## Filter the mapped reads (to onky retain reads with high mapping quality)
    # Filter bam files to remove poorly mapped reads (non-unique mappings and mappings with a quality score < 20) -- do we want the quality score filter??
    samtools view -h -q 20 $SAMPLEBAM'_'$DATATYPE'_bt2_'$REFNAME'.bam' | samtools view -buS - | samtools sort -o $SAMPLEBAM'_'$DATATYPE'_bt2_'$REFNAME'_minq20_sorted.bam'
    

    conda activate Picard
    picard SortSam I=$SAMPLEBAM'_'$DATATYPE'_bt2_'$REFNAME'_minq20_sorted.bam' O=$SAMPLEBAM'_'$DATATYPE'_bt2_'$REFNAME'_minq20_Psorted.bam' SORT_ORDER=coordinate

done
