

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

发说说线程(sendText,picNum)

function 发说说线程(sendText,picNum) {
    
    发表说说(sendText,picNum)

    //第一个帐号
    改变账号("夏王营销")
    发表说说(sendText,picNum)
    //第二个帐号
    改变账号("阿涛--立体空间")
    发表说说(sendText,picNum)
    
    //起始帐号
    改变账号("阿涛")
    归位()
}


function 发表说说(sendText,picNum) {
    
    //找到第一个账号
    click("动态");
    text("好友动态").waitFor();
    sleep(500)
    click("好友动态");
    id("com.tencent.mobileqq:id/c4r").waitFor();
    sleep(1000)
    click("说说");
    text("分享新鲜事").waitFor();
    sleep(1000)
    click("分享新鲜事");
    id("com.tencent.mobileqq:id/ivTitleBtnRightText").waitFor();
    sleep(1500)
    setText(sendText);
    sleep(1500)
    

    var photo = text("照片/视频").findOne().bounds();
    var x = photo.centerX();

    var y = photo.centerY();
    click(x,y)

    text("取消").waitFor();
    sleep(1000)
    click("从手机相册选择")
    sleep(1500)



    //点击照片原点
    // fullId = com.tencent.mobileqq:id/fq9
    // fullId = com.tencent.mobileqq:id/send_btn
    id("com.tencent.mobileqq:id/send_btn").waitFor();
    sleep(1500)
    id("com.tencent.mobileqq:id/fq8").find().forEach((child,index) => {
        if(index < picNum) {
            child.click();
            sleep(1000)
        }
    });
    sleep(1500)

    //点击确定fullId = com.tencent.mobileqq:id/send_btn

    id("com.tencent.mobileqq:id/send_btn").findOne().click();
    text("发表").waitFor();
    //点击发表
    sleep(1500)
    click("发表")
    text("分享新鲜事").waitFor();
    sleep(1000);
    back();
    text("好友动态").waitFor();
    sleep(1000);
    back();
    text("动态").waitFor();
    sleep(1000);
}

function 改变账号(username) {
    // fullId = com.tencent.mobileqq:id/fd9
    id("com.tencent.mobileqq:id/fd9").findOne().click();
    text("自定义在线状态").waitFor();
    sleep(1000);
    click(username);
    text("好友动态").waitFor();
    sleep(1000);
}

function 归位() {
    click("消息");
    id("com.tencent.mobileqq:id/iag").waitFor();
    sleep(1000);
}

function clear() {
    recents()
    // fullId = com.android.systemui:id/clearAnimView
    id("com.android.systemui:id/clearAnimView").waitFor();
    sleep(2000)
    id("com.android.systemui:id/clearAnimView").findOne().click();
    sleep(1500)
}







