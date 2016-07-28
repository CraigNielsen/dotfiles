#!/bin/bash
Now=$(date +%d-%b-%Y)
tar -zcpf /media/craig/Portable/linux_backups/backup_"$Now".tar.gz --directory=/ --exclude=proc --exclude=sys --exclude=dev/pts --exclude=media .
