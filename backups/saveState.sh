#!/bin/zsh
cd /home/craig/.config/nvim/UltiSnips
git add .
git commit
echo 'pushing UltiSnips'
git push
cd /home/craig/vim_projects
git add .
git commit
echo 'pushing vim_projects'
git push
cd /home/craig/.config/nvim/config
git add .
git commit
echo 'pushing vim config files'
git push
cd /home/craig/git_repos/dotfiles
python saveConfig.py
git add .
git commit
echo 'pushing dotfiles files'
git push
cd /home/craig/git_repos/craig_help
git add .
git commit
echo 'pushing craig_help files'
git push

