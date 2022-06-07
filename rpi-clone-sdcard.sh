#!/bin/bash
SRC_DEVICE=sda
BKUP_DEVICE=mmcblk0

echo "Start : rpi-clone to SD-Card"

sudo rpi-clone -u -l $BKUP_DEVICE

exit $?
