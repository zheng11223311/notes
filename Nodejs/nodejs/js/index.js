// @zsq
// class  User{
//      constructor(){
//          this.uesrname='小明'
//      }
// }


// function zsq(target){       //这里的target 在这里就是User 这个类
//     console.log(target);        
//     target.prototype.logger=()=>`${target.name}被调用`
   
// }


// var u1= new User()
// console.log(u1);
// ul.logger()     //User 被调用



// let a=require('./index1')
// //1. 在没有任何的内容导出去的情况下获取到那个文件时,会得到一个空对象{}
// //console.log(1) 却可以导出去,但是函数还不能导出去

// //2. require 获取路径时,可以不加后缀名,默认是.js
// console.log(a);


// let b=require('./index1')   //多次导入只执行一次,比如导入的打印只执行一次


//Puppeteer
// let puppeteer =require('puppeteer')

// //因为所有的事件都需要时间等待,所以使用异步执行
// async function test(){
//     //pupeteer.launch 实例启动浏览器,可以传入一个option 对象,可以配置为
//     //无界面浏览器,也可以配置为有界面浏览器
//     //无界面浏览器性能更高更快,有界面一般用于调试
    
//     let option={
//         defaultViewport:{       //设置视窗的大小
//             width:1400,
//             height:800
//         },
//         headless:false      // headless:false 有界面
//     }
//     let browser=await puppeteer.launch(option)

//     //打开新页面
//     let page=await  browser.newPage()
//     //访问页面
//     await page.goto('http://baidu.com')
//     // 截屏,截取当前打开的页面,存放为screenshot.png
//     await page.screenshot({path:'screenshot.png'})
// }

// test()






// let lcApp=require('./index1.js')
// console.log(lcApp);
// let app=new lcApp()

// app.on('/',(req,res)=>{
//     res.setHeader('content-type','text/html;charset=utf-8')
//     res.end('这是首页')
// })


// app.on('/gnxw',(req,res)=>{
//     res.setHeader('content-type','text/html;charset=utf-8')
//     res.end('这是国内新闻')
// })
// app.on('/static',(req,res)=>{
//     res.setHeader('content-type','text/html;charset=utf-8')
//     res.end('这是国内新闻')
// })
// app.on('/movie',(req,res)=>{
//     let movies=[
//         {
//             name:'雪暴',
//             brief:'简介.....',
//             author:'张震'
//         },
//         {
//             name:'少年的你',
//             brief:'这也是简介.....',
//             author:'周冬雨'
//         }
//     ]
    
//     let index=req.pathObj.base
//     // 构建一个html 模板或fs 读入html 文件,动态渲染,根据/movie/1,的数字不同替换标识的字符,渲染不同的页面
//     // render(movies[index],'index.html')
//     res.end()
// })

// app.run(80,()=>{
//     console.log('http://127.0.0.1 已启动');
// })


// let lcApp=require('./index1.js')
// console.log(lcApp);
// let app=new lcApp()

// app.on('/',(req,res)=>{
//     res.setHeader('content-type','text/html;charset=utf-8')
//     res.end('这是首页')
// })


// app.on('/gnxw',(req,res)=>{
//     res.setHeader('content-type','text/html;charset=utf-8')
//     res.end('这是国内新闻')
// })
// app.on('/static',(req,res)=>{
//     res.setHeader('content-type','text/html;charset=utf-8')
//     res.end('这是国内新闻')
// })
// app.on('/movie',(req,res)=>{
//     let movies=[
//         {
//             name:'雪暴',
//             brief:'简介.....',
//             author:'张震'
//         },
//         {
//             name:'少年的你',
//             brief:'这也是简介.....',
//             author:'周冬雨'
//         }
//     ]
    
//     res.end()
// })

// app.run(80,()=>{
//     console.log('http://127.0.0.1 已启动');
// })


// 连接数据库
// let mysql=require('mysql')
// // console.log(mysql);

// let options={
//     host:'localhost',        //主机名
//     // port:'3300',            //端口号,默认3306
//     user:'root',
//     password:'',
//     database:'mall'           //连接的数据库,没有数据库时可以不写
// }

// let con=mysql.createConnection(options)     //创建数据库
// //建立连接
// con.connect((err)=>{
//     //如果建立连接失败
//     if(err){
//         console.log(err);
//     }else{
//         console.log('连接成功');
//     }
// })       

//执行数据库语句
//执行查询语句
// let strsql='select * from user'  //在表user 中查找所有字段
// con.query(strsql,(err,data,fields)=>{
//     //err 错误信息,data 成功返回的数据,fields 数据的信息
//     // console.log(err);
//     // console.log(data);
//     // console.log(fields);
// })

//删除表
// let strsql2='drop table user'       //删除的表user
// con.query(strsql2,(err,results)=>{
//     //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })

//删除库
// let strsql3='drop database web'
// con.query(strsql3,(err,results)=>{
//     //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })

//创建库,存在的库不能再次创建
// let strsql4='create database mall'
// con.query(strsql4,(err,results)=>{
//      //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })



//创建表,存在的表不能再次创建
// 必须要先连接到一个数据库,才能在库里面创建表
// let strsql5='CREATE TABLE user ( `id`  int NOT NULL AUTO_INCREMENT,`username`  varchar(255) NULL,`password`  varchar(255) NULL,`mail`  varchar(255) NULL,PRIMARY KEY(`id`));'
// con.query(strsql5,(err,results)=>{
//      //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })


// 插入数据(创建字段,中文报错)
//id 设置了自动递增(设置为主键)的话,id 可以不写,自动增加
// let strsql6='insert into user (id,username,password) values(1,"hello","1234")'
// con.query(strsql6,(err,results)=>{
//      //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })

// let strsql7='insert into user (id,username,password,mail) values(2,"hello","1234","2345678@qq.com")'
// con.query(strsql7,(err,results)=>{
//      //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })

//简便写法
// let strsql8='insert into user (username,password,mail) values(?,?,?)'
// con.query(strsql8,['name11','password','123@123'],(err,results)=>{
//      //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })


// express
// let express=require('express')
// let app=express()
// app.get('/',(req,res)=>{
//     res.send('<h1 style="color:blue">hello world</h1>')
// })
// app.listen(3000,()=>{
//     console.log('服务器启动成功');
// })


