#!/bin/sh

RATIO=$1

python test.py --dataroot "./datasets/brats2013-var/brats2013_0.0" --model "cycle_gan" --name "brats2013_cyclegan_$RATIO" --checkpoints_dir "./checkpoints" --input_nc 1 --output_nc 1 --resize_or_crop "scale_width" --how-many 99999


#--continue_train
