
// 脚本引擎执行时会有弹出,卡顿现象,这是bug
var executionObject =engines.execScriptFile('/sdcard/脚本/42-emit.js',{
    delay:0, //延迟
    // loopTimes:3,   //循环次数,0为无限
    // interval:2000,  //两次输出间隔时间
    
})
sleep(1500)

// 延迟执行的时间
console.log(executionObject.getConfig().delay);
// 循环执行脚本之间的间隔
console.log(executionObject.getConfig().interval);
// 循环的次数
console.log(executionObject.getConfig().loopTimes);
//返回一个字符串数组表示脚本运行时 模块 寻找的路径。
console.log(executionObject.getConfig().getPath());
