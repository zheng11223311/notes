if(!requestScreenCapture()){
    toast("请求截图失败");
    exit();
}

waitForPackage("com.ss.android.ugc.aweme")
sleep(1500)
log('开始截图')
var d=new Date()

var path = "/sdcard/"+d.getTime().toString()+".ss.android.ugc.aweme.jpg"

log(path)

captureScreen(path)

toast("截图完成");

