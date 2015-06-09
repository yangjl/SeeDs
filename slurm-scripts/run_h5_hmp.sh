#!/bin/bash
#SBATCH -D /home/jolyang/Documents/Github/SeeDs/slurm-log/
#SBATCH -o /home/jolyang/Documents/Github/SeeDs/slurm-log/testout-%j.txt
#SBATCH -e /home/jolyang/Documents/Github/SeeDs/slurm-log/err-%j.txt

#SBATCH--mail-user=yangjl0930@gmail.com
#SBATCH--mail-type=END
#SBATCH--mail-type=FAIL #email if fails
#SBATCH -J hdf5-hmp
set -e
set -u

module load gcc jdk tassel/5
#run_pipeline.pl -h5 /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5 -export /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114_ames.hmp -exportType Hapmap -includeTaxaInfile data/Taxa_ames_3324.txt

run_pipeline.pl -Xmx64g -fork1 -h /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_sorted.hmp.txt -includeTaxaInfile /home/jolyang/Documents/Github/SeeDs/data/Taxa_ames_3324.txt -export /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_Ames -exportType Hapmap -runfork1


python /home/jolyang/bin/send_email.py -s slurm-scripts/run_h5_hmp.sh
