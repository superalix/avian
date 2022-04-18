#!/bin/bash
t_min=25
t_max=100
gpu_min=50
gpu_max=90
while true :
  do
    t=$(($t_min + $RANDOM % ($t_max - $t_min)))
    gpu=$(shuf -i 50-89 -n 1)
    echo $gpu
    cat config.json |jq -r --arg gpu "$gpu" '.-gpow $gpu' > u.json
    mv u.json config.json
    tmux send-keys C
    sleep $t
done