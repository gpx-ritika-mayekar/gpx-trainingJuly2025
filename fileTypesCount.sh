#!/bin/bash

EXTENSION=$1
DIR=$2
WILDCARD_PATH="$DIR/+.$EXTENSION"
COUNT=0

for file in DIR; do 
    if [ -f "$file" ]; then
        COUNT=$((COUNT+1))
    fi
done

echo "$DIR has $COUNT files with .$EXTENSION extension"
        