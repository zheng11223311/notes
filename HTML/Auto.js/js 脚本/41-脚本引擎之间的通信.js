
// 脚本引擎执行时会有弹出,卡顿现象,这是bug
var executionObject =engines.execScriptFile('/sdcard/脚本/42-emit.js',{
    delay:0, //延迟
    // loopTimes:3,   //循环次数,0为无限
    // interval:2000,  //两次输出间隔时间
})
sleep(1500)

//获取脚本引擎对象
var engineObject=executionObject.getEngine()

// 发射事件
engineObject.emit('fun',"参数1","参数2")
toast('启动服务器') 