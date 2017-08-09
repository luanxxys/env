set nocompatible"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set number"显示行号
filetype on"检测文件的类型
set history=1000"记录历史的行数
set background=dark"背景使用黑色
syntax on"语法高亮度显示
set ruler"显示标尺，就是在右下角显示光标位置
set incsearch"查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词时，别忘记回车
set enc=utf-8
nnoremap <F2> :g/^\s*$/d<CR>"F2去空行
set foldenable"开启代码折叠
set foldmethod=syntax"自动语法折叠
set smartindent"智能的选择对齐方式
set mouse=a"鼠标可用
set cursorline "突出显示当前行
set showmatch"设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showcmd"显示输入的命令
set expandtab"用空格键代替制表符
set tabstop=4"设置tab键为4个空格
set shiftwidth=4"默认缩进4个空格大小
"根据文件类型自动插入文件头（需要设置好编译器位置）
autocmd BufNewFile *.py,*.sh exec ",*.c,*.cpp:call SetTitle()"
func SetTitle()
if &filetype == 'sh'
call setline(1,"\#!/bin/bash")
call append(line("."),"\# Author:luanxxys@gmail.com")
call append(line(".")+1,"")
elif &filetype == 'py'
call setline(1,"\#!/bin/env python")
call append(line("."),"\# Author:luanxxys@gmail.com")
call append(line(".")+1,"\# _*_ coding:utf-8 _*_")
call append(line(".")+2,"")
elif &filetype == 'c'
call setline(1,"\#!/bin/gcc gcc")
call append(line("."),"\# Author:luanxxys@gmail.com")
call append(line(".")+1,"\# coding:utf-8")
call append(line(".")+2,"")
else &filetype == 'cpp'
call setline(1,"\#!/bin/g++ g++")
call append(line("."),"\# author:luanxxys@gmail.com")
call append(line(".")+1,"\# coding:utf-8")
call append(line(".")+2,"")
endif
endfunc
