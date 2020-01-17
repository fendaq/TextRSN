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

