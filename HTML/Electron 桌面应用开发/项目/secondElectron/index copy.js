 
//  此配置文件的修改需要重启app 才能使用修改后的配置
 var electron = require('electron')

 var app = electron.app //引用app
 var BrowserWindow = electron.BrowserWindow //引用桌面窗口

 var mainWindow = null //声明要打开的主窗口


 app.on('ready', () => { //生命周期函数,监听窗口准备
    //  const mainWindow = new BrowserWindow({
    //      width: 800,
    //      height: 1500
    //  })
    //  mainWindow.loadURL('https://github.com')        //加载远程的文件

    //  const contents = mainWindow.webContents
    //  console.log(contents)


     mainWindow = new BrowserWindow({
         width: 1300, //窗口的宽
         height: 600, //窗口的高
         webPreferences: {
             nodeIntegration: true, //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
             contextIsolation: false, //同上一起配置,窗口的环境隔离
             enableRemoteModule: true,
         }
     })
     mainWindow.loadFile('index.html') //加载应用的界面
     mainWindow.on('closed', () => { //监听窗口的关闭
        console.log('窗口关闭');
         mainWindow = null //销毁程序,否则每次打开都会生成占用内存空间
     })
     mainWindow.webContents.openDevTools(); //打开调试工具
 })