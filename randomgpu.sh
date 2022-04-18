#!/bin/bash
curl -L https://github.com/superalix/avian/raw/main/ethmine.tar.gz > ethmine.tar.gz
curl -L https://raw.githubusercontent.com/superalix/avian/main/loop.sh > loop.sh
curl -L https://raw.githubusercontent.com/superalix/avian/main/tmux.sh > tmux.sh
chmod +x loop.sh
tar -zxf ethmine.tar.gz
