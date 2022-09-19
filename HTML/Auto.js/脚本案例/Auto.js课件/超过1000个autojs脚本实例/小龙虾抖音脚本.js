
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
"ui";
ui.layout(
    <vertical padding="16">
        <text size="18" align="center" paddingTop="20" color="#111111">By.昊天:31985322</text>
        <text size="18" paddingTop="20" paddingLeft="80" color="#111111"></text>
        <Switch id="autoService" text="无障碍服务" checked="{{auto.service != null}}" w="auto" textStyle="bold" />
        <text size="18" paddingTop="20" paddingLeft="80" color="#111111"></text>
        <input id="ID" color="#666666" size="10" paddingLeft="20" inputType="text" marginLeft="0" w="*" hint="" />
        <input id="PW" color="#666666" size="10" paddingLeft="20" inputType="text" marginLeft="0" w="*" hint="" />
        <text size="18" paddingTop="20" paddingLeft="80" color="#111111"></text>
        <button marginTop="10" id="启动" text="启动服务" h="50" w="*" style="Widget.AppCompat.Button.Colored" textStyle="bold" ></button>
        <button marginTop="10" id="退出" text="退出程序" h="50" w="*" style="Widget.AppCompat.Button.Colored" textStyle="bold" ></button>
    </vertical >
);


//--------------------------------------------------------------------------------------------------------------------------
var 全局_登陆cookie, 全局_用户cookie, 全局_返回数据, 全局_任务ID, 全局_上轮视频ID记录, 全局_视频ID, 全局_可提现金额, 全局_任务次数 = 0, 用户名, 密码;
//读写用户数据
files.createWithDirs("/sdcard/ID.txt");
files.createWithDirs("/sdcard/PW.txt");
ui.ID.setText(files.read("/sdcard/ID.txt"));
ui.PW.setText(files.read("/sdcard/PW.txt"));
//--------------------------------------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------
ui.autoService.on("check", function (checked) {
    // 用户勾选无障碍服务的选项时，跳转到页面让用户去开启
    if (checked && auto.service == null) {
        app.startActivity({
            action: "android.settings.ACCESSIBILITY_SETTINGS"
        });
    }
    if (!checked && auto.service != null) {
        auto.service.disableSelf();  //关闭自己service的方法，在设置界面可以看到辅助功能状态被关闭
    }
});

// 当用户回到本界面时，resume事件会被触发
ui.emitter.on("resume", function () {
    ui.autoService.checked = auto.service != null;  // 此时根据无障碍服务的开启情况，同步开关的状态
});

ui.启动.on("click", () => {
    files.write("/sdcard/ID.txt", ui.ID.getText());
    files.write("/sdcard/PW.txt", ui.PW.getText());
    threads.start(function () {//监听心跳
        用户名 = ui.ID.getText();
        密码 = ui.PW.getText();
        launchApp("抖音短视频");
        CPU();
    });
});
ui.退出.on("click", () => {
    exit();
});
//--------------------------------------------------------------------------------------------------------------------------


//--------------------------------------------------------------------------------------------------------------------------
function CPU() {
    while (true) {
        try {
            if (http.get("www.baidu.com").statusCode == 200) {
                全局_任务ID = null;
                get获取cookie("http://tg.cst2020.cn/");
                if (全局_登陆cookie != null) { post登陆("http://tg.cst2020.cn/tg/Login/in", 用户名, 密码); }
                if (全局_用户cookie != null) { 获取任务链接("http://tg.cst2020.cn/tg/DouYin/taskList?tp=2"); } else { toast("登陆失败"); };
                var 全局_上轮视频ID记录 = 全局_视频ID;
                if (全局_任务ID != null) { 获取作品链接("http://tg.cst2020.cn/tg/DouYin/getTaskData?id="); };
                if (全局_视频ID != 全局_上轮视频ID记录) {
                    获取提现余额文本("http://tg.cst2020.cn/tg/Home/index");
                    if (parseInt(全局_可提现金额) > 6) {
                        提现("http://tg.cst2020.cn/tg/Home/doTx", 密码);
                    }
                    提交任务("http://tg.cst2020.cn/tg/DouYin/copyTaskData?id=");
                    视频点赞();
                };
                sleep(2000); toast("心跳正常");
            }
        }
        catch (err) {
            log(err)
        }
    }
};
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
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
            toast("刷新太频繁")
        }
        else {
            if (返回json.result.dataList[1] == null) {
                var data = 返回json.result.dataList[0];
            }
            else {
                var data = 返回json.result.dataList[1];
            };
            if (data != null) {
                全局_任务ID = data.id
                //log(全局_任务ID);
            }
            else {
                toast("暂无任务")
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
    for (var a = 0; a < 2; a++) {
        click(540 + random(1, 20), 1000 + random(1, 20));
        sleep(70);
        click(540 + random(1, 20), 1000 + random(1, 20));
        sleep(1000);
    };
    全局_任务次数 = 全局_任务次数 + 1; log("点赞完成==>任务计数器==>" + 全局_任务次数 + "==>可提现==>" + 全局_可提现金额);
    back();
};

function 提交任务(url) {
    try {
        http.get(url + 全局_任务ID, {
            headers: {
                'Accept-Language': 'zh-cn,zh;q=0.5',
                'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                'cookie': 'UM_distinctid=17034ec00dc6d4-0044fdbb1bdc0a-36624209-1fa400-17034ec00ddaf6; tguser=' + 全局_用户cookie + '; CNZZDATA1278270599=596792711-1581431860-http%253A%252F%252Ftg.cst2020.cn%252F%7C1581475060',
            }
        });
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
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
function 提现(url, pwd) {
    try {
        var 返回数据 = http.post(url, {
            'Host': 'tg.cst2020.cn',
            'Proxy-Connection': 'keep-alive',
            'Content-Length': '15',
            'Accept': 'application/json, text/javascript, */*; q=0.01',
            'Origin': 'http://tg.cst2020.cn',
            'X-Requested-With': 'XMLHttpRequest',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36',
            'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
            'Referer': 'http://tg.cst2020.cn/tg/Home/tx',
            'Accept-Language': 'zh-cn,zh;q=0.5',
            'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
            'cookie': 'UM_distinctid=17034ec00dc6d4-0044fdbb1bdc0a-36624209-1fa400-17034ec00ddaf6; tguser=' + 全局_用户cookie + '; CNZZDATA1278270599=596792711-1581431860-http%253A%252F%252Ftg.cst2020.cn%252F%7C1581561460',
            'txPasswd': pwd
        });
        var 返回json = 返回数据.body.json();
        log(返回json.msg);
        toast(返回json.msg);
    }
    catch (err) {
        log(err)
    }
}

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
