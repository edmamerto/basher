#!/bin/sh

$FILE=/etc/fstab

{
read line1
read line2
} < $FILE

echo "First line of $File is:"
echo "$line1"
echo
echo "Second line of $File is:"
echo "$line2"

exit 0
