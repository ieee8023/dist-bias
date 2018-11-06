#!/usr/bin/env zsh

source activate survival

# the first argument of the script is the ratio in [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]
RATIO=$1

python train.py --dataroot "./datasets/brats2013-var/brats2013_$RATIO" --model "cycle_gan" --name "brats2013_cyclegan_$RATIO" --checkpoints_dir "./checkpoints" --no_flip --no_html --input_nc 1 --output_nc 1 --resize_or_crop "scale_width"

# if you want to continue the training
# --continue_train
