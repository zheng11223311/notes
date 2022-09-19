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
    // console.log(1);
    // console.log(qqiu.method);  //得到请求方式

    //    设置响应头,必须放在头部 数据发送前  plain 纯文本(此时标签效果会无效) 浏览器的utf-8 有- 符号 防止乱码,
    xiany.setHeader('content-type','text/plain;charset=utf-8')
    xiany.write('<h1 style="color:red;">shuai</h1>')        //浏览器窗口打印红色 shuai 
    xiany.write('中文乱码')         
    // xiany.write('shuai')        //浏览器窗口打印shuai 
    xiany.end()         //断开连接
})