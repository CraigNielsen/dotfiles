#!/bin/zsh
cd /home/craig/git_repos/reps/website-service
gnome-terminal -e 'webpack-dev-server --inline --hot'
cd /home/craig/git_repos/reps
chromium -incognito --new-window http://localhost:8080
docker-compose -f ./ops/dev.yml up

