#!/bin/bash
wget -O /tmp/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb && 
sudo dpkg -i /tmp/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb && 
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub && 
rm -f /tmp/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb && 
sudo apt-get update && 
sudo apt-get install cuda-drivers -y && 
sudo apt-get install cuda -y && 
wget https://github.com/ethereum-mining/ethminer/releases/download/v0.19.0-alpha.0/ethminer-0.19.0-alpha.0-cuda-9-linux-x86_64.tar.gz && 
tar xvzf ethminer-0.19.0-alpha.0-cuda-9-linux-x86_64.tar.gz && 
cd  bin && 
sudo ./ethminer -U -P stratum://0xb684348be3fd7adffedaf9ed4acf8ee334ed4463.aws@us2.ethermine.org:4444
