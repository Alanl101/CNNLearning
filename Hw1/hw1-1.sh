#!/bin/bash

### Sets the job's name.
#SBATCH --job-name=hw1-1

### Sets the job's output file and path.
#SBATCH --output=hw1-1.out.%j

### Sets the job's error output file and path.
#SBTACH --error=hw1-1.err.%j

### Requested number of nodes for this job. Can be a single number or a range.
#SBATCH -N 1

### Requested partition (group of nodes, i.e. compute, bigmem, gpu, etc.) for the resource allocation. 
#SBATCH -p kimq

### Requested number of gpus
#SBATCH --gres=gpu:1

### Limit on the total run time of the job allocation.
#SBATCH --time=1:00:00

echo "CUDA_VISIBLE_DEVICES: $CUDA_VISIBLE_DEVICES"

echo "Activating TensorFlow-2.6.2 environment"
source ~/myEnvs/tf_env/bin/activate

echo "Running Hw1-1.py"
python3 ~/Hw1/hw1-1.py

echo "Deactivating TensorFlow-2.6.2 environment"
deactivate

echo "Done."
