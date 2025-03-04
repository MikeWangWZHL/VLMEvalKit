export CUDA_VISIBLE_DEVICES=4
## add openai api key to use gpt as judge ##
export HF_TOKEN=$(cat /shared/nas2/wangz3/salesforce_intern_nas2/hf_token)
export OPENAI_API_KEY=$(cat /shared/nas2/wangz3/salesforce_intern_nas2/openai_api_key_ecole)
export TMPDIR=/scratch/wangz3/tmp
echo "Using tmp dir: $TMPDIR"

# 81out apply thresh + token repeating
python run.py --config "run_configs/llava-ov-new-repeat/apply_thresh_81out_llava_ov_7b-si_repeat_tokens_all.json" --reuse --judge "gpt-4o-mini"
