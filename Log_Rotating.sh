#!/bin/bash

set -e

#Log file rotating

LOG_FILE="/var/log/app.log"
MAX_SIZE=1000000 #Just 1MB

if [ $(wc -c <"${LOG_FILE}") -ge "${MAX_SIZE}"]; then
    mv "${LOG_FILE}" "${LOG_FILE}.old"
    touch "${LOG_FILE}"
fi
