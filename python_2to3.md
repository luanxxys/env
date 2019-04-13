# python2 ==> python3

> 使用 python3 自带工具 2to3.py 转换 python2 代码 到 python3

## 查看函数所需要的参数信息

    python path/to/2to3.py --help

## 单独转换 python2 代码 到 python3

    python path/to/2to3.py -w path/to/original.py

>  -w 参数可以将修改的文件覆盖到原文件并留有.bak 的备份文件用来恢复

## 按照目录批量转换

    python path/to/2to3.py -w path/to/
