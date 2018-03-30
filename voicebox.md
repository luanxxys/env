# voicebox

- ## [Download](http://www.ee.ic.ac.uk/hp/staff/dmb/voicebox/voicebox.zip)

- ## Add to Matlab

    1. 解压 voicebox.zip，将整个目录 voicebox 复制到 MATLAB 的安装目录下, 如

            /usr/local/MATLAB/R2017a/toolbox
            C:\Program Files\MATLAB\R2017a\toolbox

    1. 找到 'pathdef.m' 文件，打开，把上面路径添加到该文件中，保存。

            matlabroot,'\toolbox\voicebox;', ...

            linux 下 ; ---> :

        > C:\Program Files\MATLAB\R2017a\toolbox\local\pathdef.m
        >
        > /usr/local/MATLAB/R2017b/toolbox/local/pathdef.m

    1. 运行 `rehash toolboxcache` 命令，完成工具箱加载

    1. 测试 `what voicebox`

