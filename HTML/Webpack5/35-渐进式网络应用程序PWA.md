### 1.非离线环境下运行

浏览器实现类似原生应用程序的体验

到目前位置,我们一直是直接查看本地文件系统的输出结果,通常情况下,真正的用户时通过网络访问web app;

用户的浏览器会与一个提供所需资源(例如, .html , .js 和 .css 文件)的server 通讯

我们通过搭建一个拥有更多基础特性的server 来测试下这种离线体验,这里使用`http-server`  package:

```
npm install http-server --save-dev 
```

还要修改`package.json`的`scripts`部分,来添加一个`start`script:

`package.json`

```json
{
	...
    "scripts":{
        "start":"http-server dist",		//启动dist 目录为根目录
    }
}
```

注意:默认情况下,`webpack DevServer `会写入到内存,我们需要启用`devServer.devMiddleware.writeToDisk`配置项,来让http-server 处理`./dist`目录中的文件

```js
devServer:{
    devMiddleware:{
        writeToDisk:true,		//写入到硬盘(文件)里,再次启动服务会保存修改后的文件,默认是写入到内存中,文件不会被修改
    }
}
```

如果你之前没有操作过,先运行命令

```
npm run build
```

来构建你的项目,然后运行命令:

```
npm start
```

应该产生以下输出:

```
http-server dist

Starting up http-server,serving dist
Available on:
http://127.0.0.1:8080
```

http-server 和devServer 都是非离线环境下运行,即停止服务器后就不能访问

### 2.添加workbox

workbox 可以离线环境下运行

添加workbox-webpack-plugin 插件,然后调整`webpack.config.js`文件:

```
npm install workbox-webpack-plugin --save-dev
```

`webpack.config.js`

```js
const path=require('path')
const HtmlWebpackPlugin=require('html-webpack-plugin')
const WorkboxWebpackPlugin=require('workbox-webpack-plugin')

module.exports={

    entry:{		//打包成单独的 main.js 和lodash 文件
        main:'./stc/index.js'
    }
    
    plugins:{		//插件
        new HtmlWebpackPlugin({			//根据自己的模板生成index.html 文件
    	}),
        new WorkboxWebpackPlugin.GenerateSW({
            //这些选项帮助快速启用 ServiceWorkers
            //不允许遗留任何"旧的" ServiceWorkers
            clientsCliam:true,
            skipWaiting:true,
        })
       
	},
        output:{
            filename:'[name].bundle.js',
            path:path.resolve(__dirname,'dist'),
            clean:true,		//清除之前打包的dist 文件夹
        }
}
```

执行`npx webpack`

会生成service-worker.js 和workbox. ... .js

### 3.注册 Service Worker

接下来我们注册Service Worker,使其出场并开始表演,通过添加以下注册代码来完成此操作:

**index.js**

```js
//...

if("serviceWorker" in navigator){
    window.addEventListener('load',()={
        navigator.serviceWorker.register('./service-worker.js').then(registeration=>{
        console.log('SW registered :',registeration)
    	}).catch(registerationError=>{
        console.log('SW registeration failed: ',registerationError)
    	})
    })	
}
```

再次运行`npx webpack`来构建包含注册代码版本的应用程序,然后用`npm start`启动服务.访问`http://localhost:8080`并查看console 控制台,在哪里你应该看到:

```
SW registered
```

现在来进行测试,停止server 并刷新页面,如果浏览器能够支持service Worker , 应该可以看到你的应用程序还在正常运行,然而,server 已经停止serve 整个dist 文件夹,此刻是Service Worker 在进行serve
