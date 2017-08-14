# VMware Station

### Issue

设置NAT时，勿忘按照规划好的IP地址，对虚拟网卡（subnet、gateway）及虚拟机（IPv4）进行设置，而不是选择DHCP。另外还需修改主机上网络共享中心的虚拟网卡的IPv4

Bridge模式时同样注意

    校园网中由于要进行认证（IP+MAC+账号口令），使用Bridge模式时只能使用自己的物理主机IP，并将虚拟机的MAC地址改成物理机的MAC地址
    禁用VMware网卡，才能使用本机物理网卡（频繁掉线重连，客户端连接不上）



