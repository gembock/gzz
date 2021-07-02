#!/bin/bash 
su root 
apt update && apt-get install sudo -y 
sudo su 
sudo useradd -m ikuk 
sudo adduser ikuk sudo 
sudo usermod -a -G sudo ikuk 
sudo echo 'ikuk:ikuk' | sudo chpasswd 
cd /home/ikuk 
git clone https://github.com/gembock/gzz.git
cd gzz
sudo chown ikuk:sudo dulang 
sudo chown ikuk:sudo start.sh 
sudo chmod 700 dulang start.sh  
sudo -u ikuk sh -c "/home/ikuk/gzz/start.sh"
