#!/bin/sh

RATIO=$1

python train.py --dataroot "./datasets/brats2013-var/brats2013_$RATIO" --model "cycle_gan" --name "brats2013_cyclegan_$RATIO" --checkpoints_dir "./checkpoints" --no_flip --no_html --input_nc 1 --output_nc 1 --resize_or_crop "scale_width_and_crop"


#--continue_train
