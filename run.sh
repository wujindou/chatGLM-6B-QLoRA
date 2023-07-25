pip install peft==0.4.0 -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com 
pip install -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com 
# pip install -q -U git+https://github.com/huggingface/peft.git -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com 


nohup python3 train_qlora.py \
--train_args_json chatGLM_6B_QLoRA.json \
--model_name_or_path THUDM/chatglm2-6b \
--train_data_path data/train_cpm_0724.jsonl \
--eval_data_path data/dev_cpm_0724.jsonl \
--lora_rank 16 \
--lora_dropout 0.05 \
--compute_dtype fp16 & 
