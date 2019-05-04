#!/bin/bash
# rpm-check.sh

SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]
then
    echo "Usage: `basename $0` rpm-file"
    exit $E_NOARGS
fi

{
    echo
    echo "Archive Description:"
    rpm -qpi $1 # Query description
    ehco
    echo "Archive Listing:"
    rpm -qpl $1 # Query listing
    rpm -i --test $1
    if [ "$?" -eq $SUCCESS ]
    then
        echo "$1 can be installed"
    else
        echo "$1 cannot be installed"
    fi
    echo
} > "$1.test"

exit 0
