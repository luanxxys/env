# Google Chrome

### Extensions

name|
---|---
Adblock Plus|
Chrono Download Manager|
Google Translate|
HTTPS Everywhere|
LastPass: Free Password Manager|
Markdown Here|
Octotree|
OneNote Web Clipper|
Proxy SwitchyOmega|
Remove Google Redirection|
Video Downloader professional|
Vimium|

### Configuration
> windows platform

1. 设置 chrome 启动默认为隐身模式：

        右击桌面 "Google Chrome" 快捷方式，选择 "属性"，在 "目标" 一栏中的
            "C:\Program Files\Google\Chrome\Application\chrome.exe"
        修改为
            "C:\Program Files\Google\Chrome\Application\chrome.exe" -incognito

1. 设置 chrome 打开某个 html 文件为隐身模式浏览：

        单击系统 "开始" 菜单，选择 "运行"，输入 "regedit" 打开系统注册表

        按顺序依次展开注册表
            "HKEY_CLASSES_ROOT\ChromeHTML\shell\open\command"
        在右边的内容中，双击 "默认"，弹出编辑字符串。在数值数据一栏中添加
            "incognito" 参数。
        比如，本人的注册表值原来为
            "C:\Program Files\Google\Chrome\Application\chrome.exe"?-- "%1"
        现在修改为
            "C:\Program Files\Google\Chrome\Application\chrome.exe" -incognito -- "%1"
        若 chrome 打开位置不在 C盘，则在注册表中搜索，并修改
