### netease-cloud-music

archlinux 下 cml 方式安装即可。下面的是 fedora 下的安装过程，对理解 linux 下软件安装原理应该有帮助，记录下来。

##### GNU/Fedora

1. 下载 deb 包

    http://music.163.com/#/download
    > 官网无可用 rpm 包

1. 将这个包里面的usr文件夹解压出来，其余的无用

1. 将usr里面的文件对应着目录移到系统中/usr文件夹中下

    ``` bash
    sudo mv ~/Downloads/usr/bin/netease-cloud-music /usr/bin
    sudo mv ~/Downloads/usr/lib/netease-cloud-music /usr/lib
    sudo mv ~/Downloads/usr/share/applications/netease-cloud-music.desktop /usr/share/applications/
    sudo mv ~/Downloads/usr/share/doc/netease-cloud-music /usr/share/doc
    sudo mv ~/Downloads/usr/share/icons/hicolor/scalable/apps/netease-cloud-music.svg    /usr/share/icons/hicolor/scalable/apps
    ```

1. 将图标改成网易云音乐的
    > 定位到 '/usr/share/applications/' 中，打开那个快捷方式，将图标改成网易云音乐的

        Icon=/usr/share/icons/hicolor/scalable/apps/netease-cloud-music.svg

1. 加音视频解码器，不然会报网络错误

    ``` bash
    su -c 'dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
    sudo dnf install gstreamer1-libav gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld gstreamer1-vaapi
    sudo dnf install libmad
    ```

1. 加两条命令

    ``` bash
    sudo dnf install qt5-qtx11extras
    sudo dnf install qt5-qtmultimedia
    ```

1. ok
