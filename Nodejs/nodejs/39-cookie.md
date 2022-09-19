**一.关于Cookie**

在我们关闭一个登入过的网址并重新打开它后,我们的登入信息依然没有丢失,当我们浏览了商品后历史记录里出现了我们点击过的商品,当我们退回到首页后,推荐商品也为我们选出了相似物品,事实上当我们有过此类操作后,浏览器会将我们的操作信息保存到cookie 上面,进而言之,cookie 就是储存在用户本地终端上的数据

**cookie 的特点**

> 1.cookie 保存在浏览器本地,只要不过期关闭浏览器也会存在
>
> 2.正常情况下cookie 不加密,用户可轻松看到
>
> 3.用户可以删除或者禁用cookie
>
> 4.cookie 可以被篡改
>
> 5,cookie 可用于攻击
>
> 6.cookie 储存量很小,大小一般是4k
>
> 7.发送请求自动带上登入信息

**二,Cookie 的安装及使用**

**1.安装**

```
npm install cookie-parser --save
```

**2.引入**

```
const cookieParser=require('cookie-parser')
```

**3.设置中间件**

```
app.use(cookieParser())
```

**4.设置cookie**

```js
res.cookie('name','zhangsan',{maxAge:90000,httpOnly:true})
//res.cookie(名称,值,{配置信息})
```



![360截图20210606231814227](C:\Users\administer\Documents\360截图\360截图20210606231814227.jpg)

关于配置cookie 的参数说明

1.domain:域名

2.name=value:键值对,可以设置要保存的key/value,注意这里的name 不能和其他属性项的名字一样

3.Expire:过期时间(秒),在设置的某个时间点后该Cookie 就会是失效,如expire=Wednesday,09-Nov-99 23:12:40 GMT

4.maxAge:最大失效时间(毫秒),设置在多少后失效

5.secure: 当secure 值为true 时,cookie 在HTTP 中是无效的,在HTTPS 中才有效

6.Path:表示在哪个路由下可以访问到cookie

7.httpOnly:是微软对COOKIE 做的扩展,如果在COOKIE 中设置了'httpOnly' 属性,则通过程序(js 脚本,applet 等)将无法读取到COOKIE 信息(只能浏览器内部才能看到),防止xss 攻击的产生

8,singed:表示是否签名cookie,设为true 会对这个cookie 签名,这样就需要用res.singedCookies 而不是res.cookies 访问他,被篡改的签名cookie 会被服务器拒绝,并且cookie 值会重置为它的原始值

**5.获取cookie**

```
req.cookies.cookie名字,
例如
req.cookies.isLogin
```

下面是一个基础实例

```js
const express=require('express')
const cookieParser=require('cookie-parser')

var app=express()
//设置中间件
app.use(cookieParser())

app.get('/',(req,res)=>{
    res.send('首页')
})

//设置cookie
app.get('/set',(req,res)=>{
    res.cookie('username','张三',{maxAge:20000,httpOnly:true})
    res.send('设置cookie 成功')
})

//获取cookie
app.get('/get',(req,res)=>{
    console.log(res.cookies.username)
    res.send('获取cookie 成功,cookie 为:'+res.cookies.username)
})

app.listen(8080)
```

当访问set 路由后会设置cookie,当访问get 路由或会获取到设置的cookie 值.当然你也可以在其他页面继续获取当前的cookie,以实现cookie 共享

**三.多个二级域名共享cookie**

只需要增加res.cookie 中option 对象的值,即可实现对相应路由下多个二级路由的cookie 进行共享,代码如下:

```js
const express=require('express')
const cookieParser=require('cookie-parser')

var app=express()

//设置中间件
app.use(cookieParser())

app.get('/',(req,res)=>{
    res.send('首页')
})

//设置cookie
app.get('/set',(req,res)=>{
    res.cookie('username','张三',{maxAge:20000,httpOnly:true,domain:'ccc.com'})
    res.send('设置cookie 成功')
})

//获取cookie
app.get('/get',(req,res)=>{
    console.log(req.cookies.username)
    res.send('获取cookie 成功,cookie 为:'+res.cookies.username)
})

app.listen(8080)
```

```js
//app.js 文件
var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');   //输出到错误信息(日志)文件

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();

// view engine setup
// express 视图的设置
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

//express 中间件,一层一层往下使用中间件
app.use(logger('dev'));   //输出开发环境下的日志信息
app.use(express.json());  //解析json 数据
app.use(express.urlencoded({ extended: false }));   //解析body 的数据
app.use(cookieParser());    //处理cookie
app.use(express.static(path.join(__dirname, 'public')));  //处理静态文件

//路由匹配
app.use('/', indexRouter);
app.use('/users', usersRouter);

// catch 404 and forward to error handler
//设置404 中间件
app.use(function(req, res, next) {
  //渲染自己的404 页面,404 所用的js 和css 代码 都放在public 文件夹
  res.render('404.ejs')
  next(createError(404));
});

// error handler
//处理错误的中间件
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
```

```js
//router 下index.js 文件
var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

//设置cookie,所有路径都能使用这个cookie
router.get('/setcookie',(req,res)=>{
  //基础设置cookie,有效期默认为1个会话(浏览器的关闭)
  res.cookie('isLogin','true')
  //30s 之后失效,(使用Expire 还要计算失效日期,不方便)
  res.cookie('isLogin1','true',{maxAge:30000})    
  
  res.send('cookie 设置成功')
})

// 获取cookie
router.get('/admin',(req,res)=>{
  console.log(req.cookies);
  if(req.cookies.isLogin=='true'){
    res.send('登入成功')
  }else{
    res.send('登入失败')
  }
})


module.exports = router;
```









