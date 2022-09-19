index.js

```js
 
//  此配置文件的修改需要重启app 才能使用修改后的配置
 var electron = require('electron')

 var app = electron.app //引用app
 var BrowserWindow = electron.BrowserWindow //引用桌面窗口

 var mainWindow = null //声明要打开的主窗口


 app.on('ready', () => { //生命周期函数,监听窗口准备
     mainWindow = new BrowserWindow({
         width: 1300, //窗口的宽
         height: 600, //窗口的高
         webPreferences: {
             nodeIntegration: true, //允许所有的node 库运行,不写的话node 相关的库就无法使用,是否完整支持node. 默认为 true.
             contextIsolation: false, //同上一起配置,窗口的环境隔离
             enableRemoteModule: true,  //允许使用多窗口
             webviewTag:true,       //允许在html 上使用webview 标签(即使html 支持webview 标签),不设置webview 没有效果
         }
     })
     mainWindow.loadFile('index.html') //加载应用的界面
     mainWindow.on('closed', () => { //监听窗口的关闭
        console.log('窗口关闭');
         mainWindow = null //销毁程序,否则每次打开都会生成占用内存空间
     })
     mainWindow.webContents.openDevTools(); //打开调试工具
 })
```

index.js

```js
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>文件拖动</title>
    <style>
      .wv{
          width: 640px;
          height: 480px;
      }
    </style>
</head>
<body>
        <!--preload 在网页中插入js-->
   <webview class="wv" src="http:120.24.51.158/kwmusic" preload="one.js"></webview>
   <script src="js/2-webview.js"></script>
</body>
</html>
```

2-webview.js

```js
const wv = document.querySelector('.wv')

// https://www.electronjs.org/zh/docs/latest/api/browser-view webview 操作文档
wv.addEventListener('did-start-loading', () => {
    console.log('正在加载...');
})
wv.addEventListener('did-stop-loading', () => {
    console.log('加载完毕...');
    console.log(wv); //显示其标签内容
    console.log([wv]); //将其放入数组中,以详细信息显示,不会打印出它的标签
    wv.insertCSS(`.user[data-v-b306024c]{background:red!important}`) //对webview 内的html 进行样式的设置
    setTimeout(() => {
        let input = document.querySelector('input')
        input.value = '沈园外'
    }, 2000)
    wv.executeJavaScript('alert("aaaaa")'); //执行自定义javascript 脚本,也可以使用path 库,导入指定路径中的脚本文件内容
    wv.executeJavaScript(`
                setTimeout(()=>{
                    let input=document.querySelector('input')
                    input.value='沈园外'
                },2000)
    `);
    wv.openDevTools();	//打开webview 的调试工具
})
```

