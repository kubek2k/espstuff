#!/bin/bash

if [ $# -ne 1 ]; then
    echo "$0 <image_file.bin>" > /dev/stderr
    exit 1
fi

esptool.py -p $CALL_UP_DEVICE write_flash 0x000 $1
