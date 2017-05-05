#!/bin/zsh
cd $1/.config/nvim/UltiSnips
git add .
git commit
echo 'pushing UltiSnips'
git push
cd $1/vim_projects
git add .
git commit
echo 'pushing vim_projects'
git push
#_____
cd $1/workspace/cdev
git add .
git commit
echo 'pushing takealot dev files'
git push
#_____
cd $1/.config/nvim/config
git add .
git commit
echo 'pushing vim config files'
git push
cd $1/git_repos/dotfiles
python saveConfig.py
git add .
git commit
echo 'pushing vim config files'
git push

