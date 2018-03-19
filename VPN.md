# 代理上网

### 实验室有境外服务器，或自己有 SS 账号

    [使用 SwitchyOmega 代理上网](https://github.com/luanxxys/env/blob/master/software/google-chrome/SwitchyOmega.md)

### 更改 hosts（实验室防火墙下或部分不可用）

- Windows

    找到 `C:\Windows\System32\drivers\etc` 目录下的 `hosts` 文件，以文本方式打开。

    https://raw.githubusercontent.com/lennylxx/ipv6-hosts/master/hosts

    打开上面网址，复制粘贴其中全部内容到 `hosts` 文件中。

    重新登陆网络（学校无线网可用）即可。

- Unix/Linux

    hosts --> `/etc/hosts`

    其它设置类似 windows 环境


- [hosts 文件来源](https://github.com/lennylxx/ipv6-hosts)

- [修改 hosts 文件的原理](https://www.zhihu.com/question/19782572)





