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


// 在图片中寻找颜色完全相等的点
// while (true) {
//     // 每次需要截图
//     var cap=images.captureScreen()  
//     // 注意:如果有使用开发者指针,指针痕迹也会被查找到
//     // 在找到的第一个点上宽加10,高加20,在找第二个色 ,所有的点都是基于第一个点
//     // 其他点都是为了确定第一个点的准确位置
//     // wh
// var point=images.findMultiColors(cap, "#ff0000", [[10,10,"ff0001"],[10,10,"ff0001"]],{
//     region:[],
//     threshold:0
// })
// if(point){
//     toast("找到红,坐标为("+point.x+","+point.y+')')
//     // break
// }
// sleep(1500)
// }
while (true) {
    // 每次需要截图
    var cap=images.captureScreen()  
    // 注意:如果有使用开发者指针,指针痕迹也会被查找到

var point=images.detectsColors(img,"#ff0000",100 , 200, [threshold=16,algorithm = "diff"])
if(point){
    toast("找到红,坐标为("+point.x+","+point.y+')')
    // break
}
sleep(1500)
}