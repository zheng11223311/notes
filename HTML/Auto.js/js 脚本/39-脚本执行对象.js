

var executionObject =engines.execScriptFile('/sdcard/脚本/截图取色与坐标.js',{
    delay:0, //延迟
    // loopTimes:3,   //循环次数,0为无限
    // interval:2000,  //两次输出间隔时间
})
// 启动脚本引擎需要一定的时间,太快无法获取引擎对象
sleep(1500)
// 获取引擎对象
// console.log(executionObject.getEngine());  
// 08:29:51.629/D: ScriptEngine@fc61ea5{id=3,source='/sdcard/脚本/截图取色与坐标.js',cwd='/storage/emulated/0/脚本'}

// 获取引擎配置对象
console.log(executionObject.getConfig());  
// ExecutionConfig(workingDirectory=/storage/emulated/0/脚本, path=[], intentFlags=0, delay=0, interval=0, loopTimes=1, scriptConfig=ScriptConfig(features=[], uiMode=false))



toast('启动服务器')