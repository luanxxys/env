# VirtualBox

### Installation
 
- ##### archlinux

        # pacman –S virtualbox

    选项（指所安装的虚拟机的内核）

            linux内核： virtualbox-host-modules-arch
            其它内核： virtualbox-host-dkms

    把user加到vboxusers的组内:

        sudo gpasswd -a $USER vboxusers

    手动加载模块

        # modprobe vboxdrv
    > 使用命令前可能需要更新内核模块数据库以避免 'no such file or directory' 错误，执行: depmod -a.

        加载失败
            # pacman -Syu virtualbox
            # reboot
        仍加载失败...

    装入VirtualBox相关模块

        # modprobe -a vboxguest vboxsf vboxvideo
        或(开机启动)
        # vim /etc/rc.conf
            MODULES=(... vboxguest vboxsf vboxvideo)

- ##### other GNU/Linux

    正常安装使用即可，没遇到 archlinux 下的问题

### Configuration

- ##### install vmware tools on linux

    1. click 'update VMware Tools'
    > linux host 会自动挂载 VMware Tools

    2. 打开挂载的驱动

        $ tar -xzvf VMwareTools-X.tar.gz
        > 可能需要先将文件移到别的文件夹下，再进行操作
        
    3. 安装
        $ cd VMwareTools-X
        $ sudo ./vmware-install.pl

    4. 接着就可以设置 '共享文件夹' 了

- ##### install vmware tools on windows

    加载驱动 --> 进入虚拟光驱内 --> 找到可执行文件安装即可

