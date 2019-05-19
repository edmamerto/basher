#!/bin/bash
# backs up all files in current directory modified within last 24 hours

BACKUPFILE=backup-$(date +%m-$d-$Y)

archive=${1:-$BACKUPFILE}

tar cvf - `find . -mtime -1 -type f -print` > $archive.tar
gzip $archive.tar
echo "Directory $PWD backed up in archive file \"archive.tar.hz\"."

exit 0
