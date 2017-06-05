#!/bin/zsh
cd $HOME/git_repos/dotfiles;

if [[ $HOME == '/home/craig' ]]
then
  echo "in debian"
  python saveConfig.py debSave.txt
elif [[ $HOME == 'Users/craig.ferguson' ]]
then
  echo "in mac"
  python saveConfig.py macSave.txt
fi

check() {
  print $PWD
  a=$(git status | grep -c "modified")
  if [[ $a > 0 ]]
  then
    echo $1" has been modified"
    git add .
    git commit
    git push
  fi
  b=$(git status | grep -c "untracked")
  if [[ $b > 0 ]]
  then
    echo $1" has been modified"
    git add .
    git commit
    git push
  fi
}
cd $HOME/.config/nvim/UltiSnips
check "ultisnips"
echo ''
#_____
cd $HOME/vim_projects
check 'vim projects'
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
cp $HOME/.zpreztorc $HOME/.zprezto/
cd $HOME/.zprezto/
check 'zprezto repo'
echo ''
cd $HOME/scripts
check 'debian i3 scripts repo'
echo ''
