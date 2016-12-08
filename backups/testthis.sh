#!/bin/zsh
cd /home/craig/git_repos/reps
loc=$(python /home/craig/vim_projects/remove_prefix.py $1)
echo $loc
gnome-terminal -e "docker-compose -f ./ops/dev.yml exec backend ptw -- -x --lf $loc"
echo 'done'

