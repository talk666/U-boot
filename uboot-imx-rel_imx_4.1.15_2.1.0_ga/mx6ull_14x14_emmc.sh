#!/bin/bash
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- distclean
make mx6ull_14x14_glxadd_emmc_defconfig
make V=1 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j16

if [[ $1 -eq 1 ]];then
    ./imxdownload u-boot.bin /dev/sdb1
fi

