
// 脚本引擎执行时会有弹出,卡顿现象,这是bug
var executionObject =engines.execScriptFile('/sdcard/脚本/截图取色与坐标.js',{
    delay:0, //延迟
    // loopTimes:3,   //循环次数,0为无限
    // interval:2000,  //两次输出间隔时间
})
sleep(1500)

//获取脚本引擎对象
var engineObject=executionObject.getEngine()
console.log(engineObject);
// ScriptEngine@e4744f7{id=7,source='/sdcard/脚本/截图取色与坐标.js',cwd='/storage/emulated/0/脚本'}

// 5s 后关闭这个引擎脚本
// sleep(5000)
// engineObject.forceStop()


// 返回脚本执行的路径。对于一个脚本文件而言为这个脚本所在的文件夹；
// 对于其他脚本，例如字符串脚本，则为`null`或者执行时的设置值。
// console.log(engineObject.cwd());   //  /storage/emulated/0/脚本


// 返回当前脚本引擎正在执行的脚本对象。
console.log(engineObject.getSource());  //  /sdcard/脚本/截图取色与坐标.js

toast('启动服务器') 