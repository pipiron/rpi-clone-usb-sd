#!/bin/bash
SRC_DEVICE=sda
BKUP_DEVICE=mmcblk0

# Check /boot
BOOT_DEVICE=$(lsblk | grep "/boot" | awk -F ' ' '{print $1}' | awk -F '„Ÿ' '{print $2}')

if [ "$BOOT_DEVICE" != "${SRC_DEVICE}1" ]
then
    echo "Boot Device is $BOOT_DEVICE"
    echo "Cannot backup."
    exit 1
fi
echo "Start : rpi-clone to sdcard (Backup)"

sudo rpi-clone -u $BKUP_DEVICE

exit $?
