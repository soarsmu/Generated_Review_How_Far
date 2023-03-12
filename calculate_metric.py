from collections import Counter
import numpy as np
import re
import javalang
from torch.utils.data import DataLoader
import math
import logging
from datetime import datetime
import os
import gzip
import csv


f1 = open('CodeT5/task1/data1/results_beam5_hyp5/test_best-bleu.output', 'r')
predictions = f1.readlines()

f2 = open('CodeT5/task1/data1/results_beam5_hyp5/test_best-bleu.gold', 'r')
golds =  f2.readlines()


f3 = open('CodeT5/task1/data1/results_beam5_hyp5/test_best-bleu.src', 'r')
return_num = 1




##delete the separators in the AutoTransform' predictions 
# text = g
# print(g.replace('@@ ',''))
# print(candidate[0].replace('@@ ',''))


## Edit Distance Metric
## Progress Compared to Original Inputs
# edit1 : input --> gold
# edit2 : pred  --> gold
# (edit1- edit2)/edit1
def normal_leven2(list1, list2):
    str1 = list1
    str2 = list2
    len_str1 = len(str1) + 1
    len_str2 = len(str2) + 1
    
    matrix = [0 for n in range(len_str1 * len_str2)]
   
    for i in range(len_str1):
        matrix[i] = i
    
    for j in range(0, len(matrix), len_str1):
        if j % len_str1 == 0:
            matrix[j] = j // len_str1
    
    for i in range(1, len_str1):
        for j in range(1, len_str2):
            if str1[i - 1] == str2[j - 1]:
                cost = 0
            else:
                cost = 1
            matrix[j * len_str1 + i] = min(matrix[(j - 1) * len_str1 + i] + 1,
                                           matrix[j * len_str1 + (i - 1)] + 1,
                                           matrix[(j - 1) * len_str1 + (i - 1)] + cost)

    return matrix[-1]  

def edit_pogress(input, golden, predicted):
    golds = golden
    predictions = predicted
    sources = input
    edit_distance_pred2gold = []
    edit_distance_src2gold = []

    rr = []
    for ii in range(len(golds)):
        if golds[ii].strip() == predictions[ii].split('\t')[0].strip():
            rr.append(1)
        else:
            rr.append(0)
    # print('EM:', np.sum(np.array(rr)))

    # ## AutoTransform
    # predictions = [ l.strip().replace('@@ ','').strip() for l in predictions]
    # # predictions =[re.sub(r"\s+", " ", l) for l in predictions]
    # sources = [ l.strip().replace('@@ ','').strip() for l in sources]
    # # sources = [re.sub(r"\s+", " ", l) for l in sources]
    # golds = [ l.strip().replace('@@ ','').strip() for l in golds]
    # # golds = [re.sub(r"\s+", " ", l) for l in golds]
    #
    # rr = []
    # for ii in range(len(golds)):
    #     if golds[ii].strip() == predictions[ii].split('\t')[0].strip():
    #         rr.append(1)
    #     else:
    #         rr.append(0)
    # print('EM:', np.sum(np.array(rr)))



    for i in range(len(golds)):
        ## Token Level
        edit_distance_pred2gold.append(
            normal_leven2(golds[i].strip().split(), predictions[i].strip().split('\t')[0].strip().split())
        )

        edit_distance_src2gold.append(
            normal_leven2(golds[i].strip().split(), sources[i].strip().split('\t')[0].strip().split())
        )


    progress = [  ]
    for i in range(len(edit_distance_pred2gold)):
        pred_ = edit_distance_pred2gold[i]
        src_  = edit_distance_src2gold[1]
        p_ = round( (abs(src_)-abs(pred_) )/abs(src_), 3)
        progress.append(p_)
    print(Counter(edit_distance_pred2gold))

    # for ij in range(50):
    #     print(str(ij)+':', progress[ij], ' len:', len(golds[ij].split()),len(predictions[ij].split('\t')[0].split()))

    print('Edit Pogress: ', np.sum(np.array(progress))/len(progress))
    return progress

def exact_match(preds, goldens):
    correct_ = 0
    for i in range(len(preds)):
        prediction = preds[i].split('\t')[0].strip() ## only the top 1 recommendation
        if prediction.strip() == goldens[i].strip():
            correct_+=1
    print('Eaxct Match: ', correct_ / len(preds))


sources = []
sources = f3.readlines()
print("source: ", sources[0])




## CodeBERT
# predictions = [ '\t'.join(l.strip().split('\t')[1:top_k+1]) for l in predictions ]
# golds = [ g.split('\t')[1].strip() for g in golds ]
#

print(len(sources), len(golds), len(predictions))
print('\nOriginal Top1: ')
edit_counts = edit_pogress(sources, golds, predictions)
exact_match(predictions, golds)
