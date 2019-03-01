# Introduction

This directory is mainly recording the softwares that are being used, including both windows' and unix'.

## Catalog

- ### Cross-platform

    chrome|onenote|sublime text 3
    ---|---|---
    youdao dict|xmind|pycharm
    Zotero|github|Spotify
    Bandizip|Everything|texlive    
    openshot|Google Drive|Icloud Drive
    PDFelement|Shadowsocks|RealVNC
    
- ### platform: Linux

    openssh|create_ap|oh-my-zsh
    ---|---|---
    libreoffice|p7zip, unrar|ntfs-3g, dosfstools
    fbreader|mobi reader|chm reader
    kchmviewer||

- ### Mac OS

    1KeyBoard|Alfred|Appcleaner
    ---|---|---
    Android File Transfer/HandShaker|Clearview|The Unarchiver
    Dash|HandBrake|InsomniaX
    Iterm|Spark|Spectacle

    #### Issues

    Mac OS 10.14 Mojave App Store 异常解决办法
    > 我遇到这个问题可能是因为从美区 ID 切换过来的原因

    打开终端 (Teminal.app), 然后粘贴如下命令：

        defaults delete com.apple.appstore.commerce
    > 最好在执行这个之前，重启下电脑，或者注销一下 (注销方式：左上角苹果标，退出登录).

- ### platform: Windows 10

    Rufus|WinSCP|xodo pdf
    ---|---|---
    MagicEXIF|sumatraPDF|Partition Guru

    可选

    System Update|Thinkpad only
    iTools|sync for apple product
    Kiwix|offline wiki

- ### platform: Android

    name|summary
    ---|---
    CoolApk|
    [Lantern](https://github.com/getlantern/lantern)|
    Turbo VPN|
    Google ...|
    GalleryVault|
    Google translate|

- ### Gnome Extenstoins

        # pacman -S gnome-tweak-tool

    extension 下载地址: https://extensions.gnome.org/

    安装方法

    + 网页方式安装（貌似不可用了 - 10.30,2017）

    + 文件管理器

            ~/.local/share/gnome-shell/extensions/
            (/usr/share/gnome-shell/extensions/ - 全部用户)
        > 若不存在扩展目录,则手动创建,将下载下来的文件，解压缩到这个文件夹即可

    + 命令行安装

            yaourt gnome-shell-extension-<name>

    + 应用商店安装(推荐)

    启用|拓展|如下
    ---|---|---
    dash to dock|dynamic top bar|hide top bar|system-monitor
    workspace indicator|Places status indicator|

        $ sudo pacman -S screenfetch
    > screenfetch 在打开终端是自动输出，在 '~/.zshrc' 里加入 'screenfetch'
