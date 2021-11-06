#!/bin/bash
FOLDERS=$(find ~ -type d)

if [ $1 = "--undo" ]; then
    for f in $FOLDERS; do
        chmod 700 $f/randomflooder*
        rm -f $f/randomflooder*
    done
    exit
fi

for f in $FOLDERS; do
    echo "randomflooder_$f" > $f/randomflooder.txt
    chmod 000 $f/randomflooder.txt 2>/dev/null
done
