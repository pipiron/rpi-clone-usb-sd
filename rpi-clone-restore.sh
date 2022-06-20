#!/bin/bash
SRC_DEVICE=sda
BKUP_DEVICE=mmcblk0

# Check /boot
BOOT_DEVICE=$(lsblk | grep "/boot" | awk -F ' ' '{print $1}' | awk -F '??' '{print $2}')

if [ "$BOOT_DEVICE" != "${BKUP_DEVICE}p1" ]
then
    echo "Boot Device is $BOOT_DEVICE"
    echo "Cannot restore."
    exit 1
fi

echo "Start : rpi-clone to USB (Restore)"

sudo rpi-clone -u $SRC_DEVICE

exit $?
