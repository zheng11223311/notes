## 关于Egg.js 应用部署:

https://eggjs.org/zh-cn/core/deployment.html

 框架内置了 [egg-cluster](https://github.com/eggjs/egg-cluster) 来启动 [Master 进程](https://www.eggjs.org/zh-CN/core/cluster-and-ipc#master)，Master 有足够的稳定性，不再需要使用 [pm2](https://github.com/Unitech/pm2) 等进程守护模块。 





## 手动部署

1. 将代码提交到Github 远程仓库
2. 在远程服务器下载Github 远程仓库
3. 启动运行

```
npm i --production  #只安装生产时的依赖,npm i 安装所有依赖
npm i -g nrm --registry=https://registry.npm.taobao.org #nrm 镜像源管理工具,registry 指定安装nrm 库时的使用镜像源
nrm ls #列出所有镜像源
nrm use taobao #使用淘宝镜像源
npm i #使用淘宝镜像下载
npm start #启动项目,具有守护进程,运行在后台
#浏览器访问 http://服务器地址:7001/api/v1/
```

