export CUDA_VISIBLE_DEVICES=2
## add openai api key to use gpt as judge ##
export HUGGINGFACE_HUB_TOKEN=$(cat /shared/nas2/wangz3/salesforce_intern_nas2/hf_token)
export OPENAI_API_KEY=$(cat /shared/nas2/wangz3/salesforce_intern_nas2/openai_api_key_ecole)

# python run.py --config "run_configs/llava-ov/instance_level_72out_llava_ov_7b-si_image.json" --reuse
# python run.py --config "run_configs/llava-ov/instance_level_72out_llava_ov_7b-si_video.json"
python run.py --config "run_configs/llava-ov/instance_level_72out_llava_ov_0.5b-si_video.json"

