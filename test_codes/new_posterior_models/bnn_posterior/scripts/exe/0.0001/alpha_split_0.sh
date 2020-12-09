#!/bin/bash

#SBATCH --job-name=PB_bim_data.txt_0.0001
#SBATCH --output=exe/0.0001/alpha_0.0001_split_0.out

#SBATCH --time=5-0:0:0

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=2000

date

echo IPs - Datos sintéticos 
echo alpha = 0.0001
echo split = 0
echo dataset = bim_data.txt

cd ../

python3 AIP_bnn.py 0 0.0001 2 bim_data.txt
