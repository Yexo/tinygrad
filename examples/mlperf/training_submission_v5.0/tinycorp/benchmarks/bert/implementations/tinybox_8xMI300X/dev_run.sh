#!/bin/bash

export PYTHONPATH="."
export MODEL="bert"
export DEFAULT_FLOAT="HALF" GPUS=8 BS=1024 EVAL_BS=1024

# similar to https://github.com/mlcommons/training_results_v3.1/blob/d06288b2bd675a9d88e0e6181f5bb5626b71ec19/Quanta_Cloud_Technology/results/D54U-3U/bert/result_1.txt#L54
export OPT_BASE_LEARNING_RATE=0.0011 OPT_LAMB_BETA_1=0.60466 OPT_LAMB_BETA_2=0.85437 DECAY=0.1
export TRAIN_STEPS=3418

export BEAM=3 BEAM_UOPS_MAX=4000 BEAM_UPCAST_MAX=256 BEAM_LOCAL_MAX=1024 BEAM_MIN_PROGRESS=5
export IGNORE_JIT_FIRST_BEAM=1
export BASEDIR="/raid/datasets/wiki"

export WANDB=1 PARALLEL=0

RUNMLPERF=1 python3 examples/mlperf/model_train.py