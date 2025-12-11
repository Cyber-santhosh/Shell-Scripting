#!/bin/bash

set -e

Threshold=85
Log_file="/var/log/monitor.log"
usage=$(df -h / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$usage" -ge "$Threshold" ]; then
	echo "${usage} [$(date)] disk usage is going high" >> $Log_file
    else
	    echo "${usage} [$(date)] disk usage is going low" >> $Log_file
fi
