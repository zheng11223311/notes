 //  此配置文件的修改需要重启app 才能使用修改后的配置
 const {
     app, //引用app
     BrowserWindow, //引用桌面窗口
     net, //自带请求模块
     globalShortcut, //快捷键设置模块
     BrowserView, //引用嵌套网页框架
     Menu, //菜单栏
     ipcMain,
     dialog, //主进程发送和接收事件的模块
 } = require('electron')

 var mainWindow = null //声明要打开的主窗口


//  监听新建文件的保存
 ipcMain.on('saveCreateNewFile', (event) => {
     dialog.showSaveDialog({
         title: "文件另存为",
         //  defaultPath:'文件1',       //默认文件名称
         filters: [{ //默认文件格式,name 保存类型的名称(All Files),extensions 保存类型的类型(*.*)
             name: 'All Files',
             extensions: ['*']
         }, {
             name: 'Text Files',
             extensions: ['txt']
         }]
     }).then(filename => {
         console.log(filename);
         mainWindow.webContents.send('saveOtherFile', filename)
     })
 })

 //  导航菜单栏
 let menuTmp = [{
         label: '文件', //主标签
         submenu: [{
                 label: "新建文件",
                 accelerator: 'ctrl+n',
                 click: () => {
                     mainWindow.webContents.send('createNewFile')
                 }
             },
             {
                 label: "打开文件",
                 accelerator: 'ctrl+o',
                 click: () => {

                     dialog.showOpenDialog({
                         properties: ['openFile'], //属性,打开文件
                     }).then(result => {
                         mainWindow.webContents.send('openFile', result.filePaths, result.canceled)
                         //    console.log(result.filePaths);     //文件路径
                         //    console.log(result.canceled);      //是否取消
                     })
                 }
             },
             {
                 label: "保存文件",
                 accelerator: 'ctrl+s',
                 click: () => {
                     mainWindow.webContents.send('saveFile')
                 }
             },
             {
                 label: "文件另存为",
                 accelerator: 'ctrl+s+shift',
                 click: () => {
                     dialog.showSaveDialog({
                         title: "文件另存为",
                         //  defaultPath:'文件1',       //默认文件名称
                        //  列出可选文件格式
                         filters: [{ //默认文件格式,name 保存类型的名称(All Files),extensions 保存类型的类型(*.*)
                             name: 'All Files',
                             extensions: ['*']
                         }, {
                             name: 'Text Files',
                             extensions: ['txt']
                         }]
                     }).then(filename => {
                         console.log(filename);
                         mainWindow.webContents.send('saveOtherFile', filename)
                     })

                 }
             },
             {
                label: "退出",
                accelerator: 'ctrl+alt+z',
                click: () => {
                   mainWindow.close()
                }
            },
         ]
     },
     {
         label: '编辑', //主标签
         submenu: [{
                 role: 'undo',
                 label: '撤回',
             }, //role 使用原生封装好的功能,撤回功能
             {
                 type: 'separator'
             },
             {
                 role: 'redo',
                 label: '反撤回',
             },
             {
                 role: 'paste',
                 label: '粘贴',
             },
             {
                 role: 'cut',
                 label: '剪切',
             },
             {
                 role: 'copy',
                 label: '复制',
             },
         ]
     },

     {
         label: '视图',
         submenu: [

         ]
     },
     {
         label: '帮助',
         submenu: [

         ]
     }
 ]


 //  替换掉原生的导航栏菜单
 var m = Menu.buildFromTemplate(menuTmp) //构建
 Menu.setApplicationMenu(m) //使用导航栏


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





 app.on('will-quit', () => { //当所有窗口已关闭并且应用程序都已经退出时发出

 })


 //  等同于 app.whenReady().then(createWindow)
 app.on('ready', () => { //生命周期函数,监听窗口准备

     mainWindow = new BrowserWindow({
         width: 1300, //窗口的宽
         height: 600, //窗口的高
         backgroundColor: '#ccc', //窗口的背景颜色
         //  icon:path.join(__dirname,'./img/favicon.ico'),   //窗口的图标
         icon: './img/favicon.ico', //窗口的图标
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

     //      setTimeout(()=>{ //延时,主进程创建之后就发送消息过快,页面还没有显示,所以会没有打印主进程发送的消息
     //         mainWindow.webContents.send('newindex', '主窗口发送事件111')
     //    },4000)


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