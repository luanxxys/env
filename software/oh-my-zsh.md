# [oh my zsh](https://ohmyz.sh/)

### Install oh-my-zsh now

        $ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

- ### zsh

        $ sudo pacman -S zsh

- ### oh my zsh

        $ git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

    1. If you already have an existing ~/.zshrc file, create a backup

            $ cp ~/.zshrc ~/.zshrc.orig

    1. Create a new zsh config by copying the zsh template we’ve provided

            $ cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

    1. Set zsh as your default shell

            $ chsh -s /bin/zsh

    1. Restart ZSH

### zsh setting

安装完成之后打开 .zshrc 文件配置。我喜欢将主题设置为 random，启用几个插件，并添加 vim 的简化命令

    ZSH_THEME="random"

    plugins=(git archlinux history mvn python git-extras textmate lighthouse autojump)

    # Example aliases
    alias zshconfig="mate ~/.zshrc"
    alias ohmyzsh="mate ~/.oh-my-zsh"
    alias vi=vim

##### Plugin

    sudo pacman -S autojump
    sudo pacman -S autojump-zsh
