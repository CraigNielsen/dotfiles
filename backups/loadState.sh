#!/bin/zsh

cd $HOME/git_repos/dotfiles
echo 'pulling dotfiles files'
git pull

if [ $HOME=='/home/craig' ]
then
  echo "in debian"
  python loadConfig.py debSave.txt
elif [ $HOME=='/craig.ferguson' ]
then
  echo "in mac"
  python loadConfig.py macSave.txt
fi

cd $HOME/.config/nvim/UltiSnips
echo 'pulling UltiSnips'
git pull
cd $HOME/vim_projects
echo 'pulling vim_projects'
git pull
cd $HOME/.zprezto
echo 'pulling zprezto config files'
git pull
cd $HOME/.config/nvim/config
echo 'pulling vim config files'
git pull
cd $HOME/git_repos/craig_help
echo 'pulling dotfiles files'
git pull
#_____
cd $HOME/workspace/cdev
git pull
echo 'pulling takealot dev files'
