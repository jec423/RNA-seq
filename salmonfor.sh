#!/bin/bash

#SBATCH --mail-user=josevildo50.jc@gmail.com
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --mem=34gb
#SBATCH --time=16:00:00
#SBATCH --partition=main
#SBATCH --cpus-per-task=12

export PATH=$PATH:/home/jec423/salmon-latest_linux_x86_64/bin
cd /scratch/jec423/fastq/1fastq/trimmed/map_readst

for sample in *Aligned.sortedByCoord.out.bam
        do

		base=$(basename "$sample" Aligned.sortedByCoord.out.bam)
        	transcriptome="${base}Aligned.sortedByCoord.out.bam"
        
		salmon quant -t /scratch/jec423/code/gencode.vM35.transcripts.fa -l U -a "$transcriptome" -o "$base"
	done
 
