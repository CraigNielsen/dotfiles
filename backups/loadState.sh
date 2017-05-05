#!/bin/zsh
cd $1/.config/nvim/UltiSnips
echo 'pulling UltiSnips'
git pull
cd $1/vim_projects
echo 'pulling vim_projects'
git pull
cd $1/.config/nvim/config
echo 'pulling vim config files'
git pull
cd $1/git_repos/dotfiles
echo 'pulling dotfiles'
git pull
#_____
cd $1/workspace/cdev
git pull
echo 'pulling takealot dev files'
