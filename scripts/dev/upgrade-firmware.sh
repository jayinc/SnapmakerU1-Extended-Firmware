#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "usage: $0 <user@ip>"
  exit 1
fi

set -xe

rm -f firmware/firmware_custom.bin
make custom_firmware
scp tmp/custom/update.img "$1:/tmp/"
ssh "$1" /home/lava/bin/systemUpgrade.sh upgrade soc /tmp/update.img
