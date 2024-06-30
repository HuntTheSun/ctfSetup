#!/bin/bash
sudo sed -i 's/us/de/' /etc/default/keyboard    #set proper keymap
sudo echo "127.0.0.1       curiositykillscolby.com" | sudo tee -a /etc/hosts #discourage the best cheating resource
sudo apt update
sudo apt install docker.io docker-compose -y #install docker + compose
docker-compose --version
mkdir -p /opt/ctf
cd /opt/ctf
git clone https://github.com/HuntTheSun/JuiceShopDockerCompose.git #get docker-compose.yml
cd JuiceShopDockerCompose
sudo docker-compose up -d #start docker container
cd /home/kali/Desktop
git clone https://github.com/HuntTheSun/ctfSupport.git #get Support materials
