#!/bin/bash

set -e

FILE=$1

if [[ ! -f "$FILE" ]]; then

    echo " Print $FILE is missing"
    exit 1
else
    echo " $FILE is changing "

    sed -i 's/v1/v2/g' $FILE

fi
