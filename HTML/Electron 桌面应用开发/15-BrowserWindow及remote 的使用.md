# 渲染进程调用主进程模块(remote)

进程:渲染进程

remote 模块帮助我们在渲染进程中调用主进程模块,根据官方的说法,remote 模块返回的对象(函数),是一个远程对象(函数),它不是简单的在渲染进程中创建一个新的对象实例,而是通知到主进程创建新的对象,随后发送到渲染进程,这种机制保证了主进程与渲染进程公用一个对象(内存),同步了进程消息

在渲染进程通过调用remote 模块获取browserWindow 对象打开新的窗口加载新的页面

# Electron最新版remote问题version:^15.1.2

- 在Electron14之后内置remote模块已经被移除，用`enableRemoteModule`开启`remote`也不能用了，解决方法如下：
- 使用` @electron/remote`模块替代
- 使用姿势：
- 先`npm`引入

```js
npm install --save @electron/remote
```

- 在`主进程`中`初始化`并`开启`模块,其中`mainWindow`为主窗口实例,注意使用以下代码的第二条开启模块，网上找了一圈都还停留在使用`enableRemoteModule`开启(无效)

```js
require('@electron/remote/main').initialize()
require("@electron/remote/main").enable(mainWindow.webContents)
```

- 在`渲染进程`中引入就可以开心得编程啦

```js
const {BrowserWindow}=require('@electron/remote')
```

- 完整代码

主进程：

```js
const { app, BrowserWindow} = require('electron')

app.on('ready', () => {
  let mainWindow = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false,   
    }
  })
  require('@electron/remote/main').initialize()
  require("@electron/remote/main").enable(mainWindow.webContents)
  mainWindow.loadFile('index.html')
  mainWindow.webContents.openDevTools();
 
})
```

渲染进程：

```js
const {BrowserWindow}=require('@electron/remote')

window.addEventListener('DOMContentLoaded', () => {
    document.getElementById('node-version').innerHTML = process.versions.node+'打开新的窗口'
    document.getElementById('send').addEventListener('click', () => {
        let win = new BrowserWindow({
            width: 800,
            height: 600,
        })
        win.loadURL('https://www.baidu.com')
        win.on('closed', () => { //监听窗口的关闭
         console.log('窗口关闭');
         win = null //销毁程序,否则每次打开都会生成占用内存空间
     })
    })
   
})
```

# Window open 对象

**文档:[BrowserWindow | Electron (electronjs.org)](https://www.electronjs.org/docs/latest/api/browser-window)**



使用浏览器的window 对象也可以实现打开窗口并发送消息

index.html	主窗口

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>文件拖动</title>
    <style>
        .wv {
            width: 640px;
            height: 480px;
        }
    </style>
</head>

<body>
    <button onclick="openWindow()">弹出子窗口</button>
    <button onclick="closeWindow()">关闭子窗口</button>
    <script>
       let index
       function openWindow() {
        //    index=window.open('https://www.baidu.com','popup')   //popup 弹出, _blank 新开窗口,a 标签也可以开启新窗口
        index=window.open('index copy 11-popup.html','popup')   
       }
       function closeWindow() {
           index.close();

        }

        // 监听发送事件  message 
       window.addEventListener('message',(msg)=>{
           console.log('接收到的消息, ',msg);
       })
        //window.open打开新页面时需要一些时间来加载，直接window.open.postMessage有可能页面没加载完就发送，子页面的事件监听尚未设置，消息传输失败。
         window.open('xxx').onload = () => {
            otherWindow.postMessage(message, targetOrigin, [transfer]);
        }
         
           // 打开子窗口
	window.popupwin  = window.open(url, vArguments, sFeatures)
        //监听到子页面的message消息后，向子页面发送参数（子窗口打开后，会向当前窗口发送message消息，当前窗口监听到子窗口发送的消息后，向子窗口发消息）
       window.addEventListener('message', function (e) {
		window.popupwin.postMessage({type:'message', 'vArguments':vArguments}, '*');
	})
    </script>
</body>

</html>
```

index copy 11-popup.html     子窗口

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>remote 打开窗口</title>
    <style>
        .wv {
            width: 640px;
            height: 480px;
        }
    </style>
</head>

<body>
    这是新开的子窗口
    <button onclick="sendMsg()">向父窗口发送消息</button>
    <script>
      function sendMsg(){
          window.opener.postMessage('我是子窗口哦!')
          window.opener.postMessage({   //上方方法不会被覆盖
              type:1,   //对象里面自定义的属性可以为type123
              message1:'我是子窗口哦!-也可以发送一个对象'
          })
      }
    </script>
</body>

</html>
```

index.js 没有变化

# BrowserWindow

**使用方法**

```js
//  等同于 app.whenReady().then(createWindow)
 app.on('ready', () => { //生命周期函数,监听窗口准备

     mainWindow = new BrowserWindow({
         width: 1300, //窗口的宽
         height: 600, //窗口的高
         backgroundColor:'#ccc',    //窗口的背景颜色
         webPreferences: {
             nodeIntegration: true, //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
             contextIsolation: false, //同上一起配置,窗口的环境隔离
             enableRemoteModule: true, //允许使用多窗口
             webviewTag: true, //允许在html 上使用webview 标签(即使html 支持webview 标签),不设置webview 没有效果
         }
     })
    //  创建子窗口
    //  let childWindow = new BrowserWindow({      //配置与主窗口一致,但是要指定父窗口是谁,否则就是一个没有关联的窗口
    //      width: 1300, //窗口的宽
    //      height: 600, //窗口的高
    //      parent:mainWindow      //指定父窗口
    //  })

    //  childWindow.show()     //显示窗口,不写默认也是显示窗口
    //  mainWindow.show()      //先显示子窗口,后显示父窗口


    // 创建带有模态框的子窗口,存在模态框的子窗口下不允许操作父窗口,只有关闭模态框才能操作父窗口
    let childWindow1 = new BrowserWindow({     
        width: 1300, //窗口的宽
        height: 600, //窗口的高
        parent:mainWindow,      //指定父窗口
        modal:true,
        // x:1,
        // y:1,        //新窗口在桌面上生成的位置坐标
        center:true,    //新窗口在桌面上生成的位置坐标,在中间位置,默认
        // ..... 方法
    })
})
```

index.js

```js
 //  此配置文件的修改需要重启app 才能使用修改后的配置
 const {
     app, //引用app
     BrowserWindow, //引用桌面窗口
     net, //自带请求模块
     globalShortcut, //快捷键设置模块
 } = require('electron')




 let createWindow = (url) => { //自定义 创建窗口函数
     let mainWindow1 = new BrowserWindow({
         width: 1300, //窗口的宽
         height: 600, //窗口的高
         webPreferences: {
             nodeIntegration: true, //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
             contextIsolation: false, //同上一起配置,窗口的环境隔离
             enableRemoteModule: true, //允许使用多窗口remote
             webviewTag: true, //允许在html 上使用webview 标签(即使html 支持webview 标签),不设置webview 没有效果
         }
     })
     //  mainWindow1.loadFile('html/3-opennewwindow.html') //加载应用的界面
     mainWindow1.loadURL(url) //加载远程资源
     mainWindow1.on('closed', () => { //监听子窗口的关闭
         console.log('窗口关闭');
         mainWindow1 = null //销毁程序,否则每次打开都会生成占用内存空间
     })
     mainWindow1.webContents.openDevTools(); //打开调试工具
 }



 var mainWindow = null //声明要打开的主窗口

 app.on('will-quit', () => { //当所有窗口已关闭并且应用程序都已经退出时发出

 })


 //  等同于 app.whenReady().then(createWindow)
 app.on('ready', () => { //生命周期函数,监听窗口准备

     mainWindow = new BrowserWindow({
         width: 1300, //窗口的宽
         height: 600, //窗口的高
         backgroundColor:'#ccc',    //窗口的背景颜色
         webPreferences: {
             nodeIntegration: true, //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
             contextIsolation: false, //同上一起配置,窗口的环境隔离
             enableRemoteModule: true, //允许使用多窗口
             webviewTag: true, //允许在html 上使用webview 标签(即使html 支持webview 标签),不设置webview 没有效果
         }
     })
    //  创建子窗口
    //  let childWindow = new BrowserWindow({      //配置与主窗口一致,但是要指定父窗口是谁,否则就是一个没有关联的窗口
    //      width: 1300, //窗口的宽
    //      height: 600, //窗口的高
    //      parent:mainWindow      //指定父窗口
    //  })

    //  childWindow.show()     //显示窗口,不写默认也是显示窗口
    //  mainWindow.show()      //先显示子窗口,后显示父窗口


    // 创建带有模态框的子窗口,存在模态框的子窗口下不允许操作父窗口,只有关闭模态框才能操作父窗口
    let childWindow1 = new BrowserWindow({     
        width: 1300, //窗口的宽
        height: 600, //窗口的高
        parent:mainWindow,      //指定父窗口
        modal:true,
        // x:1,
        // y:1,        //新窗口在桌面上生成的位置坐标
        center:true,    //新窗口在桌面上生成的位置坐标,在中间位置,默认
        // ..... 方法
    })



     mainWindow.loadFile('index.html') //加载应用的界面
     mainWindow.on('closed', () => { //监听窗口的关闭
         console.log('窗口关闭');
         mainWindow = null //销毁程序,否则每次打开都会生成占用内存空间
     })
     mainWindow.webContents.openDevTools(); //打开调试工具


 })

 app.on('window-all-closed', () => { //  监听所有子程序都关闭时
     if (process.platform !== 'darwin') {
         app.quit() //app 退出
     }
 })

 app.on('activate', () => { //  监听激活程序,即点击了图标开启程序
     if (BrowserWindow.getAllWindows().length === 0) { //开启窗口

     }
 })
```

index.html 不需要，空白窗口也可以

