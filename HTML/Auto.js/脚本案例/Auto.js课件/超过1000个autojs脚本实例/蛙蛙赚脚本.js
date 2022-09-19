
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
/**
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
 */
"ui";
importClass(android.content.Intent);

UI();
function UI() {
    ui.layout(
        <frame>
            <vertical h="auto" align="center" margin="50 50 50 50">
                <linear>
                    <text margin="20 50" w="*" gravity="center" color="#111111" size="16">蛙蛙赚脚本 By：千枯血寂</text>
                </linear>
                <linear>
                    <text margin="20 50" w="*" gravity="center" color="#111111" size="16">各平台脚本群号：703547673</text>
                </linear>
                <linear>
                    <text id="myText" textSize="14sp" textColor="black" marginTop="50" gravity="left" />
                </linear>
                <linear>
                    <button w="*" id="wuzhangai" text="无障碍服务" />
                </linear>

                <linear gravity="center">
                    <button w="*" id="login" text="开始运行" />
                </linear>
            </vertical>
        </frame>
    );
    ui.myText.setText("1.请先确保无障碍权限已经打开 \n2.脚本运行开始后，请勿操作手机 \n3.控制台悬浮窗显示4秒后关闭 \n4.本脚本只做点赞和关注任务，初次打开到任务界面要10秒钟左右");
    ui.wuzhangai.click(function(){
        openAppSetting(getPackageName("蛙蛙赚脚本"));
    
    });
    

    ui.login.on("click", () => {
        threads.start(function () {
            console.show();
            toast("开始运行");

            kaishi();
            var i = 0;
            while (i < 500) {
                sleep(500);
                lingqu();

            }
        })
    });
}
threads.start(function () {
    if (auto.service == null) {
        alert("请先打开无障碍服务");
        //当点击确定后会执行这里
        getlimit();

    }
});
function getlimit() {
    var intent = new Intent();
    //辅助功能
    intent.setAction("android.settings.ACCESSIBILITY_SETTINGS");
    app.startActivity(intent);
}











function jietuquanxian() {
    if (!requestScreenCapture()) {

        alert("请求截图失败，请重新开始")
        console.hide()
        threads.shutDownAll()
        exit()
    } else {
        toast("请求截屏成功")
        sleep(1000)
    }
}

function kaishi() {
    auto.waitFor();
    device.wakeUp();
    device.keepScreenOn();
    toastLog("脚本开始运行，屏幕将长亮。关闭请按电源键。");
    toastLog("平台脚本群：703547673");
    
    sleep(3500);
    console.hide();
    //console.setSize(device.width/8,device.height/8);


    app.launchApp("蛙蛙赚");
    jietuquanxian();
    //waitForPackage("com.frog");
    sleep(13000);
    //sleep (500);
    var h = className("android.widget.ImageView").depth("8").find();//关闭提示
    toastLog(h.length);
    var tb = h[0].bounds();
    click(tb.centerX(), tb.centerY());
    sleep(1000);
    //className("android.widget.ImageView").depth(8).findOne().click()//关闭提示
    var r = text("大量任务").find();
    var tr = r[0].bounds();
    click(tr.centerX(), tr.centerY());
    sleep(2000);
}

function jieping() {

    var tody = new Date();
    var nian = tody.getFullYear();
    var yue = tody.getMonth() + 1;
    var ri = tody.getDate();
    var shi = tody.getHours();
    var fen = tody.getMinutes();
    var miao = tody.getSeconds();
    time = nian.toString() + yue.toString() + ri.toString() + shi.toString() + fen.toString() + miao.toString()
    images.captureScreen("/storage/emulated/0/Pictures/Screenshots/" + time + ".png");
    sleep(1000)
    media.scanFile("/storage/emulated/0/Pictures/Screenshots/" + time + ".png")
    toast("截图完成");
    sleep(1000);
    back();
    sleep(500)
}
//领取任务
function lingqu() {
    sleep(500);
    //领取任务
    var b = className("android.view.ViewGroup").depth("12").find();
    var tx = b[6].bounds();
    click(tx.centerX(), tx.centerY());


    sleep(500);
    if (text("提示").find().length > 0) {
        var a = text("去完成").find();
        var th = a[0].bounds();
        click(th.centerX(), th.centerY());
        sleep(1000);
        var b = text("放弃任务").find()
        toastLog(b.length);
        var tj = b[1].bounds();
        click(tj.centerX(), tj.centerY());
        sleep(800);
        var c = text("放弃").find();
        var tl = c[0].bounds();
        click(tl.centerX(), tl.centerY());
        sleep(1000);
        var tk = b[0].bounds();
        click(tk.centerX(), tk.centerY());
        sleep(800)
        var d = text("放弃").find();
        tp = d[0].bounds();
        click(tp.centerX(), tp.centerY());
        sleep(500);
        back();
        sleep(800);
        var r = text("大量任务").find();
        var tr = r[0].bounds();
        click(tr.centerX(), tr.centerY());
        sleep(2000);
        var b = className("android.view.ViewGroup").depth("12").find();
        var tx = b[6].bounds();
        click(tx.centerX(), tx.centerY());
    }


    sleep(2100);
    //复制跳转到抖音
    if (text("逗音关注").exists()) {
        var c = text("点击复制").find();
        var ty = c[0].bounds();
        click(ty.centerX(), ty.centerY());
        //waitForPackage("com.ss.android.ugc.aweme");
        sleep(4000);
        swipe(3 * device.width / 4, device.height / 2, device.width / 4, device.height / 2, 20);//左滑到个人信息页面
        sleep(1500);
        click(device.width / 2, device.height / 4 - 70);//点击关注
        sleep(800);
        jieping();//截图方法的调用

        //返回蛙蛙赚提交任务
        //sleep(500);
      launchApp("蛙蛙赚");
        sleep(2000);
        //找提交区域
        var e = className("android.widget.ImageView").depth("17").find();
        //toastLog(e.length);
        var ta = e[5].bounds();
        click(ta.centerX(), ta.centerY());
        sleep(1800);
        //选择刚刚截好的图片
        var f = className("android.widget.ImageView").depth("15").find();
        //toastLog(f.length);
        var ta = f[0].bounds();
        click(ta.centerX(), ta.centerY());
        sleep(1500);

        //点击提交
        var g = text("提交任务").find();
        //toastLog(g.length);
        var ta = g[2].bounds();
        click(ta.centerX(), ta.centerY());
        log("完成任务，积分加300");
        sleep(500);
        //删除刚刚的截图
        var r = files.remove("/storage/emulated/0/Pictures/Screenshots/" + time + ".png");
        //toastLog(r);
        toastLog("图片删除成功");
    }
    else {
        var c = text("点击复制").find();
        var ty = c[0].bounds();
        click(ty.centerX(), ty.centerY());
        //waitForPackage("com.ss.android.ugc.aweme");
        sleep(4000);
        click(device.width / 2, device.height / 4);
        sleep(80);
        click(device.width / 2, device.height / 4);
        sleep(800);
        jieping();//截图方法的调用
        //返回蛙蛙赚提交任务
        sleep(500);
        app.launchApp("蛙蛙赚");
        sleep(2000);
        //找提交区域
        var e = className("android.widget.ImageView").depth("17").find();
        //toastLog(e.length);
        var ta = e[5].bounds();
        click(ta.centerX(), ta.centerY());
        sleep(1600);
        //选择刚刚截好的图片
        var f = className("android.widget.ImageView").depth("15").find();
        //toastLog(f.length);
        var ta = f[0].bounds();
        click(ta.centerX(), ta.centerY());
        sleep(1600);

        //点击提交
        var g = text("提交任务").find();
        //toastLog(g.length);
        var ta = g[2].bounds();
        click(ta.centerX(), ta.centerY());
        log("完成任务，积分加300");
        sleep(500);
        //删除刚刚的截图
        var r = files.remove("/storage/emulated/0/Pictures/Screenshots/" + time + ".png");
        //toastLog(r);
        toastLog("图片删除成功");

    }
}




//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
