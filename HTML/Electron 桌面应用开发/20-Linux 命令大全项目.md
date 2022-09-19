index.js 不需要修改,不会涉及

```js
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

index.html

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>郑先森的文本编辑器</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        body {
            overflow: hidden;
        }

        #content {
            display: flex;
            font-size: 20px;
            justify-content: space-around;
        }
    </style>
</head>

<body>

    <h1>Linux 命令大全</h1>
    <button>添加命令</button>
    <button>删除命令</button>
    <div id="content"></div>
    <a href="./html/5-Linux.html" target="_blank">链接产生的窗口不能与父窗口通信</a>
    <script>
        const {
            ipcRenderer,
            dialog, //主进程发送和接收事件的模块
        } = require('electron')
        const fs = require('fs')

        function a(cmd) {
            console.log(cmd);
            // 父窗口打开子窗口,直接使用a 标签打开的窗口无法与父窗口通信
            // 不是electron BrowserWindow 创建的窗口不能使用node 库,无法使用fs 读取json 文件
             window.index = window.open('./html/5-Linux.html?cmd=' + cmd, 'popup')
        }

        let json1
        // const re = require('@electron/remote')
        // let BrowserWindow = re.BrowserWindow
        fs.readFile('./json/1-Linux.json', (err, data) => {
            console.log(1);
            if (err) {
                console.log(err);
                alert('发生错误,请重试!!')
                return
            }
            //   console.log(data.toString());
            console.log(JSON.parse(data.toString()));
            let json = JSON.parse(data.toString())
            json[Symbol.iterator] = function () { //为json 添加迭代器,使json 可被迭代
                const keys = Object.keys(this);
                let index = 0;

                return {
                    next: () => { //next 向下遍历的指针
                        return {
                            value: this[keys[index++]], // 每次迭代的结果
                            done: index > keys.length // 迭代结束标识 false停止迭代，true继续迭代
                        };
                    }
                }
            }

            json1=json

            let tmp = ''
            for (const cmd in json) {
                console.log(cmd);
                tmp += `<li onclick="a('${cmd}')">${cmd}</li>`
            }
            content.innerHTML = tmp


        })

        // 监听子窗口事件
        window.addEventListener('message', (msg) => {
            // 监听子窗口创建后发送的消息
            console.log(msg);
            // 向子窗口发送事件
            // window.index.postMessage('发送到子窗口')
            window.index.postMessage(json1)     //将json 数据发送到子窗口
        })
    </script>
</body>

</html>
```

./html/5-Linux.html

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>命令参数</title>
</head>

<body>
    <div class="" id="con"></div>
    <script>
        console.log(location.href);


        let tmp = ''

        con.innerHTML = tmp
        console.log(window);
        window.opener.postMessage('向父窗口发送事件消息,父窗口监听到消息,返回json 数据', '*')

        // 监听窗口事件  父窗口发送过来的消息
        window.addEventListener('message', (msg) => {
            console.log(msg);
            for (const cmd in msg.data) {
                console.log( msg.data);
                console.log(cmd);
                tmp += `<li>${Object.keys(msg.data[cmd])} - ${Object.values((msg.data[cmd]))}</li>`
            }
            con.innerHTML=tmp
        })
    </script>
</body>

</html>
```

./json/1-Linux.json

```json
{
    "cp":{
        "-r":"递归复制"
    },
    "rmdir":{
        "-f":"强制删除"
    }
}
```

