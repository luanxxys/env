# sublime text 3

- ## Installation

    + ### Archlinux

            $ yaourt sublime

        选择 fcitx 修复版本（支持中文输入）

            >>> `"update_check":false`
        > 激活正版之后

    + ### GNU/Fedora

        fedora 需要选择 tarball 版本。下载后将 sublime text 3 解压后放到 opt 目录下。这是默认位置，你也可以选择其他路径，对应进行修改。

        1. 假定下载到 /home/Download 目录下，解压到 /home/Download，重命名文件夹名称为 sublime_text

        1. 执行

                sudo su
                cp -r /home/Download/sublime_text /opt

        1. 设置命令行启动 --> 建立软链接

                ln -s /opt/sublime_text/sublime_text /usr/bin/sublime

        1. 如果我们还想添加到收藏夹，方便打开，那么我们还需要将 sublime_text.desktop 文件拷贝到 /usr/share/applications/ 目录下

        我们就可以在 Gnome 3 的应用程序列表里看到 sublime_text 了，如果要添加到收藏夹，右键就有了（这个步骤，要打开这个文件确保里面的路径都是正确，图片是合适的）。

- ## Configuration

    + ### 安装包管理器

        使用 Ctrl+` 快捷键或者通过 View->Show Console 菜单打开命令行，粘贴如下代码：

            import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen('http://sublime.wbond.net/'+ pf.replace(' ','%20')).read())

        顺利的话，此时就可以在 Preferences 菜单下看到 Package Settings 和 Package Control 两个菜单了

    + ### 插件安装

        * ConvertToUTF8

        * SublimeREPL

            Python 控制台输入. 然后设置一个编译运行的快捷键，具体操作为：Preferences->Key Bindings-User

                {
                    "keys":["f5"],
                    "caption":"SublimeREPL:Python - RUN current file",
                    "command":"run_existing_window_command","args":
                    {
                        "id":"repl_python_run",
                        "file":"config/Python/Main.sublime-menu"
                    }
                }

        * SublimeCodeIntel

            代码提示和补全

        * PackageResourceViewer

        * Theme-Soda

            Setting user 里面添加 ”theme”: “Soda Dark 3.sublime-theme”

            - 更改侧边栏字体大小

                从 PackageResourceViewer:Open Resource 插件打开主题文件，在 Sidebar entry 添加

                    "font.size": 15,

            - 调整行间距

                在 sidebar tree 中，调整为

                    "row_padding": [8, 7],

        * MarkdownEditing

            要全局配置 ignored_packages: [“Markdown”] 禁用 ST 默认的 Markdown 插件，否则 MarkdownEditing 中看不到代码染色的效果，也不会有 GFM 的语法增强。

        * OmniMarkupPreviewer

            快捷键如下

                § Ctrl+Alt+O: Preview Markup in Browser
                § Ctrl+Alt+X: Export Markup as HTML
                § Ctrl+Alt+C: Copy Markup as HTML

            添加编辑数学公式功能

                Package Settings -> OmniMarkupPreviewer -> Setting - Default

                >>> "mathjax_enabled": true

            测试过程中出现以下错误:

                'Error: 404 Not Found
                Sorry, the requested URL 'http://127.0.0.1:51004/view/28' caused an error:
                'buffer_id(28) is not valid (closed or unsupported file format)'

                **NOTE:** If you run multiple instances of Sublime Text, you may want to adjust
                the `server_port` option in order to get this plugin work again.'

            解决方法

                Sublime Text > Preferences > Package Settings > OmniMarkupPreviewer > Settings - User
                    {
                        "renderer_options-MarkdownRenderer": {
                            "extensions": ["tables", "fenced_code", "codehilite"]
                        }
                    }

            或

                [PackageResourceViewer]/OmniMarkupPreviewer/OmniMarkupLib/Renderers/libs/mdx_strikeout.py

                Replace the makeExtension() method with the following:

                    def makeExtension(*args, **kwargs):
                        return StrikeoutExtension(*args, **kwargs)

                Save, quit and reload Sublime Text.

        * MarkdownTOC

        * SideBar Enhancements

            侧栏右键功能增强

        * Compare Side-By-Side

            Sublime 版本的 Beyond Compare

        * LaTeXTools

            Package Settings->LaTeXTools->Settings – User ，在 Platfrom settings 段，根据自己的系统，修改相应的配置。

               - Windows

                    texpath 的值为刚才的 TeXLive 安装目录下 bin 下的 win32 目录的路径，本例中为 `C:\texlive\bin\win32` ，请根据实际情况修改。
                    
                    然后，distro 的值修改为 texlive。sumatra 的值修改为刚才安装的 SumatraPDF 的路径。

                    最后在命令提示符里面执行(sumatrapdf 已添加入环境变量)

                        sumatrapdf.exe -inverse-search "\"C:\Program Files\Sublime Text 3\sublime_text.exe\" \"%f:%l\""

                - linux

                    “texpath”, “python”, “viewer”: “evince” -- 其实都不用修改， 开箱即用

        * Sublime Highlight

            在 Sublime Text 里选中需要复制的代码，右键 --> `Copy as HTML`，实现代码高亮。
            > （可选）在 OneNote 里创建一个单格的表格，上底色，粘贴

        + #### 可选

            * MarkdownPreview

                按 CTRL + B 生成网页 HTML；在最前面添加 [TOC] 自动生成目录；

            * TableEditor

                自动对齐

                    □ 通过 Ctrl+Shift+P->Table Editor: Enable for current view 开启
                    □ 先输入标题行，回车后在第二行输入 | 后，按 tab 键就将进入 Table 编辑模式
                    □ 表格必须与前面输入的文字之间有空行，否则表格会被当成普通文字渲染

            * SublimeAStyleFormatter

                整理美化编写的 C++ 代码, 快捷键 Ctrl+Alt+F

            * Alignment

                代码对齐，如写几个变量，选中这几行，Ctrl+Alt+A，哇，齐了

            * JsFormat

                格式化 js 代码

                快捷键 Ctrl+Alt+F，即可让代码还原

            * Emmet

                前端必备，快速开发 HTML/CSS

                Tab 键触发

- ## Issue

    + 字不跟随光标

        IMESupport(下载后安装)

    + 中英文字体不对齐

        Consolas 是微软为程序员设置的字体, 但不支持中文。字体改为`"font_face":"微软雅黑"`（不好看，linux 下不对齐严重时使用）。

    + 无法安装 package control

        遇到过这种情况一次, 最后发现是 network proxy 的原因
