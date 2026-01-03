#!/bin/bash

set -e

username=$username
password=$password

# Function to log in to the service
API_URL="https://api.github.com"

Repo_owner=$1
Repo_name=$2

curl -s -u "${username}:${password}" "${API_URL}/repos/${Repo_owner}/${Repo_name}/collaborators" | jq -r '.[]  | select(.permissions.pull == true) | .login'
