from collections import Counter

f1 = open('all_models_auf_merged/auf_google_medium/out_beam5_hyp5/test_1.output','r')
predictions = f1.readlines()
print(predictions[0])
print(len(predictions))
f2 = open('all_models_auf_merged/auf_google_medium/out_beam5_hyp5/test_1.gold','r')
golds =  f2.readlines()
print(len(golds))


'''
exact_same =  [1 if golds[i].strip() ==predictions[i].strip() else 0  for i in range(len(golds))]


def check_correct_num (golds, predictions, num_hyp):
    count_same = []
    if num_hyp ==1 :
        exact_same =  [1 if golds[i].strip() ==predictions[i].strip() else 0  for i in range(len(golds))]
        print(Counter(exact_same))
    elif num_hyp > 1:
        for i in range(len(golds)):
            gold_ = golds[i]
            candits =  predictions[ num_hyp*i: num_hyp*i+ num_hyp]
            if gold_ in candits:
                count_same.append(1)
            else:
                count_same.append(0)
        print(Counter(count_same))

check_correct_num (golds, predictions, 1)
'''
results = []
for i in range(len(golds)):
    g = golds[i].split('\t')[1].strip()
    candidates = predictions[i].split('\t')
    #print(len(candidates))
    candidates = [c.strip() for c in candidates]
    if g in candidates:
       results.append(1)
    else:
      results.append(0)

print(Counter(results))
