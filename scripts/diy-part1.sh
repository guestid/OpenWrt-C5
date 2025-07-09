#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#

# 使用源码自带ShadowSocksR Plus+出国软件
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
#git clone -b master https://github.com/vernesong/OpenClash.git package/lean/luci-app-openclash  #openclash出国软件
#git clone https://github.com/frainzy1477/luci-app-clash.git package/lean/luci-app-clash  #clash出国软件
#git clone https://github.com/tty228/luci-app-serverchan.git package/lean/luci-app-serverchan  #微信推送
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns  #smartdns DNS加速
#git clone https://github.com/garypang13/luci-app-eqos.git package/lean/luci-app-eqos  #内网IP限速工具
#git clone --depth=1 https://github.com/fw876/helloworld
#git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest #
#
#git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go #动态域名插件
# git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall #动态域名插件

echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >> feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' >> feeds.conf.default



 