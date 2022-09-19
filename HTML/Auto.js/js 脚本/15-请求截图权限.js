if(!requestScreenCapture()){
        toast("请求截图失败")
        exit()
}

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


// true 横屏截图 false 竖屏截图,
// 不指定值，则截图方向由当前设备屏幕方向决定
// 获取截图权限
var screen=images.captureScreen(true)
toast("截图权限申请成功")

// 开始截图

// var img=images.captureScreen() //返回image 对象
// img.saveTo('sdcard/1/index.png')
// toast('保存成功!路径为sdcard/1/index.png')


images.captureScreen('/sdcard/1/index.png')  //截图并保存,路径开始要带/
// captureScreen('/sdcard/1/index.png') //截图并保存,不需要返回给image 对象,路径开始要带/