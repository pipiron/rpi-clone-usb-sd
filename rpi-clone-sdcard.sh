#!/bin/bash
SRC_DEVICE=sda
BKUP_DEVICE=mmcblk0

sudo rpi-clone -u -l $BKUP_DEVICE

exit $?
