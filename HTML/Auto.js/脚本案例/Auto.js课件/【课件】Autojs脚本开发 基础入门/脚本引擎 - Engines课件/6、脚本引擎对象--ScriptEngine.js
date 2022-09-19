



var executionObject = engines.execScript("hello world", "toast('hello world');sleep(30000)");

// var executionObject = engines.execScriptFile('/sdcard/脚本/demo.js');

sleep(1500)

var engineObject = executionObject.getEngine();

log(engineObject)

// sleep(3000)

// engineObject.forceStop();

// log(engineObject.cwd())

// /storage/emulated/0/脚本

log(engineObject.getSource())

// /sdcard/脚本/demo.js


toast('阿涛QQ/vx:656206105')