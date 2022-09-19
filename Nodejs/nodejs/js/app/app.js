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
//允许跨域请求
res.append('Access-Control-Allow-Origin','*')   //允许所有的源
res.append('Access-Control-Allow-Content-Type','*')   //允许所有的请求类型

module.exports=app


//默认3000端口号
// cmd 运行npm start
// 浏览器输入http://localhost:3000/acd