# Mac OS 配置 LaTeX 环境

- ## 安装 [MacTeX](https://www.tug.org/mactex/)

- ## 安装 [Sublime Text 3](https://www.sublimetext.com/)

    + ### 安装 LaTeXTools

- ## 安装 [Skim](https://sourceforge.net/projects/skim-app/files/Skim/Skim-1.4.26/Skim-1.4.26.dmg/download)

    打开 Skim，在菜单栏中 **Skim > Preference (选项) > Sync (同步)**

    在预设菜单中选择 **Sublime Text**

- ## 测试

    创建一个 **test.tex** 文档

        %!TEX program = xelatex
        \documentclass{article}
        \usepackage{fontspec, xunicode, xltxtra}
        \setmainfont{Hiragino Sans GB}
        \title{Title}
        \author{}
        \begin{document}
        \maketitle{}
        \section{Introduction}
        This is where you will write your content. 在这里写上内容。
        \end{document}

    保存以后，按下 **⌘ + B** 进行编译 ，如果以上操作无误，下面会提示 **Build completed**，然后 Skim 弹出 PDF 预览。

    在预览的 PDF 中，如果需要修改某部分内容，先在键盘上按下 **shift + ⌘** ，然后鼠标点击需要修改的部分即可跳转到 Subime Text 中对应的内容。当你修改后再次 build 后 Skim 会询问你是否自动刷新，选择自动就好了。


