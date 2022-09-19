**一.Express 路由简介**

路由表示应用程序端点(URI)的定义及响应客户端请求的方式,它包含一个请求方式(methods),路径(path)和路由匹配时的函数(callback);

```
app.methods(path,callback);
```

**二.Express 路由方法**

Express 方法源于HTTP 方法之一,附加到express 类的实例,它可以请求的方法包括:

get,post,put,head,delete,options,trace,copy,lock,mkcol,move,purge,profind,proppatch,unlock,report,mkactivity,checkout ,merge,m-search,notify,subscribe,unsubscribe,patch,search 和connect

**三.路径**

Express 路径包含三种表达形式,分别为字符串,字符串模式,正则表达式

**1.字符串路径**

```
app.get('/login',function(req,res){
	res.send('heng...women')
})
```

此路径地址将于/login 匹配

**2.字符串模式路径**

此路由路径将与acd 和相匹配的abcd

```
app.get('/ab?cd',function(req,res){
	res.send('heng...women')
})
```

这条路线的路径将会匹配abcd,abbcd,abbbcd,等等

```
app.get('/ab+cd',function(req,res){
	res.send('heng...women')
})
```

这条路线的路径将会匹配abcd,abxcd,abRANMDIcd,ab123cd,等等

```
app.get('/ab*cd',function(req,res){
	res.send('heng...women')
})
```

此路径将与/abe 和相匹配/abcde

```
app.get('/ab(cd)?e',function(req,res){
	res.send('heng...women')
})
```

**3.正则表达式路径**

此路由路径将匹配的其中带有'a'的任何内容

```
app.get(/a/,function(req,res){
	res.send('heng...women')
})
```

这条路线的路径将匹配butterfly 和dragonfly,但不butterflyman,drangonflyman 等等

```
app.get(/.*fly$/,function(req,res){
	res.send('heng...women')
})
```

**四.基础路由**

使用基础的字符串路径,没有匹配模式的路由

```
app.get('/login',function(req,res){
	res.send('heng...women')
})
```

**示例:**

```js
//app.js 文件
//重写app.js
let express=require('express')

let app=express()

//1.字符串的路由模式
app.get('/',(req,res)=>{
    res.send('这是首页')
})

//2.类字符串的正则模式
app.get('/ab?cd',(req,res)=>{
    res.send('这是abcd/acd')
})

app.get('/ab?cd',(req,res)=>{
    res.send('这是abcd/acd')
})

// 3.正则表达式,路径不用引号括起来
// http://localhost:3000/a123456442113
app.get(/\/a\d{10,}/,function(req,res){
	res.send('heng...women')
})

module.exports=app


//默认3000端口号
// cmd 运行npm start
// 浏览器输入http://localhost:3000/acd
```

**五.动态路由**

**路线参数**

路由参数被命名为URL 段,用于捕获URL 中在其位置处指定的值,捕获的值将填充到req.params 对象中,并将路径中指定的router 参数的名称作为其各自的键

```
Route path:/users/:userId/books/:bookId
Request URL:http://localhost:3000/users/34/books/8989
req.params:{"userId":"34","bookId":"8989"}
```

要使用路由参数定义路由,只需要在路由中指定路由参数,如下所示

```
app.get('/users/::userId/books/:bookId',function(req,res){
	res.send('heng...women')
})
```

路径参数的名称必须由"文字字符"([A-Za-z0-9])组成

由于连字符(-) 和点(.)是按照字面解释的,因此可以将它们与路由参数一起使用,以实现有用的目的

```
Route path:/flights/:form-:to
Request URL:http://localhost:3000/flights/LAX-SFO
req.params:{"form":"LAX","to":"SFO"}
```

要更好的控制可以由路由route 参数匹配的确切字符串,可以在(( ))后面附加一个正则表达式

```
Route path:/user/:userId(\d+)
Request URL:http://localhost:3000/user/42
req.params:{"userId":"42"}
```

**路由处理程序**

你可以提供行为类似与中间件的多个回调函数来处理请求,唯一的例外是这些回调可能会调用next('route')以绕过其余的路由回调,你可以使用此机制在路由上施加先决条件,然后再没有理由继续使用当前路由的情况下将控制权传给后续路由

路由处理程序可以采用函数,函数数组或二者组合的形式,如以下示例所示

单个回调函数可以处理路由,例如:

```
app.get('/example/a',function(req,res){
	res.send('heng...women')
})
```

多个回调函数可以处理一条路由(确保指定了next() 对象),例如

```
app.get('/example/a',function(req,res,next){
	console.log('多个回调函数')
	next()
},(req,res)=>{				//(req,res,next),可以再次传递下去
	res.send('heng...women')
})
```

```js
//app.js 
//重写app.js
let express=require('express')

let app=express()

//1.字符串的路由模式
app.get('/',(req,res)=>{
    res.send('这是首页')
})

//2.类字符串的正则模式
app.get('/ab?cd',(req,res)=>{
    res.send('这是abcd/acd')
})

app.get('/ab?cd',(req,res)=>{
    res.send('这是abcd/acd')
})

// 正则表达式
// http://localhost:3000/a123456442113
app.get(/\/a\d{10,}/,function(req,res){
	res.send('heng...women')
})

// 动态路由
app.get('/news/:newsId',function(req,res){          //  /news/aaa
    // res.send 只能有一个,多个无效,相当于return 的意思
    // req.params 得到object
    res.send('动态路由:\n'+req.params.newsId)       //输出路径参数newsId aaa
      
})
app.get('/news/a:newsId',function(req,res){     //  /news/a123
    res.send('动态路由:\n'+req.params.newsId)       //输出路径参数newsId 123
      
})
app.get('/news/a:newsId/:cateId',function(req,res){     //  /news/a123/666
    res.send('动态路由:\n'+req.params.newsId)       //输出路径参数newsId 123
      
})
app.get('/news/a:newsId/:cateId',function(req,res,next){     //  /news/a123/666
    res.send('动态路由:\n'+req.params.newsId)       //输出路径参数newsId 123
      next()        //传递给下一个函数,执行下一个函数
},
()=>{           //可以追加回调函数
     res.send('动态路由追加回调函数') 
})

module.exports=app


//默认3000端口号
// cmd 运行npm start
// 浏览器输入http://localhost:3000/acd
```

回调函数数组可以处理路由



**应对方法**

res 下表中响应对象() 上的方法可以将响应发送到客户端,并终止请求-响应周期.如果从路由处理的程序中未调用这些方法,则客户端请求将被挂起

| 方法             | 描述                                                |
| ---------------- | --------------------------------------------------- |
| res.download()   | 提示要下载的文件                                    |
| res.end()        | 结束响应过程                                        |
| res.json()       | 发送json 响应                                       |
| res.jsonp()      | 发送带有jsonp 支持的json 响应                       |
| res.redirect()   | 重定向请求                                          |
| res.render()     | 渲染视图模板                                        |
| res.send()       | 发送各种类型的响应                                  |
| res.sendFile()   | 将文件作为八位字节流发送                            |
| res.sendStatus() | 设置响应状态代码,并将其字符串表示形式发送为响应正文 |

**app.route**

你可以使用来为路由路径创建可链接的路由处理程序app.route().由于路径是在单个位置指定的,因此创建模板化路由是非常有帮助,减少冗余和错别字也很有帮助,有关路由的更多信息,请参见:Router()文档

这是使用定义创建的链式路由处理程序的示例app.route()

```js
app.route('/boos')
.get(function(req,res){
    res.send('得到一个随机模板')
})
.post(function(req,res){
    res.send('增加一本书')
})
.put(function(req,res){
    res.send('更新一本书')
})
```

