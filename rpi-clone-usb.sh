#!/bin/bash
SRC_DEVICE=sda
BKUP_DEVICE=mmcblk0

echo "Start : rpi-clone to USB"

sudo rpi-clone -u $SRC_DEVICE

exit $?
