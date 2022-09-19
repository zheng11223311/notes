 var electron=require('electron')

 var app=electron.app       //引用app
 var BrowserWindow=electron.BrowserWindow   //引用桌面窗口

 var mainWindow=null    //声明要打开的主窗口


 app.on('ready',()=>{   //生命周期函数,监听窗口准备
    mainWindow=new BrowserWindow({
        width:1300,      //窗口的宽
        height:600,      //窗口的高
        webPreferences:{
            nodeIntegration:true,       //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
            contextIsolation:false,     //同上配置,需要设置为false,不写的话,node 相关的库就无法使用,比如require 库,比如fs 库
            enableRemoteModule:true,
        }
    })
    mainWindow.loadFile('remote.html')       //加载应用的界面
    mainWindow.on('closed',()=>{        //监听窗口的关闭
        mainWindow=null         //销毁程序,否则每次打开都会生成占用内存空间
    })
 })

