
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";



//autojs源码提取,加密打包,代码解密,还原.微信:zxkj6898 或zx033245 或QQ168196007
//
//auto.waitFor()
events.observeKey();
//hyb1996.github.io/AutoJs-Docs
var color = "#009688";

ui.layout(
    <drawer id="drawer">
        <vertical>
            <appbar>
                <toolbar id="toolbar" title="爱关注" />
                <tabs id="tabs" />
            </appbar>
            <viewpager id="viewpager" margin="10 5">
                <frame>

                    <vertical>
                        <horizontal>
                            <radiogroup id="ydxx" mariginTop="16" w="200">
                                <radio id="radio0" text="抖音养号" />
                                <radio id="radio1" text="66阅读" />

                                <radio id="radio2" text="蚂蚁点吧" />//checked="true" 

                                <radio id="radio3" text="攒攒" />

                                <text text="     " textColor="black" textSize="10sp" />
                                
                            </radiogroup>
                            <vertical>
                                <button id="click_66zc" text="66注册下载地址" gravity="center" h="37" w="150" />
                                <button id="click_mydbzc" text="蚂蚁点吧下载地址" gravity="center" h="37" w="150" />
                                <button id="click_zzzc" text="攒攒注册地址" gravity="center" h="37" w="150" />
                            </vertical>
                        </horizontal>
                        <horizontal>
                                    <input id="zzyc" inputType="number" text="1" gravity="center" />

                                    <text text="（秒）" textColor="black" textSize="15sp" />

                                    <text text="攒攒提交任务前等待图片上传完成的延迟,默认为1秒" textColor="black" textSize="12sp" marginTop="1" w="auto"  />
                                </horizontal>
                        <button id="click_kaishi" text="开始(音量下、Home键停止)" gravity="center" />
                    </vertical>

                </frame>
                <frame>
                    <text text="" textColor="red" textSize="16sp" />
                </frame>
                <frame>
                    <vertical>
                        <text text="小说填写邀请码，你有1元，作者也有1元奖励，当是给作者的赞助，谢谢！" textColor="black" />
                        <text text="        " textColor="black" />
                        <horizontal>
                            <text text="     牛角免费小说邀请码：6a3jnj" textColor="black" />
                            <button id="click_njyq" text="复制邀请码" gravity="center" />
                        </horizontal>
                        <horizontal>
                            <text text="     漫趣阅读邀请码：8MJD0C" textColor="black" />
                            <button id="click_mqyq" text="复制邀请码" gravity="center" />
                        </horizontal>
                        <card w="*" h="80" margin="10 5" cardCornerRadius="2dp"
                            cardElevation="1dp" gravity="center_vertical">
                            <vertical padding="18 8" h="auto">
                                <button id="click_xiaoshuo" text="小说自动翻页(音量下、Home键停止)" gravity="center" />
                            </vertical>
                            <View bg="#224336" h="*" w="10" />
                        </card>
                    </vertical>
                </frame>
            </viewpager>
        </vertical>
        <vertical layout_gravity="left" bg="#ffffff" w="280">
            <img w="280" h="200" scaleType="fitXY" src="http://images.shejidaren.com/wp-content/uploads/2014/10/023746fki.jpg" />
            <list id="menu">
                <horizontal bg="?selectableItemBackground" w="*">
                    <img w="50" h="50" padding="16" src="{{this.icon}}" tint="{{color}}" />
                    <text textColor="black" textSize="15sp" text="{{this.title}}" layout_gravity="center" />
                </horizontal>
            </list>
        </vertical>
    </drawer>
);

ui.click_kaishi.on("click", () => {
    threads.start(function () { requestScreenCapture(); })

    if (ui.radio0.checked) {
        threads.start(function 抖音养号() {//抖音养号

            app.launchPackage("com.ss.android.ugc.aweme")
            sleep(1000)
            toast("等待抖音界面")
            for (i = 1; i < 2000; i++) {
                var u = packageName("com.ss.android.ugc.aweme").find();
                if (u.length > 0) {
                    break;
                } else {
                    sleep(1)
                }
            }
            sleep(3000)

            while (true) {
                if (text("我知道了").find().length > 0) {
                    text("我知道了").find()[0].click()
                }
                swipe(device.width / 2, device.height * 4 / 5, device.width / 2, device.height / 5, 500)
                a = random(6, 15)
                toast("等待" + a + "秒")
                sleep(a * 1000)
            }
        })
    } else if (ui.radio1.checked) {//66阅读
        threads.start(function () {

            sleep(1000)
            var 等待时间 = 1
            app.launchPackage("com.toutiaozuqiu.and.liuliu")
            // requestScreenCapture();
            do {
                if (className("android.view.View").text("观看爆音视频").find().length > 0) {
                    toast("主界面")
                    className("android.view.View").text("观看爆音视频").findOne().click();
                    sleep(1500)
                } else if (text("领取任务").find().length > 0) {
                    toast("领取任务")
                    id("btn").text("领取任务").findOne().click();
                    sleep(1500)
                } else if (id("btn").text("打开“爆音”做任务").find().length > 0) {
                    toast("打开抖音界面")
                    if (id("task_require_2").text("1、点赞").exists()) {
                        //toast("点赞");
                        任务类型 = "点赞任务"
                        id("btn").text("打开“爆音”做任务").findOne().click();
                        sleep(1000);
                        检测抖音界面();
                        if (状态 == "放弃任务") {
                            app.launchPackage("com.toutiaozuqiu.and.liuliu");
                            sleep(1000)
                            back()
                            sleep(1000)
                            var u = text("放弃任务").find()
                            var tv = u[0]; //放弃任务
                            if (tv) {
                                var tr = tv.bounds()
                                click(tr.centerX(), tr.centerY());
                                sleep(1500)
                            }
                            var u = text("确定").find()
                            var tv = u[0]; //放弃任务
                            if (tv) {
                                var tr = tv.bounds()
                                click(tr.centerX(), tr.centerY());
                                sleep(1500)
                            }
                        } else if (任务类型 = "点赞任务") {

                            抖音关注点赞();
                            sleep(1000);
                            截屏()
                            app.launchPackage("com.toutiaozuqiu.and.liuliu");
                            id("btn1").text("上传截图").findOne().click();
                            var u = id("btn1").text("上传截图").find();
                            var tv = u[0];
                            if (tv) {
                                var ty = tv.bounds();
                            }

                            sleep(2000);
                            //选第一张图片
                            var u = text(time + ".png").find();
                            var tv = u[0];
                            if (tv) {
                                var tr = tv.bounds();
                                click(tr.centerX(), tr.centerY());
                                sleep(1500);
                            }
                            do {
                                sleep(1000)//这里有坐标
                            } while (bounds(ty.left, ty.top, ty.right, ty.bottom).find().length == 1)
                            id("btn").text("提交任务").findOne().click();
                        }
                    } else if (id("task_require_2").text("1、关注").exists()) {
                        任务类型 = "关注任务"
                        sleep(1000);
                        id("btn").text("打开“爆音”做任务").findOne().click();
                        sleep(1500); //下面有问题
                        检测抖音界面();
                        抖音关注点赞();
                        sleep(1000)
                        截屏()
                        app.launchPackage("com.toutiaozuqiu.and.liuliu");
                        id("btn1").text("上传截图").findOne().click();

                        var u = id("btn1").text("上传截图").find();
                        var tv = u[0];
                        if (tv) {
                            var ty = tv.bounds();
                        }
                        sleep(2000);
                        //选第一张图片
                        var u = text(time + ".png").find();
                        var tv = u[0];
                        if (tv) {
                            var tr = tv.bounds();
                            click(tr.centerX(), tr.centerY());
                            sleep(1500);
                        }
                        do {
                            sleep(1000)
                        } while (bounds(ty.left, ty.top, ty.right, ty.bottom).find().length == 1)
                        id("btn").text("提交任务").findOne().click();
                    } else if (id("task_require_2").text("1、留言").exists()) {
                        var u = text("放弃任务").find()
                        var tv = u[0]; //放弃任务
                        if (tv) {
                            var tr = tv.bounds()
                            click(tr.centerX(), tr.centerY());
                            sleep(1500)
                        }
                        var u = text("确定").find()
                        var tv = u[0]; //放弃任务
                        if (tv) {
                            var tr = tv.bounds()
                            click(tr.centerX(), tr.centerY());
                            sleep(1500)
                        }
                    }
                } else if (text("暂时没有任务，请尝试其它任务").find().length > 0) {
                    back();
                    for (var i = 1; i < 6; i++) {
                        toast("没任务，等待第" + i + "0秒")
                        sleep(等待时间 * i * 10000)
                    }

                }
                sleep(1000)
            } while (true)

        })
    } else if (ui.radio2.checked) {//蚂蚁点吧
        threads.start(function () {
            sleep(1000)
            app.launchPackage("com.mayi.dianba")
            //requestScreenCapture();

            sleep(1000)
            do {
                蚂蚁点吧任务大厅()
                蚂蚁点吧领取任务()
                抖音检测界面并判断任务()
                检测抖音界面()
                抖音关注点赞()
                back()
                sleep(1000)
                recents()
                sleep(500)
                recents()
                sleep(2000)
                蚂蚁点吧任务大厅()
                蚂蚁点吧我已完成()
            } while (true)
        })
    } else if (ui.radio3.checked) {//攒攒
        threads.start(function 攒攒() {
            app.launchPackage("com.zanqzan.app")
            // requestScreenCapture();
            sleep(1000)
            do {
                //var img = captureScreen()
                //toast("界面检测")
                if (text("D音任务").find().length == 2 && text("D音").find().length == 1) {
                    var img = captureScreen()
                    if (text("打开D音 直接做任务 ").find().length > 0 || text("打开D音 直接做任务").find().length > 0) {
                        if (text("打开D音 直接做任务 ").find().length > 0) {
                            var zzzrw = text("打开D音 直接做任务 ").find()[0].bounds()
                        } else if (text("打开D音 直接做任务").find().length > 0) {
                            var zzzrw = text("打开D音 直接做任务").find()[0].bounds()
                        }
                        //抖音领取任务界面
                        a = findColor(captureScreen(), "#fff37b1d", { region: [zzzrw.left, zzzrw.top, zzzrw.right - zzzrw.left, zzzrw.bottom - zzzrw.top], threshold: 5 })
                        if (a) {
                            toast("抖音开始任务")
                            if (text("点赞").find().length > 0) {
                                任务类型 = "点赞任务"
                                if (text("打开D音 直接做任务 ").find().length > 0) {
                                    text("打开D音 直接做任务 ").find().click()
                                } else if (text("打开D音 直接做任务").find().length > 0) {
                                    text("打开D音 直接做任务").find().click()
                                }

                                sleep(1000)
                                检测抖音界面()
                                if (状态 == "放弃任务") {
                                    back()
                                    sleep(1000)
                                    app.launchPackage("com.zanqzan.app")
                                    sleep(1000)
                                    攒攒放弃任务()
                                } else {
                                    抖音关注点赞()
                                    截屏()
                                    攒攒上传图片()
                                    do {
                                        sleep(2000)
                                    } while (text("×").find().length == 0)
                                    var zzyc = ui.zzyc.text();
                                    sleep(zzyc * 1000)
                                    text("提交任务").find()[0].click()
                                    攒攒检查任务提交()
                                }

                            } else if (text("关注").find().length > 0) {
                                任务类型 = "关注任务"


                                if (text("打开D音 直接做任务 ").find().length > 0) {
                                    text("打开D音 直接做任务 ").find().click()
                                } else if (text("打开D音 直接做任务").find().length > 0) {
                                    text("打开D音 直接做任务").find().click()
                                }

                                sleep(1000)
                                检测抖音界面()


                                if (id("ckn").find().length > 0) {
                                } else if (id("d3y").find().length > 0) {
                                } else if (id("aw6").find().length > 0) {
                                    //toast("已关注")
                                } else {
                                    sleep(1500)
                                    状态 = "放弃任务"
                                }
                                if (状态 == "放弃任务") {
                                    back()
                                    sleep(1000)
                                    app.launchPackage("com.zanqzan.app")
                                    sleep(1000)
                                    攒攒放弃任务()
                                } else {
                                    抖音关注点赞()
                                    截屏()
                                    攒攒上传图片()
                                    do {
                                        sleep(2000)
                                    } while (text("×").find().length == 0)
                                    var zzyc = ui.zzyc.text();
                                    sleep(zzyc * 1000)
                                    text("提交任务").find()[0].click()
                                    攒攒检查任务提交()
                                }
                            } else if (text("评论").find().length > 0 || text("点赞 关注 评论").find().length > 0 || text("点赞 关注 评论 ").find().length > 0) {
                                任务类型 = "评论任务"
                                攒攒放弃任务()
                            }
                        } else {
                            back()
                            sleep(1000)
                        }
                    } else {
                        toast("没任务，等待30秒")
                        sleep(30000)
                    }
                } else if (text("D音任务").find().length == 1 && text("D音").find().length == 1) {
                    //toast("领取任务或每日签到界面")
                    if (text("每日签到").find().length == 2) {
                        var mrqd = text("每日签到").find()[1].bounds()
                        a = findColor(captureScreen(), "#ff2babff", { region: [mrqd.left, mrqd.top, mrqd.right - mrqd.left, mrqd.bottom - mrqd.top], threshold: 5 })
                        if (a) {
                            toast("每日签到")
                        }
                        text("打开D音 ").findOne().click()
                        检测抖音界面()
                        do {
                            var u = text("我").find()
                            var tv = u[0];
                            if (tv) {
                                var tr = tv.bounds()
                                click(tr.centerX(), tr.centerY());
                                sleep(2500)
                            }
                        } while (text("编辑资料").find().length == 0)
                        截屏()
                        攒攒上传图片()
                        do {
                            sleep(2000)
                        } while (text("×").find().length == 0)
                        var zzyc = ui.zzyc.text();
                        sleep(zzyc * 1000)
                        var u = text("每日签到").find();
                        var tv = u[1];
                        if (tv) { u[1].click(); sleep(3000); }
                        sleep(2000)
                        back()
                        sleep(1500)
                    } else if (text("领取任务").find().length > 0) {
                        var lqrw = text("领取任务").find()[1].bounds()
                        a = findColor(captureScreen(), "#ff2babff", { region: [lqrw.left, lqrw.top, lqrw.right - lqrw.left, lqrw.bottom - lqrw.top], threshold: 5 })
                        if (a) {
                            toast("领取任务")
                            text("领取任务").find()[1].click()
                        }
                    }
                } else if (text("D音任务").find().length == 1 && text("D音").find().length == 0) {
                    toast("主界面")
                    text("D音任务").findOne().click();
                }
                sleep(2000)

            } while (true)
        })
    }
})
ui.click_xiaoshuo.on("click", () => {//牛角小说
    threads.start(function 小说() {
        console.show();
        log("请手动切换到小说界面")
        do {
            a = random(1, 10)
            if (a == 1) {
                swipe(device.width / 5, device.height / 2, device.width * 4 / 5, device.height / 2, 500)
                a = random(25, 40)
                log("上一页，等待" + a + "秒")
            } else {
                swipe(device.width * 4 / 5, device.height / 2, device.width / 5, device.height / 2, 500)
                a = random(25, 40)
                log("下一页，等待" + a + "秒")
            }
            sleep(a * 1000)

        } while (true)

    })
})
ui.click_njyq.on("click", () => {
    threads.start(function () {
        setClip("6a3jnj")
        toast("复制成功")
    })
})
ui.click_mqyq.on("click", () => {
    threads.start(function () {
        setClip("8MJD0C")
        toast("复制成功")
    })
})
ui.click_66zc.on("click", () => {
    threads.start(function () {
        setClip("http://junwz.cn//user1/appshare?installapp=1&mid=237QFLEAJ")
        toast("66注册下载地址复制成功请,在浏览器输入网址")
    })
})
ui.click_mydbzc.on("click", () => {
    threads.start(function () {
        setClip("http://39.98.68.183:8099/view/mweb/mayi/mayi_reg.aspx?invite=18578325321&nsukey=PyDvi4slc7e7dhknTCd%2BJX%2F6B1zJKjdHvLJstyibYk1tqOzHvemWMpVB6SVrUJoYKhevE2X9rSafBqNC%2B2RhfDiagU8GzGWKGPE%2FSjuDDj4pYGkmnn1JJVKbF5yPajgoklu04QLNfowGRbiKO06jUT6nC0y%2F8LHifmToVWIKFJSzny16OEZxhGbovOo5mzQFrUjw8BUNJOSJwuO2%2FkqFQw%3D%3D")
        toast("蚂蚁点吧注册下载地址复制成功")
    })
})
ui.click_zzzc.on("click", () => {
    threads.start(function () {
        setClip("http://reg.zqzan.com/?sid=lowmuyz5aask70cl")
        toast("攒攒注册下载地址复制成功")
    })
})
//创建选项菜单(右上角)
ui.emitter.on("create_options_menu", menu => {
    menu.add("使用说明");
    menu.add("声明");
    menu.add("关于");
});
//监听选项菜单点击
ui.emitter.on("options_item_selected", (e, item) => {
    switch (item.getTitle()) {
        case "使用说明":
            alert("使用说明", "本软件兼容部分手机机型（哪些不兼容不知道，自行测试），模拟器请在雷电安卓模拟器4.0版（安卓7.0以上）以上运行，电脑打开下载网站www.ldmnq.com，如手机运行有问题，请更换模拟器，群文件里有使用说明，有问题可加QQ群590057347反馈群主");
            break;
        case "声明":
            alert("声明", "本软件仅供学习交流，如作他用所承受的法律责任一概与作者无关");
            break;
        case "关于":
            alert("爱关注", "版本号1.0.0.6");
            break;
    }
    e.consumed = true;
});
activity.setSupportActionBar(ui.toolbar);

//设置滑动页面的标题
ui.viewpager.setTitles(["抖音点赞关注", "微信自动阅读", "小说翻页"]);
//让滑动页面和标签栏联动
ui.tabs.setupWithViewPager(ui.viewpager);

//让工具栏左上角可以打开侧拉菜单
ui.toolbar.setupWithDrawer(ui.drawer);

ui.menu.setDataSource([
    //{
    //    title: "选项一",
    //    icon: "@drawable/ic_android_black_48dp"
    //},
    //{
    //    title: "选项二",
    //    icon: "@drawable/ic_settings_black_48dp"
    //},
    {
        title: "QQ群590057347",
        icon: "@drawable/ic_favorite_black_48dp"
    },
    {
        title: "退出",
        icon: "@drawable/ic_exit_to_app_black_48dp"
    }
]);

ui.menu.on("item_click", item => {
    switch (item.title) {
        case "退出":
            ui.finish();
            break;
    }
})


function 蚂蚁点吧我已完成() {
    var u = className("android.widget.Button").find()
    var tv = u[1];
    if (tv) {
        var tr = tv.bounds()
        click(tr.centerX(), tr.centerY());
        sleep(2000)
    }
    var u = className("android.widget.Button").find()
    var tv = u[1];
    if (tv) {
        var tr = tv.bounds()
        click(tr.centerX(), tr.centerY());
        sleep(1500)
    }
    swipe(device.width / 2, device.height / 5, device.width / 2, device.height * 4 / 5, 800)
    toast("等待2秒")
    sleep(2000)
}
function 抖音检测界面并判断任务() {

    for (i = 1; i < 2000; i++) {
        var u = packageName("com.ss.android.ugc.aweme").find();
        if (u.length > 0) {
            break;
        } else {
            sleep(1)
        }
    }
    sleep(3000)
    if (className("android.widget.ImageView").find().length == 3) {
        //toast("视频界面")
        任务类型 = "点赞任务"
    } else if (className("android.widget.ImageView").find().length == 1) {
        //toast("信息界面")
        任务类型 = "关注任务"
    }
    if (text("前往").find().length > 0) {
        var u = text("前往").find()
        var tv = u[0];
        if (tv) {
            var tr = tv.bounds()
            click(tr.centerX(), tr.centerY());
            sleep(1500)
        }
    } else if (text("前往 ").find().length > 0) {
        var u = text("前往 ").find()
        var tv = u[0];
        if (tv) {
            var tr = tv.bounds()
            click(tr.centerX(), tr.centerY());
            sleep(1500)
        }
    }
}
function 蚂蚁点吧领取任务() {
    var u = className("android.widget.Button").find()
    var tv = u[0];
    if (tv) {
        var tr = tv.bounds()
        click(tr.centerX(), tr.centerY());
        sleep(1500)
    }
}
function 蚂蚁点吧任务大厅() {
    var u = id("rdb_pubish").find()
    var tv = u[0];
    if (tv) {
        var tr = tv.bounds()
        click(tr.centerX(), tr.centerY());
        sleep(1500)
    }
}


function 攒攒放弃任务() {
    if (text("放弃任务 ").find().length > 0) {
        text("放弃任务 ").findOne().click()
        sleep(1000)
        text("确定").findOne().click()
        sleep(2000)
        back()
    } else if (text("放弃任务").find().length > 0) {
        text("放弃任务").findOne().click()
        sleep(1000)
        text("确定").findOne().click()
        sleep(2000)
        back()
    }
}
function 攒攒上传图片() {
    app.launchPackage("com.zanqzan.app")
    sleep(1500)
    if (text("任务截图").find().length > 0) {
        var u = text("任务截图").find();
    } else if (text("任务截图 ").find().length > 0) {
        var u = text("任务截图 ").find();
    }

    var tv = u[0];
    if (tv) { u[0].click(); sleep(1000); }
    do {
        sleep(1500)
    } while (className("android.widget.FrameLayout").find() == 0)
    //点击第一张图片
    var u = className("android.widget.FrameLayout").find()
    var tv = u[2];
    if (tv) {
        var tr = tv.bounds()
        click(tr.centerX(), tr.centerY());
        sleep(1500)
    }
    //完成按钮
    var u = className("android.widget.Button").find()
    if (u.length > 0) {
        toast(className("android.widget.Button").find().length)
        className("android.widget.Button").find()[0].click()
        sleep(2500)
    }
}
function 攒攒检查任务提交() {
    任务提交是否成功 = "提交失败"
    //toast("检查任务是否提交成功")
    for (var i = 1; i < 500; i++) {
        if (text("正在准备下一条任务 ...").className("android.view.View").find().length > 0) {
            //log("任务完成");
            任务提交是否成功 = "提交成功";
            break;
        }
        sleep(1)
    }
    //toast(任务提交是否成功)
    sleep(1000)
    if (任务提交是否成功 == "提交成功") {
        back()
    } else if (任务提交是否成功 == "提交失败") {
        攒攒放弃任务()
    }

}
function 申请截屏权限() {
    requestScreenCapture()
}
function 截屏() {

    var tody = new Date();
    var nian = tody.getFullYear();
    var yue = tody.getMonth() + 1;
    var ri = tody.getDate();
    var shi = tody.getHours();
    var fen = tody.getMinutes();
    var miao = tody.getSeconds();
    time = nian.toString() + yue.toString() + ri.toString() + shi.toString() + fen.toString() + miao.toString()
    //toast(time)
    captureScreen("/storage/emulated/0/Pictures/Screenshots/" + time + ".png");
    sleep(1000)
    media.scanFile("/storage/emulated/0/Pictures/Screenshots/" + time + ".png")
    toast("截图完成");
    sleep(1000);
    back();
    sleep(500)
}

function 检测抖音界面() {
    toast("等待抖音界面")
    for (i = 1; i < 2000; i++) {
        var u = packageName("com.ss.android.ugc.aweme").find();
        if (u.length > 0) {
            break;
        } else {
            sleep(1)
        }
    }
    sleep(3000)
    状态 = "正常任务"
    img = captureScreen()
    var a = findColor(img, "#ff000000", { region: [device.width / 3, device.height / 3, 1, 1], threshold: 5 })
    var b = findColor(img, "#ff000000", { region: [device.width / 2, device.height / 3, 1, 1], threshold: 5 })
    var c = findColor(img, "#ff000000", { region: [2 * device.width / 3, device.height / 3, 1, 1], threshold: 5 })
    var d = findColor(img, "#ff000000", { region: [device.width / 3, device.height / 2, 1, 1], threshold: 5 })
    var e = findColor(img, "#ff000000", { region: [device.width / 2, device.height / 2, 1, 1], threshold: 5 })
    var f = findColor(img, "#ff000000", { region: [2 * device.width / 3, device.height / 2, 1, 1], threshold: 5 })
    var g = findColor(img, "#ff000000", { region: [device.width / 3, 2 * device.height / 3, 1, 1], threshold: 5 })
    var h = findColor(img, "#ff000000", { region: [device.width / 2, 2 * device.height / 3, 1, 1], threshold: 5 })
    var i = findColor(img, "#ff000000", { region: [2 * device.width / 3, 2 * device.height / 3, 1, 1], threshold: 5 })
    if (a && b && c && d && e && f && g && h && i) {
        //toast("黑屏")

        状态 = "放弃任务"
    }
    sleep(1000)
}
function 抖音关注点赞() {
    if (任务类型 == "点赞任务") {
        click(device.width / 2, device.height / 2)
        sleep(50)
        click(device.width / 2, device.height / 2)
        sleep(1500)
        click(device.width / 2, device.height / 2)
        sleep(50)
        click(device.width / 2, device.height / 2)
        sleep(1500)
    } else if (任务类型 == "关注任务") {
        if (text("关注").find().length > 0) {
            text("关注").find()[0].click()
        } else if (text("关注 ").find().length > 0) {
            text("关注 ").find()[0].click()
        } else if (id("ckn").find().length > 0) {
            id("ckn").findOne().click()
        } else if (id("d3y").find().length > 0) {
            id("d3y").findOne().click()
        } else if (id("aw6").find().length > 0) {
            //toast("已关注")
        } else {
            back()
            sleep(1500)
            任务类型 = "放弃任务"
        }
        sleep(2000)

    }
}

events.onKeyDown("home", function (event) {
    toast("程序结束")
    console.hide()
    threads.shutDownAll()
    exit()
})
events.onKeyDown("volume_down", function (event) {
    toast("程序结束")
    console.hide()
    threads.shutDownAll()
    exit()
}) 
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
