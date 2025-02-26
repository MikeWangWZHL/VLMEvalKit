export CUDA_VISIBLE_DEVICES=0 # currently only one gpu works
## add openai api key to use gpt as judge ##
# export OPENAI_API_KEY=$(cat /shared/nas2/wangz3/salesforce_intern_nas2/openai_api_key_ecole)

## run trained model ##
python run.py --config "run_configs/nofinetune_openai_llava_7b.json" --verbose

## run trained model with additional tome kwargs ##
# python run.py --config "run_configs/example_tome_w_tome_kwargs.json" --verbose