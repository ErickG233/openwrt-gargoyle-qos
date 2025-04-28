### 说明：
- 1、现已适配nftables, 目前支持23.05-24.10使用nftables为主的openwrt
- 2、支持指定上网接口(虚拟接口), 链路类型选择, 链路开销
- 3、只用于防火墙firewall4，想要firewall3的请到iptables分支
- 4、添加了一个特征码内容匹配功能, iptables再看看吧
- 5、只把qos功能移植过来，别的就不需要了
- 6、规则顺序调整之后一定要先点击保存再点击应用, 不然规则会乱

### 安装：
- 方法1、git clone -b nftables https://github.com/ErickG233/openwrt-gargoyle-qos.git package/gargoyle-qos-openwrt
- 方法2、sed -i '$a src-git gargoyle https://github.com/ErickG233/openwrt-gargoyle-qos.git;nftables' feeds.conf.default
- 建议用第一种,或者直接下载,第二种把握不住,修改的时候会很麻烦
