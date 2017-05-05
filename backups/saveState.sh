#!/bin/zsh
cd $PWD/git_repos/dotfiles;

if [ $PWD=='/home/craig' ]
then
  echo "in debian"
  python saveConfig.py debSave.txt
elif [ $PWD=='/craig.ferguson' ]
then
  echo "in mac"
  python saveConfig.py macSave.txt
fi

cd $PWD/.config/nvim/UltiSnips
git add .
git commit
echo 'pushing UltiSnips'
git push
cd $PWD/vim_projects
git add .
git commit
echo 'pushing vim_projects'
git push
#_____
cd $PWD/workspace/cdev
git add .
git commit
echo 'pushing takealot dev files'
git push
#_____
cd $PWD/.config/nvim/config
git add .
git commit
echo 'pushing vim config files'
git push
cd $PWD/git_repos/dotfiles
python saveConfig.py
git add .
git commit
echo 'pushing dotfiles files'
git push
cd $PWD/git_repos/craig_help
git add .
git commit
echo 'pushing craig_help files'
git push

