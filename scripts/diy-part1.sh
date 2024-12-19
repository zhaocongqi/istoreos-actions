#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# echo 'src-git openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default
# echo 'src-git adguardhome https://github.com/rufengsuixing/luci-app-adguardhome' >>feeds.conf.default
# echo 'src-git mosdns https://github.com/sbwml/luci-app-mosdns' >>feeds.conf.default
# echo 'src-git kiddin9 https://github.com/kiddin9/kwrt-packages' >>feeds.conf

# 添加设备
if [ "$1" = "rk33xx" ]; then
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_armsom_p2-pro is not set/CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_armsom_p2-pro=y/' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_pine64_rockpro64 is not set/CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_pine64_rockpro64=y/' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_radxa_rock-pi-4a is not set/CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_radxa_rock-pi-4a=y/' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_rockchip_rk3308_evb is not set/CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_rockchip_rk3308_evb=y/' .config
elif [ "$1" = "rk35xx" ]; then
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_armsom_sige1 is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_armsom_sige1=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_armsom_sige7-v1 is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_armsom_sige7-v1=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_cyber3588_aib is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_cyber3588_aib=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_dg_nas-lite is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_dg_nas-lite=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_fastrhino_r66s is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_fastrhino_r66s=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_fastrhino_r68s is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_fastrhino_r68s=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_hinlink_hnas is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_hinlink_hnas=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_idiskk_h1 is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_idiskk_h1=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_inspur_ihec301 is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_inspur_ihec301=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_jp_tvbox is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_jp_tvbox=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_jsy_h1 is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_jsy_h1=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_le_hes30 is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_le_hes30=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_panther_x2 is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_panther_x2=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_roc_k50s is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_roc_k50s=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_ynn_ynnnas is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_ynn_ynnnas=y' .config
    sed -i 's/# CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_yyy_h1 is not set/CONFIG_TARGET_DEVICE_rockchip_rk35xx_DEVICE_yyy_h1=y' .config
fi

cat .config