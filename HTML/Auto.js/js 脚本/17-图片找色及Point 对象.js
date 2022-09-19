if(!requestScreenCapture()){
    toast("请求截图失败")
    exit()
}
// true 横屏截图 false 竖屏截图,
// 不指定值，则截图方向由当前设备屏幕方向决定
// 获取截图权限
var screen=images.captureScreen(true)


// 开启线程,点击允许投屏的立即开始
threads.start(function(){
    //在新线程执行的代码
    while(true){
        if(text('立即开始').findOnce()){
            text('立即开始').findOnce().click()
            break
        }else{
                sleep(1000) 
        }
    }
});



// 循环找色,找到红色时停止并报告
// while (true) {
//     // 每次需要截图
//     var cap=images.captureScreen()  
//     // 注意:如果有使用开发者指针,指针痕迹也会被查找到
// var point=findColor(cap,"#ff0000",{
//     // 2参数 xy  4参数 xywh   无参 全屏
//     // region:[400,500,300,200],   //区域
//     threshold:0     //色差 完全等于红色  范围为0 ~ 255
// })
// if(point){
//     toast("找到红,坐标为("+point.x+","+point.y+')')
//     // break
// }
// sleep(1500)
// }

// 循环找色,找到红色时停止并报告
// while (true) {
//     // 每次需要截图
//     var cap=images.captureScreen()  
//     // 注意:如果有使用开发者指针,指针痕迹也会被查找到
//     // xywh,色差值
//     var point=images.findColorInRegion(cap, "#ff0000", 200, 200, 500, 1000, 4)
// if(point){
//     toast("找到红,坐标为("+point.x+","+point.y+')')
//     // break
// }
// sleep(1500)
// }


// 在图片中寻找颜色完全相等的点
while (true) {
    // 每次需要截图
    var cap=images.captureScreen()  
    // 注意:如果有使用开发者指针,指针痕迹也会被查找到
// xywh
var point=images.findColorEquals(cap,"#ff0000", 200, 200, 500, 1000)
if(point){
    toast("找到红,坐标为("+point.x+","+point.y+')')
    // break
}
sleep(1500)
}