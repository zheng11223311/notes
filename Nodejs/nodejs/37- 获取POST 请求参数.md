**一.关于POST 请求**

post 方法作为http 请求很重要的一部分,几乎所有的网站都有用到它,与get 不同,post 请求更像是在服务器上做修改操作,他一般用于数据的更新

相比于get 请求,post 所请求的数据更加安全,上一章中我们发现get 请求会在地址栏显示输入的用户名和密码(有中文时会转化为BASE64 加密),而post 请求则会将数据放入http 包的包体中,这使得别人无法直接查看到用户名和密码!

**二.Express 如何设置post 请求**

1.我们知道,首先我们得知道在form 表单进行post 请求,enctype 属性一般设置为application/x-www-form-urlencoded,如果设置成multipart/form-data,则多用于文件上传,如下

```js
<form action="#" method="post" enctype="application/x-www-form-urlencoded"></form>
```

之后,我们可以使用npm 提供的body-parser

**1.body--parser**

Express 中默认都是使用body-parser 作为请求体解析post 数据,这个模块也能解析:JSON,Raw,文本,URL-encode 格式的请求体

首先在项目目录安装body-parser:

```
npm install body-parser --save
```

--save 指保存记录到package.json 文件

在项目app.js 中,引用和设置该模块;

```JS
const bodyParser=require('body-parser')

//解析以application/json 和application/x-www-form-urlencoded 提交的数据
var jsonParser=bodyParser.json()
var urlencodeParser=bodyParser.urlencoded({extended:false})

```

```js
//app.js 文件
var express = require('express');
var path = require('path');
let mysql=require('mysql')


var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(express.static(path.join(__dirname, 'public')));

// 解析post 提交的数据
app.use(express.urlencoded())

// 获取post 的请求
app.post('/search',(req,res)=>{
  console.log(req.query);   //没有 
  console.log(req.body);   //没有 解析post 提交的数据的话,不会有数据
  // 注意:post提交的数据不在query 属性上,
  // 是在body 上,而且需要app.use(express.urlencoded()) 进行解析
  res.send('post 提交数据')
})

// 登入页,post 提交不能直接通过地址进行提交
app.post('/login',async (req,res)=>{
  //获取用户名和密码
  let username1=req.body.username
  let password1=req.body.password
  
  let arr=await [username1,password1]
  console.log('--------'+arr);
  let options={
    host:'localhost',        //主机名
    user:'root',
    password:'',
    database:'liuyanku'           //连接的数据库,没有数据库时可以不写
}
  let con=await mysql.createConnection(options)     //创建数据库
  await con.connect((err)=>{
    if(err){
        console.log(err);
    }else{
        console.log('连接成功');
    }
})

//写入数据库,只能是数字
let strsql6='insert into user (username,password) values('+username1+','+password1+')'
  let result1=await con.query(strsql6,(err,data,fields)=>{
    console.log(err);
    // console.log(data);
    // console.log(fields);
})

// 查询数据库是否有此用户名和密码
  let strsql='select * from user where username='+username1+' and password='+password1
let result=await con.query(strsql,(err,data,fields)=>{
    console.log(err);
    console.log(data);
    console.log(fields);
    if(err==null){
    res.send('登入成功')
  }else{
    res.send('登入失败')
  }
})

})

app.get('/login',(req,res)=>{
    res.render('login')
})

//搜索首页
app.get('/',(req,res)=>{
  res.render('index.ejs')
})

module.exports = app;

```

