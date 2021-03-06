#!/usr/bin/env bash

set -x

if ! docker ps -q &> /dev/null
then
    echo "You must be in docker group or root"
    exit 1
fi

docker system prune --all --force --volumes