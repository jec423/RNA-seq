#!/bin/bash

#SBATCH --mail-user=josevildo50.jc@gmail.com
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --mem=36gb
#SBATCH --time=16:00:00
#SBATCH --partition=main
#SBATCH --cpus-per-task=24

export PATH=$PATH:/home/jec423/miniconda3/bin
cd /scratch/jec423/fastq/trimmed_files

sortmerna --ref /scratch/jec423/rRNA_databases_v4/smr_v4.3_default_db.fasta --reads 27_Female_pro-estrus_S14_R1_001_val_1.fq --reads 27_Female_pro-estrus_S14_R2_001_val_2.fq --workdir /scratch/jec423/trimmed_files/profemale/sortrna/femalepro27 --threads 24 --fastx

