
// jsname 起一个脚本名称,在开发工具中看到
// 25-脚本引擎运行结束,开始jsname 脚本文件的执行,jsname 相当于一个脚本文件
// engines.execScript('jsname','toast("脚本内容,返回桌面");home()')

// engines.execScript('jsname','toast("脚本内容,返回桌面")',{
//     delay:0, //延迟
//     loopTimes:3,   //循环次数,0为无限
//     interval:2000,  //两次输出间隔时间

// })


function fun(){
    toast('调用函数')
}
// 脚本引擎互不干扰,所以jsname 不能调用外部的fun 函数
// 可以将函数转换为字符串,传递进去
engines.execScript('jsname','fun();'+fun.toString(),{
    delay:0, //延迟
    loopTimes:3,   //循环次数,0为无限
    interval:2000,  //两次输出间隔时间

})





toast('启动服务器')