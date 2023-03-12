
## ----- Trans_Data ------


mkdir model/code2code_trans_data_task1/out_beam5_hyp5/
CUDA_VISIBLE_DEVICES=0 python run2_12.py --do_test  --model_type roberta      \
     	--model_name_or_path microsoft/graphcodebert-base   \
 	    --test_filename ../../DATA/task1_data/trans_data/test.json       \
     	--dev_filename ../../DATA/task1_data/trans_data/eval.json      \
     	--load_model_path model/code2code_trans_data_task1/checkpoint-best-bleu/pytorch_model.bin \
     	--output_dir model/code2code_trans_data_task1/out_beam5_hyp5/   \
 	    --max_source_length 512 --max_target_length 512  --beam_size 5   --train_batch_size 16  --eval_batch_size 16        \
      --learning_rate 5e-5   --train_steps 6000  --eval_steps 500


## ------ T5_Data ------
mkdir model/code2code_t5_data_task1/out_beam5_hyp5/
CUDA_VISIBLE_DEVICES=0 python run2_12.py --do_test  --model_type roberta      \
     	--model_name_or_path microsoft/graphcodebert-base   \
 	    --test_filename ../../DATA/task1_data/t5_data/test.json       \
     	--dev_filename ../../DATA/task1_data/t5_data/val.json      \
     	--load_model_path model/code2code_t5_data_task1/checkpoint-best-bleu/pytorch_model.bin  \
     	--output_dir model/code2code_t5_data_task1/out_beam5_hyp5/   \
 	    --max_source_length 512 --max_target_length 512  --beam_size 5   --train_batch_size 16  --eval_batch_size 16       \
      --learning_rate 5e-5   --train_steps 50000  --eval_steps 5000




### ------ AutoTransform Data -------
mkdir model/code2code_autotran_android_small_task1/out_beam5_hyp5/
CUDA_VISIBLE_DEVICES=0 python run2_12.py --do_test --do_eval --model_type roberta \
    --model_name_or_path microsoft/graphcodebert-base  \
    --test_filename ../../DATA/task1_data/autotransform_data/android/small/test.json   \
    --dev_filename ../../DATA/task1_data/autotransform_data/android/small/val.json   \
    --load_model_path   model/code2code_autotran_android_small_task1/checkpoint-best-bleu/pytorch_model.bin \
    --output_dir model/code2code_autotran_android_small_task1/out_beam5_hyp5/  \
    --max_source_length 512 --max_target_length 512  --beam_size 5   --train_batch_size 16  --eval_batch_size 16 \
    --learning_rate 5e-5 --train_steps 6000 --eval_steps 500

mkdir model/code2code_autotran_android_medium_task1/out_beam5_hyp5/
CUDA_VISIBLE_DEVICES=0 python run2_12.py --do_test --do_eval --model_type roberta \
      --model_name_or_path microsoft/graphcodebert-base  \
      --test_filename ../../DATA/task1_data/autotransform_data/android/medium/test.json   \
      --dev_filename ../../DATA/task1_data/autotransform_data/android/medium/val.json   \
      --load_model_path   model/code2code_autotran_android_medium_task1/checkpoint-best-bleu/pytorch_model.bin \
      --output_dir model/code2code_autotran_android_medium_task1/out_beam5_hyp5/  \
      --max_source_length 512 --max_target_length 512  --beam_size 5   --train_batch_size 16  --eval_batch_size 16 \
      --learning_rate 5e-5 --train_steps 6000 --eval_steps 500

mkdir model/code2code_autotran_google_small_task1/out_beam5_hyp5/
CUDA_VISIBLE_DEVICE=0 python run2_12.py --do_test --do_eval --model_type roberta \
      --model_name_or_path microsoft/graphcodebert-base  \
      --test_filename ../../DATA/task1_data/autotransform_data/google/small/test.json   \
      --dev_filename ../../DATA/task1_data/autotransform_data/google/small/val.json   \
      --load_model_path   model/code2code_autotran_google_small_task1/checkpoint-best-bleu/pytorch_model.bin \
      --output_dir model/code2code_autotran_google_small_task1/out_beam5_hyp5/  \
      --max_source_length 512 --max_target_length 512  --beam_size 5   --train_batch_size 16  --eval_batch_size 16 \
      --learning_rate 5e-5 --train_steps 6000 --eval_steps 500

mkdir model/code2code_autotran_google_medium_task1/out_beam5_hyp5/
CUDA_VISIBLE_DEVICES=0 python run2_12.py --do_test --do_eval --model_type roberta \
      --model_name_or_path microsoft/graphcodebert-base  \
      --test_filename ../../DATA/task1_data/autotransform_data/google/medium/test.json   \
      --dev_filename ../../DATA/task1_data/autotransform_data/google/medium/val.json   \
      --output_dir model/code2code_autotran_google_medium_task1/out_beam5_hyp5/  \
      --load_model_path   model/code2code_autotran_google_medium_task1/checkpoint-best-bleu/pytorch_model.bin \
      --max_source_length 512 --max_target_length 512  --beam_size 5   --train_batch_size 16  --eval_batch_size 16 \
      --learning_rate 5e-5 --train_steps 6000 --eval_steps 500

mkdir model/code2code_autotran_ovirt_small_task1/out_beam5_hyp5/
CUDA_VISIBLE_DEVICES=0 python run2_12.py --do_test --do_eval --model_type roberta \
      --model_name_or_path microsoft/graphcodebert-base  \
      --test_filename ../../DATA/task1_data/autotransform_data/ovirt/small/test.json   \
      --dev_filename ../../DATA/task1_data/autotransform_data/ovirt/small/val.json   \
      --output_dir model/code2code_autotran_ovirt_small_task1/out_beam5_hyp5/  \
      --load_model_path   model/code2code_autotran_ovirt_small_task1/checkpoint-best-bleu/pytorch_model.bin \
      --max_source_length 512 --max_target_length 512  --beam_size 5   --train_batch_size 16  --eval_batch_size 16 \
      --learning_rate 5e-5 --train_steps 6000 --eval_steps 500

mkdir model/code2code_autotran_ovirt_medium_task1/out_beam5_hyp5/
CUDA_VISIBLE_DEVICES=0 python run2_12.py --do_test --do_eval --model_type roberta \
      --model_name_or_path microsoft/graphcodebert-base  \
      --test_filename ../../DATA/task1_data/autotransform_data/ovirt/medium/test.json   \
      --dev_filename ../../DATA/task1_data/autotransform_data/ovirt/medium/val.json   \
      --output_dir model/code2code_autotran_ovirt_medium_task1/out_beam5_hyp5/  \
      --load_model_path   model/code2code_autotran_ovirt_medium_task1/checkpoint-best-bleu/pytorch_model.bin \
      --max_source_length 512 --max_target_length 512  --beam_size 5   --train_batch_size 16  --eval_batch_size 16 \
      --learning_rate 5e-5 --train_steps 6000 --eval_steps 500




