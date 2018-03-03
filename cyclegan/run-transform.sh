#!/bin/sh

RATIO=$1

python test.py --dataroot "./datasets/brats2013-var/holdout" --model "cycle_gan" --name "brats2013_cyclegan_$RATIO" --checkpoints_dir "./checkpoints" --input_nc 1 --output_nc 1 --resize_or_crop "scale_width" --how_many 10000


#--continue_train
