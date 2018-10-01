# Introduction

This directory is mainly recording the softwares that are being used or already used by me.

Included both windows' and unix'

## Catalog

- ### Cross-platform

    name|summary
    ---|---
    Zotero|
    xmind|
    chrome|
    texlive|
    Spotify|
    pycharm|
    sublime_text_3|

- ### platform: Linux

    name|summary
    ---|---
    openssh|
    create_ap|
    oh-my-zsh|
    libreoffice|
    p7zip, unrar|
    ntfs-3g, dosfstools|
    fbreader|mobi reader
    kchmviewer|chm reader

- ### platform: Windows 10

    name|summary
    ---|---
    Rufus|
    WinSCP|
    xodo pdf|
    Bandizip|
    MagicEXIF|
    sumatraPDF|
    Partition Guru|
    Everything|search file

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
