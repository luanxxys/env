把 ** .vimrc ** 文件创建在当前用户的根目录下比较方便，即创建的命令为

    $vi ~/.vimrc

## 基本操作

command|description
---|---
Esc|从当前模式转换到“普通模式”。所有的键对应到command
i|“插入模式”用于插入文字。回归按键的本职工作
:|“command行模式” Vim 希望你输入类似于保存该文档command的地方

## 方向键

command|description
---|---
h|光标向左移动一个字符
j或Ctrl + J|光标向下移动一行
k或Ctrl + P|光标向上移动一行
l|光标向右移动一个字符
0|（数字 0）移动光标至本行开头
$|移动光标至本行末尾
^|移动光标至本行第一个非空字符处
w|向前移动一个词 （上一个字母和数字组成的词之后）
W|向前移动一个词 （以空格分隔的词）
5w|向前移动五个词
b|向后移动一个词 （下一个字母和数字组成的词之前）
B|向后移动一个词 （以空格分隔的词）
5b|向后移动五个词
G|移动至文件末尾
gg|移动至文件开头

## 浏览文档

command|description
---|---
(|跳转到上一句
)|跳转到下一句
{|跳转到上一段
}|跳转到下一段
[[|跳转到上一部分
]]|跳转到下一部分
[]|跳转到上一部分的末尾
][|跳转到上一部分的开头

## 插入文本

command|description
---|---
a|在光标后插入文本
A|在行末插入文本
i|在光标前插入文本
o|（小写字母 o）在光标下方新开一行
O|（大写字母 O）在光标上方新开一行

##  特殊插入

command|description
---|---
:r [filename]|在光标下方插入文件 [filename] 的内容
:r ![command]|执行command [command] ，并将输出插入至光标下方

## 删除文本

command|description
---|---
x|删除光标处字符
dw|删除一个词
d0|删至行首
d$|删至行末
d)|删至句末
dgg|删至文件开头
dG|删至文件末尾
dd|删除该行
3dd（d3,然后回车）|删除三行

## 简单替换文本

command|description
---|---
r{text}|将光标处的字符替换成 {text}
R|进入覆写模式，输入的字符将替换原有的字符

## 复制/粘贴文本

command|description
---|---
yy|复制当前行至存储缓冲区
["x]yy|复制当前行至寄存器 x
p|在当前行之后粘贴存储缓冲区中的内容
P|在当前行之前粘贴存储缓冲区中的内容
["x]p|在当前行之后粘贴寄存器 x 中的内容
["x]P|在当前行之前粘贴寄存器 x 中的内容

## 撤销/重做操作

command|description
---|---
u|撤销最后的操作
Ctrl+r|重做最后撤销的操作

## 搜索和替换

command|description
---|---
/search_text|检索文档，在文档后面的部分搜索 search_text
search_text|检索文档，在文档前面的部分搜索 search_text
n|移动到后一个检索结果
N|移动到前一个检索结果
:%s/original/replacement|检索第一个 “original” 字符串并将其替换成 “replacement”
:%s/original/replacement/g|检索并将所有的 “original” 替换为 “replacement”
:%s/original/replacement/gc|检索出所有的 “original” 字符串，但在替换成 “replacement” 前，先询问是否替换

## 书签

command|description
---|---
m {a-zA-Z}|在当前光标位置设置书签，书签名可用一个大小写字母（{a-zA-Z}）
:marks|列出所有书签
{a-zA-Z}|跳转到书签 {a-zA-Z}

## 选择文本

command|description
---|---
v|进入逐字可视模式
V|进入逐行可视模式
Esc|退出可视模式

## 改动选中文本

command|description
---|---
~|切换大小写
d|删除一个词
c|变更
y|复制
!|通过外部command进行过滤
<|左移
>|右移

## 保存并退出

command|description
---|---
:q|退出 Vim，如果文件已被修改，将退出失败
:w|保存文件
:w new_name|用 new_name 作为文件名保存文件
:wq|保存文件并退出 Vim
:q!|退出 Vim，不保存文件改动
ZZ|退出 Vim，如果文件被改动过，保存改动内容
ZQ|与 :q! 相同，退出 Vim，不保存文件改动
