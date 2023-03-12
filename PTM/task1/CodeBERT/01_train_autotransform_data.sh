
CUDA_VISIBLE_DEVICES=0 python run_12.py --do_train --do_eval --model_type roberta \
    --model_name_or_path microsoft/codebert-base  \
    --train_filename ../../DATA/task1_data/autotransform_data/android/small/train.json   \
    --dev_filename ../../DATA/task1_data/autotransform_data/android/small/val.json   \
    --output_dir model/code2code_autotran_android_small_task1/  \
    --max_source_length 512 --max_target_length 512  --beam_size 5 \
    --train_batch_size 16  --eval_batch_size 16 \
    --learning_rate 5e-5 --train_steps 6000 --eval_steps 500


CUDA_VISIBLE_DEVICES=0 python run_12.py --do_train --do_eval --model_type roberta \
      --model_name_or_path microsoft/codebert-base  \
      --train_filename ../../DATA/task1_data/autotransform_data/android/medium/train.json   \
      --dev_filename ../../DATA/task1_data/autotransform_data/android/medium/val.json   \
      --output_dir model/code2code_autotran_android_medium_task1/  \
      --max_source_length 512 --max_target_length 512  --beam_size 5 \
      --train_batch_size 16  --eval_batch_size 16 \
      --learning_rate 5e-5 --train_steps 6000 --eval_steps 500

CUDA_VISIBLE_DEVICE=0 python run_12.py --do_train --do_eval --model_type roberta \
      --model_name_or_path microsoft/codebert-base  \
      --train_filename ../../DATA/task1_data/autotransform_data/google/small/train.json   \
      --dev_filename ../../DATA/task1_data/autotransform_data/google/small/val.json   \
      --output_dir model/code2code_autotran_google_small_task1  \
      --max_source_length 512 --max_target_length 512  --beam_size 5 \
      --train_batch_size 16  --eval_batch_size 16 \
      --learning_rate 5e-5 --train_steps 6000 --eval_steps 500

CUDA_VISIBLE_DEVICES=0 python run_12.py --do_train --do_eval --model_type roberta \
      --model_name_or_path microsoft/codebert-base  \
      --train_filename ../../DATA/task1_data/autotransform_data/google/medium/train.json   \
      --dev_filename ../../DATA/task1_data/autotransform_data/google/medium/val.json   \
      --output_dir model/code2code_autotran_google_medium_task1  \
      --max_source_length 512 --max_target_length 512  --beam_size 5 \
      --train_batch_size 16  --eval_batch_size 16 \
      --learning_rate 5e-5 --train_steps 6000 --eval_steps 500

CUDA_VISIBLE_DEVICES=0 python run_12.py --do_train --do_eval --model_type roberta \
      --model_name_or_path microsoft/codebert-base  \
      --train_filename ../../DATA/task1_data/autotransform_data/ovirt/small/train.json   \
      --dev_filename ../../DATA/task1_data/autotransform_data/ovirt/small/val.json   \
      --output_dir model/code2code_autotran_ovirt_small_task1  \
      --max_source_length 512 --max_target_length 512  --beam_size 5 \
      --train_batch_size 16  --eval_batch_size 16 \
      --learning_rate 5e-5 --train_steps 6000 --eval_steps 500


CUDA_VISIBLE_DEVICES=0 python run_12.py --do_train --do_eval --model_type roberta \
      --model_name_or_path microsoft/codebert-base  \
      --train_filename ../../DATA/task1_data/autotransform_data/ovirt/medium/train.json   \
      --dev_filename ../../DATA/task1_data/autotransform_data/ovirt/medium/val.json   \
      --output_dir model/code2code_autotran_ovirt_medium_task1  \
      --max_source_length 512 --max_target_length 512  --beam_size 5 \
      --train_batch_size 16  --eval_batch_size 16 \
      --learning_rate 5e-5 --train_steps 6000 --eval_steps 500


