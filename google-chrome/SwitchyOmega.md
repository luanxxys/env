# Chrome extension：SwitchyOmega

- 下载

    [download](https://github.com/FelisCatus/SwitchyOmega/releases)

- 安装到 chrome 中

    打开 chrome://extensions/ 界面，将插件直接拖到这儿

- 设置 SwitchyOmega（in Speech processing lab）

        Sock5 192.168.11.211 port:7070

    + 实现代理自动切换

        建议直接阅读（即，跳过全部以下内容）：[reference](https://eliyar.biz/AutoProxy-By-Shadowsocks-and-SwitchyOmega/)

        * 打开 SwitchyOmega 设置，新建情景模式，选择自动切换模式

        * 导入在线规则列表，类型选择 AutoProxy，可以选择导入 `gfwlist - https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt`, 或者自定义的 AutoProxy 文件。

        * 保存设置并更新情景模式，若更新失败则开启全局代理后更新。

        * 设置规则匹配则使用代理模式，否则直接连接。保存退出。

    + 自定义 AutoProxy 文件

        AutoProxy 文件格式如下

            !注释

            example.com
            !匹配 http://www.example.com/foo, http://www.google.com/search?q=www.example.com
            !不匹配 https://www.example.com/

            |http://example.com
            !匹配 所有开头为 https://example.com 网页
            !不匹配 短连接如 http://t.co/dsadas

            ||example.com
            !匹配 http://example.com/foo, https://subdomain.example.com/bar
            !不匹配 http://www.google.com/search?q=example.com

        按照上一个方法,导入自定义的文件

    + 优化

        判断 SwitchyOmega 有哪些资源未加载

        * SwitchyOmega -> 界面 -> 快速切换 取消勾选

        * 随便打开一个网站，如 https://www.instagram.com/ ，则可以看到 SwitchyOmega 图标右下角多了一个数字1

        * 点击 SwitchyOmega 图标 -> 1个资源未加载 -> 选择代理模式并添加条件

        * 打开 SwitchyOmega 设置，刷新可以看到刚刚添加的两个条件。之后访问 https://www.instagram.com/ 会直接调用 vpn。其他网站继续直接连接


### [reference](https://github.com/FelisCatus/SwitchyOmega/wiki/GFWList)
