# Generated Code Review Automation How Far Are We 

This is implementation of "Generated Code Review Automation How Far Are We ?" published in the research track in ICPC 2023. 




## Pre-requirement
1. Python3.7
2. CUDA 10.2
3. Conda 

## Python Library Installation

```
$ bash install_library.sh
```



## Existing ACR tools 
Please use the replication packages provided by the authors and run them on all datasets:
* Tufano et al. ICSE 2021. "[Towards automating code review activities](https://github.com/RosaliaTufano/code_review)"
* Thongtanunam et al. ICSE 2022. "[AutoTransform: Automated Code Transformation to Support Modern Code Review Process](https://github.com/awsm-research/AutoTransform-Replication)"
* Tufano et al. ICSE 2022. "[Using Pre-Trained Models to Boost Code Review Automation](https://github.com/RosaliaTufano/code_review_automation)"


## Datasets:

Please following the link below to download the data. 

- https://drive.google.com/file/d/13W5zisw9jGDXHIczyh2D7DI5kLUYYWHn/view?usp=share_link

After downloading, put the data "generated_review_datasets.zip" in the path "Generated_Review_How_Far_ICPC/PTM/" 
Then upzip the file to get: "Generated_Review_How_Far_ICPC/PTM/DATA"


## General-purpose pre-trained models 

### Intro
- We put the scirpts according to different tasks:
  - task1: Code Revision Before Review
  - task2: Review Comment Generation
  - task3: Code Revision Before Review

- In each task, we separately put code for each Pre-trained models:
  - CodeBERT
  - GraphCodeBERT
  - CodeT5

- In each model, we write different training scirpts for each dataset:
  - 01_train_trans_review_data.sh: training on Trans-Review data
  - 01_train_t5_review_data: training on T5-Review data
  - 01_train_autotransform_data.sh: training on AutoTransform data
 
 
### Training & Validation
Suppose we want to do task1 using CodeBERT on the Trans-Review dataset,

```
$  cd PTM/task1/CodeBERT/
$  bash 01_train_trans_review_data.sh

```
Note that you can visit the corresponding path and train a model for a task in a dataset by scripts.


### Inferencing
You can run one script to do inferences on all datasets of a pre-trained model for a task:

```
$  cd PTM/task1/CodeBERT/
$  bash 02_test_all.sh

```


### Compute Metrics
```
python calculate_metric.py

```













