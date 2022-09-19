
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
/**
autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
1群:168196007 
2群:830810438 
3群:571854376 
4群:63732194
5群:592916456
 */

"ui";
ui.layout(
    <vertical padding="16">
        <ScrollView>
            <vertical>
                <text textSize="16sp" textColor="black" text="停顿间隔,默认5000-10000"/>
                <input id="sleep1" text="5000-10000"/>
                <text textSize="16sp" textColor="black" text="操作间隔,默认2000-4000"/>
                <input id="sleep2" text="2000-4000"/>
                <text textSize="16sp" textColor="black" text="循环次数,默认400"/>
                <input id="loop" text="400"/>
                <text textSize="16sp" textColor="black" text="评论前缀"/>
                <input id="header" text="H"/>
                <text textSize="16sp" textColor="black" text="消息内容"/>
                <input id="msg" text="你好,"/>

                <button id="ok" text="设置"/>
                <button id="lastSetting" text="上次设置"/>
            </vertical>
        </ScrollView>
    </vertical>
);

toast('抖音 650');
toast('10秒后自动使用当前设置!!');

setTimeout(clickOk, 1000 * 10);

//指定确定按钮点击时要执行的动作
ui.ok.click(function () {
    //通过getText()获取输入的内容
    clickOk();
});
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
ui.lastSetting.click(function () {
    threads.start(function () {
        auto.waitFor();

        checkDialog();

        main();
    });
});


function clickOk() {
    var sleep1 = ui.sleep1.getText() + '';
    var sleep2 = ui.sleep2.getText() + '';
    var loopCount = ui.loop.getText() + '';
    var header = ui.header.getText() + '';
    var msg = ui.msg.getText() + '';

    var storage = storages.create("douyin.demo");
    if (sleep1.indexOf('-') !== -1) {
        storage.put('sleep1', sleep1);
    } else {
        storage.put('sleep1', '5000-10000');
    }

    if (sleep2.indexOf('-') !== -1) {
        storage.put('sleep2', sleep2);
    } else {
        storage.put('sleep2', '2000-4000');
    }

    if (isEmpty(loopCount)) {
        storage.put('loop', '400');
    } else {
        storage.put('loop', loopCount);
    }

    if (isEmpty(header)) {
        storage.put('header', '高冷科技引流系统:');
    } else {
        storage.put('header', header);
    }

    if (isEmpty(msg)) {
        storage.put('msg', '你好~~');
    } else {
        storage.put('msg', msg);
    }

    threads.start(function () {
        auto.waitFor();

        checkDialog();

        main();
    });
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
function main() {
    sleep(random(1000, 2000));

    toast("抖音测试脚本启动!");

    var storage = storages.create("douyin.demo");
    var p1 = storage.get('sleep1', '5000-10000').split('-');
    var loopSleepMin = parseInt(p1[0]);
    var loopSleepMax = parseInt(p1[1]);

    var p2 = storage.get('sleep2', '2000-4000').split('-');
    var normalSleepMin = parseInt(p2[0]);
    var normalSleepMax = parseInt(p2[1]);

    var p3 = storage.get('loop', '400');

    var p4 = storage.get('header', '高冷科技引流系统:');
    var p5 = storage.get('msg', '');

    var number = parseInt(p3);

    if (!app.launchPackage("com.ss.android.ugc.aweme")) {
        toast('抖音未安装!');
        exit();
        return;
    }

    waitForActivity("com.ss.android.ugc.aweme.main.MainActivity", 200);

    sleep(random(5000, 10000));

    if (text('我知道了').exists()) {
        clickLayout(text('我知道了').findOne());
    }

    text('首页').findOne().parent().parent().parent().click();

    sleep(random(1000, 2000));

    //判断是否LIVE
    debug('抖音 判断直播 -- !');

    if (!text('正在直播').find().empty()) {
        debug('抖音 判断直播 --1 !');
        if (text('正在直播').findOne().visibleToUser()) {
            debug('正在直播');
            clickLayout(desc('live').findOne());
            sleep(random(1000, 2000));
        }
    }

    debug('抖音 脚本 开始 -- !');

    var likeX = id("a2l").findOne().bounds().centerX();
    var likeY = id("a2l").findOne().bounds().centerY();
    var commentX = id("tx").findOne().bounds().centerX();
    var commentY = id("tx").findOne().bounds().centerY();

    for (i = 0; i <= number; i++) {
        try {
            toast("# " + i);
            sleep(random(loopSleepMin, loopSleepMax));

            var rdm = random(1, 5);
            var offset = random(-100, 100);
            if (rdm === 2) {
                //跳过视频
                toast('忽略');
                swipe(device.width / 2 + offset, device.height / 4 * 3, device.width / 2 + offset, device.height / 4, 300);
                sleep(random(1000, 2000));
                continue;
            }

            if (rdm === 4) {
                //关注
                if (id('ad8').exists()) {
                    log('关注');
                    clickLayout(id('ad8').findOne());
                    toast('关注');

                    //发送私信
                    sleep(random(normalSleepMin, normalSleepMax));
                    clickLayout(id('db8').findOne());

                    //私信按钮
                    id("cea").waitFor();
                    clickLayout(id('cea').findOne());

                    //取消对话框
                    sleep(random(normalSleepMin, normalSleepMax));
                    clickLayout(text("取消").findOne());

                    //输入消息
                    sleep(random(normalSleepMin, normalSleepMax));
                    setText(p5);

                    //发送
                    clickLayout(id('cdz').findOne());
                    sleep(random(normalSleepMin, normalSleepMax));

                    //返回
                    clickLayout(desc('返回').findOne());
                    sleep(500);
                    back();
                }
            }

            //判断广告
            if (text('立即下载').exists() || text('去玩一下').exists() || textContains('广告').exists() || textContains('去体验').exists() || textContains('查看详情').exists()) {
                toast('广告');
                swipe(device.width / 2 + offset, device.height / 4 * 3, device.width / 2 + offset, device.height / 4, 300);
                continue;
            }

            if (isEmpty(likeY)) {
                likeX = id("a2l").findOne().bounds().centerX();
            }

            if (isEmpty(likeY)) {
                likeY = id("a2l").findOne().bounds().centerY();
            }

            if (isEmpty(commentX)) {
                commentX = id("tx").findOne().bounds().centerX();
            }

            if (isEmpty(commentY)) {
                commentY = id("tx").findOne().bounds().centerY();
            }

            log('like: ' + likeX + ',' + likeY);

            click(likeX, likeY);
            sleep(random(normalSleepMin, normalSleepMax));

            log('comment ' + commentX + ',' + commentY);

            click(commentX, commentY);
            sleep(random(normalSleepMin, normalSleepMax));

            var a = http.get("http://word.rainss.cn/api_system.php?type=txt").body.string();
            sleep(random(normalSleepMin, normalSleepMax));

            clickLayout(id('ta').findOne());//点击弹出输入框
            sleep(random(normalSleepMin, normalSleepMax));

            if (id('pm').exists()) {
                clickLayout(id('pm').findOne());//转发并评论
                sleep(random(normalSleepMin, normalSleepMax));

                setText(p4 + a);//输入文字
                sleep(random(normalSleepMin, normalSleepMax));

                clickLayout(id('tq').findOne());//发送
                sleep(random(normalSleepMin, normalSleepMax));
            } else {
                back();//关闭键盘
                sleep(random(normalSleepMin, normalSleepMax));
            }

            back();//返回
            sleep(random(normalSleepMin, normalSleepMax));

            swipe(device.width / 2 + offset, device.height / 4 * 3, device.width / 2 + offset, device.height / 4, 300);
        } catch (e) {
            log(e);
            toast(e);
            back();//返回
            sleep(random(normalSleepMin, normalSleepMax));
            swipe(device.width / 2 + offset, device.height / 4 * 3, device.width / 2 + offset, device.height / 4, 300);
        }

        //判断是否停留在评论界面
        if (textContains('条评论').find().length !== 0) {
            back();
            for (let j = 0; j < 20; j++) {
                toast('操作失败,暂停中');
                sleep(random(normalSleepMin, normalSleepMax));
            }
        }
    }
}


function clickLayout(view) {
    if (view !== undefined && view !== null) {
        try {
            click(view.bounds().centerX(), view.bounds().centerY());
        } catch (e) {
            debug(e + "!!!!");
        }
    }
}

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
function checkDialog() {
    threads.start(function () {
        //在新线程执行的代码
        while (true) {
            debug('check dialog:: douyin');

            sleep(1000);
            //青少年模式
            if (text('进入青少年模式').exists()) {
                clickLayout(text('我知道了').findOne());
                sleep(1000);
            }

            //检测到新版本
            if (text('检测到新版本').exists()) {
                clickLayout(text('以后再说').findOne());
                sleep(1000);
            }

            //停止运行
            if (textContains('停止运行').exists()) {
                clickLayout(text('关闭应用').findOne());
            }
        }
    });
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
