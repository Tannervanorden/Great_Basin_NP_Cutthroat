BAMLIST=$BASEDIR/sample_lists/merged_bam_list.txt # Path to a list of merged bam files.
REFNAME=mme_physalia_testdata_chr24 # Reference name to add to output files

## Loop over each sample
for SAMPLEBAM in `cat $BAMLIST`; do
    
    conda activate Picard
    ## Remove duplicates and print dupstat file
    # We used to be able to just specify picard.jar on the CBSU server, but now we need to specify the path and version
    picard MarkDuplicates I=$BASEDIR'/bam/'$SAMPLEBAM'_bt2_'$REFNAME'_minq20_sorted.bam' O=$BASEDIR'/bam/'$SAMPLEBAM'_bt2_'$REFNAME'_minq20_sorted_dedup.bam' M=$BASEDIR'/bam/'$SAMPLEBAM'_bt2_'$REFNAME'_minq20_sorted_dupstat.txt' VALIDATION_STRINGENCY=SILENT REMOVE_DUPLICATES=true
    
    conda activate bamutils
    ## Clip overlapping paired end reads (only necessary for paired-end data, so if you're only running se samples, you can comment this step out)
    bam clipOverlap --in $BASEDIR'/bam/'$SAMPLEBAM'_bt2_'$REFNAME'_minq20_sorted_dedup.bam' --out $BASEDIR'/bam/'$SAMPLEBAM'_bt2_'$REFNAME'_minq20_sorted_dedup_overlapclipped.bam' --stats

done
