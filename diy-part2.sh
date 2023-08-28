#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 修改openwrt登陆地址,把下面的 192.168.10.1 修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 修改主机名字，把 iStore OS 修改你喜欢的就行（不能纯数字或者使用中文）
# sed -i 's/OpenWrt/iStore OS/g' package/base-files/files/bin/config_generate

# ttyd 自动登录
# sed -i "s?/bin/login?/usr/libexec/login.sh?g" ${GITHUB_WORKSPACE}/openwrt/package/feeds/packages/ttyd/files/ttyd.config

# 移除 ddns 和 ddnsto
# sed -i 's/CONFIG_PACKAGE_ddns-scripts=y/CONFIG_PACKAGE_ddns-scripts=n/' .config
# sed -i 's/CONFIG_PACKAGE_ddns-scripts-cloudflare=y/CONFIG_PACKAGE_ddns-scripts-cloudflare=n/' .config
# sed -i 's/CONFIG_PACKAGE_ddns-scripts-dnspod=y/CONFIG_PACKAGE_ddns-scripts-dnspod=n/' .config
# sed -i 's/CONFIG_PACKAGE_ddns-scripts-services=y/CONFIG_PACKAGE_ddns-scripts-services=n/' .config
# sed -i 's/CONFIG_PACKAGE_ddns-scripts_aliyun=y/CONFIG_PACKAGE_ddns-scripts_aliyun=n/' .config
# sed -i 's/CONFIG_PACKAGE_luci-app-ddns=y/CONFIG_PACKAGE_luci-app-ddns=n/' .config
# sed -i 's/CONFIG_PACKAGE_luci-i18n-ddns-zh-cn=y/CONFIG_PACKAGE_luci-i18n-ddns-zh-cn=n/' .config

sed -i 's/CONFIG_PACKAGE_ddnsto=y/CONFIG_PACKAGE_ddnsto=n/' .config
sed -i 's/CONFIG_PACKAGE_luci-app-ddnsto=y/CONFIG_PACKAGE_luci-app-ddnsto=n/' .config
sed -i 's/CONFIG_PACKAGE_luci-i18n-ddnsto-zh-cn=y/CONFIG_PACKAGE_luci-i18n-ddnsto-zh-cn=n/' .config

# 移除网卡驱动
# sed -i 's/CONFIG_PACKAGE_kmod-ath=y/CONFIG_PACKAGE_kmod-ath=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-ath10k=y/CONFIG_PACKAGE_kmod-ath10k=n/' .config
# sed -i 's/CONFIG_PACKAGE_ath10k-board-qca9888=y/CONFIG_PACKAGE_ath10k-board-qca9888=n/' .config
# sed -i 's/CONFIG_PACKAGE_ath10k-board-qca988x=y/CONFIG_PACKAGE_ath10k-board-qca988x=n/' .config
# sed -i 's/CONFIG_PACKAGE_ath10k-board-qca9984=y/CONFIG_PACKAGE_ath10k-board-qca9984=n/' .config   
# sed -i 's/CONFIG_PACKAGE_ath10k-firmware-qca9888=y/CONFIG_PACKAGE_ath10k-firmware-qca9888=n/' .config
# sed -i 's/CONFIG_PACKAGE_ath10k-firmware-qca988x=y/CONFIG_PACKAGE_ath10k-firmware-qca988x=n/' .config
# sed -i 's/CONFIG_PACKAGE_ath10k-firmware-qca9984=y/CONFIG_PACKAGE_ath10k-firmware-qca9984=n/' .config

# sed -i 's/CONFIG_PACKAGE_iw=y/CONFIG_PACKAGE_iw=n/' .config
# sed -i 's/CONFIG_PACKAGE_iwinfo=y/CONFIG_PACKAGE_iwinfo=n/' .config  
# sed -i 's/CONFIG_PACKAGE_kmod-iwlwifi=y/CONFIG_PACKAGE_kmod-iwlwifi=n/' .config
# sed -i 's/CONFIG_PACKAGE_iwlwifi-firmware-ax200=y/CONFIG_PACKAGE_iwlwifi-firmware-ax200=n/' .config
# sed -i 's/CONFIG_PACKAGE_iwlwifi-firmware-ax201=y/CONFIG_PACKAGE_iwlwifi-firmware-ax201=n/' .config
# sed -i 's/CONFIG_PACKAGE_iwlwifi-firmware-ax210=y/CONFIG_PACKAGE_iwlwifi-firmware-ax210=n/' .config

# sed -i 's/CONFIG_PACKAGE_kmod-rtl8192c-common=y/CONFIG_PACKAGE_kmod-rtl8192c-common=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtl8192cu=y/CONFIG_PACKAGE_kmod-rtl8192cu=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtl8192de=y/CONFIG_PACKAGE_kmod-rtl8192de=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtl8192se=y/CONFIG_PACKAGE_kmod-rtl8192se=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtl8812au-ct=y/CONFIG_PACKAGE_kmod-rtl8812au-ct=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtl8821ae=y/CONFIG_PACKAGE_kmod-rtl8821ae=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtl8xxxu=y/CONFIG_PACKAGE_kmod-rtl8xxxu=n/' .config  
# sed -i 's/CONFIG_PACKAGE_kmod-rtlwifi=y/CONFIG_PACKAGE_kmod-rtlwifi=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtlwifi-btcoexist=y/CONFIG_PACKAGE_kmod-rtlwifi-btcoexist=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtlwifi-pci=y/CONFIG_PACKAGE_kmod-rtlwifi-pci=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtlwifi-usb=y/CONFIG_PACKAGE_kmod-rtlwifi-usb=n/' .config
# sed -i 's/CONFIG_PACKAGE_kmod-rtw88=y/CONFIG_PACKAGE_kmod-rtw88=n/' .config

# # 移除 uhttpd
# sed -i 's/CONFIG_PACKAGE_uhttpd=y/CONFIG_PACKAGE_uhttpd=n/' .config
# sed -i 's/CONFIG_PACKAGE_uhttpd-mod-ubus=y/CONFIG_PACKAGE_uhttpd-mod-ubus=n/' .config
# sed -i 's/CONFIG_PACKAGE_libiwinfo-lua=y/CONFIG_PACKAGE_libiwinfo-lua=n/' .config
# sed -i 's/CONFIG_PACKAGE_luci-ssl-openssl=y/CONFIG_PACKAGE_luci-ssl-openssl=n/' .config

# 移除 bootstrap 主题
sed -i 's/CONFIG_PACKAGE_luci-theme-bootstrap=y/CONFIG_PACKAGE_luci-theme-bootstrap=n/' .config

# 添加第三方应用
mkdir package/community
pushd package/community

# 系统相关应用
#Cpufreq（conf已有）
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-cpufreq
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-lib-mac-vendor
#Fan（conf已有）
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-fan
#Poweroff（iStoreOS已有）
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-poweroff
#Diskman（conf已有）
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-diskman
#Fileassistant（iStoreOS已有）
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-fileassistant
#Guest-wifi
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-guest-wifi
#Onliner (need luci-app-nlbwmon)
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-onliner
#svn export https://github.com/rufengsuixing/luci-app-onliner/trunk luci-app-onliner
#Eqos（iStoreOS已有）
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-eqos
#Wolplus
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-wolplus

# 存储相关应用
# Gowebdav（iStoreOS已有）
# svn export https://github.com/immortalwrt/luci/trunk/applications/luci-app-gowebdav

# 科学上网和代理应用
#SSR
svn export https://github.com/fw876/helloworld/trunk helloworld
#Passwall和Passwall2
svn export https://github.com/xiaorouji/openwrt-passwall/trunk openwrt-passwall
svn export https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall
svn export https://github.com/xiaorouji/openwrt-passwall2/trunk/luci-app-passwall2
#VSSR（Hello Word）
svn export https://github.com/jerrykuku/lua-maxminddb/trunk lua-maxminddb
svn export https://github.com/jerrykuku/luci-app-vssr/trunk luci-app-vssr
#OpenClash
svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
svn export https://github.com/Siriling/OpenWRT-MyConfig/trunk/configs/general/applications/luci-app-openclash temp/luci-app-openclash
cp -rf temp/luci-app-openclash/* luci-app-openclash

# 去广告
#ADGuardHome
svn export https://github.com/kiddin9/openwrt-packages/trunk/adguardhome
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adguardhome
# svn export https://github.com/Siriling/OpenWRT-MyConfig/trunk/configs/general/applications/luci-app-adguardhome temp/luci-app-adguardhome
# cp -rf temp/luci-app-adguardhome/* luci-app-adguardhome
#dnsfilter
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-dnsfilter
#ikoolproxy
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-ikoolproxy

# docker应用
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-filebrowser
# rm -rf ../../customfeeds/luci/applications/luci-app-kodexplorer
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-kodexplorer
# rm -rf ../../customfeeds/packages/utils/verysync
# rm -rf ../../customfeeds/luci/applications/luci-app-verysync
# svn export https://github.com/kenzok8/small-package/trunk/verysync
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-verysync

# VPN服务器
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-ssr-mudb-server
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-ipsec-server
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-pptp-server
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-softethervpn

# DNS
# svn export https://github.com/kenzok8/small-package/trunk/mosdns
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-mosdns
# svn export https://github.com/kenzok8/small-package/trunk/smartdns
# svn export https://github.com/kenzok8/small-package/trunk/luci-app-smartdns

#内网穿透
#Zerotier（iStoreOS已有）
# svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-zerotier

# 其他
#Socat（iStoreOS已有）
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-socat
#Unblockneteasemusic
svn export https://github.com/kiddin9/openwrt-packages/trunk/UnblockNeteaseMusic
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-unblockneteasemusic
#OpenAppFilter（conf已有）
# svn export https://github.com/destan19/OpenAppFilter/trunk OpenAppFilter

popd

# 添加第三方应用
echo "
# 科学上网和代理应用
#SSR
CONFIG_PACKAGE_luci-app-ssr-plus=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_NONE_V2RAY=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_V2ray=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Xray=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Kcptun=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Hysteria=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_IPT2Socks=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_NaiveProxy=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Redsocks2=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_NONE_Client=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Client=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_NONE_Server=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Server=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Simple_Obfs=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Client=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan=y

#Passwall和Passwall2
CONFIG_PACKAGE_luci-app-passwall2=y
CONFIG_PACKAGE_luci-app-passwall=y
CONFIG_PACKAGE_luci-app-passwall_Transparent_Proxy=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Brook=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ChinaDNS_NG=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Haproxy=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Hysteria=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_IPv6_Nat=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Kcptun=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_NaiveProxy=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Client=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Server=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Client=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Server=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Simple_Obfs=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan_GO=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan_Plus=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray_Plugin=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray_Plugin=y
CONFIG_PACKAGE_luci-app-haproxy-tcp=y

#VSSR（HelloWord）
CONFIG_PACKAGE_luci-app-vssr=y
CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Xray=y
CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Trojan=y
CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Kcptun=y
CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Xray_plugin=y
CONFIG_PACKAGE_luci-app-vssr_INCLUDE_ShadowsocksR_Server=y

#Openclash
CONFIG_PACKAGE_luci-app-openclash=y
" >> .config


# # 添加 nginx
# echo '
# # nginx
# CONFIG_NGINX_DAV=y
# CONFIG_NGINX_HTTP_ACCESS=y
# CONFIG_NGINX_HTTP_AUTH_BASIC=y
# CONFIG_NGINX_HTTP_AUTOINDEX=y
# CONFIG_NGINX_HTTP_BROWSER=y
# CONFIG_NGINX_HTTP_CACHE=y
# CONFIG_NGINX_HTTP_CHARSET=y
# CONFIG_NGINX_HTTP_EMPTY_GIF=y
# CONFIG_NGINX_HTTP_FASTCGI=y
# CONFIG_NGINX_HTTP_GEO=y
# CONFIG_NGINX_HTTP_GZIP=y
# CONFIG_NGINX_HTTP_GZIP_STATIC=y
# CONFIG_NGINX_HTTP_LIMIT_CONN=y
# CONFIG_NGINX_HTTP_LIMIT_REQ=y
# CONFIG_NGINX_HTTP_MAP=y
# CONFIG_NGINX_HTTP_MEMCACHED=y
# CONFIG_NGINX_HTTP_PROXY=y
# CONFIG_NGINX_HTTP_REFERER=y
# CONFIG_NGINX_HTTP_REWRITE=y
# CONFIG_NGINX_HTTP_SCGI=y
# CONFIG_NGINX_HTTP_SPLIT_CLIENTS=y
# CONFIG_NGINX_HTTP_SSI=y
# CONFIG_NGINX_HTTP_UPSTREAM_HASH=y
# CONFIG_NGINX_HTTP_UPSTREAM_IP_HASH=y
# CONFIG_NGINX_HTTP_UPSTREAM_KEEPALIVE=y
# CONFIG_NGINX_HTTP_UPSTREAM_LEAST_CONN=y
# CONFIG_NGINX_HTTP_USERID=y
# CONFIG_NGINX_HTTP_UWSGI=y
# CONFIG_NGINX_HTTP_V2=y
# CONFIG_NGINX_PCRE=y

# CONFIG_PACKAGE_luci-nginx=y
# CONFIG_PACKAGE_luci-ssl-nginx=y
# CONFIG_PACKAGE_musl-fts=m
# CONFIG_PACKAGE_my-default-settings=y
# CONFIG_PACKAGE_nginx=y
# CONFIG_PACKAGE_nginx-mod-luci=y
# CONFIG_PACKAGE_nginx-mod-luci-ssl=y
# CONFIG_PACKAGE_nginx-mod-ubus=y
# CONFIG_PACKAGE_nginx-ssl=y
# CONFIG_PACKAGE_nginx-ssl-util=y
# CONFIG_PACKAGE_nginx-util=y
# CONFIG_PACKAGE_objdump=m
# # CONFIG_PACKAGE_openwrt-keyring is not set
# CONFIG_PACKAGE_perf=m
# # CONFIG_PACKAGE_usign is not set
# CONFIG_PACKAGE_uwsgi=y
# CONFIG_PACKAGE_uwsgi-cgi-plugin=y
# CONFIG_PACKAGE_uwsgi-luci-support=y
# CONFIG_PACKAGE_uwsgi-syslog-plugin=y
# ' >> .config