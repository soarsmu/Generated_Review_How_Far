mkdir model
mkdir ./model/code_review2code_t5_data_task3/
mkdir ./model/code_review2code_t5_data_task3/cache/
mkdir ./model/code_review2code_t5_data_task3/outputs/
mkdir ./model/code_review2code_t5_data_task3/summary/
mkdir ./model/code_review2code_t5_data_task3/outputs/results

CUDA_VISIBLE_DEVICES=0 python  run_gen.py  --do_train --do_eval --do_eval_bleu  \
        --task refine --sub_task small --model_type codet5 --data_num -1    \
        --num_train_epochs  20  \
        --warmup_steps 500 \
        --learning_rate 5e-5 --patience 3 --beam_size 5\
        --gradient_accumulation_steps 1 \
        --tokenizer_name=Salesforce/codet5-base  \
        --model_name_or_path=Salesforce/codet5-base \
        --data_dir  ../../DATA/task3_data/t5_data/codet5_format_data/    \
        --cache_path ./model/code_review2code_t5_data_task3/cache/  \
        --output_dir ./model/code_review2code_t5_data_task3/outputs/  \
        --summary_dir ./model/code_review2code_t5_data_task3/summary/   --save_last_checkpoints --always_save_model \
        --res_dir ./model/code_review2code_t5_data_task3/outputs/results \
        --res_fn  ./model/code_review2code_t5_data_task3/outputs/results/summarize_codet5_base.txt  \
        --train_batch_size 16 --eval_batch_size 16 --max_source_length 512 --max_target_length 512