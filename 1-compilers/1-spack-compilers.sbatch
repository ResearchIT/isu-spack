#!/bin/bash

#SBATCH --time 96:00:00
#SBATCH --nodes 2 
#SBATCH --ntasks 2 
#SBATCH --cpus-per-task 8 8 8 8 8 8 8 8 
#SBATCH --partition speedy

srun --exclusive bash -c "source /work/LAS/researchit/spack/share/spack/setup-env.sh && spack env activate -d /work/LAS/researchit/isu-spack/1-compilers && spack install" &
srun --exclusive bash -c "source /work/LAS/researchit/spack/share/spack/setup-env.sh && spack env activate -d /work/LAS/researchit/isu-spack/1-compilers && spack install" &
wait
