#!/bin/bash --login

#SBATCH --time=48:00:00   # walltime
#SBATCH --ntasks=6   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=4000M   # memory per CPU core
BASEDIR=~/compute/01.RawData
SAMPLELIST=$BASEDIR/raw_fastq/72.txt
SAMPLETABLE=$BASEDIR/raw_fastq/72.tsv
RAWFASTQSUFFIX1=_1.fq.gz # Suffix to raw fastq files. Use forward reads with paired-end data.
RAWFASTQSUFFIX2=_2.fq.gz # Suffix to raw fastq files. Use reverse reads with paired-end data. 
RAWFASTQDIR=$BASEDIR/raw_fastq/
ADAPTERS=$BASEDIR/raw_fastq/reference/NexteraPE_NT.fa


## Activate Trimmomatic program
conda activate Trimmomatic

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
    RAWFASTQ_ID=$RAWFASTQDIR$SAMPLEFILE
    SAMPLEADAPT=$BASEDIR'/adapter_clipped/'$SAMPLE_UNIQ_ID
    
    ## Adapter clip the reads with Trimmomatic
    # The options for ILLUMINACLIP are: ILLUMINACLIP:<fastaWithAdaptersEtc>:<seed mismatches>:<palindrome clip threshold>:<simple clip threshold>:<minAdapterLength>:<keepBothReads>
    # The MINLENGTH drops the read if it is below the specified length in bp
    # For definitions of these options, see http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf
    
        trimmomatic PE -threads 6  -phred33 $RAWFASTQ_ID$RAWFASTQSUFFIX1 $RAWFASTQ_ID$RAWFASTQSUFFIX2 $SAMPLEADAPT'_adapter_clipped_f_paired.fastq.gz' $SAMPLEADAPT'_adapter_clipped_f_unpaired.fastq.gz' $SAMPLEADAPT'_adapter_clipped_r_paired.fastq.gz' $SAMPLEADAPT'_adapter_clipped_r_unpaired.fastq.gz' 'ILLUMINACLIP:'$ADAPTERS':2:30:10:1:true MINLENGTH:40';
    
done
