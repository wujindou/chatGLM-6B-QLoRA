


python3 train_qlora.py \
--train_args_json chatGLM_6B_QLoRA.json \
--model_name_or_path THUDM/chatglm2-6b \
--train_data_path data/train_cpm_0724.jsonl \
--eval_data_path data/dev_cpm_0724.jsonl \
--lora_rank 4 \
--lora_dropout 0.05 \
--compute_dtype fp16
