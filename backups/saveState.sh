#!/bin/zsh
cd $HOME/git_repos/dotfiles;

if [ $HOME=='/home/craig' ]
then
  echo "in debian"
  python saveConfig.py debSave.txt
elif [ $HOME=='/craig.ferguson' ]
then
  echo "in mac"
  python saveConfig.py macSave.txt
fi

cd $HOME/.zprezto/
git add .
git commit
echo 'pushing preztorc'
git push
#_____
cd $HOME/.config/nvim/UltiSnips
git add .
git commit
echo 'pushing UltiSnips'
git push
#_____
cd $HOME/vim_projects
git add .
git commit
echo 'pushing vim_projects'
git push
#_____
cd $HOME/workspace/cdev
git add .
git commit
echo 'pushing takealot dev files'
git push
#_____
cd $HOME/.config/nvim/config
git add .
git commit
echo 'pushing vim config files'
git push
#_____
cd $HOME/git_repos/craig_help
git add .
git commit
echo 'pushing craig_help files'
git push

