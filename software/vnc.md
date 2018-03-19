# VNC

VNC Connect is screen sharing software that enables you to solve problems, help people and work remotely.

目前在使用 RealVNC，体验良好。

    在控制端安装 vnc viewer，在受控端安装 vnc server.

    跨平台使用：Unix, Windows, Android, IOS ...

### Advanced Usage on Linux

- 安装 VNC-server

        yaourt vnc-server

- 启动 VNC 服务

        vncserver :1
    > “vncserver :桌面号”，每个用户需要占用1个桌面

    或者修改 VNCServer 主配置文件

        vim /etc/sysconfig/vncservers

    复制最后两行并去掉行首注释符，然后修改为

        VNCSERVERS="1:root"
        VNCSERVERARGS[1]="-geometry 1024x768"

- VNC 服务使用的端口号与桌面号关系

    VNC 使用 TCP 端口从 5900 开始，对应关系如下

        桌面号为“1”  ---- 端口号为 5901
        桌面号为“2”  ---- 端口号为 5902
        桌面号为“3”  ---- 端口号为 5903

    如果 Linux 开启了防火墙功能，就需要手工开启相应的端口，以开启桌面号为“1”相应的端口为例

        iptables -I INPUT -p tcp --dport 5901 -j ACCEPT

    或者修改配置文件的方式

        vim /etc/sysconfig/iptables

    添加

        -A INPUT -m state --state NEW -m tcp -p tcp --dport 5901 -j ACCEPT

    重启 iptables 服务

        /etc/init.d/iptables restart

- 测试 VNC 服务

    使用 VNC Viewer 软件登陆测试

        Server 输入“144.194.192.183:1”
        Password 输入登陆密码
        点击“OK”登陆到图形桌面环境

    使用 Web 浏览器登陆测试

        地址栏输入 http://144.194.192.183:5901/
        出现 VNC viewer 界面
        在跳出的 VNC viewer 对话框进行上一种方式登录

- 配置 VNC 图形桌面环境为 GNOME 桌面环境

        vim /root/.vnc/xstartup

    最后一行改为

        gnome-session &

    重新启动 vnc server 服务

        vncserver -kill :1
        vncserver :1

- 配置多个桌面

        vim /etc/sysconfig/vncservers

    写入

        VNCSERVERS="1:root 2:oracle"
        VNCSERVERARGS[1]="-geometry 1024x768"
        VNCSERVERARGS[2]="-geometry 1024x768"
    > 格式：VNCSERVERS="桌面号:使用的用户名 桌面号:使用的用户名"

- 修改 VNC 访问的密码

        vncpasswd
    > 到各自用户中进行修改

- 启动和停止 VNC 服务

        /etc/init.d/vncserver start

        /etc/init.d/vncserver stop

        /etc/init.d/vncserver restart

- 设置 VNC 服务随系统启动自动加载

    + 使用`ntsysv`命令启动图形化服务配置程序，在 vncserver服务前加上星号，点击确定，配置完成

    + 使用`chkconfig`在命令行模式下进行操作

            chkconfig vncserver on
