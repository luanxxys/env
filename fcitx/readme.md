### Install fcitx

    sudo pacman -S fcitx-im fcitx-configtool fcitx-googlepinyin fcitx-cloudpinyin

### Configuration

##### simplified chinese

open fcitx-configtool

add googlepinyin

##### for all softwares

    sudo vim /etc/environment

add contents:
    
    export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
    export XMODIFIERS="@im=fcitx"

***

#### GNU/Fedora

##### 安装图形管理依赖

很多人说到fcitx安装成功了，配置也配置好了，在浏览器或者其他应用里面可以用，但在terminal中就不能使用，这是因为没有装fcitx的图形管理包所导致的。kde依赖于qt5,而gnome依赖于gtk3

kde界面使用：  

    sudo dnf install fcitx-qt5

gnome界面使用：  

    sudo dnf install fcitx-gtk3

##### 安装输入法选择器

这里使用im-chooser

    sudo dnf install im-chooser

##### 安装完成后在终端中运行 im-chooser 选择 fcitx，注销后继续

##### 选择输入法

        打开fcitx-configtool,添加 pinyin 输入法，至此就成功完成了输入法的安装

## Issue

额外设置好 cloudpinyin 的服务器
> 默认为 google， 改为 baidu
