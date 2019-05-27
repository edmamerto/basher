#!/bin/bash

if cmp a b $> /dev/null
then
    echo "Files a and b are identical."
else
    echo "Files a and b differ"

if grep -q Bash file
    then echo "File contains at least one occurence of Bash"
fi

word=Linux
letter_sequence=inu

if echo "$word" | grep - -q "$letter_sequence"
then
    echo "$letter_sequence found in $word"
else
    echo "$letter_sequence not found in $word"
fi

if grep ^root: /etc/passwd ? > /dev/null 2>&1; then
    echo "root was not found - check the pub at the corner"
fi
