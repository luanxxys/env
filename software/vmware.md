# VMware Station

### Installation

    $ yaourt vmware

若提示缺少　kernel headers（Archlinux 中提示）, yaourt 进行安装即可。

### Issue

设置 NAT 时，勿忘按照规划好的 IP 地址，对虚拟网卡（subnet、gateway）及虚拟机（IPv4）进行设置，而不是选择 DHCP. 另外还需修改主机上网络共享中心的虚拟网卡的 IPv4.

Bridge 模式时同样注意

    校园网中由于要进行认证（IP+MAC+账号口令），使用 Bridge 模式时只能使用自己的物理主机IP，并将虚拟机的 MAC 地址改成物理机的 MAC 地址。

    禁用 VMware 网卡，才能使用本机物理网卡（频繁掉线重连，客户端连接不上）。



