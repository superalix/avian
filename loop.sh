#!/bin/bash
t_min=10
t_max=20
gpu_min=50
gpu_max=90
while true :
  do
    t=$(($t_min + $RANDOM % ($t_max - $t_min)))
    gpu=$(shuf -i 50-85 -n 1)
    echo $gpu
    echo "-gpow" $gpu > config.json
    tmux send-keys c
    sleep $t
done
