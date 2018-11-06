#!/usr/bin/env zsh

source activate survival

# We do this to get the normalized data through the cyclegan dataloader.

# run cycle_gan on train set with ratio 0.0
python test.py --dataroot "./datasets/brats2013-var/brats2013_0.0" --model "cycle_gan" --name "brats2013_cyclegan_0.0" --checkpoints_dir "./checkpoints" --input_nc 1 --output_nc 1 --resize_or_crop "scale_width" --how_many 10000 --results_dir "./results-train/"

# run cycle_gan on train set with ratio 1.0
python test.py --dataroot "./datasets/brats2013-var/brats2013_1.0" --model "cycle_gan" --name "brats2013_cyclegan_1.0" --checkpoints_dir "./checkpoints" --input_nc 1 --output_nc 1 --resize_or_crop "scale_width" --how_many 10000 --results_dir "./results-train/"
