### zsh

    sudo dnf install zsh

### oh my zsh

    $ git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

 1. If you already have an existing ~/.zshrc file, create a backup:

        cp ~/.zshrc ~/.zshrc.orig

3. Create a new zsh config by copying the zsh template we’ve provided.

        cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

4. Set zsh as your default shell:

        chsh -s /bin/zsh

5. Restart ZSH

##### zsh setting

安装完成之后打开 .zshrc 文件配置。我喜欢将主题设置为 random，启用几个插件，并添加vim的简化命令

    ZSH_THEME="random"

    plugins=(git archlinux history mvn python git-extras textmate lighthouse autojump)

    # Example aliases
    alias zshconfig="mate ~/.zshrc"
    alias ohmyzsh="mate ~/.oh-my-zsh"
    alias vi=vim

##### 安装插件

    sudo dnf install autojump
    sudo dnf install autojump-zsh
