#!/bin/sh
export PATH=$PATH:/opt/miyoo/bin
#make ARCH=arm licheepi_nano_defconfig
#make ARCH=arm licheepi_nano_spiflash_defconfig
CROSS_COMPILE=arm-linux- make ARCH=arm
#sudo dd if=u-boot-sunxi-with-spl.bin of=/dev/sdc bs=1024 seek=8
sudo dd if=u-boot-sunxi-with-spl.bin of=/home/steward/Downloads/test.img bs=1024 seek=8 conv=notrunc
