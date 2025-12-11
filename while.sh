#!/bin/bash

set -e #Safty first

while read srv
do
    echo "process $srv"
done < sandy.txt
