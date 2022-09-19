var http=require('http')
 var server =http.createServer()  //服务端
 
 server.listen(8000,function(){     //回调函数可选
     console.log('启动成功');
 })
//  浏览器输入 本机ip 地址:8000     192.168.137.1:8000
server.on('request',function(qqiu,xiany){
//    console.log( qqiu.url);
    var urls=qqiu.url   //刷新一次响应的不同类型
     var fs=require('fs')
    if(urls == '/'){
         xiany.setHeader('content-type','text/html;charset=utf-8')
   
    fs.readFile('./11-响应页面.html','utf8',function(err,data){
        if(!err){
            // console.log(data);
            xiany.write(data)
             xiany.end()         //断开连接
        }else{
            console.log(err);
            xiany.end()         //断开连接
        }
    })
    }else if(urls=='/img/LL.jpg'){
        fs.readFile('./img/LL.jpg',function(err,data){
            xiany.write(data)
            xiany.end()
        })
    }else if(urls=='/img/1.jpg'){
        fs.readFile('./img/1.jpg',function(err,data){
            xiany.write(data)
            xiany.end()
        })
    }
   
   
})