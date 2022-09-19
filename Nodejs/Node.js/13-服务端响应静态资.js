// 引入核心模块
var http=require('http')
 var fs=require('fs')
//  创建/获取服务对象
 var server =http.createServer()  //服务端
 
 //启动http 服务器并设置端口
 server.listen(8000,function(){     //回调函数可选
     console.log('启动成功');
 })
//  浏览器输入 本机ip 地址:8000     192.168.137.1:8000

// 为服务器添加(绑定)客户端请求事件
server.on('request',function(qqiu,xiany){
    console.log(qqiu.url);
    // 获取请求的路径
    var urls=qqiu.url   //刷新一次响应的不同类型
    if(urls == '/') {
         xiany.setHeader('content-type','text/html;charset=utf-8')
        fs.readFile('./13.html','utf8',function(err,data){
            // 响应文件内容
            xiany.write(data)
             xiany.end()         //断开连接
    })
    }else {
        fs.readFile('.'+urls,function(err,data){
             xiany.setHeader('content-type','text/css')
            //  xiany.writeHeader('content-type','text/css')
            if(!err){
            xiany.write(data)
        }else{
             xiany.write('')
        }
            xiany.end()
        })
    }
   
   
})