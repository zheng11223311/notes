var http=require('http')
 var server =http.createServer()  //服务端
 
 server.listen(8000,function(){     //回调函数可选
     console.log('启动成功');
 })
//  浏览器输入 本机ip 地址:8000     192.168.137.1:8000
server.on('request',function(qqiu,xiany){
    var urls=qqiu.url   //刷新一次响应的不同类型
     var fs=require('fs')
    if(urls == '/'){
         xiany.setHeader('content-type','text/html;charset=utf-8')
    fs.readFile('./11-响应页面.html','utf8',function(err,data){
        if(!err){
            xiany.write(data)
             xiany.end()         //断开连接
        }else{
            console.log(err);
            xiany.end()         //断开连接
        }
    })
    // 写入jpg 图片
    }else if(urls.lastIndexOf('.jpg')>=0){
        fs.readFile('.'+urls,function(err,data){
            xiany.write(data)
            xiany.end()
        })
    }
   
   
})