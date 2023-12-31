#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno31/lab4
#SBATCH -J lab4
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=4

time srun -n 4 ./file-cut.sh

