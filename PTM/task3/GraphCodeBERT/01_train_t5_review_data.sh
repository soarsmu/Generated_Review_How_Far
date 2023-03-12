CUDA_VISIBLE_DEVICES=0 python run_12.py --do_train --do_eval --model_type roberta      \
     	--model_name_or_path microsoft/graphcodebert-base   \
 	    --train_filename ../../DATA/task3_data/t5_data/train.json       \
     	--dev_filename  ../../DATA/task3_data/t5_data/val.json     \
     	--output_dir model/code_review2code_t5_data_task3/   \
 	    --max_source_length 512 --max_target_length 512  --beam_size 5   --train_batch_size 16  --eval_batch_size 16         \
      --learning_rate 5e-5   --train_steps 50000  --eval_steps 5000
