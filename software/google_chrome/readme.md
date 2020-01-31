# Google Chrome

- [refer: Search trick](search_trick.md)

### Extensions

name|desc
---|---
AdBlock|
Checker Plus for Google Calendar｜
Chrono Download Manager|
Google Arts & Culture｜
Google Keep Chrome Extension｜
Google Scholar Button｜
Google Translate|
Grammarly for Chrome｜
HTTPS Everywhere|
LastPass: Free Password Manager|
Markdown Here|
Octotree|
OneNote Web Clipper|
[Proxy SwitchyOmega](SwitchyOmega.md)|
Remove Google Redirection|
Tampermonkey｜
Tide - Focus Timer & White Noise｜
Video Speed Controller｜
Vimium|
九章刷题小助手 |
為什麼你們就是不能加個空格呢？| 设成自动
Vysor｜Chrome App

### Configuration on windows platform

1. 设置 chrome 启动默认为隐身模式

    右击桌面 "Google Chrome" 快捷方式，选择 "属性"，在 "Target" 一栏中的 `"C:\Program Files\Google\Chrome\Application\chrome.exe"` 修改为 `"C:\Program Files\Google\Chrome\Application\chrome.exe" -incognito`

1. 设置 chrome 打开某个 html 文件为隐身模式浏览

    单击系统 "开始" 菜单，选择 "运行"，输入 "regedit" 打开系统注册表

    按顺序依次展开注册表

        "HKEY_CLASSES_ROOT\ChromeHTML\shell\open\command"

    在右边的内容中，双击 "默认"，弹出编辑字符串。在数值数据一栏中添加参数

        "incognito"

    比如，本人的注册表值原来为

        "C:\Program Files\Google\Chrome\Application\chrome.exe"?-- "%1"

    现在修改为

        "C:\Program Files\Google\Chrome\Application\chrome.exe" -incognito -- "%1"

    若 chrome 打开位置不在 C 盘，则在注册表中搜索，并修改。
