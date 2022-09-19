

//进入朋友圈

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
    if(index < 1) {
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
setText("冒个泡")
sleep(1000)
click("发表")












toast("阿涛QQ/微信：656206105")