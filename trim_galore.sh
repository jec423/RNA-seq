#!/bin/bash

#SBATCH --mem=32gb
#SBATCH --time=24:00:00
#SBATCH --partition=main
#SBATCH --cpus-per-task=12

module load openjdk
export PATH=$PATH:/home/jec423/TrimGalore-0.6.10/
export PATH=$PATH:/home/jec423/Python-3.6.10/
export PATH=$PATH:/home/jec423/FastQC/

cd /scratch/jec423/fastq/1fastq/10-24


for sample in *_R1.fastq.gz
	do
		base=$(basename "$sample" _R1.fastq.gz)
		forward_r="${base}_R1.fastq.gz"
		reverse_r="${base}_R2.fastq.gz"
		trim_galore --paired --q 30 --gzip --fastqc "$forward_r" "$reverse_r" -o /scratch/jec423/fastq/1fastq/10-24/trimmed

	done
