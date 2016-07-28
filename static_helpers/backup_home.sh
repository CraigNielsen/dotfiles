#!/bin/bash
Now=$(date +%d-%b-%Y)
tar -zcpf /media/craig/Portable/linux_backups/backup_home_"$Now".tar.gz --directory=/home/craig/ --exclude=proc --exclude=sys --exclude=dev/pts --exclude=media .
