 //  此配置文件的修改需要重启app 才能使用修改后的配置
 var electron = require('electron')

 var app = electron.app //引用app
 var BrowserWindow = electron.BrowserWindow //引用桌面窗口
 var ipcMain = electron.ipcMain //引用进程之间的通信模块


 //  监听渲染进程发送过来的事件
 ipcMain.on('one-message', (event, arg) => { //监听传递过来的通信事件,事件名自定义
     event.reply('one-replay', "这是主进程的答复") //回复事件,事件名自定义
     console.log(arg); //显示在cmd 命令行中,默认不是utf-8 字符,需要执行命令chcp 65001 (65001 为utf-8 编码),或在package.json scripts 下配置启动项
     //  "start":"chcp 65001&&eletron .",
 })

 //  监听渲染进程发送过来打开新窗口的事件
 ipcMain.on('one-open-new-window', (event, arg) => {
    createWindow('http://www.baidu.com')
    createWindow('http://www.taobao.com')
 })


 let createWindow = (url) => {      //自定义 创建窗口函数
     let mainWindow1 = new BrowserWindow({
         width: 1300, //窗口的宽
         height: 600, //窗口的高
         webPreferences: {
             nodeIntegration: true, //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
             contextIsolation: false, //同上一起配置,窗口的环境隔离
             enableRemoteModule: true, //允许使用多窗口
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


 app.on('ready', () => { //生命周期函数,监听窗口准备
     mainWindow = new BrowserWindow({
         width: 1300, //窗口的宽
         height: 600, //窗口的高
         webPreferences: {
             nodeIntegration: true, //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
             contextIsolation: false, //同上一起配置,窗口的环境隔离
             enableRemoteModule: true, //允许使用多窗口
             webviewTag: true, //允许在html 上使用webview 标签(即使html 支持webview 标签),不设置webview 没有效果
         }
     })
     mainWindow.loadFile('index.html') //加载应用的界面
     mainWindow.on('closed', () => { //监听窗口的关闭
         console.log('窗口关闭');
         mainWindow = null //销毁程序,否则每次打开都会生成占用内存空间
     })
     mainWindow.webContents.openDevTools(); //打开调试工具

     setTimeout(() => { //延时,主进程创建之后就发送消息过快,页面还没有显示,所以会没有打印主进程发送的消息
         //  主动发送消息给渲染进程(子进程)
         mainWindow.webContents.send('index-message', '创建主进程后,主进程主动发送数据到渲染进程')
     }, 2000)
 })

 app.on('window-all-closed', () => { //  监听所有子程序都关闭时
     if (process.platform !== 'darwin') {
         app.quit() //app 退出
     }
 })

 app.on('activate', () => { //  监听激活程序,即点击了图标开启程序
     if (BrowserWindow.getAllWindows().length === 0) { //开启窗口
         // mainWindow = new BrowserWindow({
         //     width: 1300, //窗口的宽
         //     height: 600, //窗口的高
         //     webPreferences: {
         //         nodeIntegration: true, //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
         //         contextIsolation: false, //同上一起配置,窗口的环境隔离
         //         enableRemoteModule: true, //允许使用多窗口
         //         webviewTag: true, //允许在html 上使用webview 标签(即使html 支持webview 标签),不设置webview 没有效果
         //     }
         // })
         // mainWindow.loadFile('index.html') //加载应用的界面
         // mainWindow.on('closed', () => { //监听窗口的关闭
         //     console.log('窗口关闭');
         //     mainWindow = null //销毁程序,否则每次打开都会生成占用内存空间
         // })
         // mainWindow.webContents.openDevTools(); //打开调试工具
     }
 })