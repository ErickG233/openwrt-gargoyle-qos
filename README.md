### 说明：
- 1、新版的石像鬼qos是基于IFB的，不是IMQ的。适用于openwrt 21.02、22.03以及master分支源码。
- 2、只适配openwrt 21 和lede的iptables固件, nftables的不打算流出
- 3、只用于防火墙firewall3，不适用4.
- 4、负载没有显示数据，是个瑕疵，但不影响使用，这个我不会修，所以直接删除了
- 5、只把qos功能移植过来，别的就不需要了

### 安装：
- 方法1、git clone -b iptables  https://github.com/ErickG233/openwrt-gargoyle-qos.git  package/gargoyle-qos-openwrt
- 方法2、sed -i '$a src-git gargoyle https://github.com/ErickG233/openwrt-gargoyle-qos.git;iptables' feeds.conf.default
- 建议用第一种,或者直接下载,第二种把握不住,修改的时候会很麻烦
