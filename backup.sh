#!/bin/sh
echo "*************************************"
echo "Backup Script"


SOURCE=$1
DEST=$2
BACKUP_FILE="$DEST/BACKUP_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$DEST"

if [ -d "$SOURCE" ]; then
    tar -czvf "$BACKUP_FILE" -C "$DEST" . 
    echo "$SOURE is a directory"
else
    echo "$SOURCE input is not a directory"
fi
echo "*************************************"
