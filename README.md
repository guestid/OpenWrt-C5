xiaoyu_xy-c5优先选4.14，稳定，有线基本能跑慢千兆..
 
[OpenWrt 官方库](https://github.com/openwrt/openwrt)

[P3TERX 的 Action 库](https://github.com/P3TERX/Actions-OpenWrt)

[Lean 的 OpenWrt 库](https://github.com/coolsnowwolf/lede)

[immortalwrt 的 OpenWrt 库](https://github.com/immortalwrt/immortalwrt)

[Lienol 的 Packages 库](https://github.com/Lienol/openwrt-packages)

[SuLingGG 的 OpenWrt-Rpi 库](https://github.com/SuLingGG/OpenWrt-Rpi)


执行以下命令即可将ipv6-helper 脚本安装至固件：

`wget --no-check-certificate -O "/usr/bin/ipv6-helper" https://openwrt.cc/scripts/ipv6-helper.sh`

`chmod +x /usr/bin/ipv6-helper`


ipv6-helper install: 安装 IPV6 模块并将 IPV6 配置为混合 (Hybrid) 模式 (默认)

ipv6-helper remove: 移除 IPV6 模块并回滚与 IPV6 相关的所有配置

ipv6-helper server: 将 IPV6 配置为服务器 (Server) 模式

ipv6-helper relay: 将 IPV6 配置为中继 (Relay) 模式

ipv6-helper hybrid: 将 IPV6 配置为混合 (Hybrid) 模式

 
使用ipv6-helper脚本进行的安装 / 移除 / 配置 IPV6 操作均需要重启 OpenWrt，可在脚本中选择立即重启和稍后重启，按照实际情况重启即可。如果可能，建议在安装 / 移除 / 配置 IPV6 后重启局域网内的客户端设备 (对于群晖设备来说这点可能非常有用)。

执行 ipv6-helper install 完成 IPV6 模块的安装后，脚本将自动把 IPV6 配置为混合 (Hybrid) 模式。

如果在 OpenWrt 重启后混合 (Hybrid) 模式下的 IPV6 工作不正常，可以尝试执行 ipv6-helper server 将 IPV6 配置为服务器 (Server) 模式。或执行 ipv6-helper relay 将 IPV6 配置为中继 (Relay) 模式。

为了避免使用 IPV6 解析域名带来的一系列问题 (CDN 绕路 / DNS 抢答)，脚本在执行 IPV6 安装 / 移除的过程中均启用了 “禁止解析 IPv6 DNS 记录” 特性，启用此特性将“过滤掉 IPv6 (AAAA) ，只返回 IPv4 DNS 域名记录”，如果你想在 “IPV6-Test” 之类的网站中通过所有 IPV6 测试，或者你有通过 IPV6 解析 DNS 的需求，可以在「LuCI 面板 - 网络 - DHCP/DNS - 高级设置 - 禁止解析 IPv6 DNS 记录」中取消勾选这一选项。或者执行 uci set dhcp.@dnsmasq[0].filter_aaaa=1 亦可。
