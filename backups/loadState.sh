#!/bin/zsh
cd $PWD/.config/nvim/UltiSnips
echo 'pulling UltiSnips'
git pull
cd $PWD/vim_projects
echo 'pulling vim_projects'
git pull
cd $PWD/.config/nvim/config
echo 'pulling vim config files'
git pull
cd $PWD/git_repos/dotfiles
echo 'pulling dotfiles files'
git pull
cd /home/craig/git_repos/craig_help
echo 'pulling dotfiles files'
#_____
cd $PWD/workspace/cdev
git pull
echo 'pulling takealot dev files'
