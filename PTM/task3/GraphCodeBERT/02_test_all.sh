
## Trans_Data
mkdir  model/code_review2code_trans_data_task3/out_beam5_hyp5/
CUDA_VISIBLE_DEVICES=0 python run2_12.py --do_test --model_type roberta      \
     	--model_name_or_path microsoft/graphcodebert-base   \
 	    --test_filename ../../DATA/task3_data/trans_data/test.json       \
     	--dev_filename ../../DATA/task3_data/trans_data/val.json      \
     	--load_model_path model/code_review2code_trans_data_task3/checkpoint-best-bleu/pytorch_model.bin \
     	--output_dir model/code_review2code_trans_data_task3/out_beam5_hyp5/    \
 	    --max_source_length 512 --max_target_length 512  --beam_size 5   --train_batch_size 16  --eval_batch_size 16        \
      --learning_rate 5e-5   --train_steps 6000  --eval_steps 500



## T5_Data
mkdir model/code_review2code_t5_data_task3/out_beam5_hyp5/
CUDA_VISIBLE_DEVICES=0 python run2_12.py --do_test --model_type roberta      \
     	--model_name_or_path microsoft/graphcodebert-base   \
 	    --test_filename ../../DATA/task3_data/t5_data/test.json       \
     	--dev_filename  ../../DATA/task3_data/t5_data/val.json     \
     	--load_model_path model/code_review2code_t5_data_task3/checkpoint-best-bleu/pytorch_model.bin \
     	--output_dir model/code_review2code_t5_data_task3/out_beam5_hyp5/    \
 	    --max_source_length 512 --max_target_length 512  --beam_size 5   --train_batch_size 16  --eval_batch_size 16         \
      --learning_rate 5e-5   --train_steps 50000  --eval_steps 5000










