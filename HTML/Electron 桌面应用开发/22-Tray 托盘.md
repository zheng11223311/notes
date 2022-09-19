# Tray

## [概览](https://www.electronjs.org/zh/docs/latest/tutorial/tray#概览)

当前指南将带领你创建 [Tray](https://www.electronjs.org/docs/api/tray) 图标, 并且其拥有系统通知区域的独立上下文菜单

在 MacOS 和 Ubuntu, 托盘将位于屏幕右上角上，靠近你的电池和 wifi 图标。 在 Windows 上，托盘通常位于右下角。

## [示例](https://www.electronjs.org/zh/docs/latest/tutorial/tray#示例)

### [main.js](https://www.electronjs.org/zh/docs/latest/tutorial/tray#mainjs)

首先，我们需要从 `electron` 导入 `app`, `Tray`, `Menu`, `nativeImage`

```js
const { app, Tray, Menu, nativeImage } = require('electron')
```

复制

下一步我们将创建托盘。 要做到这一点，我们将使用一个 [`NativeImage`](https://www.electronjs.org/docs/api/native-image) 图标， 可以通过其中任一方法创建 [methods](https://www.electronjs.org/docs/api/native-image#methods)。 请注意，我们将托盘创建代码包装在一个 [`app.whenReady`](https://www.electronjs.org/docs/api/app#appwhenready) ，因为我们需要等待 electron 应用完成初始化

**main.js**

```js
let tray

app.whenReady().then(() => {
  const icon = nativeImage.createFromPath('path/to/asset.png')
  tray = new Tray(icon)

  // 注意: 你的 contextMenu, Tooltip 和 Title 代码需要写在这里!
})
```



太好了！ 现在我们可以开始将上下文菜单附加到我们的托盘上，就像这样：

```js
const contextMenu = Menu.buildFromTemplate([
  { label: 'Item1', type: 'radio' },
  { label: 'Item2', type: 'radio' },
  { label: 'Item3', type: 'radio', checked: true },
  { label: 'Item4', type: 'radio' }
])

tray.setContextMenu(contextMenu)
```



上面的代码将在上下文菜单中创建4个单独的 radio-type 单选类型项。 要阅读更多关于构建原生菜单的信息，请点击 [这里](https://www.electronjs.org/docs/api/menu#menubuildfromtemplatetemplate)

最后，让我们给我们的托盘一个工具提示和标题。

```js
tray.setToolTip('This is my application')
tray.setTitle('This is my title')
```



## [结论](https://www.electronjs.org/zh/docs/latest/tutorial/tray#结论)

在启动应用后，你应该看到屏幕的顶部或底部右侧的托盘， 具体位置取决于操作系统。 `fiddle docs/latest/fiddles/native-ui/tray`



文档 : [系统托盘 | Electron (electronjs.org)](https://www.electronjs.org/zh/docs/latest/api/tray)



# 示例

index.js

```js
 //  此配置文件的修改需要重启app 才能使用修改后的配置
 const {
     app, //引用app
     BrowserWindow, //引用桌面窗口
     net, //自带请求模块
     globalShortcut, //快捷键设置模块
     BrowserView, //引用嵌套网页框架
     Menu, //菜单栏
     ipcMain, //主进程与渲染进程之间的通信
     dialog, //主进程发送和接收事件的模块
     Tray, //托盘,右下角靠近电池的位置
     nativeImage, //与tray 一同使用
 } = require('electron')

 var mainWindow = null //声明要打开的主窗口



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
         //  backgroundColor: '#ccc', //窗口的背景颜色
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
     let tray
    //  如果图片不存在,则托盘为透明空白
     const icon = nativeImage.createFromPath('.\\img\\favicon.ico')
     tray = new Tray(icon)

     const contextMenu = Menu.buildFromTemplate([{
             label: 'Item1',
             type: 'radio'
         },
         {
             label: 'Item2',
             type: 'radio'
         },
         {
             label: 'Item3',
             type: 'radio',
             checked: true
         },
         {
             label: 'Item4',
             type: 'radio'
         }
     ])

     tray.setContextMenu(contextMenu)

     tray.setToolTip('This is my application')
     tray.setTitle('This is my title')

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

index.html 无需修改

