# Matlab

- ### Installation on Archinux

    文件下载

        链接：https://pan.baidu.com/s/1o9rZTge 密码：8c80

    文件夹里有 3 个文件，分别是 Matlab 2017a Linux64 Crack.rar、R2017a_glnxa64_dvd1.iso 和 R2017a_glnxa64_dvd2.iso,保存在了 `/home/choi/Downloads/` 这个路径下。

    挂载镜像 1

        cd /home/choi/Downloads/

        #创建挂载路径
        mkdir -p /home/choi/matlab

        #挂载 `/home/choi/Downloads/R2017a_glnxa64_dvd1.iso` 到 `/home/choi/matlab`
        sudo mount -t auto -o loop *dvd1.iso /home/choi/matlab

    然后进行安装，需要特别注意的是运行该命令的时候，终端不能处在 `/home/choi/matlab/`` 路径下，否则安装过程会被终止。

        sudo /home/choi/matlab/install

    挂载镜像 2,大概在安装过程进行到 75% 的时候会弹出提示要求挂载第二个镜像。挂载完毕后回到安装界面，点击继续即可。

        # 原来的终端别终止，新建一个终端切到镜像路径下
        cd /home/choi/Downloads/

        # 挂载 `/home/choi/Downloads/R2017a_glnxa64_dvd2.iso` 到 `/home/choi/matlab`
        sudo mount -t auto -o loop *dvd2.iso /home/choi/matlab

    卸载镜像

        # 该命令需要执行两次，因为挂载了 2 次在此路径
        sudo umount /home/choi/matlab

        # 移除挂载路径
        sudo rm -r /home/choi/matlab

[reference](https://lanseyujie.com/post/matlab-r2017a-linux-download-and-activate.html)

- ### Configuration
> 替换 matlab.prf 文件，主要是更换了 Soda Dark 主题。

    Windows 下目录

        C:\Users\luanx\AppData\Roaming\MathWorks\MATLAB\R2017a

    Linux 下目录

        ~/.matlab/R2017a
