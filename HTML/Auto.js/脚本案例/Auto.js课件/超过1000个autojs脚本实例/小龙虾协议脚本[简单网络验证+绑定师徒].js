
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
//////////////////////////////////////////////////////
"ui";//nautojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！\n1群:168196007\n2群:830810438\n3群:571854376\n4群:63732194\n5群:592916456
ui.layout(
    <frame>
        <ScrollView>
            <vertical padding="16">
                <linear>
                    <text text="必选:   " textColor="black" w="auto" textStyle="bold" />
                    <Switch id="autoService" text="手机模式(7.0+)" checked="{{auto.service != null}}" w="auto" textStyle="bold" />
                    <checkbox id="root" text="模拟器" />
                </linear>
                <linear>
                    <text text="选择程序运行规则:   " textColor="black" w="auto" textStyle="bold" />
                    <checkbox id="yanghao" text="养号" />
                    <checkbox id="zuorenwu" text="做任务" />
                </linear>
                <button marginTop="10" id="测试视频跳转" text="首次启动必须点我测试跳转权限" w="*" style="Widget.AppCompat.Button.Colored" textStyle="bold" ></button>
                <button marginTop="10" id="复制邀请码" text="点我复制邀请码648051(绑定师徒关系)" h="50" w="*" style="Widget.AppCompat.Button.Colored" textStyle="bold" ></button>
                <button marginTop="10" id="打开注册网站" text="点我打开注册网站(调用浏览器)" h="50" w="*" style="Widget.AppCompat.Button.Colored" textStyle="bold" ></button>
                <text size="5" align="center" paddingTop="20" color="#111111"></text>
                <linear>
                    <text text="用户名*必填:" textColor="black" w="auto" textStyle="bold" />
                    <input id="ID" color="#666666" size="10" paddingLeft="20" inputType="text" marginLeft="0" w="*" hint="" />
                    <text size="18" align="center" paddingTop="20" color="#111111"></text>
                </linear>
                <linear>
                    <text text="密码*必填:" textColor="black" w="auto" textStyle="bold" />
                    <input id="PW" color="#666666" size="10" paddingLeft="20" inputType="text" marginLeft="0" w="*" hint="" />
                </linear>
                <button marginTop="10" id="启动" text="启动服务" h="50" w="*" style="Widget.AppCompat.Button.Colored" textStyle="bold" ></button>
                <text size="18" align="center" paddingTop="20" color="#111111">软件介绍:全自动任务后台协议</text>
                <text size="18" align="center" paddingTop="20" color="#111111">亮点:全自动任务 + 自动提现到绑定微信</text>
                <text size="18" align="center" paddingTop="20" color="#111111">作者辛辛苦苦写代码</text>
                <text size="18" align="center" paddingTop="20" color="#111111">不愿意重新注册绑定师徒的免测</text>
                <text size="18" align="center" paddingTop="20" color="#111111">重新注册地址:http://tg.cst2020.cn</text>
                <text size="18" align="center" paddingTop="20" color="#111111">重新注册的时候手机号不用验证码</text>
                <text size="18" align="center" paddingTop="20" color="#111111">下面2步必须要设置</text>
                <text size="18" align="center" paddingTop="20" color="#111111">1:首次注册后点击抖音任务-添加任务账号-按照提示添加完任务账号</text>
                <text size="18" align="center" paddingTop="20" color="#111111">2:点击余额提现-申请提现-绑定一下提现的微信-余额满7块自动提现(平台规定可提现时间9:00-23:00)</text>
                <text size="18" align="center" paddingTop="20" color="#111111">余额满6块自动提现(平台规定可提现时间9:00-23:00)</text>
                <text size="18" align="center" paddingTop="20" color="#111111">BUG反馈 By.昊天QQ:31985322</text>
                <button marginTop="10" id="退出" text="退出程序" h="50" w="*" style="Widget.AppCompat.Button.Colored" textStyle="bold" ></button>
            </vertical >
        </ScrollView>
    </frame>
);

//--------------------------------------------------------------------------------------------------------------------------
var 全局_登陆cookie, 全局_用户cookie, 全局_返回数据, 全局_任务ID, 全局_上轮视频ID记录, 全局_视频ID, 全局_可提现金额, 全局_任务次数 = 0, 用户名, 密码, 全局_师徒关系, 全局_得到任务, root;
var 屏幕宽度 = device.width, 屏幕高度 = device.height, yanghao, zuorenwu;
//读写用户数据
files.createWithDirs("/sdcard/ID.txt");
files.createWithDirs("/sdcard/PW.txt");
ui.ID.setText(files.read("/sdcard/ID.txt"));
ui.PW.setText(files.read("/sdcard/PW.txt"));
root = false;
yanghao = false;
zuorenwu = false;
全局_得到任务 = false;
全局_师徒关系 = false;
threads.shutDownAll();//初始化
//--------------------------------------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------------------------------------

ui.root.on("check", (chcked) => {
    if (chcked) {
        root = true;
    } else {
        root = false;
    }
    log(root);
});

ui.yanghao.on("check", (chcked) => {
    if (chcked) {
        yanghao = true;
    } else {
        yanghao = false;
    }
    log(yanghao);
});

ui.zuorenwu.on("check", (chcked) => {
    if (chcked) {
        zuorenwu = true;
    } else {
        zuorenwu = false;
    }
    log(zuorenwu);
});

threads.start(function () {  //启动线程申请截图权限
    try {
        if (!requestScreenCapture()) {
            toast("请求截图失败");
        }
        else {
            toast("请求截图成功");
        }
    }
    catch (err) {
        log(err)
    }
});

//---------------------------------------------------------------------------------------------------------

ui.autoService.on("check", function (checked) {
    // 用户勾选无障碍服务的选项时，跳转到页面让用户去开启
    if (checked && auto.service == null) {
        app.startActivity({
            action: "android.settings.ACCESSIBILITY_SETTINGS"
        });
    }
    if (!checked && auto.service != null) {
        //auto.service.disableSelf();  //关闭自己service的方法，在设置界面可以看到辅助功能状态被关闭
    }
});



// 当用户回到本界面时，resume事件会被触发
ui.emitter.on("resume", function () {
    ui.autoService.checked = auto.service != null;  // 此时根据无障碍服务的开启情况，同步开关的状态
});


ui.打开注册网站.on("click", () => {
    app.openUrl("http://tg.cst2020.cn")
});


ui.测试视频跳转.on("click", () => {
    openspid("6762291505374760199")
});
ui.复制邀请码.on("click", () => {
    setClip("648051");
    toast("已复制邀请码去注册吧")
});
ui.启动.on("click", () => {
    files.write("/sdcard/ID.txt", ui.ID.getText());
    files.write("/sdcard/PW.txt", ui.PW.getText());
    threads.start(function () { //授权线程
        var 返回数据 = http.get("http://106.13.74.43/key1.html")
        var 提示信息 = (返回数据.body.string());
        if (提示信息 != 1) {
            alert(提示信息)
            sleep(5000);
            threads.shutDownAll()
            exit();
        }
        else {
            toast("欢迎使用正在检测师徒关系")
        }
    });

    threads.start(function () {//监听心跳
        用户名 = ui.ID.getText();
        密码 = ui.PW.getText();
        if (yanghao == false && zuorenwu == false) {
            alert("你也太懒了 起码选个任务吧")
        }
        else {
            for (var i = 0; i < 3; i++) {
                判断师徒关系();
                if (全局_师徒关系 == true || 用户名 == "13027979796" || 用户名 == "18928354148" || 用户名 == "15917777305" || 用户名 == "18300000031") {
                    toast("师徒关系成立,感谢你的支持有任何问题随时反馈")
                    threads.start(function () { //养号线程
                        if (yanghao == true) {
                            抖音APP_养号();
                        }
                    });
                    if (zuorenwu == true) {
                        launchApp("抖音短视频");
                        CPU();
                    }
                }
                else {
                    toast("师徒关系不成立,邀请码648051,已复制请重新注册账号")
                    setClip("648051");
                }
            }
        }
    });
});
ui.退出.on("click", () => {
    exit();
});
//--------------------------------------------------------------------------------------------------------------------------






////autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
//--------------------------------------------------------------------------------------------------------------------------
function CPU() {
    全局_得到任务 = false;
    while (true) {
        try {
            if (http.get("www.baidu.com").statusCode == 200) {
                全局_任务ID = null;
                get获取cookie("http://tg.cst2020.cn/");
                if (全局_登陆cookie != null) {
                    post登陆("http://tg.cst2020.cn/tg/Login/in", 用户名, 密码);
                    if (全局_用户cookie != null) {
                        获取任务链接("http://tg.cst2020.cn/tg/DouYin/taskList?tp=2"); //得到任务ID
                        if (全局_任务ID != null) {
                            获取作品链接("http://tg.cst2020.cn/tg/DouYin/getTaskData?id=");  //得到视频ID
                            提交任务("http://tg.cst2020.cn/tg/DouYin/copyTaskData?id=");  //如果任务提交失败会清空视频ID
                            if (全局_视频ID != null) {
                                视频点赞();
                                获取提现余额文本("http://tg.cst2020.cn/tg/Home/index"); //提现
                                if (parseInt(全局_可提现金额) > 5) {
                                    提现("http://tg.cst2020.cn/tg/Home/doTx");
                                }
                            }
                        }
                    }
                    else {
                        toast("登陆失败请检查用户名密码");
                    }

                }
            }
        }
        catch (err) {
            log(err)
        }
        sleep(random(1000, 3000));
    }
};

function get获取cookie(url) {  //1取初始ck
    try {
        var 返回数据 = http.get(url, {
            headers: {
                'Accept-Language': 'zh-cn,zh;q=0.5',
                'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
            }
        });
        var 返回头cookie = (返回数据.headers["Set-Cookie"]); //Httpget返回请求头数组["头数组标题"]
        var 正则条件 = /tguser=([\s\S]*?); /;   //正则表达式条件
        var cookie数组 = 正则条件.exec(返回头cookie);  //正则.exec(匹配要检索的字符串返回一串数组)
        全局_登陆cookie = (cookie数组[1]);
    }
    catch (err) {
        log(err)
    }
};

function post登陆(url, name, pwd) {  //2登陆
    try {
        var 返回数据 = http.post(url, {
            'Accept-Language': 'zh-cn,zh;q=0.5',
            'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
            'cookie': "'" + 全局_登陆cookie + "'",
            'username': name,
            'password': pwd
        });
        var 返回头cookie = (返回数据.headers["Set-Cookie"]);
        var 正则条件 = /tguser=([\s\S]*?); /;
        var cookie数组 = 正则条件.exec(返回头cookie);
        全局_用户cookie = (cookie数组[1]);
    }
    catch (err) {
        log(err)
    }
};

function 获取提现余额文本(url) {  //3获取提现余额文本
    try {
        var 返回数据 = http.get(url, {
            headers: {
                'Accept-Language': 'zh-cn,zh;q=0.5',
                'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                'cookie': 'UM_distinctid=17036ec3331b7d-05598ad36af8e-36624209-1fa400-17036ec3332aab; CNZZDATA1278270599=57496211-1581464260-http%253A%252F%252Ftg.cst2020.cn%252F%7C1581464260; tguser=' + 全局_用户cookie,
            }
        });
        var text = (返回数据.body.string());
        var 正则条件 = /今日收益([\s\S]*?)余额提现/;
        var 正则条件2 = /margin-left:8px">([\s\S]*?)<span/;
        var 余额数组 = 正则条件.exec(text);
        var 余额数组2 = 正则条件2.exec(余额数组);
        全局_可提现金额 = 余额数组2[1];
    }
    catch (err) {
        log(err)
    }
    //log(全局_可提现金额);
};

function 获取任务链接(url) {  //4获取任务ID
    try {
        var 返回数据 = http.get(url, {
            headers: {
                'Accept-Language': 'zh-cn,zh;q=0.5',
                'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                'cookie': 'UM_distinctid=17034ec00dc6d4-0044fdbb1bdc0a-36624209-1fa400-17034ec00ddaf6; tguser=' + 全局_用户cookie + '; CNZZDATA1278270599=596792711-1581431860-http%253A%252F%252Ftg.cst2020.cn%252F%7C1581475060',
            }
        });
        var 返回json = 返回数据.body.json();
        if (返回json.msg == "刷新太频繁，请稍候刷新") {
            toast("刷新太频繁，请稍候刷新")
            全局_得到任务 = false;
        }
        else {
            log(返回json.result.dataList)
            if (返回json.result.dataList[0] != null) {
                全局_任务ID = 返回json.result.dataList[0].id;  //取到ID返回ID
                log("取到任务ID:" + 全局_任务ID);
            }
            else {
                全局_任务ID = null;  //没取到任务返回空
                toast("暂时无任务,待会试试吧")
                log("暂时无任务" + 全局_任务ID);
                全局_得到任务 = false;
            };
        }
    }
    catch (err) {
        log(err)
    }

};

function 获取作品链接(url) {
    try {
        var 返回数据 = http.get(url + 全局_任务ID, {
            headers: {
                'Accept-Language': 'zh-cn,zh;q=0.5',
                'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                'cookie': 'UM_distinctid=17034ec00dc6d4-0044fdbb1bdc0a-36624209-1fa400-17034ec00ddaf6; tguser=' + 全局_用户cookie + '; CNZZDATA1278270599=596792711-1581431860-http%253A%252F%252Ftg.cst2020.cn%252F%7C1581475060',
            }
        });
        var 返回json = 返回数据.body.json();
        var data = 返回json.result;
        var dataurl = data.copytxt;
        var 正则条件 = /video\/([\s\S]*?)\//;
        var 视频ID数组 = 正则条件.exec(dataurl);
        全局_视频ID = 视频ID数组[1];
    }
    catch (err) {
        log(err)
    }
    //log("发现任务");
};

function 视频点赞() {
    openspid(全局_视频ID); sleep(5000);
    var x = device.width / 2
    var y = device.height / 2
    if (x > 10 && y > 10) {

    } else {
        // 有的机型取出来的设备宽度和高度都是0
        x = 500
        y = 500
    }
    for (var o = 0; o < random(1, 5); o++) {
        toast("看视频" + o * 2 + "秒")
        sleep(2000)
    }
    if (root == true) {
        log("ROOT")
        var x1 = device.width / 10;
        var x2 = device.width - x1;
        var y1 = device.height / 30;
        var y2 = device.height / 2 - y1;
        var img = captureScreen();
        var point = findColor(img, "#F75580", { region: [x2, y2, 30, 30], threshold: 4 });
        if (point) {
            toast("点过赞了");
        } else {
            for (var i = 0; i < 1; i++) {
                Tap(x2, y2);
                sleep(1000)
            }
            sleep(3000)
        }
        Back()
    } else {
        log("非ROOT")
        click(x, y)
        sleep(50)
        click(x, y)
        sleep(3000)
        back();
    };
    全局_任务次数 = 全局_任务次数 + 1; log("点赞完成==>任务计数器==>" + 全局_任务次数 + "==>可提现==>" + 全局_可提现金额); toast("点赞完成==>任务计数器==>" + 全局_任务次数 + "==>可提现==>" + 全局_可提现金额);
};

////autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
function 提交任务(url) {
    try {
        var 返回数据 = http.get(url + 全局_任务ID, {
            headers: {
                'Accept-Language': 'zh-cn,zh;q=0.5',
                'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                'cookie': 'UM_distinctid=17034ec00dc6d4-0044fdbb1bdc0a-36624209-1fa400-17034ec00ddaf6; tguser=' + 全局_用户cookie + '; CNZZDATA1278270599=596792711-1581431860-http%253A%252F%252Ftg.cst2020.cn%252F%7C1581475060',
            }
        });
        var 返回json = 返回数据.body.json();
        log(返回json.msg + "任务ID" + 全局_任务ID);
        if (返回json.msg == "任务无效" || 返回json.msg == "您操作太频繁，请稍后再试") {
            全局_视频ID = null;
        } else {
            log("任务ID" + 全局_任务ID + "提交成功")
            全局_得到任务 = true;
            sleep(5000);
        }
    }
    catch (err) {
        log(err)
    }

    //log("提交完成");
};

function openspid(spid) { //schame跳转
    var tmp = "snssdk1128://aweme/detail/" + spid + "?refer=web&gd_label=click_wap_detail_download_feature"
    app.startActivity({
        data: tmp
    });
}

function 提现(url) {
    try {
        get获取cookie("http://tg.cst2020.cn/");
        post登陆("http://tg.cst2020.cn/tg/Login/in", 用户名, 密码);
        var 返回数据 = http.post(url, {
            'Accept-Language': 'zh-cn,zh;q=0.5',
            'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
            'cookie': 'UM_distinctid=17034ec00dc6d4-0044fdbb1bdc0a-36624209-1fa400-17034ec00ddaf6; tguser=' + 全局_用户cookie + '; CNZZDATA1278270599=596792711-1581431860-http%253A%252F%252Ftg.cst2020.cn%252F%7C1581642503',
            'txPasswd': 密码,
        });
        //log(返回数据);
        var 返回json = 返回数据.body.json();
        toast(返回json.msg);
    }
    catch (err) {
        log(err)
    }
}

function 判断师徒关系() {
    全局_师徒关系 = false;
    try {
        get获取cookie("http://tg.cst2020.cn/");
        if (全局_登陆cookie != null) { post登陆("http://tg.cst2020.cn/tg/Login/in", "11111111", "222222"); }
        if (全局_用户cookie != null) {
            var 返回数据 = http.get("http://tg.cst2020.cn/tg/Home/tudiList?lastId=0", {
                headers: {
                    'Accept-Language': 'zh-cn,zh;q=0.5',
                    'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                    'cookie': 'UM_distinctid=17034ec00dc6d4-0044fdbb1bdc0a-36624209-1fa400-17034ec00ddaf6; tguser=' + 全局_用户cookie + '; CNZZDATA1278270599=596792711-1581431860-http%253A%252F%252Ftg.cst2020.cn%252F%7C1581615503',
                }
            });
            var 返回json = 返回数据.body.json();
            var result = 返回json.result;
            var dataList = result.dataList;
            var i = 0;
            var 正则条件 = /.*(.{4})$/;
            while (true) {
                if (dataList[i] != null) {
                    var 徒弟数组 = dataList[i].account
                    var 作者徒弟ID后四位 = 正则条件.exec(徒弟数组);
                    var 用户ID后四位 = 正则条件.exec(用户名);
                    if (作者徒弟ID后四位[1] == 用户ID后四位[1]) {
                        全局_师徒关系 = true;
                        全局_登陆cookie = null;
                        全局_用户cookie = null;
                        break;
                    }
                    else {
                        i = i + 1; //遍历下一数组
                    }
                }
                else {
                    全局_师徒关系 = false;
                    break;
                }
            }
        }
        else {
            toast("失败");
            全局_师徒关系 = false;
        }
    }
    catch (err) {
        log(err)
    }
}
////autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
function 抖音APP_养号() {
    try {
        while (true) {
            if (全局_得到任务 == false) {
                log("养号开始啦")
                抖音APP_检测首页();
                for (var i = 0; i < random(5, 20); i++) {
                    if (全局_得到任务 == false) {
                        log("翻页开始啦")
                        swipe(屏幕宽度 / 2, 屏幕高度 / 2, 屏幕宽度 / 4, 屏幕高度 / 30, [1000]);
                        sleep(random(3000, 20000));
                    }
                }
            }
            else {
                log("发现任务养号停止")
                sleep(5000);
            }
        }
    }
    catch (err) {
        log(err)
    }
}

function 抖音APP_检测首页() {
    try {
        while (true) {
            var a = packageName("com.ss.android.ugc.aweme").findOne(2000);
            if (a != null) {
                局_全局状态 = 元素状态(1, "我", 3, 1000, true);
                if (局_全局状态 == true) {
                    click("以后再说"); click("始终允许"); click("取消"); click("同意"); click("我知道了"); click("滑动查看更多"); click("长按屏幕使用更多功能"); 元素点击(2, "返回", 1, 1000, 0, 5, 1000, true, true); sleep(2000);
                    break;
                }
                else {
                    click("以后再说"); click("始终允许"); click("取消"); click("同意"); click("我知道了"); click("滑动查看更多"); click("长按屏幕使用更多功能"); 元素点击(2, "返回", 1, 1000, 0, 5, 1000, true, true); sleep(2000);
                }
            }
            else {
                launch("com.ss.android.ugc.aweme"); sleep(2000);
                //非抖音界面
            }
        }
    }
    catch (err) {
        log(err)
    }
}
//--------------------------------------------------------------------------------------------------------------------------

////autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!  更多分享脚本 QQ群:1033080138
//商用需删除
function 元素点击(对象类型, 对象名称, 点击次数, 查找时间, 随机偏移值最小值, 随机偏移值最大值, 点击延时, 点击, 精确查找) {
    var 元素X坐标, 元素Y坐标;
    if (精确查找 == true) {
        if (对象类型 == 4) { 寻找对象 = id(对象名称).findOne(查找时间); } else if (对象类型 == 3) { 寻找对象 = res(对象名称).findOne(查找时间); } else if (对象类型 == 2) { 寻找对象 = desc(对象名称).findOne(查找时间); } else if (对象类型 == 1) { 寻找对象 = text(对象名称).findOne(查找时间); }
    }
    if (精确查找 == false) {
        if (对象类型 == 4) { 寻找对象 = idContains(对象名称).findOne(查找时间); } else if (对象类型 == 3) { 寻找对象 = resContains(对象名称).findOne(查找时间); } else if (对象类型 == 2) { 寻找对象 = descContains(对象名称).findOne(查找时间); } else if (对象类型 == 1) { 寻找对象 = textContains(对象名称).findOne(查找时间); }
    }
    for (var i = 0; i < 点击次数; i++) {
        log("元素点击对象==>" + 寻找对象);
        if (寻找对象 != null && 寻找对象.enabled()) {
            if (点击 == true) {
                元素X坐标 = 寻找对象.bounds().centerX();
                元素Y坐标 = 寻找对象.bounds().centerY();
                if (元素X坐标 != null && 元素Y坐标 != null && 元素X坐标 > 0 && 元素Y坐标 > 0) {
                    log("元素坐标==>" + 元素X坐标 + "," + 元素Y坐标);
                    click(寻找对象.bounds().centerX() + random(随机偏移值最小值, 随机偏移值最大值), 寻找对象.bounds().centerY() + random(随机偏移值最小值, 随机偏移值最大值))
                }
                else {
                    log(元素X坐标 + "," + 元素Y坐标);
                    log("元素坐标==>假")
                }
                sleep(点击延时);
            }
        }
    }
}
function 元素状态(对象类型, 对象名称, 次数, 查找时间, 精确查找) {
    if (精确查找 == true) {
        if (对象类型 == 4) { 寻找对象 = id(对象名称).findOne(查找时间); } else if (对象类型 == 3) { 寻找对象 = res(对象名称).findOne(查找时间); } else if (对象类型 == 2) { 寻找对象 = desc(对象名称).findOne(查找时间); } else if (对象类型 == 1) { 寻找对象 = text(对象名称).findOne(查找时间); }
    }
    if (精确查找 == false) {
        if (对象类型 == 4) { 寻找对象 = idContains(对象名称).findOne(查找时间); } else if (对象类型 == 3) { 寻找对象 = resContains(对象名称).findOne(查找时间); } else if (对象类型 == 2) { 寻找对象 = descContains(对象名称).findOne(查找时间); } else if (对象类型 == 1) { 寻找对象 = textContains(对象名称).findOne(查找时间); }
    }
    for (var i = 0; i < 次数; i++) {
        if (寻找对象 != null && 寻找对象.enabled()) {
            log(寻找对象);
            全局_元素状态_元素X坐标 = 寻找对象.bounds().centerX();
            全局_元素状态_元素Y坐标 = 寻找对象.bounds().centerY();
            log(全局_元素状态_元素X坐标, 全局_元素状态_元素Y坐标);
            log(屏幕宽度, 屏幕高度)
            if (全局_元素状态_元素X坐标 != null && 全局_元素状态_元素Y坐标 != null) {
                log("全局元素状态坐标==>真")
                return true;
            }
            else {
                log("全局元素状态坐标==>假")
                return false;
            }

        }
        else {
            return false;
        }
    }
}
////autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
