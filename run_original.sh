# export OPENAI_API_KEY=$(cat /shared/nas2/wangz3/salesforce_intern_nas2/openai_api_key_ecole)
export CUDA_VISIBLE_DEVICES=0
# python run.py --data MME --model llava_v1.5_7b --verbose --reuse
python run.py --data MME --model llava_v1.5_7b --verbose --judge "exact_matching"