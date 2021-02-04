# TORCH
## Dataset
We construct a new dataset named HIER Food-71 which is composed of 30,817 image-text instances labeled with a two-layer class hierarchy. The dataset contains the following data:
* label.mat: Label matrix, 30817 * 71, 71 kinds of labels in total. Labels are divided into two layers, the first layer has 5 labels (1-5) and the second layer has 66 labels (6-71),
* ingredient.mat: Tag matrix, 30817 * 316, 316 kinds of ingredient tags in total,
* image224.mat: Image matrix, 30817 * 224 * 224 * 3,
* image227.mat: Image matrix，30817 * 227 * 227 * 3,
* image_vgg.mat: The vgg-f feature of the image, 30817 * 4096,
* image_alexnet.mat: Depth feature of image，30817 * 4096.

You can download the HIER Food-71 from the following links:
* [Google drive link](https://drive.google.com/drive/folders/1KE2zZ5l2s74V6i7IbBBxUyfbChQVCGoc?usp=sharing)
* [baidu.pan.com](https://pan.baidu.com/s/1bHwr6__uBgsxn2u4w7cpDw)  password:4xr7 
