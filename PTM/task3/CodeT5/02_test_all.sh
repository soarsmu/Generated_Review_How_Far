
mkdir ./model/code_review2code_trans_data_task3/outputs/results_beam5_hyp5
CUDA_VISIBLE_DEVICES=0 python  run_gen2.py  --do_test --do_eval_bleu  \
        --task refine --sub_task small --model_type codet5 --data_num -1    \
        --num_train_epochs  20  \
        --warmup_steps 500 \
        --learning_rate 5e-5 --patience 3 --beam_size 5\
        --gradient_accumulation_steps 1 \
        --tokenizer_name=Salesforce/codet5-base  \
        --model_name_or_path=Salesforce/codet5-base \
        --data_dir  ../../DATA/task3_data/trans_data/codet5_format_data/    \
        --cache_path ./model/code_review2code_trans_data_task3/cache/  \
        --output_dir ./model/code_review2code_trans_data_task3/outputs/  \
        --summary_dir ./model/code_review2code_trans_data_task3/summary/   --save_last_checkpoints --always_save_model \
        --res_dir ./model/code_review2code_trans_data_task3/outputs/results_beam5_hyp5 \
        --res_fn  ./model/code_review2code_trans_data_task3/outputs/results_beam5_hyp5/summarize_codet5_base.txt  \
        --train_batch_size 16 --eval_batch_size 16 --max_source_length 512 --max_target_length 512


mkdir ./model/code_review2code_t5_data_task3/outputs/results_beam5_hyp5
CUDA_VISIBLE_DEVICES=0 python  run_gen2.py  --do_test --do_eval_bleu  \
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
        --res_dir ./model/code_review2code_t5_data_task3/outputs/results_beam5_hyp5 \
        --res_fn  ./model/code_review2code_t5_data_task3/outputs/results_beam5_hyp5/summarize_codet5_base.txt  \
        --train_batch_size 16 --eval_batch_size 16 --max_source_length 512 --max_target_length 512