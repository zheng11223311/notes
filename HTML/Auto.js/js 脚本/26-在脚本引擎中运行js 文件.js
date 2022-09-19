// autojs 文件的位置  /sdcord/脚本/
// 导入js 脚本文件并执行
engines.execScriptFile('/sdcard/脚本/main.js',{
    delay:0, //延迟
    loopTimes:3,   //循环次数,0为无限
    interval:2000,  //两次输出间隔时间
})





toast('启动服务器')