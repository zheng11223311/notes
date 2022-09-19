官网:[Electron | 使用 JavaScript，HTML 和 CSS 构建跨平台的桌面应用程序。 (electronjs.org)](https://www.electronjs.org/)

中文网:[BrowserWindow (BrowserWindow) - Electron 中文开发手册 - 开发者手册 - 云+社区 - 腾讯云 (tencent.com)](https://cloud.tencent.com/developer/section/1115971)

中文文档:[最近的文件 | Electron (electronjs.org)](https://www.electronjs.org/zh/docs/latest/tutorial/recent-documents)

需要有node 基础

也可以配备vue +Electron

# 目标

- 做一个桌面整理工具,每个分类的界面也是一个新的桌面
- 吸色器
- 客户端脚本
- md 文档
- 密码本
- 网易云音乐
- vip 视频解析





# 项目开发环境搭建

```js
npm init -y			//初始化项目,生成package.json 文件
npm install electron --save-dev  //开发环境下安装electron
//或 使用yarn add electron 安装
npx electron -v		//查看局部安装的electron 版本,npx 使用局部安装的包
npx electron 		//或直接打开electron 界面,打开就是存在
```

Electron 安装失败解决

地址：[ Electron安装失败_mocoe的博客-CSDN博客_electron无法安装](https://blog.csdn.net/mocoe/article/details/86751925)

独设置某个包的镜像，如electron，其镜像： https://npm.taobao.org/mirrors/electron/，命令如下：

```bash
npm config set electron_mirror https://npm.taobao.org/mirrors/electron/

npm install electron --save-dev
```



# 编写项目

在根目录下创建`index.js` 文件 和 `index.html`文件

```js
//index.js
var electron=require('electron')

 var app=electron.app       //引用app
 var BrowserWindow=electron.BrowserWindow   //引用桌面窗口

 var mainWindow=null    //声明要打开的主窗口


 app.on('ready',()=>{   //生命周期函数,监听窗口准备
    mainWindow=new BrowserWindow({
        width:300,      //窗口的宽
        height:300      //窗口的高
    })
    mainWindow.loadFile('index.html')       //加载应用的界面
    mainWindow.on('closed',()=>{        //监听窗口的关闭
        mainWindow=null         //销毁程序,否则每次打开都会生成占用内存空间
    })
 })


```

`index.html`

```html
<!--index.html-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>第一个桌面应用</title>
</head>
<body>
    第一个桌面应用
</body>
</html>
```

`package.json`

```json
{
  "name": "firstelectron",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",		//这里的main 文件要指向上方使用的index.js 入口文件,也是应用的主进程
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
      start:"electron ."		//配置全局 electron 的指令,局部的electron 修改为"npx electron ."
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "dependencies": {
    "electron": "^18.1.0"
  }
}

```

**启动应用**

```js
electron .		//全局下的electron 使用方式启动
npx electron .		//局部安装下的electron 使用方式启动
npm start 			//使用package.json 中配置的命令启动
electron index.js	//直接指定启动文件

chcp 65001 &&electron index.js	// chcp 65001 解决中文乱码问题
```

