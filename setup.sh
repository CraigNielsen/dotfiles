#!/bin/sh
#setup perforce gitMergeTool
tar -xzf /home/craig/Downloads/p4v.tgz 
sudo mv /home/craig/Downloads/p4v-2015.2.1315639 /opt/p4merge
sudo ln -s /opt/p4merge/bin/p4merge /usr/local/bin/p4merge
#copy scripts to home
cp .gitconfig ~/.gitconfig
cp .zpreztorc ~/.zpreztorc
