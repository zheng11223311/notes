
var img = images.read("/storage/emulated/0/1.jpeg");

if(img){
    var w=img.getWidth()
    var h=img.getHeight()
    log(w,h)  //3456 5184
}


toast('获取图片的大小');

var color=img.pixel(10,10)
log(color)   // -3750210  返回argb 值
// 转换成字符串颜色
log(colors.toString(color))  //#ffc6c6be
img.recycle();