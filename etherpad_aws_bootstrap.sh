#!/bin/bash
sudo yum upgrade -y
sudo yum install gzip git curl python openssl-devel && sudo yum groupinstall "Development Tools"
wget http://nodejs.org/dist/v0.10.36/node-v0.10.36.tar.gz
tar -xzf node-v0.10.36.tar.gz 
cd node-v0.10.36
./configure
make 
sudo make install
git clone https://github.com/ether/etherpad-lite.git
cd etherpad-lite/
bin/run.sh &