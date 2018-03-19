### GitHub功能

#### 快捷键:

在各个页面中按下shift + / 可以打开快捷键一览表

#### 控制台界面：

GitHub的Logo：进入控制台 

铃铛：notifications，通知。当图标为蓝色时表示有未读通知。 

搜索框：搜索想找的用户或代码片段 

Gist：用于管理和发布一些没必要保存在仓库中的代码。 

“+”号：创建新的Git仓库或Organization，向Organization添加成员、小组、仓库，为仓库添加Issue（问题）或collaborator（合作者）等操作。 

Blog：GitHub官方博客 

Help：GitHub相关帮助文档

#### 个人信息页面：

左侧：用户个人信息，包括姓名、公司、邮箱地址、已加入的Organization等。 

Popular repositories：显示用户的公开仓库中受欢迎的仓库。 

Contributions：记录每日用户对仓库的贡献程度。 

Contribution activity：按时间顺序显示具体贡献活动的链接。

#### Repositories页面： 

显示该用户公开的仓库。Fork来的仓库也显示在这里。

#### Public Activity页面： 

显示该用户的公开活动。包括向仓库提交或Pull Request等。

#### 仓库页面： 

watch：点击该按钮后，今后该仓库的更新信息就会显示在用户的公开活动中。相当于“订阅”。 

star：相当于“收藏”该仓库。用户可以在Star标记的列表中找到该仓库。 

fork：代表该仓库被Fork至各用户仓库的次数。Fork相当于你在原项目的主分支上又建立了一个分支，你可以在该分支上任意修改，如果想将你的修改合并到原项目中时，可以pull request，这样原项目的作者就可以将你修改的东西合并到原项目的主分支上去，这样你就为开源项目贡献了代码，开源项目就会在大家共同的努力下不断壮大和完善。 

code：显示该仓库中的文件列表。 

issue：用于BUG报告、功能添加、方向性讨论等，这些将以issue的形式进行管理。Pull Request时也会创建Issue。旁边显示的数字是当前处于open状态的issue数目。等讨论方向性 

pull request：代码的更改和讨论都可以在此进行。 

wiki：wiki是一种比HTML语法更简单的页面描述功能。常用于记录开发者之间应该共享的信息或软件文档。 

pulse：显示该仓库最近的活动信息。 

Graphs：以图表形式显示该仓库各项指标。 

network：以图标形式显示出当前仓库的状态以及fork出的仓库的状态。同时会显示成员列表。 

commits：显示当前分支的提交历史。 

branches：查看仓库的分支列表。 

releases：显示仓库的标签（Tag）列表。同时可以将标签加入时的文件以归档形式（ZIP、tar.gz）下载到本地。软件在升级时一般都会打标签，如果需要特定版本的文件，可以从这里寻找。 

contributors：显示对该仓库进行过提交的程序员名单。 

branch：显示当前分支名称。从这里可以切换仓库内分支，查看其他分支的文件。

### 文件的相关操作： 

笔图标：编辑文件内容并提交。 

垃圾桶图标：删除该文件。 

raw：直接在浏览器中显示该文件的内容。 

blame：按行显示最新提交的信息。 

history：查看该文件的历史记录。

### 搜索文件： 

在仓库页面按下t键，然后输入要查找的目录或文件的部分名称。筛选器会在仓库目录和文件中搜索出要找的文件。

### Issue： 

开发者为了跟踪BUG及进行软件相关讨论，进而方便管理，创建了Issue。 
遇到以下情况时，就可以使用Issue： 

1. 发现软件的BUG并报告 
1. 有事想向作者询问、探讨 
1. 事先列出今后准备实施的任务

### 描述方法： 

#### 语法高亮： 

先指定语言，再描述代码。 
    
    Java（指定语言） 
    public void add(){ 
    int a; 
    } 

这样代码就会被添加语法高亮。 

### 添加图片： 

1. 直接复制到文本框中 
1. 选择“Attach files by dragging & dropping, selecting them, or pasting from the clipboard.”，通过弹出的对话框选择相应文件。

### 标签： 

Issue可以通过添加标签（Label）来进行整理。 

点击标签，还可以只显示该类标签的Issue。 

标签可以自由创建。

### 里程碑： 

可添加里程碑用来管理Issue

### Tasklist语法： 

# 本月要完成的事

    - [ ] 完成图片
    - [x] 完成部署工具的设置
    - [ ] 完成抽签实现

效果：

这个复选列表可以直接勾选或取消，不必打开Issue的编辑页面重新编辑。 

Issue与Pull Request的编号相互通用。

Pull Request:是用户修改代码后向对方仓库发送采纳请求的功能。 

Conversation：在Conversation标签页中，可以查看与当前Pull Request相关的所有评论以及提交的历史记录。 

Commits：在Commits标签页中，按时间顺序列表显示了与当前Pull Request相关的提交。 

File Changed：File Changed标签页中可以查看当前Pull Request更改的文件内容以及前后的差别。 默认情况下系统会将空格的不同也高亮显示，所以在空格有改动的情况下会难以阅读。这时只需要在URL的末尾添加“？w=1”就可以不显示空格的差别。

Wiki：Wiki是一个使用简单的语法就能编写文档的功能。所有有权限的人都可以对文章进行修改，适合多人共同编写文章的情况。

Pulse：Pulse是显示仓库最近的活动信息，即体现该仓库软件开发活跃度的功能。

Graphs：通过图表查看该仓库的相关统计信息，利用图表直观地汇总信息，可以让用户把握当前仓库的各种趋势。 

Contributors：查看每个用户在相应日期中发送提交、添加代码、删除代码的大致数量。 

Commits：查看收到的提交数量。 

Code Frequency：显示该仓库中代码行数的增加量和删除量。 

Punch Card：显示一周内每天何时收到的提交最多。 

Network：显示包括克隆仓库在内的所有分支的提交。

#### Setting： 

对仓库进行任何设置，用户必须拥有更改设置的权限，才能够看到这个页面。 

#### Options：

（1）Setting：更改仓库名称 

（2）Features：这里可以更改Wiki和Issue的相关设置。如果想关闭某些功能，只要取消已勾选的复选框，该功能就会从菜单中移除，无法使用。 

（3）GitHub Pages：利用GitHub Pages仓库中的资料创建Web页面，用来发布仓库中项目的相关信息。

#### Collaborators： 

用户在这里设置仓库的访问权限。如果仓库隶属于个人账户，那么可以在此处添加GitHub用户名，赋予该用户直接读写仓库的权限。 

Branches:在这里可以更改显示仓库时默认显示的分支。 

#### Webhooks&Services： 

在此，用户可以添加Hook让GitHub仓库与其他服务集成。通过Add webhook可以添加自己的webhook。通过Configureservices可以从GitHub事先列出的可以集成的服务中进行选择。

#### Notifications： 

页面上的小铃铛就是Notifications，在这里可以看到GitHub上所有活动的通知。


[origin](http://blog.csdn.net/u012325167/article/details/50635517)
