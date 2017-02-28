#!/bin/zsh
cd /home/craig/.config/nvim/UltiSnips
echo 'pulling UltiSnips'
git pull
cd /home/craig/vim_projects
echo 'pulling vim_projects'
git pull
cd /home/craig/.config/nvim/config
echo 'pulling vim config files'
git pull
cd /home/craig/git_repos/dotfiles
echo 'pulling dotfiles files'
git pull
