# Distribution Matching Losses Can Hallucinate Features in Medical Image Translation

## aka How to Cure Cancer (in images) with Unpaired Image Translation

Joseph Paul Cohen, Margaux Luck, Sina Honari

https://arxiv.org/abs/1805.08841

Published at Medical Image Computing & Computer Assisted Intervention (MICCAI 2018). An abstract is published at the Medical Imaging with Deep Learning Conference (MIDL 2018)


<img height=400px src="figures/HG0001-103-True_real_A.png"><img height=400px src="figures/tumor-removal.gif"><img height=400px src="figures/HG0001-103-True_real_B.png">


## How to run

Prepare the data

[prepare_data.ipynb](prepare_data.ipynb)


Run the cyclegan for each split

```
$cd cyclegan
$sh run.sh
```

Normalize the data to train the classifier

```
$cd cyclegan
$sh create_normalize_train_data.sh
```

Train the classifier and classify images:

[prepare_data.ipynb](train_classifier.ipynb)


![](figures/vary-bias.png)


## Requirements

If you want to use Conda:

```
conda create -n pytorch python=3 numpy scipy pandas scikit-learn
source activate pytorch
conda install pytorch torchvision cuda80 -c soumith
```

# T-NT Dataset

If you are looking for the dataset used in this paper we have created a dataset called T-NT which contains MRI slides with and without tumors. 

Download it here: https://academictorrents.com/details/d52ccc21455c7a82fd6e58964c89b7da99e0edf7

It includes segmentations:

![](https://i.imgur.com/WIKFhO1.png)

Sample Flair Images

| Tumor   |      NoTumor      | 
|:----------:|:-------------:|
| ![](https://i.imgur.com/3305V4u.png) |  ![](https://i.imgur.com/QDVB4fo.png)| 
| ![](https://i.imgur.com/kGHfa8Q.png) | ![](https://i.imgur.com/MKA9vxK.png)|

