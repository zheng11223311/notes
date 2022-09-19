
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
if (!requestScreenCapture()) { alert("请求截图权限失败！"); exit(); };  //设置截图失败退出脚本
files.ensureDir("/sdcard/Pictures/Screenshots/")
var screencapture
var dydianzan
var picpath
launchApp("截图宝")
while (true) {
    main()
}

function main() {

    ok_msg_ok = id("com.gosing.article.news.jh:id/ok_msg_ok").findOnce();
    if (ok_msg_ok) {
        ok_msg_ok.click();
        sleep(1000);
    }

    delete_msg_ok = id("com.gosing.article.news.jh:id/delete_msg_ok").findOnce();
    if (delete_msg_ok) {
        delete_msg_ok.click();
    }

    ok_id = id("com.gosing.article.news.jh:id/ok_id").findOnce();
    if (ok_id) {
        ok_id.click();
    }

    btn_get_task = id("com.gosing.article.news.jh:id/btn_get_task").findOnce();
    if (btn_get_task) {
        click("领取任务");
        sleep(200);
    }

    btn_share_wx = id("com.gosing.article.news.jh:id/btn_share_wx").findOnce();
    rl_add1 = id("com.gosing.article.news.jh:id/rl_add1").findOnce();
    ll_close1 = id("com.gosing.article.news.jh:id/ll_close1").findOnce();
    btn_commit_task = id("com.gosing.article.news.jh:id/btn_commit_task").findOnce();
    tv_type = id("com.gosing.article.news.jh:id/tv_type").findOnce();
    if (tv_type) {
        if (tv_type.text() == "点赞") {
            if (btn_share_wx && !ll_close1 && !rl_add1) {
                btn_share_wx.click();
                dydianzan = 1;
            } else if (ll_close1 && btn_commit_task) {
                btn_commit_task.click();
                screencapture = 0;
                files.remove(picpath);
            } else if (rl_add1  && screencapture) {
                rl_add1.click();
            }
        }else{
            tv_un_share = id("com.gosing.article.news.jh:id/tv_un_share").findOne();
            if(tv_un_share){
                tv_un_share.click();
                sleep(1000);
            }
        }
    }

    if(currentActivity() == "android.app.Dialog" && dydianzan == 1){
        dydianzan = 0;
        dylike();
    }

    tv_task_name = id("com.gosing.article.news.jh:id/tv_task_name").findOnce();
    if(tv_task_name){
        click("看抖抖视频");
        sleep(1000);
    }
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

function dylike(){
    waitForActivity("android.app.Dialog");
    // sleep(1000);
    for(i=0;i<4;i++){
        click(device.width/2,device.height/2);
        sleep(50);
    }
    sleep(1000);
    picpath = "/sdcard/Pictures/Screenshots/" + (new Date).getTime() + ".png"
    images.captureScreen(picpath);
    screencapture = 1
    media.scanFile(picpath);
    // back();
    launchApp("截图宝");
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
