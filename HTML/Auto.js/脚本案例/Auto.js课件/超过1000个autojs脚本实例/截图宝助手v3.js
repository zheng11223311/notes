
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

"ui";//nautojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！\n1群:168196007\n2群:830810438\n3群:571854376\n4群:63732194\n5群:592916456

/**
autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
1群:168196007 
2群:830810438 
3群:571854376 
4群:63732194
5群:592916456
 */

爱关注 = storages.create("爱关注");
版本号 = 4

if (爱关注.get("只做点赞任务") == undefined) { 爱关注.put("只做点赞任务", "真"); }
if (爱关注.get("完成后停止") == undefined) { 爱关注.put("完成后停止", "真"); }
if (爱关注.get("抖音观看时间") == undefined) { 爱关注.put("抖音观看时间", "0.5"); }
if (爱关注.get("完成任务数量") == undefined) { 爱关注.put("完成任务数量", "600"); }
if (爱关注.get("是否开启检测") == undefined) { 爱关注.put("是否开启检测", "真"); }
if (爱关注.get("抖音名字") == undefined) { 爱关注.put("抖音名字", ""); }
if (爱关注.get("抖音个人连接") == undefined) { 爱关注.put("抖音个人连接", ""); }


ui.layout(//主界面
    <frame w="*" h="*">
        <scroll>
            <vertical >
                <card w="*" h="auto"  >
                    <vertical >
                        <horizontal w="*" h="50" gravity="center" >
                            <text id="标题" text="截图宝助手" textColor="black" textSize="25sp" layout_weight="1" gravity="center" />
                        </horizontal>

                        <horizontal w="*" h="auto" >
                            <text text="爱关注Q群：590057347" textColor="black" gravity="center" w="auto" />
                            <button id="jrqqun" text="加入Q群" textSize="12sp" gravity="center" h="37" layout_weight="1" />

                        </horizontal>

                    </vertical>
                </card>
                <card w="*" h="*" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                    <vertical padding="8 8" h="auto" gravity="center_vertical">

                        <Switch id="autoService" text="无障碍服务" checked="{{auto.service != null}}" textSize="15sp" />
                        <Switch id="只做点赞任务" text="只做点赞任务" checked="true" textSize="15sp" w="*" marginTop="1" />
                        <horizontal h="auto" >
                            <text text="完成多少个任务停止：" textColor="black" textSize="15sp" marginTop="1" w="auto" />
                            <input id="完成任务数量" inputType="number" text="600" gravity="center" textSize="15sp" />
                            <Switch id="完成后停止" text="完成后停止" checked="true" textSize="15sp" w="*" gravity="right" />
                        </horizontal>
                        <horizontal h="auto" >
                            <text text="观看抖音几秒后进行任务：" textColor="black" textSize="15sp" marginTop="1" w="auto" />
                            <input id="抖音观看时间" inputType="number" text="0.5" gravity="center" textSize="15sp" />
                            <text text="（秒）" textColor="black" textSize="15sp" />
                        </horizontal>
                        <card w="*" h="auto" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical" >
                            <vertical h="auto" gravity="center">
                                <horizontal h="auto" >
                                    <text text="逗音名字：" textColor="black" textSize="15sp" marginTop="1" />
                                    <text id="抖音名字" text="" textColor="green" textSize="15sp" layout_weight="2" />
                                    <Switch id="是否开启检测" text="是否开启检测" checked="false" textSize="15sp" layout_weight="1" gravity="right" />
                                </horizontal>
                                <horizontal h="auto" w="*">
                                    <input id="抖音个人连接" h="50" w="200" singleLine="true" hint="抖音个人连接" gravity="center" />
                                    <button id="检测抖音个人连接" h="50" text="检测逗音个人连接" gravity="center" layout_weight="1" />
                                </horizontal>
                                <text text="主页-我-右上角三横-我的二维码-右上角箭头-复制链接" textColor="red" textSize="12sp" gravity="center" />
                                <text text="数据如果上万的检测不到会自动关闭，部分抖音名字有特殊符号检测不到，粘贴个人连接开始可正常检测" textColor="blue" textSize="12sp" gravity="center" />

                            </vertical>
                        </card>

                        <horizontal w="*" h="auto" layout_gravity="center">

                            <button id="截图宝app下载" text="截图宝下载" h="auto" layout_weight="1" />

                        </horizontal>
                        <horizontal w="*" h="auto" layout_gravity="center">
                            <button id="开始" text="开始" layout_weight="1" />
                            <button id="停止" text="停止" layout_weight="1" />
                        </horizontal>
                        <text id="常见问题" text="常见问题" textColor="blue" textSize="15sp" marginTop="20" />
                    </vertical >

                </card>

            </vertical>

        </scroll>

    </frame>
);
ui.run(() => {//读取配置

    if (爱关注.get("只做点赞任务") == "真") {
        ui.只做点赞任务.checked = true
    } else if (爱关注.get("只做点赞任务") == "否") {
        ui.只做点赞任务.checked = false
    }
    if (爱关注.get("完成后停止") == "真") {
        ui.完成后停止.checked = true
    } else if (爱关注.get("完成后停止") == "否") {
        ui.完成后停止.checked = false
    }
    ui.抖音观看时间.setText(爱关注.get("抖音观看时间"))
    ui.完成任务数量.setText(爱关注.get("完成任务数量"))
    if (爱关注.get("是否开启检测") == "真") {
        ui.是否开启检测.checked = true
    } else if (爱关注.get("是否开启检测") == "否") {
        ui.是否开启检测.checked = false
    }
    ui.抖音名字.setText(爱关注.get("抖音名字"))
    ui.抖音个人连接.setText(爱关注.get("抖音个人连接"))

})

threads.start(function () {//版本更新检查
    var r = http.get("https://www.lanzous.com/ia1j5pa");
    html = r.body.string()
    网络版本号 = html.match(new RegExp("--" + "(\\S*)" + "--"))[1]
    开启 = html.search("开启")
    关闭 = html.search("关闭")
    下载链接 = html.match(new RegExp("下载地址：" + "(\\S*)" + "!!"))[1]
    var 更新说明网址 = http.get("https://www.lanzous.com/ia1j5ej");
    htmll = 更新说明网址.body.string()

    更新说明 = htmll.match(new RegExp("更新说明：" + "(\\S*)" + "!!"))[1]
    //log(网络版本号)
    if (parseInt(网络版本号) > 版本号 && 开启 > 0) {
        var releaseNotes = "更新内容：\n" + 更新说明
        dialogs.build({
            title: "发现新版本 v" + 网络版本号,
            content: releaseNotes,
            positive: "到浏览器下载",
            neutral: "暂时不更新"
        })
            .on("positive", () => {
                ui.finish();
                app.openUrl(下载链接);
                exit()
            })
            .on("neutral", () => {

            })
            .show();
    }
})



ui.开始.on("click", () => {//开始
    threads.start(function () {
        events.observeKey();
    })
    threads.start(function () {
        if (开启 > 0) {
            if (auto.service == null) {
                toast("请先开启无障碍服务！");
                return;
            }

            sleep(500)

            if (!ui.只做点赞任务.checked) {
                爱关注.put("只做点赞任务", "否")
            } else if (ui.只做点赞任务.checked) {
                爱关注.put("只做点赞任务", "真")
            }
            if (!ui.完成后停止.checked) {
                爱关注.put("完成后停止", "否")
            } else if (ui.完成后停止.checked) {
                爱关注.put("完成后停止", "真")
            }
            爱关注.put("抖音观看时间", ui.抖音观看时间.text())
            爱关注.put("完成任务数量", ui.完成任务数量.text())
            if (!ui.是否开启检测.checked) {
                爱关注.put("是否开启检测", "否")
            } else if (ui.是否开启检测.checked) {
                爱关注.put("是否开启检测", "真")
            }
            爱关注.put("抖音名字", ui.抖音名字.text())
            爱关注.put("抖音个人连接", ui.抖音个人连接.text())
            if (爱关注.get("抖音个人连接") == "") {
                log("未填写抖音链接，检测关闭")
            }
            申请截图权限()
            app.launchPackage("com.ss.android.ugc.aweme")
            toast("等待抖音界面")
            sleep(1000)
            do {
                sleep(500)
            } while (packageName("com.ss.android.ugc.aweme").find().length == 0)


            屏幕 = packageName("com.ss.android.ugc.aweme").find()
            a = 屏幕[0].bounds()
            屏幕宽 = a.right
            屏幕高 = a.bottom
            //log(屏幕宽 + "x" + 屏幕高)

            sleep(1000)
            任务 = 0

            app.launchPackage("com.gosing.article.news.jh")
            sleep(1000)
            waitForPackage("com.gosing.article.news.jh")
            sleep(1000)
            ////////////////点击确定
            do { sleep(500) } while (text("确定").find().length == 0 && text("确定 ").find().length == 0 && text("看抖抖视频").find().length == 0 && text("看抖抖视频 ").find().length == 0 && text("领取任务").find().length == 0 && text("领取任务 ").find().length == 0)

            if (text("确定").find().length > 0 || text("确定 ").find().length > 0) {
                if (text("确定").find().length > 0) {
                    a = text("确定").find()
                } else if (text("确定 ").find().length) {
                    a = text("确定 ").find()
                }

                if (a[0]) {
                    var tr = a[0].bounds()
                    click(tr.centerX(), tr.centerY());
                }
                sleep(1000)
                if (text("看抖抖视频").find().length > 0) {
                    a = text("看抖抖视频").find()
                } else if (text("看抖抖视频 ").find().length > 0) {
                    a = text("看抖抖视频 ").find()
                }
                if (a[0]) {
                    var tr = a[0].bounds()
                    click(tr.centerX(), tr.centerY());
                }
            } else if (text("看抖抖视频").find().length > 0 || text("看抖抖视频 ").find().length > 0) {
                if (text("看抖抖视频").find().length > 0) {
                    a = text("看抖抖视频").find()
                } else if (text("看抖抖视频 ").find().length > 0) {
                    a = text("看抖抖视频 ").find()
                }
                if (a[0]) {
                    var tr = a[0].bounds()
                    click(tr.centerX(), tr.centerY());
                }
            }
            /////////////////
            /////////////
            while (true) {
                if (任务 > 爱关注.get("完成任务数量")) {
                    log("已完成" + 爱关注.get("完成任务数量") + "个任务，脚本暂停")
                    threads.shutDownAll()
                }
                ////////////
                do { sleep(500) } while (text("领取任务").find().length == 0 && text("领取任务 ").find().length == 0)
                /////////////
                if (text("领取任务").find().length > 0) {
                    a = text("领取任务").find()
                } else if (text("领取任务 ").find().length > 0) {
                    a = text("领取任务 ").find()
                }
                if (a[0]) {
                    var tr = a[0].bounds()
                    click(tr.centerX(), tr.centerY());
                }
                ////////////
                sleep(1000)
                do { sleep(200) } while (text("确定").find().length == 0 && text("确定 ").find().length == 0 && text("我知道了").find().length == 0 && text("我知道了 ").find().length == 0 && text("点赞").find().length == 0 && text("点赞 ").find().length == 0 && text("取消 ").find().length == 0 && text("取消").find().length == 0 && text("评论").find().length == 0 && text("评论 ").find().length == 0)
                sleep(500)
                if (text("取消 ").find().length > 0 || text("取消").find().length > 0) {//没任务
                    if (text("取消").find().length > 0) {
                        a = text("取消").find()
                    } else if (text("取消 ").find().length > 0) {
                        a = text("取消 ").find()
                    }
                    if (a[0]) {
                        var tr = a[0].bounds()
                        click(tr.centerX(), tr.centerY());
                    }
                    toast("等待5秒")
                    sleep(5000)
                } else {//有任务
                    if (text("点赞").find().length > 0 || text("点赞 ").find().length > 0 || text("评论").find().length > 0 || text("评论 ").find().length > 0) {
                    } else if (text("确定").find().length > 0 || text("确定 ").find().length > 0 || text("我知道了").find().length > 0 || text("我知道了 ").find().length > 0) {
                        if (text("确定").find().length > 0) {
                            a = text("确定").find()
                        } else if (text("确定 ").find().length) {
                            a = text("确定 ").find()
                        } else if (text("我知道了 ").find().length) {
                            a = text("我知道了 ").find()
                        } else if (text("我知道了").find().length) {
                            a = text("我知道了").find()
                        }

                        if (a[0]) {
                            var tr = a[0].bounds()
                            click(tr.centerX(), tr.centerY());
                        }
                    }
                    do { sleep(500) } while (text("点赞").find().length == 0 && text("点赞 ").find().length == 0 && text("关注").find().length == 0 && text("关注 ").find().length == 0 && text("评论").find().length == 0 && text("评论 ").find().length == 0)
                    sleep(500)
                    if (text("点赞").find().length > 0 || text("点赞 ").find().length > 0) {
                        任务类型 = "点赞任务"
                        log(任务类型)
                    } else if (text("关注").find().length > 0 || text("关注 ").find().length > 0) {
                        任务类型 = "关注任务"
                        log(任务类型)
                    } else if (text("评论").find().length > 0 || text("评论 ").find().length > 0) {
                        任务类型 = "评论任务"
                        log(任务类型)
                    }
                    if (任务类型 == "点赞任务") {
                        if (text("打开DY做任务").find().length > 0) {
                            a = text("打开DY做任务").find()
                        } else if (text("打开DY做任务 ").find().length > 0) {
                            a = text("打开DY做任务 ").find()
                        }
                        if (a[0]) {
                            var tr = a[0].bounds()
                            click(tr.centerX(), tr.centerY());
                        }
                        do { sleep(500) } while (text("确定").find().length == 0 && text("确定 ").find().length == 0)
                        if (text("确定").find().length > 0) {
                            a = text("确定").find()
                        } else if (text("确定 ").find().length) {
                            a = text("确定 ").find()
                        }
                        if (a[0]) {
                            var tr = a[0].bounds()
                            click(tr.centerX(), tr.centerY());
                        }
                        //waitForPackage("com.ss.android.ugc.aweme")
                        do {
                            sleep(500)

                        } while (packageName("com.ss.android.ugc.aweme").find().length == 0)

                        sleep(1000)
                        sleep(爱关注.get("抖音观看时间") * 1000)
                        if (任务类型 != "放弃任务") {
                            click(屏幕宽 / 2, 屏幕高 / 2)
                            sleep(50)
                            click(屏幕宽 / 2, 屏幕高 / 2)
                            sleep(500)
                            click(屏幕宽 / 2, 屏幕高 / 2)
                            sleep(50)
                            click(屏幕宽 / 2, 屏幕高 / 2)
                            sleep(1000)
                        }
                        sleep(500)
                        截图宝截屏()
                        back()
                        截图宝上传图片()
                        任务 = 任务 + 1
                    } else if (任务类型 == "关注任务") {
                        if (爱关注.get("只做点赞任务") == "否") {
                            if (text("打开DY做任务").find().length > 0) {
                                a = text("打开DY做任务").find()
                            } else if (text("打开DY做任务 ").find().length > 0) {
                                a = text("打开DY做任务 ").find()
                            }
                            if (a[0]) {
                                var tr = a[0].bounds()
                                click(tr.centerX(), tr.centerY());
                            }
                            do { sleep(500) } while (text("确定").find().length == 0 && text("确定 ").find().length == 0)
                            if (text("确定").find().length > 0) {
                                a = text("确定").find()
                            } else if (text("确定 ").find().length) {
                                a = text("确定 ").find()
                            }
                            if (a[0]) {
                                var tr = a[0].bounds()
                                click(tr.centerX(), tr.centerY());
                            }
                            do { sleep(500) } while (text("打开DY视频").find().length == 0 && text("打开DY视频 ").find().length == 0)

                            if (text("打开DY任务").find().length > 0) {
                                a = text("打开DY任务").find()
                            } else if (text("打开DY任务 ").find().length > 0) {
                                a = text("打开DY任务 ").find()
                            }
                            if (a[0]) {
                                var tr = a[0].bounds()
                                click(tr.centerX(), tr.centerY());
                            }
                            do {
                                sleep(500)
                                复制的id = getClip()
                            } while (复制的id == "")
                            抖音搜索关注()
                            sleep(500)
                            截图宝截屏()
                            sleep(500)
                            back()
                            sleep(500)
                            back()
                            sleep(500)
                            截图宝上传图片()
                            任务 = 任务 + 1
                        } else if (爱关注.get("只做点赞任务") == "真") {
                            toast("如果卡在此处请到手机设置-显示-显示大小调小一点，直到看到下面的放弃任务")

                            back()
                            a = text("确定").findOne()
                            if (a) {
                                var tr = a.bounds()
                                click(tr.centerX(), tr.centerY());
                            }
                        }
                    } else if (任务类型 == "评论任务") {
                        toast("如果卡在此处请到手机设置-显示-显示大小调小一点，直到看到下面的放弃任务")
                        back()
                        a = text("确定").findOne()
                        if (a) {
                            var tr = a.bounds()
                            click(tr.centerX(), tr.centerY());
                        }
                    }
                }
                sleep(500)
            }
        } else if (关闭 > 0) {
            alert("本软件暂停使用")

        }

    })
})

ui.停止.on("click", () => {//停止
    threads.start(function () {
        threads.shutDownAll()
        toast("程序结束")
    })
})

ui.检测抖音个人连接.on("click", () => {
    threads.start(function () {
        爱关注.put("抖音名字", "")
        爱关注.put("抖音个人连接", "")
        ui.run(() => {
            ui.抖音名字.setText("")
        })
        toast("检测中")
        抖音短网址 = ui.抖音个人连接.text()
        if (抖音短网址.search("v.douyin.com") > 0) {
            抖音个人链接检测()
            if (抖音的链接 == "正确") {
                ui.run(() => {
                    ui.抖音名字.setText(抖音名字)
                    toast("抖音号识别成功：" + 抖音名字)
                })
                爱关注.put("抖音名字", 抖音名字)
                爱关注.put("抖音个人连接", ui.抖音个人连接.text())
            } else if (抖音的链接 == "错误") {
                alert("请填写正确的个人链接")
            }
        } else {
            alert("请填写正确的个人链接")
        }
        //抖音短网址 = "在抖音，记录美好生活！ https://v.douyin.com/tJpMys/"

    })
})
ui.截图宝app下载.on("click", () => {//复制截图宝下载地址
    threads.start(function () {
        app.openUrl("http://i.moewua.cn/invite/vote?mid=1035065")
        toast("跳转到截图宝下载地址")
    })
})
ui.jrqqun.on("click", () => {//加入Q群
    threads.start(function () {
        try {
            app.startActivity({
                action: "android.intent.action.VIEW",
                data: "mqqapi://card/show_pslcard?src_type=internal&version=1&uin=590057347&card_type=group&source=code",
            })
        } catch (e) {
            toast("error")
        }
    })
})
events.onKeyDown("home", function (event) {//按home停止
    toast("程序结束")
    console.hide()
    threads.shutDownAll()

})

events.onKeyDown("volume_down", function (event) {//按音量下停止
    toast("程序结束")
    console.hide()
    threads.shutDownAll()

})
ui.autoService.on("check", function (checked) {//无障碍开关
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
ui.是否开启检测.on("check", function (checked) {
    ui.是否开启检测.checked = false
    toast("检测功能暂未添加")
    爱关注.put("是否开启检测", "否")
});
// 当用户回到本界面时，resume事件会被触发
ui.emitter.on("resume", function () {
    // 此时根据无障碍服务的开启情况，同步开关的状态
    ui.autoService.checked = auto.service != null;
});



ui.常见问题.on("click", () => {//停止
    threads.start(function () {

        toast("暂未添加任何东西")
    })
})
function 抖音个人链接检测() {
    抖音短网址 = "https:" + 抖音短网址.split(":")[1]
    抖音长网址 = http.get(抖音短网址)
    网页文本11 = JSON.stringify(抖音长网址)
    a = 网页文本11.split("\"")
    网址 = a[a.length - 10]
    if (网址.split("/")[4] == "user") {
        userid = 网址.split("/")[5].split("?")[0]
        a = http.get(网址)
        b = a.body.string()
        c = b.split(userid)
        d = c[1].split("<span class=\"num\">")
        抖音名字 = d[0].match(new RegExp(">" + "(\\S*)" + "</p><p class=\"shortid\">"))[1]
        抖音的链接 = "正确"
    } else {
        抖音的链接 = "错误"
    }
}
function 抖音检测() {
    关注检测 = "开启"
    点赞检测 = "开启"
    抖音短网址 = 爱关注.get("抖音个人连接")//抖音个人连接//"在抖音，记录美好生活！ https://v.douyin.com/tJpMy/"
    抖音短网址 = "https:" + 抖音短网址.split(":")[1]
    抖音长网址 = http.get(抖音短网址)
    网页文本11 = JSON.stringify(抖音长网址)
    a = 网页文本11.split("\"")
    网址 = a[a.length - 10]
    userid = 网址.split("/")[5].split("?")[0]
    a = http.get(网址)
    b = a.body.string()
    c = b.split(userid)
    网页文本11 = JSON.stringify(b)
    d = c[1].split("<span class=\"num\">")
    a = d[1].match(/&#xe6[0-9a-z]+/g)
    if (d[1].search("</i>w </span>") > 0) {
        关注检测 = "关闭"//关注上万，关闭检测
    } else {
        数据检测()
        关注数 = 数量
    }
    a = d[5].match(/&#xe6[0-9a-z]+/g)
    if (d[5].search("</i>w </span>") > 0) {
        点赞检测 = "关闭"//点赞上万，关闭检测
    } else {
        数据检测()
        点赞数 = 数量
    }
    sleep(800)
}
function 数据检测() {
    数量 = ""
    for (i = 0; i < a.length; i++) {
        if (a[i] == "&#xe603" || a[i] == "&#xe60d" || a[i] == "&#xe616") {
            a[i] = 0
        } else if (a[i] == "&#xe602" || a[i] == "&#xe60e" || a[i] == "&#xe618") {
            a[i] = 1
        } else if (a[i] == "&#xe605" || a[i] == "&#xe610" || a[i] == "&#xe617") {
            a[i] = 2
        } else if (a[i] == "&#xe604" || a[i] == "&#xe611" || a[i] == "&#xe61a") {
            a[i] = 3
        } else if (a[i] == "&#xe606" || a[i] == "&#xe60c" || a[i] == "&#xe619") {
            a[i] = 4
        } else if (a[i] == "&#xe607" || a[i] == "&#xe60f" || a[i] == "&#xe61b") {
            a[i] = 5
        } else if (a[i] == "&#xe608" || a[i] == "&#xe612" || a[i] == "&#xe61f") {
            a[i] = 6
        } else if (a[i] == "&#xe60a" || a[i] == "&#xe613" || a[i] == "&#xe61c") {
            a[i] = 7
        } else if (a[i] == "&#xe60b" || a[i] == "&#xe614" || a[i] == "&#xe61d") {
            a[i] = 8
        } else if (a[i] == "&#xe609" || a[i] == "&#xe615" || a[i] == "&#xe61e") {
            a[i] = 9
        }
        数量 = 数量 + a[i]
    }
}


function 截图宝上传图片() {
    sleep(1000)
    app.launchPackage("com.gosing.article.news.jh")
    sleep(1000)
    waitForPackage("com.gosing.article.news.jh")
    sleep(1000)
    do { sleep(300) } while (className("android.widget.RelativeLayout").depth("12").find().length == 0)

    a = className("android.widget.RelativeLayout").depth("12").find()

    if (a[0]) {
        var tr = a[0].bounds()
        click(tr.centerX(), tr.centerY());
    }

    do { sleep(200) } while (text("确定").find().length == 0 && text("确定 ").find().length == 0)
    if (text("确定").find().length > 0) {
        a = text("确定").find()
    } else if (text("确定 ").find().length) {
        a = text("确定 ").find()
    }
    if (a[0]) {
        var tr = a[0].bounds()
        click(tr.centerX(), tr.centerY());
    }
    a = text("提交任务").findOne()
    if (a) {
        var tr = a.bounds()
        click(tr.centerX(), tr.centerY());
    }
    a = text("确定").findOne()
    if (a) {
        var tr = a.bounds()
        click(tr.centerX(), tr.centerY());
    }
    删除图片()
}


function 申请截图权限() {
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
function 截图宝截屏() {

    var tody = new Date();
    var nian = tody.getFullYear();
    var yue = tody.getMonth() + 1;
    var ri = tody.getDate();
    var shi = tody.getHours();
    var fen = tody.getMinutes();
    var miao = tody.getSeconds();
    time = nian.toString() + yue.toString() + ri.toString() + shi.toString() + fen.toString() + miao.toString()
    files.ensureDir("/storage/emulated/0/Pictures/Screenshots/")
    path = "/storage/emulated/0/Pictures/Screenshots/" + time + ".png"
    captureScreen("/storage/emulated/0/Pictures/Screenshots/" + time + ".png");
    sleep(1000)
    media.scanFile("/storage/emulated/0/Pictures/Screenshots/" + time + ".png")
    toast("截图完成");

    sleep(500)
}
function 删除图片() {
    files.remove(path)
}
function 抖音搜索关注() {
    do { sleep(500) } while (packageName("com.ss.android.ugc.aweme").find().length == 0)
    sleep(500)
    toast("点击抖音右下角我，如果卡在此处，则机器不能做关注任务")

    //app.startActivity("com.ss.android.ugc.aweme.friends.ui.AddFriendsActivity")



    if (text("我").find().length > 0) {
        a = text("我").find()
    } else if (text("我 ").find().length) {
        a = text("我 ").find()
    }
    if (a[0]) {
        var tr = a[0].bounds()
        click(tr.centerX(), tr.centerY());
    }


    do { sleep(500) } while (desc("发现好友").find().length == 0 && desc("发现好友 ").find().length == 0)
    if (desc("发现好友").find().length > 0) {
        a = desc("发现好友").find()
    } else if (desc("发现好友").find().length) {
        a = desc("发现好友").find()
    }

    if (a[0]) {
        var tr = a[0].bounds()
        click(tr.centerX(), tr.centerY());
    }
    sleep(1000)

    a = className("android.widget.ImageView").find()
    //toast(a.length)
    if (a[0]) {
        var tr = a[2].bounds()
        click(tr.centerX(), tr.centerY());
    }
    sleep(1000)

    setText(复制的id)//getClip()
    do { sleep(300) } while (text("搜索").find().length == 0 && text("搜索 ").find().length == 0)
    sleep(1500)
    if (text("搜索").find().length > 0) {
        a = text("搜索").find()
    } else if (text("搜索 ").find().length) {
        a = text("搜索 ").find()
    }


    if (a[0]) {
        var tr = a[0].bounds()
        click(tr.centerX(), tr.centerY());
    }

    do { sleep(500); } while (className("android.widget.RelativeLayout").depth("14").find() == 0)
    sleep(2000)
    a = className("android.widget.RelativeLayout").depth("14").find()
    //未搜索到用户未解决
    if (a[0]) {
        var tr = a[0].bounds()
        click(tr.centerX(), tr.centerY());
    }

}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
