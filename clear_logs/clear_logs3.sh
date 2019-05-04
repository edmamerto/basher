#!/bin/bash

LOG_DIR=/var/log
ROOT_UID=0
E_XCD=86
E_NOTROOT=87
LINES=50

if [ "$ROOT_UID" -ne "$UID" ]
then
    echo "you must be root to execute this scrit"
    exit $E_NOTROOT
fi

cd $LOG_DIR

if [ `pwd` != $LOG_DIR ]
then
    echo "cannot change directory"
    exit $E_XCD
fi

if [ -n "$1" ]
then
    lines=$1
else
    lines=$LINES
fi

tail -n $lines messages > mesg.temp
mv mesg.temp messages

cat /dev/null > wtmp

exit 0

echo "logs have been cleaned up."

