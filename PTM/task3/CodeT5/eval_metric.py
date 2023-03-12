from collections import Counter

#f1 = open('log_gene_icse22_codet51/outputs/results/test_e9.output', 'r')
#f1 = open('log_gene_icse22_codet5_small_msg_only/outputs/results/test_e14.output', 'r')
#f1 = open('log_gene_icse22_codet5_rdrop/outputs/results/test_e8.output', 'r')
#f1 = open('log_gene_icse22_codet5_small/outputs/results/test_e8.output', 'r')
#f1 = open("log_gene_icse22_codet51/outputs/results_beam5_hyp5/test_best-bleu.output", 'r')
#f1 = open('log_gene_icse22_codet5_sampled/outputs/results/test_e13.output', 'r')
#f1 = open("log_gene_icse22_codet51/outputs/results/test_e3.output", 'r')
#f1 = open('log_gene_icse22_codet5_var_abs/outputs/results/test_e5.output', 'r')
#f1 = open('log_gene_icse22_codet51_further/outputs/results/test_e4.output', 'r')
#f1 = open('log_gene_icse22_codet5_train_and_pretrain_data/outputs/results/test_e8.output', 'r')
f1 = open('log_gene_icse22_codet5_train_and_pretrain_data_further/outputs/results/test_e2.output', 'r')
#f1 = open('log_gene_icse22_codet5_train_and_pretrain_data/outputs/results_beam5_hyp5/test_best-bleu.output', 'r')
#f1 = open('codereviewer_icse21_beam5_raw/outputs/results_beam5_hyp5/test_e0.output','r')
#f1 = open('models_auf_merged/auf_android_medium/outputs/results_beam5_hyp5/test_best-bleu.output','r')
#f1 = open('code_review_icse22_new_large/outputs/results_beam5_out5/test_best-bleu.output','r')
#f1 = open('./code_review_crop_codet5/outputs/results_beam5_hyp5_new/test_best-bleu.output', 'r')
#f1 = open('./code_review_crop_merged_v3_only_bug/outputs/results_beam5_hyp5/test_best-bleu.output','r') 
#f1 = open('./code_review_crop_merged_with_clean/outputs/results_beam5_hyp5_/test_best-bleu.output','r')
#f1 = open('models_auf_merged/auf_ovirt_medium/outputs/results_beam5_hyp5/test_best-bleu.output','r')
predictions = f1.readlines()
print(predictions[0])
print(len(predictions))

#f2 = open('log_gene_icse22_codet51/outputs/results/test_e9.gold', 'r')
#f2 = open('log_gene_icse22_codet5_small_msg_only/outputs/results/test_e14.gold', 'r')
#f2 = open('log_gene_icse22_codet5_rdrop/outputs/results/test_e8.gold', 'r')
#f2 = open('log_gene_icse22_codet5_small/outputs/results/test_e8.gold', 'r')  
#f2 = open("log_gene_icse22_codet51/outputs/results_beam5_hyp5/test_best-bleu.gold", 'r')  
#f2 = open('log_gene_icse22_codet5_sampled/outputs/results/test_e13.gold', 'r')
#f2 = open("log_gene_icse22_codet51/outputs/results/test_e3.gold", 'r')
#f2 = open('log_gene_icse22_codet5_var_abs/outputs/results/test_e5.gold', 'r')
#f2 = open('log_gene_icse22_codet51_further/outputs/results/test_e4.gold', 'r')
#f2 = open('log_gene_icse22_codet5_train_and_pretrain_data/outputs/results/test_e8.gold', 'r')
f2 = open('log_gene_icse22_codet5_train_and_pretrain_data_further/outputs/results/test_e2.gold', 'r')
#f2 = open('log_gene_icse22_codet5_train_and_pretrain_data/outputs/results_beam5_hyp5/test_best-bleu.gold', 'r')  
#f2 = open('codereviewer_icse21_beam5_raw/outputs/results_beam5_hyp5/test_e0.gold','r')
#f2 = open('models_auf_merged/auf_android_medium/outputs/results_beam5_hyp5/test_best-bleu.gold','r')
#f2 = open('code_review_icse22_new_large/outputs/results_beam5_out5/test_best-bleu.gold','r')
#f2 = open('./code_review_crop_codet5/outputs/results_beam5_hyp5_new/test_best-bleu.gold','r')
#f2 = open('./code_review_crop_merged_v3_only_bug/outputs/results_beam5_hyp5/test_best-bleu.gold','r')
#f2 = open('./code_review_crop_merged_with_clean/outputs/results_beam5_hyp5_/test_best-bleu.gold','r')  
#f2 = open('models_auf_merged/auf_ovirt_medium/outputs/results_beam5_hyp5/test_best-bleu.gold','r')
golds =  f2.readlines()
print(len(golds))
print(golds[0])


f3 = open("log_gene_icse22_codet51/outputs/results_beam5_hyp5/test_best-bleu.src", 'r')  
#f3 = open('codereviewer_icse21_beam5_raw/outputs/results_beam5_hyp5/test_e0.src','r')
#f3 = open('models_auf_merged/auf_android_medium/outputs/results_beam5_hyp5/test_best-bleu.src','r')
#f3 = open('code_review_icse22_new_large/outputs/results_beam5_out5/test_best-bleu.src','r')
#f3 = open('./code_review_crop_codet5/outputs/results_beam5_hyp5_new/test_best-bleu.src', 'r')
#f3 = open('./code_review_crop_merged_v3_only_bug/outputs/results_beam5_hyp5/test_best-bleu.src','r')
#f3 = open('./code_review_crop_merged_with_clean/outputs/results_beam5_hyp5_/test_best-bleu.src','r')
srcs = f3.readlines()


results = []
results2 = [] ## neg
correct_ids = []
first_can = []
topk = 2
already_seen = []
already_seen_src = []


for i in range(len(golds)):
    
    g = golds[i].strip()

    ### De-duplicate
    #if g in already_seen:
    #    continue
    if srcs[i].strip() in already_seen_src:
        continue
    if srcs[i].strip() == g: 
        continue

    candidates = predictions[i].split('\t')
    candidates = [c.strip() for c in candidates]
    candidates = candidates[0:topk]
    

    #g = g.lower()
    #candidates = [c.lower() for c in candidates]
    
    if g in candidates:
        results.append(1)
    else:
        results.append(0)

    already_seen.append(g)
    already_seen_src.append(srcs[i].strip())




print(len(results))
print(Counter(results))
print(Counter(results2))
print(sum(results)/len(results))






'''
with open('./models_byt5_icse20_small_beam5_raw/outputs/results_beam5_hyp5/test_best-bleu.single_output' , 'w') as f:
    for l in first_can:    
        f.write(l+'\n')


for i in [ 0, 100,200,300,400,500, 600, 700, 800, 1000]:
    print('ID: ', i)
    print(golds[i])
    for p in predictions[i].split('\t'):
        print(p)
    print()

print(len(correct_ids), correct_ids[0:20])


with open('./code_review_crop_merged_v3_only_bug/outputs/results_beam5_hyp5/test_correct_ids.txt', 'w') as f:
    for id_ in correct_ids:
        f.write(str(id_)+'\n')
'''
