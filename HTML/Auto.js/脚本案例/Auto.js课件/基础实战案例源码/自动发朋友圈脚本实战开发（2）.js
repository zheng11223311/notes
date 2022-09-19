

toast("三秒后开始运行")
//准备开始
for (var i = 0; i < 3; i++) {
    
    sleep(1000)

    toast(3-i)  
}
//判断是否在QQ页面
if(!id("com.tencent.mobileqq:id/iag").findOnce()) 
{
    home();
    text("QQ").waitFor();
    sleep(1500);
    clear();
    text("QQ").waitFor();
    sleep(1000);
    click("QQ") 
}

// // 循环等待命令
// var exitWhile = false;
// while(!exitWhile) {

//     var a = id("com.tencent.mobileqq:id/iag").findOne();

//     var b = a.children().findOne(id("com.tencent.mobileqq:id/unreadmsg"));
//     if(b) {
//         a.parent().parent().click();
//         sleep(2000)
//         //等待指令
//         while(!exitWhile){
//             var num = id("com.tencent.mobileqq:id/jfb").find().size() - 1
        
//             var handle = id("com.tencent.mobileqq:id/jfb").find().get(num).text()
//             log(handle)
            
//             if(handle == "发送") {
//                 var sendText = id("com.tencent.mobileqq:id/jfb").find().get(num-1).text();
//                 log(sendText)
//                 var picNum = id("com.tencent.mobileqq:id/jfb").find().get(num-2).text();
//                 log(picNum)
        
//                 exitWhile = true;
//                 setText("1");
//                 sleep(1500);
//                 // fullId = com.tencent.mobileqq:id/imy
//                 id("com.tencent.mobileqq:id/imy").findOne().click();
//                 sleep(1000)
//                 back()
//             }
//             sleep(3000)
//         }
        
//     }
//     sleep(3000)
// }

while(true){
  // 循环等待命令
    var exitWhile = false;
    while(!exitWhile) {

        var a = id("com.tencent.mobileqq:id/iag").findOne();

        var b = a.children().findOne(id("com.tencent.mobileqq:id/unreadmsg"));
        if(b) {
            a.parent().parent().click();
            sleep(2000)
            //等待指令
            while(!exitWhile){
                var num = id("com.tencent.mobileqq:id/jfb").find().size() - 1
            
                var handle = id("com.tencent.mobileqq:id/jfb").find().get(num).text()
                log(handle)
                
                if(handle == "发送") {
                    var sendText = id("com.tencent.mobileqq:id/jfb").find().get(num-1).text();
                    log(sendText)
                    var picNum = id("com.tencent.mobileqq:id/jfb").find().get(num-2).text();
                    log(picNum)
            
                    exitWhile = true;
                    setText("1");
                    sleep(1500);
                    // fullId = com.tencent.mobileqq:id/imy
                    id("com.tencent.mobileqq:id/imy").findOne().click();
                    sleep(1000)
                    back()
                }
                sleep(3000)
            }
            
        }
        sleep(3000)
    }  
    发朋友圈主线程(sendText,picNum)

}



function 发朋友圈主线程(sendText,picNum){
    //点击home
    home();
    text("微信").waitFor();
    sleep(1000);
    click("微信");

    发朋友圈(sendText,picNum);
    
    home();
    text("QQ").waitFor();
    sleep(1500);
    clear();
    text("QQ").waitFor();
    sleep(1000);
    click("QQ")
}

function 发朋友圈(动态内容,图片数量) {
    //进入朋友圈
    text("发现").waitFor();
    sleep(1000);

    click("发现");

    text("朋友圈").waitFor();
    sleep(1000);

    click("朋友圈");

    // className = android.support.v7.widget.LinearLayoutCompat

    //找到照相的按钮

    var 照相按钮 = className("android.support.v7.widget.LinearLayoutCompat").depth("8").findOne();
        sleep(1000)
        var x = 照相按钮.bounds().centerX();
        var y = 照相按钮.bounds().centerY();
    click(x,y);

    text("取消").waitFor();
    sleep(1000);

    click("从相册选择");

    text("图片和视频").waitFor();
    sleep(1000);

    //点击选择选择框
    id("com.tencent.mm:id/dj4").find().forEach((child,index) => {
        if(index < 图片数量) {
            child.click();
            sleep(1000)
        }
    });
    sleep(1500)

    click("完成");

    text("谁可以看").waitFor();
    sleep(1500)
    text("这一刻的想法...").findOne().click();
    sleep(1000)
    setText(动态内容)
    sleep(1000)
    click("发表")
}

function clear() {
    recents()
    // fullId = com.android.systemui:id/clearAnimView
    id("com.android.systemui:id/clearAnimView").waitFor();
    sleep(2000)
    id("com.android.systemui:id/clearAnimView").findOne().click();
    sleep(1500)
}

function 切换账号(username) {
    click("我");
    text("设置").waitFor();
    sleep(1000);
    click("设置");
    text("切换帐号").waitFor();
    sleep(1000);
    click("切换帐号");
    text("清除登录痕迹").waitFor();
    sleep(1000);
    var x;
    var y;
    className("android.widget.LinearLayout").depth("9").find().forEach(child => {
        if(child.children().findOne(text(username))){
            var 坐标 = child.children().findOne(className("android.widget.FrameLayout")).bounds();
            x = 坐标.centerX();
            y = 坐标.centerY();  
        }  
    })
    click(x,y)
    text("发现").waitFor();
    sleep(1500)
}














toast("阿涛QQ/微信：656206105")