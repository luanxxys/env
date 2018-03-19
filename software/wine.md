# Wine

[wine-ArchWiki](https://wiki.archlinux.org/index.php/Wine)

### 从官方仓库安装软件包 wine

运行

    sudo vim /etc/pacman.conf

取消注释（64 位系统需要此步骤）

    [multilib]
    Include = /etc/pacman.d/mirrorlist

更新系统

    sudo pacman -Syu

安装

    sudo pacman -S wine wine_gecko wine-mono
