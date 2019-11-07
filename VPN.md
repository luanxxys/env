# proxy

## 手机卡

境外 SIM card 自带翻城墙功能。
> 而国内的手机号办了境外流量，仍要走国内运营商 APN，依旧不能使用外网服务。 

- ### [Google Fi](https://fi.google.com/)

    Google Fi 是一家移动虚拟运营商，由 Google 推出的移动通讯运营服务。
    > 在不同地区可漫游至当地不同的实际运营商，大大提高手机信号的覆盖率，全球无“漫游”。

    有实体 SIM card，也可使用 eSIM card。我觉得除了贵，别的都是优点。详参[Google 的虚拟网络 Google Fi (Project Fi) 使用体验如何？](https://www.zhihu.com/question/29858718)

    新推出的有无限流量套餐，若几个小伙伴分担使用，尚可。具体资费网查。

- ### 联通或移动境外业务

    指的是运营商承接的有国外的业务，例如在英国，也使用中国的运营商提供的通讯服务。因此可以买国外手机号 ，开通漫游服务，即可在大陆享受同样的待遇。

    由于是国内的运营商，所以网站注册、买手机卡、邮寄等，和正常网购一样。年初（2019）从联通或移动英国网站买时，还能免费把 SIM card 寄到境内，可能拔羊毛的多了，现在收取邮费 ￡5。

    资费比 Google Fi 便宜好多。

- ### 香港手机号

其实，这些 SIM card 申请难易程度接近，主要在于资费。

显然，使用这种方式比自己买 VPS 搭建 ss 要便利，也不用担心封禁问题。然，穷（大流量需求下）。

## 实验室有境外服务器，或自己有 SS 账号

- ### VPS + Shadowsocks

    + #### 购买境外服务器([BUYVM](https://buyvm.net/))

        BUYVM --> Client Area --> ORDER HOSTING --> New York - OpenVZ, 点击购买。

        > $14.51 USD/year

        之后账号发到邮箱, 登陆[管理界面](https://manage.buyvm.net/), 可以选择重新安装系统(Ubuntu 16.04), 设置好 root 密码, 及 IP 地址访问权限。

        远程登陆到服务器 `[ssh root@<IP_Address>]`, [安装 shadowsocks](https://www.linuxbabe.com/ubuntu/shadowsocks-libev-proxy-server-ubuntu-16-04-17-10), 并添加到开机自启。

            #vi /etc/rc.local

                ss-server -p <port> -k <passport> -m aes-256-cfb &

        客户端安装相应软件, 即可。

        > 最低套餐便宜大碗，稳定（即使别的“大牌”敏感时期不能用时）、不限量，但网速和价格“交相辉映”。一年期到了后，停用（11.7/2019）。
    
    + #### 购买代理服务 [Surfshark](https://www.surfsharkchina.com/)

        ExpressVPN, NordVPN 等大牌可供选择。因为穷，迫使我选择了 Surfshark。

        使用方式：可以在不同端侧下载它们的 APP 进行连接。Surfshark 支持 shadowsocks，所以更加便利，不需通过特定 APP。官网提供的有 shadowsocks 所需的域名、端口、密码等，但由于域名在境内无法解析，所以需要特定 IP address。可邮件索要，或者其中之一设备通过 APP 连接后，会显示 IP address，即可用到别处。

        支持切换不同的国家和地区，YouTube 1080P 可以一战，目前（11/7, 2019）使用尚可。

    + #### 实验室有境外服务器，[设置 SwitchyOmega 代理](https://github.com/FelisCatus/SwitchyOmega/releases)。

## 更改 hosts（IPv6）

- Windows

    找到 `C:\Windows\System32\drivers\etc` 目录下的 `hosts` 文件，以文本方式打开。

    https://raw.githubusercontent.com/lennylxx/ipv6-hosts/master/hosts

    打开上面网址，复制粘贴其中全部内容到 `hosts` 文件中。

    执行 `ipconfig /flushdns` 或重新登陆网络（学校无线网可用）即可。

- Unix/Linux

    hosts --> `/etc/hosts`

    其它设置类似 windows 环境。

- [hosts 文件来源](https://github.com/lennylxx/ipv6-hosts)

- [修改 hosts 文件的原理](https://www.zhihu.com/question/19782572)
