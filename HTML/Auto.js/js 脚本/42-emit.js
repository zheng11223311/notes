

// 接收发射的事件
events.on("fun",function(arg1,arg2) {
    toastLog(arg1+''+arg2)
})

// 保持脚运行
setInterval(()=>{},1000)

toast('启动服务器') 