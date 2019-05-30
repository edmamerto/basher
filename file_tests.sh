#!/bin/bash

device0="/dev/sda2"
then
    echo "$device0 is a block device."
fi

device1="/dev/ttys1"
if [ -c "$device1" ]
then
    echo "$device1 is a character device"
fi
