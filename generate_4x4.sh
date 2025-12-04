export D=4
export FOLDER=data/${D}_by_${D}_mult/
export MODEL=models/${D}_by_${D}_mult/gpt2
export BSZ=1
export SAVE=generation_logs/${D}_by_${D}_mult/gpt2
mkdir -p $SAVE
TOKENIZERS_PARALLELISM=false CUDA_VISIBLE_DEVICES=0 stdbuf -oL -eL python src/generate.py \
    --from_pretrained ${MODEL} \
    --test_path ${FOLDER}/test_bigbench.txt \
    --batch_size ${BSZ} \
    > ${SAVE}/log.generate 2>&1&