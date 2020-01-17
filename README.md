# TextRSN
IJCAI2020 Paper ID 336:Regression Segmentation Network for Arbitrary Shape Text Detection;  
**Due to copyright issues, we only open source part of the code. Later, we will open source all the code, including training and testing code**

# 1.Prerequisites  
python 3.7;  
PyTorch 1.2.0;  
Numpy >=1.16;  
CUDA 10.1;  
GCC >=9.0;  
NVIDIA GPU(with 10G or larger GPU memory for inference);  
**Note**: we perform the experiment on GTX-1080Ti and GeForce RTX-2080;  
# 2.Description  
* Generally, this code has following features:  
  1.Just include complete inference code  
  2.Support Total-text, CTW1500,TD500, ICDAR15, MLT-17 datasets  
# 3.Partial Dataset Links  
1. [CTW1500](https://drive.google.com/open?id=1A2s3FonXq4dHhD64A2NCWc8NQWMH2NFR)   
2. [TD500](https://drive.google.com/open?id=1ByluLnyd8-Ltjo9AC-1m7omZnI-FA1u0)  
3. [Total-Text](https://drive.google.com/open?id=17_7T_-2Bu3KSSg2OkXeCxj97TBsjvueC) 
# 4.Pretrained Models  
The [model](https://drive.google.com/open?id=12Z4vCqvlvw5D9BA8bD9NTJwLcslP25FY) is pre-train on MLT-17 and fine-tune on each benchmark.

# 5.Running tests
run:  
```
sh eval.sh
```
The details in a are as follows:  
```
#!/bin/bash
CUDA_LAUNCH_BLOCKING=1 python eval_test.py --exp_name Totaltext --checkepoch 400 --gpu 0 

# threshold=0.3, threshold=0.65; test_size=(256,1024)
#CUDA_LAUNCH_BLOCKING=1 python eval_test.py--exp_name Totaltext --checkepoch 400 --gpu 0

# threshold=0.3, threshold=0.65;test_size=(512,1024)
#CUDA_LAUNCH_BLOCKING=1 python eval_test.py --exp_name Ctw1500 --checkepoch 115 --gpu 0

# threshold=0.315, threshold=0.8; test_size=(0,832)
#CUDA_LAUNCH_BLOCKING=1 python eval_test.py --exp_name TD500 --checkepoch 125 --gpu 0

# threshold=0.4, threshold=0.8; test_size=(960, 1920)
#CUDA_LAUNCH_BLOCKING=1 python eval_test.py --exp_name Icdar2015 --checkepoch 885 --gpu 0

# threshold=0.4, threshold=0.8;--test_size=(256,1920)
#CUDA_LAUNCH_BLOCKING=1 python eval_test.py --exp_name MLT2017 --checkepoch 64 --gpu 0
```
Note: you should modify the corresponding parameters in [option.py](https://github.com/AnonyCode111/TextRSN/blob/master/util/option.py) file according to the annotations in [eval.sh](https://github.com/AnonyCode111/TextRSN/blob/master/eval.sh)  
# 6.Our Method vs PSENet-1s
![](https://github.com/AnonyCode111/TextRSN/blob/master/results/img3.png)
# 7.Ablation Study  
![](https://github.com/AnonyCode111/TextRSN/blob/master/results/img2.png)
# 8.Qualitative results ( [Total-Text](https://github.com/AnonyCode111/TextRSN/tree/master/vis/Totaltext_test_0) [CTW-1500](https://github.com/AnonyCode111/TextRSN/tree/master/vis/Ctw1500_test_0))
![](https://github.com/AnonyCode111/TextRSN/blob/master/results/img1.png)
# License  
This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/AnonyCode111/TextRSN/blob/master/LICENSE.md) file for details



