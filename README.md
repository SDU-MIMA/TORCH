# New Method, Dataset, and Evaluation Metric for Supervised Hierarchical Cross-Modal Hashing
## 1. Dataset: HIER Food-71
There is a lack of benchmark datasets which involve multiple modalities and are hierarchically labeled. Besides, the exisiting hierarchically-labeled datasets focus only on the fashion domain and lack of real-world datasets. Quite naturally, food has rich hierarchical label information and the cross-media retrieval with hierarchical categories in food domain has the great demand. In view of this,  we build a benchmark dataset named HIER Food-71 from food domain which contains 30,817 image-text instances labeled with a two-layer hierarchy. The dataset contains the following data:
* label.mat: Label matrix, 30817 * 71, 71 labels in total. Labels are divided into two layers, the 1st to 5th labels represent the cateogeries of the first layer while the 6th to 71st labels represent the catogeries of the second layer.
* ingredient.mat: tag matrix, 30817 * 316, 316 ingredients in total.
* image224.mat: image matrix, 30817 * 224 * 224 * 3.
* image227.mat: image matrix，30817 * 227 * 227 * 3.
* image_vgg.mat: the features extracted by VGG-F model, 30817 * 4096.
* image_alexnet.mat: the features extrated by Alexnet model, 30817 * 4096.

You can download the HIER Food-71 from the following links:
* [Google drive link](https://drive.google.com/drive/folders/1KE2zZ5l2s74V6i7IbBBxUyfbChQVCGoc?usp=sharing)
* [baidu.pan.com link](https://pan.baidu.com/s/1bHwr6__uBgsxn2u4w7cpDw) password:4xr7 

## 2. Evaluation Metric: Mean Average Precision with Penalty (MAPP) metric
We put forward a new evaluation matrix, i.e., the Mean Average Precision with Penalty (MAPP) metric because the widely-adopted evaluation metric Mean Average Precision seems to be inappropriate to the supervised hierarchical retrieval. The MAPP could well reflect the degree of the retrieved instances whether or not are sorted by label hierarchy. Specific implementation codes can refer to ./utils/tool/mAP_pnenalty.m

## 3. Method: TwO-step hieRarchical Cross-modal Hashing(TORCH)
We design a simple yet effective method to efficiently learn high-quality hash codes by preserving the label hierarchy. 
### 3.1 Running Environment
    Matlab
### 3.2 Dataset
We use three datasets to perform our experiments, i.e., FashionVC, Ssense, and HIER Food-71 datasets. You can download the FashionVC and Ssense by the following links:
* [FashionVC](https://pan.baidu.com/s/1VZwdU8MhWkvVmpMjrFJktw) password:sreu
* [Ssense](https://pan.baidu.com/s/1RZsSZY5pY2GSAQEu5ciqAw)  password:qwmq
### 3.3 Run demo
    main_demo.m

