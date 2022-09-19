var http=require('http')
// http.createServer()
 var server =http.createServer()  //服务端
 //var cli=http.clientRequest()       //客户端
 
//  启动服务器,不手动关闭不会停止 8000 端口号,相当于房间号
 server.listen(8000,function(){     //回调函数可选
     console.log('启动成功');
 })
//  浏览器输入 本机ip 地址:8000     192.168.137.1:8000
// 绑定事件 事件请求
server.on('request',function(qqiu,xiany){

    //    设置响应头,必须放在头部 数据发送前   浏览器的utf-8 有- 符号 防止乱码,
    xiany.setHeader('content-type','text/html;charset=utf-8')
    // xiany.write('<h1 style="color:red;">shuai</h1>')        //浏览器窗口打印红色 shuai 

    // 响应一个页面,实际上是讲一个html 文件的代码响应回去
    //利用fs 模块读取文件内容
    var fs=require('fs')
    fs.readFile('./11-响应页面.html','utf8',function(err,data){
        if(!err){
            console.log(data);
            xiany.write(data)
                // 放外面报错 异步执行 end 先执行 readFile函数后执行
             xiany.end()         //断开连接
        }else{
            console.log(err);
            xiany.end()         //断开连接
        }
    })
   
})