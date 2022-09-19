


// ScriptEngine.emit(eventName[, ...args\])



//运行脚本
var e = engines.execScriptFile("/sdcard/脚本/demo.js");

//等待脚本启动
sleep(2000);

//向该脚本发送事件
e.getEngine().emit("say", "你好",'阿涛');




toast('阿涛QQ/vx:656206105')

