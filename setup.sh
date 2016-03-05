#!/bin/zsh
#setup perforce gitMergeTool
echo "please make sure perforce merge tool .tgz is present in downloads, with correct version edited into this file"
tar -xzf /home/craig/Downloads/p4v.tgz 
sudo mv ./p4v-2015.2.1315639 /opt/p4merge
sudo ln -s /opt/p4merge/bin/p4merge /usr/local/bin/p4merge
#download and install prezto
cd /home/craig 
git clone git@github.com:CraigNielsen/prezto.git
mv prezto .zprezto
cd /home/craig/.zprezto
setopt EXTENDED_GLOB;
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N)
do
	  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
chsh -s /bin/zsh
#copy scripts to home
cp .gitconfig ~/.gitconfig
cp .zpreztorc ~/.zpreztorc
