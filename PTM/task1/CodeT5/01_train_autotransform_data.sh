


mkdir model
mkdir ./model/code2code_autotransform_ovirt_medium/
mkdir ./model/code2code_autotransform_ovirt_medium/cache/
mkdir ./model/code2code_autotransform_ovirt_medium/outputs/
mkdir ./model/code2code_autotransform_ovirt_medium/summary/
mkdir ./model/code2code_autotransform_ovirt_medium/outputs/results

CUDA_VISIBLE_DEVICES=7 python  run_gen.py  --do_train --do_eval --do_eval_bleu  \
        --task refine --sub_task small --model_type codet5 --data_num -1    \
        --num_train_epochs  20  \
        --warmup_steps 500 \
        --learning_rate 5e-5 --patience 3 --beam_size 5\
        --gradient_accumulation_steps 1 \
        --tokenizer_name=Salesforce/codet5-base  \
        --model_name_or_path=Salesforce/codet5-base \
        --data_dir  ../../DATA/task1_data/autotransform_data/ovirt/medium/codet5_format_data/    \
        --cache_path ./model/code2code_autotransform_ovirt_medium/cache/  \
        --output_dir ./model/code2code_autotransform_ovirt_medium/outputs/  \
        --summary_dir ./model/code2code_autotransform_ovirt_medium/summary/   --save_last_checkpoints --always_save_model \
        --res_dir ./model/code2code_autotransform_ovirt_medium/outputs/results \
        --res_fn  ./model/code2code_autotransform_ovirt_medium/outputs/results/summarize_codet5_base.txt  \
        --train_batch_size 16 --eval_batch_size 16 --max_source_length 512 --max_target_length 512


mkdir ./model/code2code_autotransform_ovirt_small/
mkdir ./model/code2code_autotransform_ovirt_small/cache/
mkdir ./model/code2code_autotransform_ovirt_small/outputs/
mkdir ./model/code2code_autotransform_ovirt_small/summary/
mkdir ./model/code2code_autotransform_ovirt_small/outputs/results

CUDA_VISIBLE_DEVICES=7 python  run_gen.py  --do_train --do_eval --do_eval_bleu  \
        --task refine --sub_task small --model_type codet5 --data_num -1    \
        --num_train_epochs  20  \
        --warmup_steps 500 \
        --learning_rate 5e-5 --patience 3 --beam_size 5\
        --gradient_accumulation_steps 1 \
        --tokenizer_name=Salesforce/codet5-base  \
        --model_name_or_path=Salesforce/codet5-base \
        --data_dir  data/icse21_autof_data/merged/ovirt/small/codet5_format_data/    \
        --cache_path ./model/code2code_autotransform_ovirt_small/cache/  \
        --output_dir ./model/code2code_autotransform_ovirt_small/outputs/  \
        --summary_dir ./model/code2code_autotransform_ovirt_small/summary/   --save_last_checkpoints --always_save_model \
        --res_dir ./model/code2code_autotransform_ovirt_small/outputs/results \
        --res_fn  ./model/code2code_autotransform_ovirt_samll/outputs/results/summarize_codet5_base.txt  \
        --train_batch_size 16 --eval_batch_size 16 --max_source_length 512 --max_target_length 512




mkdir ./model/code2code_autotransform_google_medium/
mkdir ./model/code2code_autotransform_google_medium/cache/
mkdir ./model/code2code_autotransform_google_medium/outputs/
mkdir ./model/code2code_autotransform_google_medium/summary/
mkdir ./model/code2code_autotransform_google_medium/outputs/results

CUDA_VISIBLE_DEVICES=7 python  run_gen.py  --do_train --do_eval --do_eval_bleu  \
        --task refine --sub_task small --model_type codet5 --data_num -1    \
        --num_train_epochs  20  \
        --warmup_steps 500 \
        --learning_rate 5e-5 --patience 3 --beam_size 5\
        --gradient_accumulation_steps 1 \
        --tokenizer_name=Salesforce/codet5-base  \
        --model_name_or_path=Salesforce/codet5-base \
        --data_dir  ../../DATA/task1_data/autotransform_data/google/medium/codet5_format_data/    \
        --cache_path ./model/code2code_autotransform_google_medium/cache/  \
        --output_dir ./model/code2code_autotransform_google_medium/outputs/  \
        --summary_dir ./model/code2code_autotransform_google_medium/summary/   --save_last_checkpoints --always_save_model \
        --res_dir ./model/code2code_autotransform_google_medium/outputs/results \
        --res_fn  ./model/code2code_autotransform_google_medium/outputs/results/summarize_codet5_base.txt  \
        --train_batch_size 16 --eval_batch_size 16 --max_source_length 512 --max_target_length 512


mkdir ./model/code2code_autotransform_google_small/
mkdir ./model/code2code_autotransform_google_small/cache/
mkdir ./model/code2code_autotransform_google_small/outputs/
mkdir ./model/code2code_autotransform_google_small/summary/
mkdir ./model/code2code_autotransform_google_small/outputs/results

CUDA_VISIBLE_DEVICES=7 python  run_gen.py  --do_train --do_eval --do_eval_bleu  \
        --task refine --sub_task small --model_type codet5 --data_num -1    \
        --num_train_epochs  20  \
        --warmup_steps 500 \
        --learning_rate 5e-5 --patience 3 --beam_size 5\
        --gradient_accumulation_steps 1 \
        --tokenizer_name=Salesforce/codet5-base  \
        --model_name_or_path=Salesforce/codet5-base \
        --data_dir  ../../DATA/task1_data/autotransform_data/google/small/codet5_format_data/    \
        --cache_path ./model/code2code_autotransform_google_small/cache/  \
        --output_dir ./model/code2code_autotransform_google_small/outputs/  \
        --summary_dir ./model/code2code_autotransform_google_small/summary/   --save_last_checkpoints --always_save_model \
        --res_dir ./model/code2code_autotransform_google_small/outputs/results \
        --res_fn  ./model/code2code_autotransform_google_samll/outputs/results/summarize_codet5_base.txt  \
        --train_batch_size 16 --eval_batch_size 16 --max_source_length 512 --max_target_length 512



mkdir ./model/code2code_autotransform_android_medium/
mkdir ./model/code2code_autotransform_android_medium/cache/
mkdir ./model/code2code_autotransform_android_medium/outputs/
mkdir ./model/code2code_autotransform_android_medium/summary/
mkdir ./model/code2code_autotransform_android_medium/outputs/results

CUDA_VISIBLE_DEVICES=7 python  run_gen.py  --do_train --do_eval --do_eval_bleu  \
        --task refine --sub_task small --model_type codet5 --data_num -1    \
        --num_train_epochs  20  \
	--warmup_steps 500 \
	--learning_rate 5e-5 --patience 3 --beam_size 5\
        --gradient_accumulation_steps 1 \
        --tokenizer_name=Salesforce/codet5-base  \
        --model_name_or_path=Salesforce/codet5-base \
        --data_dir  ../../DATA/task1_data/autotransform_data/android/medium/codet5_format_data/    \
        --cache_path ./model/code2code_autotransform_android_medium/cache/  \
        --output_dir ./model/code2code_autotransform_android_medium/outputs/  \
        --summary_dir ./model/code2code_autotransform_android_medium/summary/   --save_last_checkpoints --always_save_model \
        --res_dir ./model/code2code_autotransform_android_medium/outputs/results \
        --res_fn  ./model/code2code_autotransform_android_medium/outputs/results/summarize_codet5_base.txt  \
        --train_batch_size 16 --eval_batch_size 16 --max_source_length 512 --max_target_length 512



mkdir ./model/code2code_autotransform_android_small/
mkdir ./model/code2code_autotransform_android_small/cache/
mkdir ./model/code2code_autotransform_android_small/outputs/
mkdir ./model/code2code_autotransform_android_small/summary/
mkdir ./model/code2code_autotransform_android_small/outputs/results

CUDA_VISIBLE_DEVICES=7 python  run_gen.py  --do_train --do_eval --do_eval_bleu  \
        --task refine --sub_task small --model_type codet5 --data_num -1    \
        --num_train_epochs  20  \
        --warmup_steps 500 \
        --learning_rate 5e-5 --patience 3 --beam_size 5\
        --gradient_accumulation_steps 1 \
        --tokenizer_name=Salesforce/codet5-base  \
        --model_name_or_path=Salesforce/codet5-base \
        --data_dir  ../../DATA/task1_data/autotransform_data/android/small/codet5_format_data/    \
        --cache_path ./model/code2code_autotransform_android_small/cache/  \
        --output_dir ./model/code2code_autotransform_android_small/outputs/  \
        --summary_dir ./model/code2code_autotransform_android_small/summary/   --save_last_checkpoints --always_save_model \
        --res_dir ./model/code2code_autotransform_android_small/outputs/results \
        --res_fn  ./model/code2code_autotransform_android_small/outputs/results/summarize_codet5_base.txt  \
        --train_batch_size 16 --eval_batch_size 16 --max_source_length 512 --max_target_length 512





