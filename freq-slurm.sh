#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --cpus-per-task=1	# number of processors per task
<<<<<<< HEAD
#SBATCH -J "freq-slurm"   # job name
=======
#SBATCH -J "freq"   # job name
>>>>>>> upstream/main

## /SBATCH -p general # partition (queue)
#SBATCH -o freq-slurm.%N.%j.out # STDOUT
#SBATCH -e freq-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
import time; \
pyh.FreqSpectrum(saveLevel=1); \
<<<<<<< HEAD
pyh.FreqSpectrum(loadHighPass=True, pointsPerWindow=3000, saveLevel=1);
=======
pyh.FreqSpectrum(loadHighPass=True, pointsPerWindow=3000, saveLevel=1); \
>>>>>>> upstream/main
print(time.localtime());"
