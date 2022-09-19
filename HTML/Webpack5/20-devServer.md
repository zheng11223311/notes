### 1.derServer

开发环境下,我们往往需要启动一个Web 服务,方便我们模拟一个用户从浏览器中我们的Web 服务器,读取我们的打包产物,以观测我们的代码在客户端的表现,webpack 内置了这样的功能,我们只需要简单的配置就可以开启它

在此之前,我们需要安装它

```
yarn add -D webpack-dev-server
```

devServer.proxy 基于强大的中间件`http-proxy-middleware`实现的,因此它支持很多的配置,我们基于此,可以做应对大多数的开发场景的定制化配置

基础使用:

webpack.config.js 配置

```js
const path =require('path')

module.exports={
    //...
    devServer:{
        //static:{	//默认是把 /dist 当作web 服务的根目录
        //    directory:path.join(__dirname,'dist'),
        //},
        static:path.join(__dirname,'dist'),
        compress:true,	//可选择开启gzips 压缩功能,对应静态资源请求的响应头里的Content-Encoding:gzip
        port:3000,	//端口号,没有配置时默认为8080
    }
}
```

为了方便,我们配置一下工程的脚本命令,在package.json 的scripts 里

```json
{
    //...
    "scripts":{
        //...
        "dev":"webpack server --mode development"
    }
}
```

执行打包命令

```
npx webpack
```

执行启动服务命令

```
npx webapck server
```

浏览器输入localhost:3000 访问

### 2.添加响应头

有些场景需求下,我们需要为所有响应头添加headers ,来对资源的请求和响应打入标志,以便做一些安全防范,或者方便发生异常后做请求的链路追踪,比如:

```js
//webpack.config.js

module.exports={
    //...
    devServer:{
        headers:{
            'X-Fast-Id':"p3fdg42njghm34gi9ukj",
        },
    }
}
```

这时,在浏览器中右键检查(或者使用F12 快捷键),在Network 一栏查看任意资源访问,我们发现响应头里成功打入了一个FastId

headers 的配置也可以传入一个函数:

```js
module.exports={
    //...
    devServer:{
        headers:()=>{
            return {'X-Bar':['key1=value1','key2=value2']};
        }
    }
}
```

比如,我们的标志ID (X-Fast-Id),很明显这个id 不应该写死,而是随机生成的---这时候你就可以用函数实现这个功能

### 3.开启代理

我们打包出的`js bundle` 里有时会含有一一些对特定接口的网络请求(ajax/fetch),要注意,此时客户端地址是在http://localhost:3000/ 下,假设我们的接口来自http://localhost:4001/ ,那么毫无疑问,此时控制台里面会报错并提示你跨域,如何解决这个问题,在开发环境下,我们可以使用devServer 自带的proxy 功能:

```js
module.exports={
    //...
    devServer:{
        proxy:{
            '/api':'http://localhost:4001'
        }
    }
}
```

现在,对/api/users 的请求将会代理到http://localhost:4001/api/users .如果不希望传递/api ,则需要重写路径:

```js
module.exports={
    //...
    devServer:{
        proxy:{
            '/api':{
                target:'http://localhost:4001',
                pathRewrite:{'^/api':''},
            }
        }
    }
}
```

默认情况下,将不接受在HTTPS 上运行且证书无效的后端服务,如果需要,可以这样修改配置:

### 4.https

如果想让我们本地http 服务器变成https 服务,我们只需要这样配置:

```js
module.exports={
    //...
    devServer:{
        https:true,	//https://localhost:8080
    }
}
```

注意:此时我们访问 http://localhost:8080 是无法访问我们的服务的,我们需要在地址栏里加前缀:https:注意:由于默认配置使用的是自签名证书,所以有的浏览器会告诉你是不安全的,但是我们依然可以继续访问它,当然我们也可以提供自己的证书--如果有的话:

```js
module.exports={
    //...
    devServer:{
        https:{
            cacert:'./server.pem',
            pfx:'./server.pfx',
            key:'./server.key',
            cert:'./server.crt',
            passphrase:'webpack-dev-server',
            requestCert:true,
        }
    }
}
```

### 5.http2

如果想配置http2,那么直接设置:

```js
module.exports={
    //...
    devServer:{
        http2:true,	//https://localhost:8080
    }
}
```

即可,http2 默认自带https 自签名证书,当然我们仍可以通过https 配置项来使用自己的证书

### 6.historyApiFallback

如果我们的应用是个SPA (单页面应用),当路由到/some 时(可以直接在地址栏里输入),会发现此时刷新页面后,控制台会报错

```
GET http://localhost:3000/some   404 (Not Found)
```

此时打开Network ,刷新并查看,就会发现问题所在---浏览器把这个路由当作静态资源地址去请求,然而我们并没有打包出/some 这样的资源,所以这个访问无疑是404 ,如何解决它?这种时候,我们可以i通过配置来提供页面代替任404 的静态资源响应:

```js
module.exports={
    //...
    devServer:{
        historyApiFallback:true,
    }
}
```

此时,重启服务器刷新后发现请求变成了index.html,当然,在多数业务场景下,我们需要根据不同的访问路径定制替代的页面,这种情况下,我们可以使用rewrites 这个配置项,类似这样:

```js
module.exports={
    //...
    output:{
        publicPath:'/',			//设置打包后的文件, index.html 引入时公共路径  为/
	}
    devServer:{
        historyApiFallback:{
            rewrites:[
                {from:/^\/$/,to:'/views/landing.html'},
                {from:/^\/subpage/,to:'/views/subpage.html'},
                {from:/./,to:'/views/404.html'},
            ]
        }
    }
}
```

### 7.开发服务器主机

如果你在开发环境中起了一个derServer 服务,并期望你的同事能访问到它,你只需要配置:

```js
module.exports={
    //...
    devServer:{
        host:'0.0.0.0'
    }
}
```

这时候,如果你的同事跟你处在同一局域网下,就可以通过访问你的局域网ip 来访问你的服务器了