### Installation

- #### 安装包管理器

    使用 Ctrl+` 快捷键或者通过View->Show Console菜单打开命令行，粘贴如下代码：

        import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%20')).read())

    顺利的话，此时就可以在 Preferences 菜单下看到 Package Settings 和 Package Control 两个菜单了
    
- ####  插件安装

    + ConvertToUTF8
    
    + SublimeCodeIntel
    
        代码提示和补全
    
    + PackageResourceViewer
    
    + Theme -Soda

        Setting user 里面添加 ”theme”: “Soda Dark.sublime-theme”

        * 更改侧边栏字体大小

            从 PackageResourceViewer 插件打开主题文件，直接搜索"font.bold",在下面添加

                "font.size": 15

        * 调整行间距

            sidebar tree 中，调整为

                "row_padding": [8, 7],
    
    + MarkdownEditing

        要全局配置 ignored_packages: [“Markdown”] 禁用 ST 默认的 Markdown 插件，否则 MarkdownEditing 中看不到代码染色的效果，也不会有 GFM 的语法增强。
    
    + OmniMarkupPreviwer

        实时在浏览器中预览

        快捷键如下

            § Ctrl+Alt+O: Preview Markup in Browser
            § Ctrl+Alt+X: Export Markup as HTML
            § Ctrl+Alt+C: Copy Markup as HTML

    + SideBar Enhancements

        侧栏右键功能增强，非常实用
    
    + Compare Side-By-Side

        Sublime版本的Beyond Compare
    
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

