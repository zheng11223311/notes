




//运行脚本
var e = engines.execScriptFile("/sdcard/脚本/demo.js",{
    loopTimes: 10,
    interval: 3000,

});

//等待脚本启动
sleep(2000);



log(e.getConfig().interval)

log(e.getConfig().loopTimes)




toast('阿涛QQ/vx:656206105')