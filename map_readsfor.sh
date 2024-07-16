#!/bin/bash

#SBATCH --mem=50GB
#SBATCH --time=24:00:00
#SBATCH --partition=main
#SBATCH --cpus-per-task=16
#SBATCH --mail-user=josevildo50.jc@gmail.com
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

export PATH=$PATH:/home/jec423/apps/STAR
cd /scratch/jec423/fastq/1fastq/10-24/trimmed

for sample in *_R1_val_1.fq
	do
	
	base=$(basename "$sample" _R1_val_1.fq)
        forward_r="${base}_R1_val_1.fq"
        reverse_r="${base}_R2_val_2.fq"

	/home/jec423/apps/STAR --runThreadN 16 \
	--readFilesIn "$forward_r" "$reverse_r" \
	--genomeDir /scratch/jec423/code/indext \
	--outSAMtype BAM SortedByCoordinate \
	--outFileNamePrefix map_readst/"$base"
	
	done

