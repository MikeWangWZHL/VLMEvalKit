export CUDA_VISIBLE_DEVICES=0
## add openai api key to use gpt as judge ##
export HF_TOKEN=$(cat /shared/nas2/wangz3/salesforce_intern_nas2/hf_token)
export OPENAI_API_KEY=$(cat /shared/nas2/wangz3/salesforce_intern_nas2/openai_api_key_ecole)

python run.py --config "run_configs/llava-ov/original_llava_ov_7b-si_image.json" --reuse --judge "gpt-4o-mini"
