#!/bin/zsh
cd $HOME/git_repos/dotfiles;

check() {
  print $PWD
  a=$(git status | grep -c "modified")
  b=$(git status | grep -c "Untracked")
  if [[ $a > 0 || $b > 0 ]]
  then
    echo $1" has been modified"
    git add .
    git commit
    git push
  fi
}

if [[ $HOME == '/home/craig' ]]
then
  echo "in debian"
  python saveConfig.py debSave.txt
elif [[ $HOME == '/Users/craig.ferguson' ]]
then
  echo "in mac"
  python saveConfig.py macSave.txt
fi

cd $HOME/.idea
check "pycharm setup"
echo ''
#_____
cd $HOME/.config/nvim/UltiSnips
check "ultisnips"
echo ''
#_____
cd $HOME/.tmuxinator
check 'tmuxinator'
echo ''
#_____
cd $HOME/workspace/cdev
check 'takealot dev'
echo ''
#_____
cd $HOME/.config/nvim/config
check 'nvim config'
echo ''
#_____
cd $HOME/git_repos/dotfiles
check 'dotfiles'
echo ''
#_____
cd $HOME/git_repos/craig_help
check 'craig help files'
echo ''
#_____
cd $HOME/.zprezto
check 'zprezto repo'
echo ''
