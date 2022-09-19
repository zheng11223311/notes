### 1.Git 简介和使用

1. Git 简介
2. 安装Git
3. 自报家门
4. 客户端代码管理
5. 服务器端代码管理
6. 本地仓库代码推送到远程仓库
7. 团队协作
8. 版本回退
9. 分支管理

### Git 简介

Git 是目前世界上最先进的分布式版本控制系统(没有之一)

**1.何为分布式?与集中式相比有何特点?**

> 集中式(SVN)

所有开发者将每天的工程推送到同一台服务器中集中管理,服务器下次将数据发送到每一个开发者的电脑中

特点:安全,不会泄露,如果服务器数据丢失,后果很严重

> 分布式(Git)

所有开发者的电脑上都有完整的版本,日志,及分支信息

但开发者不依赖于服务器,可以查看日志,回退版本,创建分支

> 但是本质的区别在于:

Git 服务器是供开发者'交换'代码,服务器数据丢了没关系,分分钟在建一台,svn 的服务器,不仅交换代码,还控制着日志,版本,分支,服务器数据丢失就完了

**2.发展历史**

Linux 之父Linus Torvalds 在1991 年创建了linux 开源项目,并把项目放在互联网上,引来世界大量的黑客,大神为项目贡献代码

问题是,这么多的人同时贡献代码,如何管理代码成了一件头痛的事

随着Linux 内核的管理工作越来越吃力,linus 选择了一款商业版本控制器-Bitkeeper

Bitkeeper 是BitMOver 公司旗下的产品

公司的老大 Larry 也希望借机扩大产品的影响力,因此授权Linux 社区免费使用Bitkeeper

这件事,在开源圈引起了不小的骚动

因为,Bitkeeper 只是free(免费),而非free(自由)

开源教主 RMS 为这事还说过linus

2002 年 2 月,Linux 开始用它来管理Linux 内核代码主线,Linus 对Bitkeeper 的评价是 the best tool for the job ,确实,自从Linus 使用Bitkeeper 之后,Linux 的开发步伐加快了2倍

可惜的是,就像黑帮电影中,老大蒸蒸日上的事业,往往坏在一个不懂事的小弟手中

这帮视free(自由) 如信仰的牛人中,一个叫Andrew 的,试图破解Bitkeeper 的协议,且被BitMover 公司警告几次后仍不停手

最终,出事了!

Linus 在Andrew 和Larry 两人间费力调停,但是没有成功

即如此,Linus 说:'我的兄弟只是做错事不是做坏事,我抗!'

于是,10天后,git 诞生了!

### 安装Git

git 在Linux ,Mac ,Windows 下都可以安装

> Window 环境:

到https://git-for-windows.github.io/ 下载软件,双击,一路next ,安装完毕,到开始菜单找 git bash

输入 git --version 检测是否安装成功

> Linux 环境:

命令行输入 `apt-get install git` 或者 `yum install git`

输入 git --version 检测是否安装成功

### 自报家门

人在江湖,岂能没有名号

开源教主 Richard Matthew Stallman 的江湖名号 RMS

在你用git 之前,要先报家门,否则代码不能提交

```
git config --global user.name  #你是谁
git config --golbal user.email	#怎么联系你
```

### 客户端代码管理

**工作区和版本库**

Git 和其他版本控制系统如SVN 的一个不同之处就是有暂存区的概念

先来看名词解释

**工作区(Working Directory)**

就是你在电脑里能看到的任意目录

**版本库(Repository)**

工作区有一个隐藏隐藏目录.git ,这个不算工作区,而是Git 的版本库

Git 的版本库里面存了很多东西,其中最重要的就是称为stage (或者叫index) 的暂存区,还有Git 为我们自动创建的第一个分支master,以及指向master 的一个指针叫HEAD,后期版本库和远程仓库进行交互

> 工作区---`add`---->stage ------`commit`------>master

分支和HEAD 的概念我们一会再讲

前面讲了我们把文件往Git 版本库里添加的时候,是分两步执行的:

第一步是用`git add`把当前目录下文件添加进区,实际上就是把文件修改添加到暂存区;

第二步是用`git commit` 提交当前更改,实际上就是把暂存区的所有内容提交到当前分支,

因为我们创建Git 版本库时,Git 自动为我们创建了唯一一个master 分支,所以,现在,`git commit` 就是往master 分支上提交更改

你可以简单理解为,需要提交的文件修改统统放到暂存区,然后一次性提交暂存区的所有修改

### 服务器端代码管理

**1.GitHub**

我们一直用GitHub 作为免费的远程仓库,如果是个人的开源项目,放到GitHub 上是完全没有问题的,其实GitHub 还是一个开源协作社区,通过GitHub ,既可以让别人参与到你的开源项目,也可以参与别人的开源项目

**2.GitHub 创建远程仓库**

> 注册并登入GitHub 官网

https://github.com/

> 创建远程仓库

点击new repository 按钮创建仓库

### 团队协作

**1.生成公私匙**

**2.设置Git 的user name和email**

```
git config --global user.name  #你是谁
git config --golbal user.email	#怎么联系你
```

**3.生成SSH 密钥过程:**
1.查看是否已经有了ssh 密钥: `cd ~/.ssh`  ~ 为linux 的家目录,windows 为用户目录

如果没有密钥则不会有此文件,有则备份删除

2.生成密钥:

```
ssh-keygen -t rsa -C "z32404243334@qq.com"			ssh-keygen 生成密钥, -t 代表一种算法rsa, -C "z32404243334@qq.com"	 代表注释
```

按3个回车,密码为空

最后得到了两个文件:id_rsa 私钥和 id_rsa.pub 公钥

将id_rsa.pub 公钥的内容复制到 GitHub 账号->Settings ->SSH and GPG keys ->New SSH key -->title 随便输,key 粘贴id_rsa.pub 公钥的内容

以后推到远程仓库都不需要每次验证账号邮箱了

> 添加用户到你的仓库中(添加项目协作者)

在远程仓库中也有一个settings ->COllaborators ->输入框中添加用户 ->点击 Add collaborators   

### 版本回退

你不断对文件进行修改,让后不断提交修改到版本库里,就好比玩PRG 游戏时,每通过一关就自动把游戏状态存盘,如果某一关没过去,你还可以选择读取前一关的状态,有些时候,在打BOSS 之前,你会手动存盘,以便打万一BOSS 失败了,可以从最近的地方重新开始,Git 也是一样,每当你觉得文件修改到一定程度的时候,就可以"保存一个快照",这个快照在Git 中被称为commit ,一旦你把文件改乱了,或者误删了文件,还是可以从最近的一个commit 恢复,然后继续工作,而不是把几个月的工作成果全部丢失

每个文件/目录发生的版本变化,我们都可以追溯

命令为:`git log`

**常用格式:**

```
git log 查看项目的日志
git log <file> 查看某文件的日志
git log .  查看本目录的日志
```

如果感觉log 有点乱,可以`git log --pretty=oneline`,让日志单行显示

> git reflog 查看版本变化

`git reflog`                                  查看版本变化

> HEAD 指向当前版本 5d5df86

`git reset --hard HEAD^`		切换为head 的前一个版本

`git reset --hard HEAD^^`		切换为head 的前2 个版本

`git reset --hard HEAD~100`		切换为head 的前100 个版本

> 也可以利用版本号来切换

`git reset --hard 6207e59`

` HEAD is now at 6207e59 three`            指定回退到第三个版本, 6207e59  为three(第三个版本) 的版本号

注意版本号不用写那么长,就要保证不与其他版本号重复就行

例如:

`git reset --hard 6207`				回退到版本6207 

### 分支管理

**1.分支有什么用?**

在开发中,遇到这样的情况怎么办?

网站已有支付宝在线支付功能,要添加"微信支付"

修改了 3 个文件,wechat.php pay.pay.php

刚做到一半,突然有个紧急BUG :支付宝支付后不能修改订单状态,你需要立即马上修改这个BUG ,需要修改的文件是,ali.php ,pay.php

问题是:pay.php, 已经被你修改过来,而且尚未完成,直接在此基础上改,肯定有问题

把pay.php 倒回去?那我之前的工作白费了.

此时你肯定会想:在做"支付宝"时,能否把仓库复制一份,在此副本上修改,不影响原仓库的内容,修改完毕后,再把副本上的修改合并过去

好的,这时候你已经有了分支的想法

**前面见过的master ,即是代码的主干分支,事实上,在实际开发中,往往不会直接修改和提交到master 分支上**

**而是创建一个dev 分支,在dev 分支上,修改测试,没问题了,再把dev 分支合并到master 上**

如果有了分子,刚才的难题就好解决了

> 查看分支

`git branch`                    查看所有分支,包括主分支master,带* 表示当前处于的分支

> 创建分支

`git branch dev` 		创建dev 分支

> 切换分支

`git checkout dev`     	切换到dev 分支

> 创建并切换到此分支

`git checkout -b dev1`       创建并切换到dev1 分支

> 合并分支

`git merge dev`		将dev 分支合并到master 主分支上



`git init` 			  初始化git,创建.git 文件

`git add `.    			添加所有文件

`git add 文件名`  	指定添加文件

`git status `			 查看版本库中stage 是否存放当前目录下的文件

`git commit  -m "注释" `		 将版本库中stage 中文件提交到版本库中master 中,-m "注释信息" ,提交后stage 中删除信息

`git remote add origin https://github.com/gitfenfenger/gittest.git`		连接远程仓库,origin 为https://github.com/gitfenfenger/gittest.git 的别名(可不写,但是后期都得使用时都要加上这个网址,比较麻烦),https://github.com/gitfenfenger/gittest.git 为 https://github.com/你的账号/你的仓库名

`git push -u origin master`		将master 分区(也可以是其他分支)的文件提交到远程仓库master 分支,这里的master 不是本地的master,如果远程没有当前这个分支会自动创建,需要输入GitHub 账号/密码,-u 代表建立本地和远程仓库之间的联系,第一次需要使用-u

`git clone https://github.com/gitfenfenger/gittest.git`   将远程仓库下载下来

`git fetch`		查看服务器有哪些分支有最新的更新(`git merge origin/dev` 下载dev 分支最新的更新)

`git diff`			查看同一个文件是否有冲突(同一个文件,同一行的代码决定是否有冲突)(决定是否可以合并)

上传顺序是先get diff 在add 到暂存区 ,commit 提交,在push  ,不能直接push 到远程仓库



