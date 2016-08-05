#!/bin/bash
# need to copy the backup incremental to root_full_backup.snar for a level 1 backup
cp root_full_0_backup.snar.bak root_full_backup.snar

Now=$(date +%d-%b-%Y)
tar --listed-incremental root_full_backup.snar -zcpf /media/craig/Portable/linux_backups/backup_incremental"$Now".tar.gz --directory=/ --exclude=proc --exclude=sys --exclude=dev/pts --exclude=media .
mv root_full_backup.snar root_incremental_backup"$Now".snar
