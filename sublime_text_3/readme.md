### sublime text 3

##### GNU/Fedora
> fedora 需要选择 tarball 版本。下载后将 sublime text 3 解压后放到 opt 目录下。这是默认位置，你也可以选择其他路径，对应进行修改。

1. 假定下载到 /home/Download下载 目录下，为了方便，我们直接用归档管理器打开，将压缩包里的文件拉到 /home/Download 下。重命名文件夹名称为 sublime_text。同样也是默认命名。

1. 接着，我们打开 shell ，切换到 root 权限，执行拷贝操作：

        sudo su
        cp -r /home/Download/sublime_text /opt

1. 如果我们想在命令行下键入 sublime 就启动 sublime text ，我们可以执行以下命令，建立软链接：

        ln -s /opt/sublime_text/sublime_text /usr/bin/sublime
    > 确保路径正确

1. 如果我们还想添加到收藏夹，方便打开，那么我们还需要将 sublime_text.desktop 文件拷贝到 /usr/share/applications/ 目录下

我们就可以在 Gnome 3 的应用程序列表里看到 sublime_text 了，如果要添加到收藏夹，右键就有了。（这个步骤，要打开这个文件确保里面的路径都是正确，图片是合适的）

##### Archlinux

    yaourt sublime

选择 fcitx 修复版本（支持输入中文）

#### 安装包管理器

使用 Ctrl+` 快捷键或者通过View->Show Console菜单打开命令行，粘贴如下代码：

    import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%20')).read())

顺利的话，此时就可以在 Preferences 菜单下看到 Package Settings 和 Package Control 两个菜单了

- ####  插件安装

    + ConvertToUTF8

    + SublimeCodeIntel

        代码提示和补全

    + PackageResourceViewer

    + Theme-Soda

        Setting user 里面添加 ”theme”: “Soda Dark 3.sublime-theme”

        * 更改侧边栏字体大小

            从 PackageResourceViewer:Open Resource 插件打开主题文件，在 Sidebar entry 添加

                "font.size": 15,

        * 调整行间距

            在 sidebar tree 中，调整为

                "row_padding": [8, 7],

    + MarkdownEditing

        要全局配置 ignored_packages: [“Markdown”] 禁用 ST 默认的 Markdown 插件，否则 MarkdownEditing 中看不到代码染色的效果，也不会有 GFM 的语法增强。

    + OmniMarkupPreviewer

        实时在浏览器中预览

        快捷键如下

            § Ctrl+Alt+O: Preview Markup in Browser
            § Ctrl+Alt+X: Export Markup as HTML
            § Ctrl+Alt+C: Copy Markup as HTML

    + SideBar Enhancements

            侧栏右键功能增强，非常实用

    + Compare Side-By-Side

            Sublime 版本的 Beyond Compare

    + Emmet

        前端必备，快速开发 HTML/CSS

        Tab 键触发

    + JsFormat

        格式化 js 代码

        快捷键 Ctrl+Alt+F，即可让代码还原


- #### 可选

    + MarkdownPreview

        按CTRL + B生成网页 HTML；在最前面添加[TOC]自动生成目录；

    + TableEditor

        自动对齐

            □ 通过Ctrl+Shift+P->Table Editor: Enable for current view开启
            □ 先输入标题行，回车后在第二行输入 | 后，按 tab 键就将进入 Table 编辑模式
            □ 表格必须与前面输入的文字之间有空行，否则表格会被当成普通文字渲染

    + SublimeAStyleFormatter

        整理美化编写的C++代码,快捷键Ctrl+Alt+F

    + Alignment

        代码对齐，如写几个变量，选中这几行，Ctrl+Alt+A，哇，齐了
