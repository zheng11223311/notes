**一.关于session**

session 是另一种记录客户状态的机制,与cookie 保存在客户端浏览器不同,session 保存在服务器当中:当客户端访问服务器时,服务器会生成一个session 对象,对象中保存的是key:value 值,同时服务器会将key 传回给客户端的cookie 当中;当用户第二次访问服务器时,就会把cookie 当中的key 传回到服务器中,最后服务器会把value 值返回给客户端

因此上面的key 是全局唯一的标识,客户端和服务端依靠这个全局唯一的标识来访问会话信息数据

**二.设置session**

我们使用express-session 模块来设置session

**1.安装express-session**

```
npm install express-session --save
```

**2.引入express-session 模块**

```
const session=require('express-session')
```

**3.设置session**

```
session(options)
```

如下代码:

```js
const express=require('express')
const session=require('express-session')

var app=express()

//配置中间件
//可以不提供配置 app.use(session())
app.use(session({
    secret:'keyboard cat',		//自定义加盐
    cookie:{
        maxAge:7*24*30,
    },
    rescave:false,		//是否保存到磁盘上
    saveUninitialized:true	//是否保存初始化的值
}))

app.use('/login',(req,res)=>{
    //设置session
    req.session.userinfo='张三'
    res.send('登入成功')
})

app.use('/',(req,res)=>{
    //获取session
    if(res.session.userinfo=='张三'){
        res.send('hello'+req.session.userinfo+'welcome')
    }else{
        res.send('未登入')
    }
})

app.listen(8080)
```

在session(options) 中对session 进行设置

**三.session 的常用方法**

```js
//设置session
res.session.username='张三'

//获取session
req.session.cookie.username

//重新设置cookie 的过期时间
req.session.cookie.maxAge=99999

//销毁session
req.session.destroy((err)=>{

})
```

以下通过销毁session 的方式来退出登入

```js
const express=require('session')
const session=require('express-session')

var app.express()

//配置中间件
app.use(session({
	serct:'keyboard cat',
    cookie:{'name','value',{maxAge:5*60*1000,sercure:false,name:'sename',resave:'false'}}
}))

app.use('/loginOut',(req,res)=>{
    //注销session
    req.session.destroy((err)=>{
        res.send('退出登入'+err)
    })
})

app.use('/',(req,res)=>{
    //获取session
    if(res.session.userinfo=='张三'){
        res.send('hello'+req.session.userinfo+'welcome')
    }else{
        res.send('未登入')
    }
})

app.listen(8080)
```

当我们进入到主页时,未显示任何信息,进入login 路由后,自动设置session,这是回到主页则显示session 信息,之后进入到loginOut 路由已注销session,再回到首页显示为登入
