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
