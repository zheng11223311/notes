## 安装MongoDB

建议参考 MongoDB 官方推荐的安装方式

 [Install MongoDB Community Edition on Ubuntu — MongoDB Manual](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/) 

安装MongoDB :

```
#从终端发出以下命令以从以下位置导入 MongoDB 公共 GPG 密钥  https://www.mongodb.org/static/pgp/server-6.0.asc
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
sudo apt-get install gnupg #安装及其所需的库：gnupg
```

以下说明适用于 **Ubuntu 20.04 （Focal）。**<

为 Ubuntu 20.04 （Focal） 创建文件：`/etc/apt/sources.list.d/mongodb-org-6.0.list`

```
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
```



### 重新加载本地包数据库。[![img](https://www.mongodb.com/docs/manual/assets/link.svg)](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/#reload-local-package-database)

发出以下命令以重装本地包数据库：

```
sudo apt-get update
```



### 安装 MongoDB 软件包。[![img](https://www.mongodb.com/docs/manual/assets/link.svg)](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/#install-the-mongodb-packages)

您可以安装MongoDB的最新稳定版本或特定版本的MongoDB。

安装最新版本的MongoDB。安装特定版本的 MongoDB。

要安装最新的稳定版本，请发出以下命令

```
sudo apt-get install -y mongodb-org
```



#### 启动 MongoDB。[![img](https://www.mongodb.com/docs/manual/assets/link.svg)](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/#start-mongodb)

您可以通过发出以下命令来启动 [`mongod`](https://www.mongodb.com/docs/manual/reference/program/mongod/#mongodb-binary-bin.mongod) 进程：

```
sudo systemctl start mongod
```



如果在启动 [`mongod`](https://www.mongodb.com/docs/manual/reference/program/mongod/#mongodb-binary-bin.mongod) 时收到类似于以下内容的错误：

```
Failed to start mongod.service: Unit mongod.service not found.
```

首先运行以下命令：

```
sudo systemctl daemon-reload
```



然后再次运行上面的启动命令。

#### 验证 MongoDB 是否已成功启动。[![img](https://www.mongodb.com/docs/manual/assets/link.svg)](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/#verify-that-mongodb-has-started-successfully)

```
sudo systemctl status mongod
```



您可以选择确保MongoDB将在系统重新启动后通过发出以下命令来启动：

```
sudo systemctl enable mongod
```

#### 停止 MongoDB。[![img](https://www.mongodb.com/docs/manual/assets/link.svg)](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/#stop-mongodb)

根据需要，您可以通过发出以下命令来停止 [`mongod`](https://www.mongodb.com/docs/manual/reference/program/mongod/#mongodb-binary-bin.mongod) 进程：

```
sudo systemctl stop mongod
```



#### 重新启动 MongoDB。[![img](https://www.mongodb.com/docs/manual/assets/link.svg)](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/#restart-mongodb)

您可以通过发出以下命令来重新启动 [`mongod`](https://www.mongodb.com/docs/manual/reference/program/mongod/#mongodb-binary-bin.mongod) 进程：

```
sudo systemctl restart mongod
```



您可以通过查看文件中的输出来跟踪错误或重要消息的进程状态。`/var/log/mongodb/mongod.log`

#### 开始使用MongoDB。[![img](https://www.mongodb.com/docs/manual/assets/link.svg)](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/#begin-using-mongodb)

在与 [`mongod`](https://www.mongodb.com/docs/mongodb-shell/#mongodb-binary-bin.mongosh) 相同的主机上启动 [`mongosh`](https://www.mongodb.com/docs/manual/reference/program/mongod/#mongodb-binary-bin.mongod) 会话。您可以在没有任何命令行选项的情况下运行[`mongosh`](https://www.mongodb.com/docs/mongodb-shell/#mongodb-binary-bin.mongosh)，以连接到在具有默认端口27017的本地主机上运行的[`mongod`](https://www.mongodb.com/docs/manual/reference/program/mongod/#mongodb-binary-bin.mongod)。

```
mongosh
```



有关使用 [`mongosh`](https://www.mongodb.com/docs/mongodb-shell/#mongodb-binary-bin.mongosh) 进行连接的更多信息，例如连接到在其他主机和/或端口上运行的 [`mongod`](https://www.mongodb.com/docs/manual/reference/program/mongod/#mongodb-binary-bin.mongod) 实例，请参阅 [mongosh 文档](https://www.mongodb.com/docs/mongodb-shell/)。

为了帮助您开始使用MongoDB，MongoDB在各种驱动程序版本中提供了[入门指南](https://www.mongodb.com/docs/manual/tutorial/getting-started/#std-label-getting-started)。有关驱动程序文档，请参阅[开始使用 MongoDB 进行开发](https://api.mongodb.com/).





## 安装nginx

手册: [如何在 Ubuntu 20.04 |上安装 Nginx数字海洋 (digitalocean.com)](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-20-04) 



#### nginx 域名配置和反向代理

```
cd /etc/nginx
ls
#vi nginx.conf #不建议直接在此文件中编写,在conf.d 下编写文件.conf,会自动导入
cd conf.d
ls
vi abc.conf #如下图
```

![39-1](D:\学习\wanye\HTML\Egg\Egg + Vue3开发视频网站\笔记\img\39-1.png)

```
systemctl reload nginx 
```

访问浏览器 http://test.lipengzhou.com/api/v1/



## 安装Git

```
apt install git
git --version	
```



#### 使用GitHubAction 实现自动更新部署

如果需要更新,需要:

- 本地开发
- 提交更新到远程仓库
- 在远程服务器拉取变更,重新启动服务器



#### 自动部署

![39-2](D:\学习\wanye\HTML\Egg\Egg + Vue3开发视频网站\笔记\img\39-2.png)



1.如果是私有Git 仓库,需要配置服务器通过SSH 连接GitHub 的权限

```
#生成 SSH key
ssh-keygen -o

#查看并复制公钥(需要自己手动复制)
cat ~/.ssh/id_rsa.pub
```

将 SSH 公钥添加到GitHub 账户中



2.配置GitHub 仓库secrets(github 设置中的secrets 中)

- USERNAME 服务器用户名
- PASSWORD 服务器用户密码
- HOST 服务器主机地址
- PORT 服务器主机端口号
- ACCESSKEYID 阿里云视频点播服务access id
- ACCESSKEYSECRET 阿里云视频点播服务 access key secret



3.编写GitHub Actions 脚本

在项目中的.github 下

```
# .github/workflows/nodejs.yml
name:Node.js CI  #名字

on:
	push:	#push 到master 分支时触发脚本运行
		branches:[master]
	#pull_request: #pull 到master 分支时触发脚本运行
		#branches:[master]
	#schedule:
		#- cron:'0 2 * * *'

jobs:
	build:
		runs-on:${{matrix.os}}
	
	strategy:
		fail-fast:false
		matrix:
			node-version:[10]	#node 版本
			os:[ubuntu-latest]  #系统环境
	
	steps: #执行的脚本步骤
	- name:deploy
	  uses:appleboy/ssh-action@master #引入其他的脚本
	  env: #环境变量
	  	ACCESSKEYID:${{sectrets.ACCESSKEYID}}
	  	ACCESSKEYSECRET:${{sectrets.ACCESSKEYSECRET}}
	  width:
	  	host:${{sectrets.HOST }} #配置
	  	username:${{sectrets.USERNAME}}
	  	#key:${{sectrets.KEY}}
	  	password:${{sectrets.PASSWORD}}
	  	port:${{sectrets.PORT}}
	  	envs:ACCESSKEYID,ACCESSKEYSECRET
	  	script:| #运行的脚本
	  		export ACCESSKEYID=$ACCESSKEYID
	  		export ACCESSKEYSECRET=$ACCESSKEYSECRET
	  		export NVM_DIR="$HOME/.nvm"  #nvm 配置信息
	  		[ -s "$NVM_DIR/nvm.sh"]&& \. "$NVM_DIR/nvm.sh"
	  		[ -s "$NVM_DIR/bash_completion"]&& \. "$NVM_DIR/bash_completion"
	  		cd /root/youtobeclone-backend
	  		git pull origin master
	  		npm install --production
	  		npm run stop
	  		npm run start
```



```
git add .  #在本地当前项目提交本地
git comment -m 'deploy test 部署测试' #提交到缓冲区
git push #提交到远程仓库
```



在github 中与设置并排的actions 显示更新过程