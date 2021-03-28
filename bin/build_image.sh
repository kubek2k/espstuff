#!/bin/bash

if [ $# -ne 1 ]; then
    echo "$0 <yaml_file>" > /dev/stderr
    exit 1
fi

docker run --rm -v "${PWD}":/config -it esphome/esphome $1 compile
