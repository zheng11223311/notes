// 请求截图权限
// if(!requestScreenCapture()){
//     toast("请求截图失败")
//     exit()
// }
// // 需要在autojs 软件内运行才能获取截图权限,需要耗时
// // root 用户不用进入软件就能获取权限
// // sleep(3000)
// // 截图
// var screen=images.captureScreen()
// // x y w h
// var img=images.clip(screen,100,195,100,100)

// img.saveTo("/storage/emulated/0/截图.png");

// 封装成函数
function getImg(x1,y1,x2,y2,path){
    if(!requestScreenCapture()){
        toast("请求截图失败")
        exit()
    }
    var screen=images.captureScreen()
    var img=images.clip(screen,x1,y1,x2 - x1,y2 - y1)
    img.saveTo(path);
    img.recycle()
}
getImg(100,200,500,500,"/storage/emulated/0/截图1.png")