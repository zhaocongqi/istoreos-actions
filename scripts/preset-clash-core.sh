#!/bin/bash
#=================================================
# File name: perest-clash-core.sh
# System Required: Linux
# Version: 1.1
# License: MIT
# Author: SuLingGG (Updated by ChatGPT)
# Blog: https://mlapp.cn
#=================================================

arch=$1
if [ -z "$arch" ]; then
	echo "Usage: $0 <arch>"
	echo "Supported arch: amd64 | arm64 | armv7 | 386"
	exit 1
fi

echo -e "预置 Clash 内核（架构: $arch）"
mkdir -p luci-app-openclash/root/etc/openclash/core
core_path="luci-app-openclash/root/etc/openclash/core"
goe_path="luci-app-openclash/root/etc/openclash"

# Dev 内核
CLASH_DEV_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/dev/clash-linux-${arch}.tar.gz"
# Meta 内核
CLASH_META_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-linux-${arch}.tar.gz"
# Premium (Tun) 内核 (v3)
CLASH_TUN_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/premium/clash-linux-${arch}-v3.gz"

# GEO 数据库
GEOIP_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat"
GEOSITE_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat"

# 下载并解压内核
echo ">>> 下载 Dev 内核"
wget -qO- "$CLASH_DEV_URL" | tar xOvz >$core_path/clash

echo ">>> 下载 Premium (Tun) 内核"
wget -qO- "$CLASH_TUN_URL" | gunzip -c >$core_path/clash_tun

echo ">>> 下载 Meta 内核"
wget -qO- "$CLASH_META_URL" | tar xOvz >$core_path/clash_meta

# 下载 GEO 数据
echo ">>> 下载 GeoIP / GeoSite"
wget -qO- $GEOIP_URL >$goe_path/GeoIP.dat
wget -qO- $GEOSITE_URL >$goe_path/GeoSite.dat

# 设置执行权限
chmod +x $core_path/clash*
echo ">>> Clash 内核预置完成"
