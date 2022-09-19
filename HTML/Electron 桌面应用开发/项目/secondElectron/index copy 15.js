 //  此配置文件的修改需要重启app 才能使用修改后的配置
 const {
     app, //引用app
     BrowserWindow, //引用桌面窗口
     net, //自带请求模块
     globalShortcut, //快捷键设置模块
     BrowserView, //引用嵌套网页框架
     Menu,  //菜单栏
 } = require('electron')
 const path =require('path')


//  var temp=[
//      {
//          label:'王泽荣耀',  //主标签
//          submenu:[      //主标签点击后展开的子标签
//              {
//                  label:'诸葛亮',
//                 //  快捷键
//                 //  accelerator:'CommandOrControl+n',
//                 //  accelerator:'ctrl+n',
//                  click:()=>{
//                     mainWindow11 = new BrowserWindow({
//                         width: 1300, //窗口的宽
//                         height: 600, //窗口的高
//                         backgroundColor: '#ccc', //窗口的背景颜色
//                         icon:path.join(__dirname,'./img/favicon.ico'),   //窗口的图标
//                         webPreferences: {
//                             nodeIntegration: true, //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
//                             contextIsolation: false, //同上一起配置,窗口的环境隔离
//                             enableRemoteModule: true, //允许使用多窗口
//                             webviewTag: true, //允许在html 上使用webview 标签(即使html 支持webview 标签),不设置webview 没有效果
//                         }
//                     })
//                     mainWindow11.loadFile('index.html') //加载应用的界面
//                     mainWindow11.on('closed', () => { //监听窗口的关闭
//                         console.log('窗口关闭');
//                         mainWindow11 = null //销毁程序,否则每次打开都会生成占用内存空间
//                     })
//                     mainWindow11.webContents.openDevTools(); //打开调试工具
//                  }
//              }
//          ]
//      },
//      {
//          label:'第二个选项',
//          submenu:[
//              {label:'子选项一'},
//              {label:'子选项二'}
//          ]
//      }
//  ]

// //  替换掉原生的导航栏菜单
//  var m =Menu.buildFromTemplate(temp)    //构建
//  Menu.setApplicationMenu(m)     //使用导航栏

// Menu.setApplicationMenu(false)  //设置为空,即没有导航栏

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
         backgroundColor: '#ccc', //窗口的背景颜色
        //  icon:path.join(__dirname,'./img/favicon.ico'),   //窗口的图标
         icon:'./img/favicon.ico',   //窗口的图标
         webPreferences: {
             nodeIntegration: true, //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
             contextIsolation: false, //同上一起配置,窗口的环境隔离
             enableRemoteModule: true, //允许使用多窗口
             webviewTag: true, //允许在html 上使用webview 标签(即使html 支持webview 标签),不设置webview 没有效果
         }
     })
    //  与子窗口保持通信,主进程与渲染进程通信必写
     require('@electron/remote/main').initialize()
     require("@electron/remote/main").enable(mainWindow.webContents)

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