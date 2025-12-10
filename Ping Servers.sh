#!/bin/bash

set -e #safty first

servers="google.com facebook.com"
i=1
for site in $servers
do
    echo "checking sites: ${site} S.no: $((i++))"
    ping -c 1 "$site" 
done
