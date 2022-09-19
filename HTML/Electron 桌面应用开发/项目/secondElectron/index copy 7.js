 //  此配置文件的修改需要重启app 才能使用修改后的配置
 const {
     app, //引用app
     BrowserWindow, //引用桌面窗口
     net
 } = require('electron')






 let createWindow = (url) => { //自定义 创建窗口函数
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

    //  let request = net.request('http://www.baidu.com') //net 模块必须放在app 已经准备好后的函数中
    //  request.on('response', (response) => { //监听响应
    //      console.log(response.statusCode); //状态码
    //      console.log(JSON.stringify(response.headers)); //请求头
    //      response.on('data', (chunk) => { //监听响应的数据
    //          console.log(chunk.toString());        //chunk 是二进制数据,使用toString 输出,输出在命令行中
    //      })
    //  })
    //  request.end();         //要标明结束,这个请求函数才会发出请求

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