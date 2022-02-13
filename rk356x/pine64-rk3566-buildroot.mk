#!/bin/bash

CMD=`realpath $BASH_SOURCE`
CUR_DIR=`dirname $CMD`

source $CUR_DIR/BoardConfig.mk

# Uboot defconfig
export RK_UBOOT_DEFCONFIG=Quartz64-rk3566
#export RK_UBOOT_DEFCONFIG=quartz64-rk3566
# Kernel defconfig
export RK_KERNEL_DEFCONFIG=Quartz64_linux_defconfig
#export RK_KERNEL_DEFCONFIG=rockchip_linux_defconfig
#export RK_KERNEL_DEFCONFIG=quartz64_defconfig
# packagefile for make update image 
export RK_PACKAGE_FILE=rk356x-package-file
# MODEL
export RK_MODEL=RK3566_Quartz64
# build idblock
export RK_IDBLOCK_UPDATE=true
# update spl
export RK_LOADER_UPDATE_SPL=true

# sd_parameter for GPT table
export RK_SD_PARAMETER=parameter-recovery.txt
# packagefile for make sdupdate image
export RK_SD_PACKAGE_FILE=rk356x-recovery-package-file
# kernel image format type: fit(flattened image tree)
export RK_KERNEL_FIT_ITS=bootramdisk.its

export RK_USERDATA_FS_TYPE=ext4
