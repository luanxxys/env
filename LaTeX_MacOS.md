·# macOS 配置 LaTeX 环境

- ### 安装 [MacTeX](https://www.tug.org/mactex/)

- ### 安装 [Sublime Text 3](https://www.sublimetext.com/)

    + #### 安装插件 LaTeXTools

- ### 安装 [Skim](https://skim-app.sourceforge.io/)

    打开 Skim，在菜单栏中 **Skim > Preference (选项) > Sync (同步)**

    在预设菜单中选择 **Sublime Text**

> 配合 **Mathpix Snipping Tool** 和 [Online LaTeX Equation Editor](https://www.codecogs.com/latex/eqneditor.php) 使用更佳。

- ### 测试

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

- ### [嗨！thesis！哈尔滨工业大学毕业论文 LaTeX 模板](https://github.com/dustincys/hithesis)

    + #### 演示视频：[哈尔滨工业大学毕业论文 LaTeX 模板 hithesis 使用简介](https://www.bilibili.com/video/av14461219/?redirectFrom=h5)

    + #### 使用命令

        * ##### 方式一

            - 生成文档类

                    $ make cls

            - 生成论文

                    $ make thesis

            - 生成文档

                    $ make doc

        * ##### 方式二

            - 生成论文格式文件 (第一步要生成 .cls，.cfg，*.ist，然后再生成论文)

                    $ latex hithesis.ins

            - 生成论文

                    $ xelatex main.tex
                    $ bibtex main
                    $ xelatex main.tex
                    $ xelatex main.tex
                    $ splitindex main -- -s hithesis.ist  # 自动生成索引
                    $ xelatex main.tex

            - 生成文档

                    $ xelatex hithesis.dtx
                    $ makeindex -s gind.ist -o hithesis.ind hithesis.idx
                    $ makeindex -s gglo.ist -o hithesis.gls hithesis.glo
                    $ xelatex hithesis.dtx
                    $ xelatex hithesis.dtx

    - ### issues

        + #### !Undefined control sequence. ... \GenericError ...

            使用 2019 年的 MacTex.

            > macOS Mojave Version 10.14.4(18E226)

        + #### 字体缺失问题

            从网上下载提示缺失的字体，然后[在 Mac 上安装](https://support.apple.com/zh-cn/guide/font-book/fntbk1000/mac)。推荐字体下载网站： https://fontzone.net/
            > 缺失字体：FangSong, KaiTi, Microsoft YaHei, Microsoft YaHei Bold, SimHei, SimSun


