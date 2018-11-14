# 代理上网

## 实验室有境外服务器，或自己有 SS 账号

- ### [使用 SwitchyOmega 代理上网](https://github.com/FelisCatus/SwitchyOmega/releases)

- ### VPS([BUYVM](https://buyvm.net/)) + Shadowsocks

    + 购买服务

        BUYVM --> Client Area --> ORDER HOSTING --> New York - OpenVZ, 点击购买.

        > $14.51 USD/year

        之后账号发到邮箱, 登陆[管理界面](https://manage.buyvm.net/), 可以选择重新安装系统(Ubuntu 16.04), 设置好 root 密码, 及 IP 地址访问权限.

        远程登陆到服务器 `[ssh root@<IP_Address>]`, [安装 shadowsocks](https://www.linuxbabe.com/ubuntu/shadowsocks-libev-proxy-server-ubuntu-16-04-17-10), 并添加到开机自启.

            #vi /etc/rc.local

                ss-server -p <port> -k <passport> -m aes-256-cfb &

        客户端安装相应软件, 即可.


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
