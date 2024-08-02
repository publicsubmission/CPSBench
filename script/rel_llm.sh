#!/bin/bash

# 定义命令行参数
TASK="relation"
TRAIN_DIR="./data/dataset/10-fold/fold_0/train_data.json"
TEST_DIR="./data/dataset/10-fold/fold_0/test_data.json"
SHOT_DIR="./input/fold_0/shot.json"
SHOT_NUM="3" #2,3,4,5
PROMPT_DIR="./prompt/rel.txt"
MODEL="llama3-8b" #qwen2-7b,glm4-9b,llama3-8b,mistral-7b,gemma2-9b
MODA="greedy"
OUTPUT_DIR="./output"

# 运行Python脚本
CUDA_VISIBLE_DEVICES=5 python src/llm/llm_inference.py \
    --task $TASK \
    --train_dir $TRAIN_DIR \
    --test_dir $TEST_DIR \
    --shot_dir $SHOT_DIR \
    --shot_num $SHOT_NUM \
    --prompt_dir $PROMPT_DIR \
    --model $MODEL \
    --moda $MODA \
    --output_dir $OUTPUT_DIR