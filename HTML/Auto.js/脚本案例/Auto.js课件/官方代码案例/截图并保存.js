if(!requestScreenCapture()){
    toast("请求截图失败");
    exit();
}
var img = captureScreen();
images.saveImage(img, "/sdcard/12.jpg");