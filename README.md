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
note: we perform the experiment on GTX-1080Ti and GeForce RTX-2080;  
# 2.Description  
* Generally, this code has following features:  
  1.Just include complete inference code  
  2.Support Total-text, CTW1500,TD500, ICDAR15, MLT-17 datasets  
# 3.Partial Dataset Links  
1. [CTW1500](https://www.baidu.com/)   
2. [TD500](https://www.baidu.com/)  
3. [Total-Text](https://www.baidu.com/) 
# 4.Pretrained Models  
The [model](https://drive.google.com/open?id=12Z4vCqvlvw5D9BA8bD9NTJwLcslP25FY) is pre-train on MLT-17 and fine-tune on each benchmark.
