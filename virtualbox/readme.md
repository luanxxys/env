### VirtualBox

##### archlinux（暂未成功）

    $ sudo pacman -S --needed dkms virtualbox virtualbox-guest-iso
    $ sudo systemctl enable dkms

把 user 加到 vboxusers 的组内

    $ sudo gpasswd -a $USER vboxusers

启动相关内核

    $ sudo vim /etc/modules-load.d/virtualbox.conf

写入

    vboxdrv
    vboxnetflt

##### GNU/Fedora

[Download：https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

1. 预处理

        sudo update
        sudo dnf install kernel kernel-devel
    > 如果创建虚拟机时出错，则按照提示进行操作

1. 安装、新建虚拟机

1. 安装 Vbox Addtions

    安装好系统后，安装工具包 VBoxGuestAdditions.iso

    这个映像文件位于VirtualBox的安装目录下，/usr/share/virtualbox

    在VirtualBox控制面板中，点击“settings”，接着选“storage”，加载映像。启动虚拟机后，安装辅助工具包
    > 若使用命令行方式安装，可能不存在 iso 文件，需要下载好软件包，然后从中解压出 iso 文件

1. 设置共享目录（windows 为例）
    > 安装好增强工具以后才可用

    1. 在 VirtualBox 先选择你的虚拟系统，接着“settings”，选“shared folders”，点击添加。设置好共享的文件夹及其名字，例如名字取为 Documents

    2. 接着启动进入客户机 Windows，打开“我的电脑”，依次点击菜单栏“工具”－“映射网络驱动器”，驱动器盘符自选，文件夹填“\\\vboxsvr\Documents”，Documents 是之前设置的共享文件夹的名称

    3. 确定后,在“网络驱动器”那里就可以看到共享文件夹的盘标了

遇到的问题：

    1. 直接在共享文件夹中使用应用程序打开文件，修改后不能直接保存，如用Photoshop打开某图片并修改后，ctrl+s不能保存，提示该文件已经被锁定
    2. 安装 Vbox Addtions 后，windows 10 无法打开
    3. 安装 Vbox Addtions 后，虚拟机显示界面花屏

解决办法：

    1. 把共享文件夹中的文件复制到Windows的本地磁盘中，修改完成后，再复制回共享文件夹
    2. 开机按 F8 进入安全模式，卸载 Vbox Addtions
    3. 关闭 “display” 中的 2D、3D 加速选项

***

#### reference

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



