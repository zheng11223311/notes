
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
auto.waitFor();
/**
autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
1群:168196007 
2群:830810438 
3群:571854376 
4群:63732194
5群:592916456
 */
main();

 //autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
function main() {
    toast("抖音脚本!!!");

    var number = 1000;

    app.launchPackage("com.ss.android.ugc.aweme");

    waitForActivity("com.ss.android.ugc.aweme.main.MainActivity", 200);

    sleep(random(5000, 10000));

    if (text('我知道了').exists()) {
        clickLayout(text('我知道了').findOne());
    }

    text('首页').findOne().parent().parent().parent().click();

    toast("启动");

    sleep(random(1000, 2000));

    var likeX = id("bwl").findOne().bounds().centerX();
    var likeY = id("bwl").findOne().bounds().centerY();
    var commentX = id("ca1").findOne().bounds().centerX();
    var commentY = id("ca1").findOne().bounds().centerY();

    for (i = 0; i <= number; i++) {
        try {
            toast(i + " .");
            sleep(random(5000, 10000));

            var rdm = random(1, 5);
            var offset = random(-100, 100);
            if (rdm === 2) {
                //跳过视频
                toast('忽略');
                Swipe(device.width / 2 + offset, device.height / 4 * 3, device.width / 2 + offset, device.height / 4, 300);
                sleep(random(1000, 2000));
                continue;
            }

            if (rdm === 4) {
                //关注
                if (id('b_a').exists()) {
                    log('关注');
                    clickLayout(id('b_a').findOne());
                    toast('关注');
                }
            }

            //判断广告
            if (text('去玩一下').exists() || textContains('广告').exists() || textContains('去体验').exists() || textContains('查看详情').exists()) {
                toast('广告');
                Swipe(device.width / 2 + offset, device.height / 4 * 3, device.width / 2 + offset, device.height / 4, 300);
                continue;
            }

            if (likeY === undefined) {
                likeX = id("bwl").findOne().bounds().centerX();
            }

            if (likeY === undefined) {
                likeY = id("bwl").findOne().bounds().centerY();
            }

            if (commentX === undefined) {
                commentX = id("ca1").findOne().bounds().centerX();
            }

            if (commentY === undefined) {
                commentY = id("ca1").findOne().bounds().centerY();
            }

            log('like: ' + likeX + ',' + likeY);

            click(likeX, likeY);
            sleep(random(2000, 4000));

            log('comment ' + commentX + ',' + commentY);

            click(commentX, commentY);
            sleep(random(2000, 4000));

            var a = http.get("http://word.rainss.cn/api_system.php?type=txt").body.string();
            sleep(random(2000, 4000));

            clickLayout(id('a7y').findOne());//点击弹出输入框
            sleep(random(2000, 4000));

            if (id('aq0').exists()) {
                clickLayout(id('aq0').findOne());//转发并评论
                sleep(random(2000, 4000));

                setText("高冷科技引流系统:" + a);//输入文字
                sleep(random(2000, 4000));

                clickLayout(id('a81').findOne());//发送
                sleep(random(2000, 4000));
            } else {
                back();//关闭键盘
                sleep(random(2000, 4000));
            }

            back();//返回
            sleep(random(2000, 4000));

            Swipe(device.width / 2 + offset, device.height / 4 * 3, device.width / 2 + offset, device.height / 4, 300);
        } catch (e) {
            log(e);
            toast(e);
            back();//返回
            sleep(random(2000, 4000));
            Swipe(device.width / 2 + offset, device.height / 4 * 3, device.width / 2 + offset, device.height / 4, 300);
        }

        //判断是否停留在评论界面
        if (textContains('条评论').find().length !== 0) {
            back();
            for (let j = 0; j < 20; j++) {
                toast('操作失败,暂停中');
                sleep(random(2000, 4000));
            }
        }
    }
}

 //autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
function clickLayout(view) {
    if (view !== undefined && view !== null) {
        try {
            click(view.bounds().centerX(), view.bounds().centerY());
        } catch (e) {
            log(e + "," + view);
        }
    }
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
