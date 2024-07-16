#!/bin/bash
#SBATCH --mail-user=josevildo50.jc@gmail.com
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --mem=110GB
#SBATCH --time=03:00:00
#SBATCH --partition=main
#SBATCH --cpus-per-task=12

srun
/home/jec423/apps/STAR --runThreadN 12 \
--runMode genomeGenerate \
--genomeDir indext \
--genomeFastaFiles gencode.vM35.transcripts.fa \
--genomeSAindexNbases 12 \
--limitGenomeGenerateRAM 110000000000
