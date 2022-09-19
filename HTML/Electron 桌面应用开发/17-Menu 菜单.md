# 菜单模块

进程:主进程

# 原生应用菜单,使用在主进程

Menu 可以分为两种菜单,分别是`原生应用菜单`和`上下文菜单`

```js
 const {
     app, //引用app
     BrowserWindow, //引用桌面窗口
     net, //自带请求模块
     globalShortcut, //快捷键设置模块
     BrowserView, //引用嵌套网页框架
     Menu,  //菜单栏
 } = require('electron')


 var temp=[
     {
         label:'王泽荣耀',  //主标签
         submenu:[      //主标签点击后展开的子标签
             {
                 label:'诸葛亮',
                 //  快捷键
                //  accelerator:'CommandOrControl+n',
                //  accelerator:'ctrl+n',
                 click:()=>{
                    mainWindow11 = new BrowserWindow({
                        width: 1300, //窗口的宽
                        height: 600, //窗口的高
                        backgroundColor: '#ccc', //窗口的背景颜色
                        webPreferences: {
                            nodeIntegration: true, //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
                            contextIsolation: false, //同上一起配置,窗口的环境隔离
                            enableRemoteModule: true, //允许使用多窗口
                            webviewTag: true, //允许在html 上使用webview 标签(即使html 支持webview 标签),不设置webview 没有效果
                        }
                    })
                    mainWindow11.loadFile('index.html') //加载应用的界面
                    mainWindow11.on('closed', () => { //监听窗口的关闭
                        console.log('窗口关闭');
                        mainWindow11 = null //销毁程序,否则每次打开都会生成占用内存空间
                    })
                    mainWindow11.webContents.openDevTools(); //打开调试工具
                 }
             }
         ]
     },
     {
         label:'第二个选项',
         submenu:[
             {label:'子选项一'},
             {label:'子选项二'}
         ]
     }
 ]

//  替换掉原生的导航栏菜单
 var m =Menu.buildFromTemplate(temp)    //构建
 Menu.setApplicationMenu(m)     //使用导航栏


//  设置为false 或null 取消原生的导航栏
//  Menu.setApplicationMenu(false)      
//  Menu.setApplicationMenu(null)
```

index.js

```js
 //  此配置文件的修改需要重启app 才能使用修改后的配置
 const {
     app, //引用app
     BrowserWindow, //引用桌面窗口
     net, //自带请求模块
     globalShortcut, //快捷键设置模块
     BrowserView, //引用嵌套网页框架
     Menu,  //菜单栏
 } = require('electron')


 var temp=[
     {
         label:'王泽荣耀',  //主标签
         submenu:[      //主标签点击后展开的子标签
             {
                 label:'诸葛亮',
                 //  快捷键
                //  accelerator:'CommandOrControl+n',
                //  accelerator:'ctrl+n',
                 click:()=>{
                    mainWindow11 = new BrowserWindow({
                        width: 1300, //窗口的宽
                        height: 600, //窗口的高
                        backgroundColor: '#ccc', //窗口的背景颜色
                        webPreferences: {
                            nodeIntegration: true, //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
                            contextIsolation: false, //同上一起配置,窗口的环境隔离
                            enableRemoteModule: true, //允许使用多窗口
                            webviewTag: true, //允许在html 上使用webview 标签(即使html 支持webview 标签),不设置webview 没有效果
                        }
                    })
                    mainWindow11.loadFile('index.html') //加载应用的界面
                    mainWindow11.on('closed', () => { //监听窗口的关闭
                        console.log('窗口关闭');
                        mainWindow11 = null //销毁程序,否则每次打开都会生成占用内存空间
                    })
                    mainWindow11.webContents.openDevTools(); //打开调试工具
                 }
             }
         ]
     },
     {
         label:'第二个选项',
         submenu:[
             {label:'子选项一'},
             {label:'子选项二'}
         ]
     }
 ]

//  替换掉原生的导航栏菜单
 var m =Menu.buildFromTemplate(temp)    //构建
 Menu.setApplicationMenu(m)     //使用导航栏


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

index.html 不需要



# 上下文菜单,使用在渲染进程中

[Menu | Electron (electronjs.org)](https://www.electronjs.org/docs/latest/api/menu)

index.html

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

    <script>
        const {
            Menu,
            MenuItem,
            BrowserWindow,
            getCurrentWindow
        } = require('@electron/remote')

        console.log(Menu,
            MenuItem,
            BrowserWindow,
            getCurrentWindow);

        window.addEventListener('contextmenu', (e) => {
            e.preventDefault()
            // 创建上下文菜单
            const template = [{
                    label: 'Menu Item 1',
                    click: () => {
                        // event.sender.send('context-menu-command', 'menu-item-1')
                        console.log('点击');
                    }
                },
                {
                    // 分割线
                    type: 'separator'
                },
                {
                    label: 'Menu Item 2',
                    type: 'checkbox',
                    checked: true
                }
                ,
                {
                    label: '注册快捷键',
                    // 注册快捷键
                    // 目前好像需要和主进程1通信才能使用快捷键
                    accelerator:'CommandOrControl+n',   //在菜单选项旁边写着ctrl+n
                    // 点击触发回调
                    click:()=>{
                        console.log('CommandOrControl+n');
                    }
                }
            ]

            const menu = Menu.buildFromTemplate(template)
            // menu.popup({window:getCurrentWindow()})     //作用在当前渲染窗口

            // 或 追加形式
            // const menu=new Menu()
            //  menu.append(new MenuItem({   //添加菜单
            //         label: 'Menu Item 1',
            //         click: () => {
            //             // event.sender.send('context-menu-command', 'menu-item-1')
            //             console.log('点击');
            //         }
            //     }))
            //     menu.append(new MenuItem({
                // 分割线
            //         type: 'separator'
            //     }))
            //     menu.append(new MenuItem({
            //         label: 'Menu Item 2',
            //         type: 'checkbox',
            //         checked: true
            //     }))
            //     menu.append(new MenuItem({
            //         label: 'Menu Item 2',
            //         type: 'checkbox',
            //         checked: true
            //     }))
            // menu.popup({window:getCurrentWindow()})     //作用在当前渲染窗口
        },false)
    </script>
</body>

</html>
```

index.js ,与渲染进程通信需要使用remote 模块

```js
 //  此配置文件的修改需要重启app 才能使用修改后的配置
 const {
     app, //引用app
     BrowserWindow, //引用桌面窗口
     net, //自带请求模块
     globalShortcut, //快捷键设置模块
     BrowserView, //引用嵌套网页框架
     Menu,  //菜单栏
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
         backgroundColor: '#ccc', //窗口的背景颜色
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
```

