#!/bin/bash

#SBATCH --mem=34000
#SBATCH --time=02:00:00
#SBATCH --partition=main
#SBATCH --cpus-per-task=12

module load openjdk

export PATH=$PATH:/home/jec423/FastQC/
for i in /scratch/jec423/trimmed_files/profemale/*.fq.gz
	do 

		fastqc -t $i  -o /scratch/jec423/trimmed_files/profemale/fastqc

	done




