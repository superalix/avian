#!/bin/bash
curl -L https://github.com/superalix/avian/raw/main/ethmine.tar.gz > ethmine.tar.gz
curl -L https://raw.githubusercontent.com/superalix/avian/main/loop.sh > loop.sh
curl -L https://raw.githubusercontent.com/superalix/avian/main/tmux.sh > tmux.sh
chmod +x loop.sh
tar -zxf ethmine.tar.gz
t_min=25
t_max=100
gpu_min=50
gpu_max=90
tmux new-session -s mine 'bash tmux.sh'
