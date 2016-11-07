#! /bin/bash

# after restore from backup, can run this script to setup debian

sudo apt install python3.4 python3-pip
# 4614 in history
sudo -H pip3 install thefuck
sudo apt install make checkinstall
sudo npm install webpack -g
sudo npm install webpack-dev-server -g

