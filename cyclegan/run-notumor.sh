#!/bin/sh

python train.py --dataroot "./datasets/brats2013-notumor" --model "cycle_gan" --name "brats2013-notumor2_cyclegan" --checkpoints_dir "./checkpoints" --no_flip  --input_nc 1 --output_nc 1 --resize_or_crop "scale_width" 
