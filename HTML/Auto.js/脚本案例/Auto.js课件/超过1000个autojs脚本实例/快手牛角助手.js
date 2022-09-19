
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
"ui";//界面设计
var color = "purple";//紫色图标
ui.layout(
    <drawer id="drawer">
        <vertical>
            <appbar>
                <toolbar id="toolbar" title="快手牛角助手" />
                <tabs id="tabs" />
            </appbar>
            <Switch id="autoService" text="无障碍服务" checked="{{auto.service != null}}" padding="8 8 8 8" textSize="15sp" />
            <viewpager id="viewpager">
                <frame>
                    <frame height="200" gravity="center">
                        <text id="说明1" gravity="center" line="3" />
                    </frame>
                    <button id="复制" text="复制邀请码" w="auto" height="50" layout_gravity="left" />
                    <button id="快手邀请码" text="vsuaj7" margin="8000 8000 8000 8000" />
                    <button id="start" text="开始运行" w="auto" height="50" layout_gravity="right" />
                </frame>
                <frame>
                    <frame height="200" gravity="center">
                        <text id="说明2" gravity="center" line="2" />
                    </frame>
                    <button id="复制2" text="复制邀请码" w="auto" height="50" layout_gravity="left" />
                    <button id="牛角邀请码" text="6j37nj" margin="8000 8000 8000 8000" />
                    <button id="start2" text="开始运行" w="auto" height="50" layout_gravity="right" />
                </frame>
            </viewpager>
        </vertical>

        <vertical layout_gravity="left" bg="#ffffff" w="280">
            <img w="280" h="200" scaleType="fitXY" src="http://p2.qhmsg.com/t0114ff480cc6560617.jpg" />
            <list id="menu">
                <horizontal bg="?selectableItemBackground" w="*">
                    <img w="50" h="50" padding="16" src="{{this.icon}}" tint="{{color}}" />
                    <text textColor="black" textSize="15sp" text="{{this.title}}" layout_gravity="center" />
                </horizontal>
            </list>
        </vertical>
    </drawer>
);
ui.说明1.setText("点击开始运行 自动打开快手极速版开始刷视频\n按音量下键停止运行\n凌晨自动把金币兑换成零钱 提现微信秒到");
ui.说明2.setText("打开牛角小说app 请手动切换到小说界面 再点击开始运行\n提现问题：两天到账一次 但是稳到项目");
ui.复制.on("click", function () {
    var text = ui.快手邀请码.getText()
    setClip(text);
    toast("邀请码已复制成功");
});
ui.复制2.on("click", function () {
    var text = ui.牛角邀请码.getText()
    setClip(text);
    toast("邀请码已复制成功");
});

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

ui.autoService.on("check", function (checked) {
    // 用户勾选无障碍服务的选项时，跳转到页面让用户去开启
    if (checked && auto.service == null) {
        app.startActivity({
            action: "android.settings.ACCESSIBILITY_SETTINGS"
        });
    }
    if (!checked && auto.service != null) {
        auto.service.disableSelf();
    }
});

// 当用户回到本界面时，resume事件会被触发
ui.emitter.on("resume", function () {
    // 此时根据无障碍服务的开启情况，同步开关的状态
    ui.autoService.checked = auto.service != null;
});

ui.start.on("click", function () {
    //程序开始运行之前判断无障碍服务
    if (auto.service == null) {
        toast("请先开启无障碍服务！");
        return;
    }
    main();
});
ui.start2.on("click", function () {
    //程序开始运行之前判断无障碍服务
    if (auto.service == null) {
        toast("请先开启无障碍服务！");
        return;
    }
    main2();
});

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
            alert("使用说明", "由于每个人手机或者模拟器分辨率大小不同,可能造成app无法使用 可联系作者进行微调\nQQ:424244906 QQ群:1015931653");
            break;
        case "声明":
            alert("声明", "本作品仅供学习交流,不得用于任何商业以及非法用途,下载试用后请24小时之内自行删除，因软件造成的使用者以及任何网站的一切损失,皆由使用者承担,如不接受本条款请立即删除本软件。");
            break;
        case "关于":
            alert("关于", "快手牛角助手 v1.0版本");
            break;
    }
    e.consumed = true;
});
activity.setSupportActionBar(ui.toolbar);
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

//设置滑动页面的标题
ui.viewpager.setTitles(["快手极速版", "牛角小说"]);
//让滑动页面和标签栏联动
ui.tabs.setupWithViewPager(ui.viewpager);

//让工具栏左上角可以打开侧拉菜单
ui.toolbar.setupWithDrawer(ui.drawer);

ui.menu.setDataSource([
    {
        title: "作者:Shmily",
        icon: "@drawable/ic_account_box_black_48dp"
    },
    {
        title: "点击加我QQ424244906",
        icon: "@drawable/ic_vpn_key_black_48dp"
    },
    {
        title: "点击加QQ项目群1015931653",
        icon: "@drawable/ic_vpn_key_black_48dp"
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
        case "点击加QQ项目群1015931653":
            threads.start(加群)
            break;
        case "点击加我QQ424244906":
            threads.start(加好友)
            break;
    }
})
function 加群() {
    app.startActivity({
        action: "android.intent.action.VIEW",
        data: "https://jq.qq.com/?_wv=1027&k=544RpZz",
        packageName: "com.tencent.mobileqq",
    });
}

function 加好友() {
    var QQ = "424244906";
    app.startActivity({
        action: "android.intent.action.VIEW",
        data: "https://ti.qq.com/open_qq/index2.html?url=mqqapi%3a%2f%2fuserprofile%2ffriend_profile_card%3fsrc_type%3dweb%26version%3d1.0%26source%3d2%26uin%3d424244906&from=singlemessage",
        packageName: "com.tencent.mobileqq",
    });

}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

function main() {
    // 这里写脚本的主逻辑
    threads.start(function () {
        launchApp("快手极速版");
        sleep(5000);
        for (var i = 1; i > 0; i++) {
            toast("滑动" + i + '次');
            //widthone, heightone, widthtwo, heighttwo, timeGO 代表起点x,起点y,终点x,终点y,过程耗时单位毫秒
            WidthOne = random(310, 740);
            HeightOne = random(1600, 1620);
            WidthTwo = random(260, 850);
            HeightTwo = random(220, 250);
            timeGo = random(550, 2500);
            timeNext = random(8000, 12000);
            swipe(WidthOne, HeightOne, WidthTwo, HeightTwo, timeGo);
            sleep(timeNext);
        }
    });
    events.observeKey();
    events.on("key", function (code, event) {
        var keyCodeStr = event.keyCodeToString(code);
        if (keyCodeStr == "KEYCODE_VOLUME_DOWN") {
            toast("脚本停止运行");
            exit();
        }
    });
};
function main2() {
    // 这里写脚本的主逻辑
    threads.start(function () {
        for (var i = 1; i > 0; i++) {
            toast("阅读了第" + i + '页 下一页');
            //widthone, heightone, widthtwo, heighttwo, timeGO 代表起点x,起点y,终点x,终点y,过程耗时单位毫秒
            WidthOne = random(623, 627);
            HeightOne = random(160, 430);
            WidthTwo = 143;
            HeightTwo = 276;
            timeGo = random(550, 1500);
            timeNext = random(7000, 9000);
            swipe(WidthOne, HeightOne, WidthTwo, HeightTwo, timeGo);
            sleep(timeNext);
        }
    });
    events.observeKey();
    events.on("key", function (code, event) {
        var keyCodeStr = event.keyCodeToString(code);
        if (keyCodeStr == "KEYCODE_VOLUME_DOWN") {
            toast("脚本停止运行");
            exit();
        }
    });
};

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
