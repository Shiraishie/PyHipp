#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --cpus-per-task=1	# number of processors per task
<<<<<<< HEAD
#SBATCH -J "freq-slurm"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o freq-slurm.%N.%j.out # STDOUT
#SBATCH -e freq-slurm.%N.%j.err # STDERR
=======
#SBATCH -J "fsall"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o fsall-slurm.%N.%j.out # STDOUT
#SBATCH -e fsall-slurm.%N.%j.err # STDERR
>>>>>>> upstream/main

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
import DataProcessingTools as DPT; \
<<<<<<< HEAD
lfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*', '*mountains*'], objtype=pyh.FreqSpectrum, saveLevel=1); \
lfall.save(); \
hfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*', '*mountains*'], objtype=pyh.FreqSpectrum, loadHighPass=True, pointsPerWindow=3000, saveLevel=1); \
hfall.save();

aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:345594609125:awsnotify --message "FSJobDone"
=======
lfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*','*mountains*'], objtype=pyh.FreqSpectrum, saveLevel=1); \
lfall.save(); \
hfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*','*mountains*'], objtype=pyh.FreqSpectrum, loadHighPass=True, pointsPerWindow=3000, saveLevel=1); \
hfall.save();"
>>>>>>> upstream/main
