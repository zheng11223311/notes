### NodeJS 使用

`hello.js`

```js
console.log('hello world');
console.log(1+1);

function test(){
	console.log('i love you')
}
test()
```

**1.创建http 服务器**

`server.js`

```js
//引入内置的http 包
var http=require('http')
var urlTool=require('url')

//创建服务
var server=http.createServer(function(req,res){
    //获取请求方式
    var method=req.method
    console.log(method)
    
    //获取请求的路径
    var url=req.url
    console.log(url)
    
    //获取http 的版本号
    var version=req.httpVersion
    console.log(version)
    
    //获取请求头信息
    var headers=req.headers
    console.log(headers)
    
    var userAgent=headers['user-agent']
    console.log(userAgent)
    
    //解析url,true 将返回的字符串解析为json 格式
    var result=urlTool.parse(url,true);
    var id=result.query.id
    
    console.log(result)
    
	res.end('i love you')
})

//端口监听,默认80
console.log('server is running listenning port 8080')
server.listen(8080)
```

**开启服务器**

```
node server.js
```

**浏览器输入**

```
localhost:8080
```

**2.服务器的响应**

```js
//引入内置的http 包
var http=require('http')

//创建服务
var server=http.createServer(function(req,res){
    //状态码
    res.statusCode=200;
    
    //修改响应头信息
    res.setHeader('content-type','text/html')
    res.setHeader('location','http://www.baidu.com')
    res.setHeader('name','xiaohei')
    
    //模拟cookie 写入
    res.setHeader('set-cookie','name=xiaogao,expires=Thu,24-Aug-2017 18:13:51 GMT;Max-Age=360;path=/')
    
    //响应体
    res.write('iloveyou')
     res.write('<h1>嘿嘿嘿</h1>')
    
    var data={'name':'aa'}
    //只能写入字符串
    res.write(JSON.Stringify(data))
    
	res.end('i love you')
})

//端口监听,默认80
console.log('server is running listenning port 8080')
server.listen(8080)
```

**3.静态资源请求**

```js
//引入内置的http 包
var http=require('http')
//引入文件操作模块
var fs=require('fs')

//创建服务
var server=http.createServer(function(req,res){
	//浏览器路径为index.css  localhost/index.css
    //读取/statics/index.css 文件中的内容,然后通过响应体返回给客户端
    
    var path=req.url
    console.log(path)
        //文件路径
        var filePath='./statics'+path;
        //读取文件内容
        fs.readFile(filepath,function(err,data){
            if(err){
                res.statusCode=404;
                res.end('Not Found')
                return
            }
            res.statusCode=200
            res.write(data);
            res.end()
        })
        

    
})

//端口监听,默认80
console.log('server is running listenning port 8080')
server.listen(8080)
```

**4.页面处理,包含css 请求处理**

```js
//引入内置的http 包
var http=require('http')
//引入文件操作模块
var fs=require('fs')

//创建服务
var server=http.createServer(function(req,res){
	//访问index.html
      var path=req.url
    console.log(path)
        //文件路径
        var filePath='./statics'+path;
        //读取文件内容
        fs.readFile(filepath,function(err,data){
            if(err){
                res.statusCode=404;
                res.end('Not Found')
                return
            }
            res.statusCode=200
            res.write(data);
            res.end()
        })
        
    }
        
    
})

//端口监听,默认80
console.log('server is running listenning port 8080')
server.listen(8080)
```

**5.表单处理**

```js
//引入内置的http 包
var http=require('http')
//引入文件操作模块
var fs=require('fs')
//移入解析模块
var querystring=require('querystring')

//创建服务
var server=http.createServer(function(req,res){
    //get  //from
    var method=req.method
    var url=req.url
    
    //显示form 页面
    if(method.toLowerCase()=='get'&&url='/form'){
        //文件路径
        var filePath='./statics'+url;
        //读取文件内容
        fs.readFile(filepath,function(err,data){
            if(err){
                res.statusCode=404;
                res.end('Not Found')
                return
            }
            res.statusCode=200
            res.setHeader('content-type','text/html')
            res.write(data);
            res.end()
    }
   
     if(method.toLowerCase()=='post'&&url='/form'){
            //绑定事件,监听数据传输事件
            var data=''
            req.addListener('data',function(chunk){
                //数据是分成块chunk
                data+=chunk
            })
            
            //绑定事件,监听数据传输完毕
            req.addListener('end',function(){
                //解析请求体中get 提交的表单的字符串
                var d=querystring.parse(data);
                console.log(d)
                
                res.statusCode=200
                res.setHeader('content-type','text/html')
                res.write(data);
                res.end() 
            })
        }
}
        
    
})

//端口监听,默认80
console.log('server is running listenning port 8080')
server.listen(8080)
```

**模块热更新**

```
npm i node-dev -g 
或 
npm i nodemon -g
```

**使用**

```
node-dev 文件.js
或
nodemon 文件.js
```

