var express = require('express');
var path = require('path');


var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');


app.use(express.urlencoded({ extended: false }));   // 解析req.body
app.use(express.static(path.join(__dirname, 'public')));    //设置静态页面



// 添加中间件,可以有多个函数
app.use((req,res,next)=>{
  //向其中添加自定义函数
  res.addNum=function(a,b){
    return a+b
  }
    console.log('访问任何页面,此函数都会被调用');
    next()    //放行,进入下一界面
})


app.get('/',(req,res)=>{
  res.send('这是主页'+res.addNum(7,8))
})


//实例化路由模块,此路由模块相当于一个小的app 实例
//商城的首页
let router=express.Router()

// router 中间件  与app.use() 一致,只不过是使用在商城模块里面
router.use((req,res,next)=>{
  res.send('判断是否是商城用户')    //res.send 这里使用后,/list 等输出的res.send 无效
  next()
})
 
//http://localhost:3000/mall
router.get('/',(req,res)=>{
  res.send('商城首页')
})

//http://localhost:3000/mall/list
router.get('/list',(req,res)=>{
  res.send('商城产品列表页')
})

app.use('/mall',router)  //商城这个应用使用这个路由

//允许跨域请求
res.append('Access-Control-Allow-Origin','*')   //允许所有的源
res.append('Access-Control-Allow-Content-Type','*')   //允许所有的请求类型

module.exports = app;
