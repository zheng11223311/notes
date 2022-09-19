**一.关于get 请求**

一般在网站开发中,get 都用作数据获取和查询,类似于数据库中的查询操作,当服务器解析前台资源后,既传输相应的内容,而查询字符串是在URL 上进行的,形如:

```
http://localhost:8080/login?goods1=00001&doods2=00002
```

**二.获得前台get 请求**

通过req.query 可以获得用户发送的get 请求,之后通过node 操作将相应数据返回给用户

如果发送的是

```
http://localhost:8080/login?goods1=00001&doods2=00002
```

响应的话则通过

```
req.query
```

他会获取到全部数据,或

```
req.query.goods1
req.query.goods2
```

来单独获取每一个数据,总之不同的需求对应不同的业务,大家按自己的需求来获取

**三.实例**

下面通过一个实例来获取get 参数进行一个总结

HTML:

```ejs
<!--index.ejs 文件-->
<!DOCTYPE html>
<html>
  <head>
    <title>搜索首页</title>
    <link rel='stylesheet' href='/stylesheets/style.css' />
  </head>
  <body>
    <!-- action:提交至服务器的地址 -->
    <form action="/search" method="get">
      <input type="text" name="searchKey">
      <input type="text" name="username">
      <input type="submit" value="搜索">
    </form>
  </body>
</html>

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

//搜索首页
app.get('/',(req,res)=>{
  res.render('index.ejs')
})

//自己封装的表单数据提取
// app.get('/search',(req,res)=>{
//   console.log(req.url);

//   //提取问号页面后面的字符串
//   let queryStr=req.url.split('?')[1]
//   // 对表单提交的键值对进行分割
//   let result=queryStr.split('&')
//   let query={}
//   result.forEach((item,i)=>{
//     let key=item.split('=')[0]
//     let value=item.split('=')[1]
//     query[key]=value
//   })
//   console.log(query);
//   res.send('搜索页面')
// })

app.get('/search',async (req,res)=>{
  // 使用原生自带的get获取数据方式
  //express在req 对象上直接封装好了query 属性
  console.log(req.query);
  //根据req.query.searchKey 的内容,查找电影
  

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
  let strsql='select * from book where bookname like "%'+req.query.searchKey+'%"'
  let result=await con.query(strsql,(err,data,fields)=>{
    console.log(err);
    console.log(data);
    console.log(fields);
})
// let strsql6='insert into book (id) values("1")'
//   let result1=await con.query(strsql6,(err,data,fields)=>{
//     console.log(err);
//     console.log(data);
//     console.log(fields);
// })
  // res.json(Array.from(result))  //以json 的形式返回
  console.log(result);
  res.send(result)
})


module.exports = app;
```

