#!/usr/bin/env zsh

source activate survival

# the first argument of the script is the ratio in [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]
RATIO=$1

# run cycle_gan on the holdout test set
python test.py --dataroot "./datasets/brats2013-holdout" --model "cycle_gan" --name "brats2013_cyclegan_$RATIO" --checkpoints_dir "./checkpoints" --input_nc 1 --output_nc 1 --resize_or_crop "scale_width" --how_many 10000

# run conditional gan on the holdhout test set
python test.py --dataroot "./datasets/brats2013-var/holdout" --model "pix2pix" --name "brats2013_pix2pix-cond_$RATIO" --checkpoints_dir "./checkpoints" --input_nc 1 --output_nc 1 --resize_or_crop "scale_width" --how_many 10000

# run l1 loss on the holdout test set
python test.py --dataroot "./datasets/brats2013-var/holdout" --model "pix2pix" --name "brats2013_pix2pix_$RATIO" --checkpoints_dir "./checkpoints" --input_nc 1 --output_nc 1 --resize_or_crop "scale_width" --how_many 10000
