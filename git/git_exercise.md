- ### 可将密钥对保管好，多次使用（有安全隐患）

- ### 本地仓库与远程仓库连接

    1. git clone 命令从远程下载 repo 到本地

    1. 本地新建仓库后，不能直接 git remote 连接，应该先 git pull 一下（否则，如果在　github　的　remote　上已经有了文件，会出现错误）

            git pull origin master

        然后再进行

            git push origin master

        git clone 只能下载 master 分支到本地，若想下载全部分支

            查看全部分支

                git branch -a

            下载分支

                git checkout -b 本地分支名 远程分支名
            > 若已存在本地分支名，则不用 -b 参数

- ### 分支管理

    + #### 删除远程分支

        1. 查看

                git push origin -d <branch_name>

        1. 清理远程分支，把本地不存在的远程分支删除

                git remote prune origin
            > 推送一个空分支到远程分支，其实就相当于删除远程分支

        1. 更简单的方法是使用这个命令，它在fetch之后删除掉没有与远程分支对应的本地分支

                git fetch -p

    + #### 删除本地分支

            git branch -d <branch_name>

    + #### 重命名远程分支

        1. 删除远程分支

                git push --delete origin devel参数

        1. 重命名本地分支

                git branch -m devel develop

        1. 推送本地分支

                git push origin develop

- ### 文件操作

        git ls-files
    > 列出各目录及相应目录下的文件


- ### tag

    + #### 把本地tag推送到远程

            git push --tags

    + #### 获取远程tag

            git fetch origin tag <tagname>
