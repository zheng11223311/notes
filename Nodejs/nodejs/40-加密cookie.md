**加密**

加密的密文不会解析回去,只有在数据库以键值对保存原文和相应的密文,使用时提取数据库保存的原文

加密时可以多层加密,既加密后的密文再次加密(或者在加密的内容中添加自定义的字符,再次加密,既称加盐)

```js
//router 下的index.js 文件
var express = require('express');
var crypto=require('crypto')  //导入cookie 加密算法
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

//设置cookie,所有路径都能使用这个cookie
router.get('/setcookie',(req,res)=>{
  // 设置加密cookie
  res.cookie('login','true',{signed:true,maxAge:30000})
  
  res.send('cookie 设置成功')
})

// 获取cookie
router.get('/adminSecret',(req,res)=>{
  //加密的cookie 存放在signedCookies
    console.log(req.signedCookies);
    // res.send('加密cookie')
    if(req.signedCookies.login=='true'){
    res.send('登入成功')
  }else{
    res.send('登入失败')
  }
})


//加密原理解析
router.get('/secret',(req,res)=>{
  let password='1234'
  let sf=crypto.createHash('md5')    //使用的 md5 算法
  sf.update(password)     //对password 进行加密
  let content=sf.digest('hex')  //加密的二进制数据以字符串的形式显示
  res.send(content)
})

```

```js
//app.js 文件
app.use(cookieParser('secret'));    //处理cookie
```

