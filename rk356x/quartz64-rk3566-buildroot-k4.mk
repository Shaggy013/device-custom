#!/bin/bash

CMD=`realpath $BASH_SOURCE`
CUR_DIR=`dirname $CMD`

source $CUR_DIR/pine64-rk3566-buildroot.mk

# Kernel dts
export RK_KERNEL_DTS=rk3566-quartz64-a
# Buildroot config
export RK_CFG_BUILDROOT=rockchip_rk3566_4
# PRODUCT MODEL
export RK_PRODUCT_MODEL=RK3566_QUART64-A
# yocto machine
export RK_YOCTO_MACHINE=rockchip-rk3566-quartz64-k4
# kernel version
export RK_KERNEL_VERSION=4
# parameter for GPT table
export RK_PARAMETER=parameter-buildroot-fit.txt
# Set debian version (debian10: buster, debian11: bullseye)
export RK_DEBIAN_VERSION=bullseye
# rootfs_system buildroot debian yocto distro openwrt
export RK_ROOTFS_SYSTEM=buildroot
# OEM build on buildroot
#export RK_OEM_BUILDIN_BUILDROOT=YES
# Recovery config
export RK_CFG_RECOVERY=rockchip_rk356x_recovery4
