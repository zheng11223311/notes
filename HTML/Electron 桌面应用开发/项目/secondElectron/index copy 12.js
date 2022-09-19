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

     // 远程remote
     require('@electron/remote/main').initialize()
     require("@electron/remote/main").enable(mainWindow.webContents)
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