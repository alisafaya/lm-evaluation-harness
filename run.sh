for model in google/gemma-2b google/gemma-7b google/gemma-7b-it google/gemma-2b-it meta-llama/Llama-2-7b-chat-hf; do
    lm-eval --model hf --model_args "pretrained="$model",dtype=bfloat16" --tasks truthfulqa_tr_mc2,arc_challenge_tr,arc_challenge,truthfulqa_mc2 --write_out --batch_size 1 --output_path "mukayese-eval-results/"${model//\//-}
done
