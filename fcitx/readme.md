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

