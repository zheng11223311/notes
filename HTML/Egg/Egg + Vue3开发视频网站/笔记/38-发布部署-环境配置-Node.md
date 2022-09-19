## 准备

- Linux 系统服务器
- 域名(可选)
- 待部署的Node 应用



## 服务器环境配置

- Node.js
- MongoDB
- nginx



这里以Ubuntu 20.04 为例



在进行下面的操作之前先更新软件包:

```
apt update
apt upgrade
```

建议将Ubuntu 镜像源切换为国内镜像地址,比如 清华大学 Ubuntu 镜像源



## 安装 Node

建议使用 `nvm(node version manager node 版本管理器)` 安装和管理 Node 服务

```
curl -o- https://raw.githubusercontent.com/nvm-sh/v0.37.2/install.sh | bash
nvm install 14.15.4 #安装14.15.4 版本node
nvm install 15.8.0 #安装15.8.0 版本node
nvm use 15.8.0  #切换到15.8.0 版本
node --version #查看版本
nvm #查看使用帮助
```

