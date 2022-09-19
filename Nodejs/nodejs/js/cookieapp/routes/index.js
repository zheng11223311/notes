var express = require('express');
var crypto=require('crypto')  //导入cookie 加密算法
var router = express.Router();
var axios =require('axios')

/* GET home page. */
router.get('/ccc', function(req, res, next) {
  res.header('Access-Control-Allow-Origin','*')
    axios.get('https://tuchong.com/rest/tags/%E7%BE%8E%E5%A5%B3/posts?page=1')
    .then(res1=>{
      // console.log(res1.data)
      res.send(res1.data)
    })
    
  // res.render('index', { title: 'Express' });
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










module.exports = router;
