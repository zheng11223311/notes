## 1-使用 Yapi 管理接口

Yapi 是高效,易用,功能强大的 api 管理平台,旨在为开发,产品,测试人员提供更优雅的接口管理服务,可以帮助开发者轻松创建,发布,维护API ,Yapi 还为用户提供了优秀的交互体验,开发人员只需要利用平台提供的接口数据写入工具以及简单的点击操作就可以实现接口管理



- GitHub 仓库: https://github.com/YMFE/yapi
- 体验地址: https://yapi.baidu.com/
- 文档: https://hellosean1025.github.io/yapi



## 安装

### 方式一. 可视化部署[推荐]

执行 yapi server 启动可视化部署程序，输入相应的配置和点击开始部署，就能完成整个网站的部署。部署完成之后，可按照提示信息，执行 node/{网站路径/server/app.js} 启动服务器。在浏览器打开指定url, 点击登录输入您刚才设置的管理员邮箱，默认密码(ymfe.org) 登录系统（默认密码可在个人中心修改）。

```bash
npm install -g yapi-cli --registry https://registry.npm.taobao.org
yapi server
```

在浏览器打开  [http:127.0.0.1:9090](http://127.0.0.1:9090/)  访问。非本地服务器，请替换成指定的域名或ip



## 目前无法使用,直接跳过