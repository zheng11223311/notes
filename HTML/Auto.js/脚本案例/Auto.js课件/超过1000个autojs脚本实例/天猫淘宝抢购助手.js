
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";

//autojs源码提取,加密打包,代码解密,还原.微信:zxkj6898 或zx033245 或QQ168196007

var startTime, forwardTime, interval, lastTime, NTPClockOffset, NTPClockDelay;

var color = "#009688";
ui.layout(
    <drawer id="drawer">
        <vertical>
            <appbar>
                <toolbar id="toolbar" title="天猫淘宝抢购助手 v3.0"/>
            </appbar>
            <viewpager id="viewpager">
                <frame id="body" h="*" w="*">
                </frame>
            </viewpager>
        </vertical>
        <vertical layout_gravity="left" bg="#ffffff" w="280">
            <img w="280" h="100" scaleType="fitXY"
                 src="http://images.shejidaren.com/wp-content/uploads/2014/10/023746fki.jpg"/>
            <list id="menu">
                <horizontal bg="?selectableItemBackground" w="*">
                    <img w="50" h="50" padding="16" src="{{this.icon}}" tint="{{color}}"/>
                    <text textColor="black" textSize="15sp" text="{{this.title}}" layout_gravity="center"/>
                </horizontal>
            </list>
        </vertical>
    </drawer>
);

// 主页
var home = {
    ui: ui.inflate(
        <vertical padding="16">
            <text textSize="13sp" id="networkTest" textColor="red" margin="0 5" text="正在检测网络延迟..."/>
            <Switch id="autoService" text="无障碍服务" checked="{{auto.service != null}}" margin="0 10"
                    textSize="15sp"/>
            <Switch textSize="15sp" textColor="black" id="isUseNetTime" margin="0 0 0 10" text="使用网络时间"
                    checked="true"/>
            <horizontal w="*" h="1sp" margin="0 10 0 20" bg='#E2E2E2'></horizontal>
            <text textSize="13sp" textColor="black" text="开始时间（年/月/日 时:分:秒）"/>
            <input id="startTime" textColor="gray" inputType="datetime" text="0"/>
            <text textSize="13sp" textColor="black" text="提前开始时间（毫秒）"/>
            <input id="forwardTime" textColor="gray" inputType="number" text="0"/>
            <text textSize="13sp" textColor="black" text="提交频率（毫秒）"/>
            <input id="interval" textColor="gray" inputType="number" text="100"/>
            <text textSize="13sp" textColor="black" text="抢购持续时间（秒）"/>
            <input id="lastTime" textColor="gray" inputType="number" text="5"/>
            <button id="runSrt" style="Widget.AppCompat.Button.Colored" marginTop="30" text="开始运行"/>
        </vertical>
    ),
    activate: function () {
        setContainer(this.ui);
    }
};

home.activate();

var about = dialogs.build({
    //对话框标题
    title: "关于",
    //对话框内容
    content: "本软件基于Auto.js编写，仅作学习和交流之用，不得商业使用及非法使用，否则一切后果自付\n此为免费软件，如您从其他途径获得，谨防病毒木马\n如有疑问及后续更新请联系开发者\n\n当前版本：v3.0.0\n开发者微信：zhss668\n",
    //确定键内容
    positive: "确定",
    //取消键内容
    // negative: "关闭",
    //中性键内容
    neutral: "去微信",
}).on("neutral", () => {
    //监听中性键
    threads.start(contect);
});

function contect() {
    setClip("zhss668");
    toast("已复制开发者微信号（zhss668）到剪贴板");
    app.launch("com.tencent.mm");
}

//让工具栏左上角可以打开侧拉菜单
ui.toolbar.setupWithDrawer(ui.drawer);
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
ui.menu.setDataSource([
    {
        title: "恢复默认值",
        icon: "@drawable/ic_android_black_48dp",
        onclick: () => restore()
    },
    {
        title: "日志",
        icon: "@drawable/ic_find_in_page_black_48dp",
        onclick: () => app.startActivity('console')
    },
    {
        title: "系统设置",
        icon: "@drawable/ic_settings_black_48dp",
        onclick: () => app.startActivity('settings')
    },
    {
        title: "关于",
        icon: "@drawable/ic_favorite_black_48dp",
        onclick: () => about.show()
    },
    {
        title: "退出",
        icon: "@drawable/ic_exit_to_app_black_48dp",
        onclick: () => ui.finish()
    }
]);

ui.menu.on("item_click", item => {
    if (item.onclick) item.onclick();
    ui.drawer.closeDrawers();
});


function setContainer(v) {
    ui.body.removeAllViews();
    ui.body.addView(v, new android.widget.FrameLayout.LayoutParams(-1, -1));
}

function restore() {
    storage.clear();
    threads.start(NTP.sync);
    setTimeout(initConfig, 500);
    toast("参数已重置")
}


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
    if (ui.autoService) {
        ui.autoService.checked = auto.service != null;
    }
});

// 获取默认开始时间
function getTime() {
    var fmt = "YYYY-MM-dd hh:mm:ss";
    var d = new Date();
    var hh = d.getHours();
    var mm = d.getMinutes();
    if (mm < 30) {
        mm = 30
    } else {
        hh += 1;
        mm = 0
    }
    var o = {
        "Y+": d.getYear() + 1900,
        "M+": d.getMonth() + 1,
        "d+": d.getDate(),
        "h+": hh,
        // "m+": d.getMinutes(),
        // "s+": d.getSeconds()
        "m+": mm,
        "s+": 0
    };
    for (var k in o) {
        if (new RegExp("(" + k + ")").test(fmt)) {
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 4) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        }
    }
    fmt = fmt.replace(/-/g, '/');
    return fmt;
}

// 获取时分秒用于记录日志
function logWithTime(msg) {
    console.log(formatDate(getNow()) + " " + msg);
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
// 检测网络延迟和时间偏差
var NTP = {
    requiredResponses: 3,
    serverTimes: [],
    serverDelay: [],
    serverUrl: "http://api.m.taobao.com/rest/api3.do?api=mtop.common.getTimestamp",
    resyncTime: 0, // minutes
    sync: function () {
        var offset = storage.get("NTPClockOffset");
        if (offset) {
            try {
                var t = offset.split("|")[1];
                var d = NTP.fixTime() - parseInt(t, 10);
                if (d < (1000 * 60 * NTP.resyncTime)) {
                    return false;
                }
            } catch (e) {
            }
        }
        NTP.getServerTime();
    },
    getNow: function () {
        var date = new Date();
        return date.getTime();
    },
    parseServerResponse: function (data) {
        var NtpStartTime = storage.get("NtpStartTime");
        var NtpStopTime = NTP.getNow();
        var origtime = parseInt(data.data.t);
        var delay = ((NtpStopTime - NtpStartTime) / 2);
        var offset = NtpStopTime - origtime - delay;
        NTP.serverTimes.push(offset);
        NTP.serverDelay.push(delay);

        // 因为网络问题，需要多次获取偏移值，获取平均值
        if (NTP.serverTimes.length >= NTP.requiredResponses) {
            var sumOffset = 0;
            var sumDelay = 0;
            var i = 0;
            for (i = 0; i < NTP.serverTimes.length; i++) {
                sumOffset += NTP.serverTimes[i];
                sumDelay += NTP.serverDelay[i];
            }
            var averageOffset = Math.round(sumOffset / i);
            var averageDelay = Math.round(sumDelay / i);
            storage.put("NTPClockOffset", averageOffset + '|' + NTP.fixTime()); // 保存获得offset时的时间戳
            storage.put("NTPClockDelay", averageDelay); // 保存获得offset时的时间戳
        } else {
            NTP.getServerTime();
        }
    },
    getServerTime: function () {
        var NtpStartTime = NTP.getNow();
        storage.put("NtpStartTime", NtpStartTime);

        var res = http.get(NTP.serverUrl);
        if (res.statusCode !== 200) {
            toast("获取网络时间失败: " + res.statusCode + " " + res.statusMessage);
            return false;
        } else {
            NTP.parseServerResponse(res.body.json());
        }
    },
    fixTime: function (timeStamp) {
        if (!timeStamp) {
            timeStamp = NTP.getNow();
        }
        var offset = storage.get("NTPClockOffset");
        try {
            if (!offset) {
                offset = 0;
            } else {
                offset = offset.split("|")[0];
            }
            if (isNaN(parseInt(offset, 10))) {
                return timeStamp;
            }
            return timeStamp + parseInt(offset, 10);
        } catch (e) {
            return timeStamp;
        }
    }
};

// 初始化用户配置
// storage.clear();
var storage = storages.create("tmalltaobaohelper.byfly");
threads.start(NTP.sync);
setTimeout(initConfig, 500);

function initConfig() {
    NTPClockOffset = storage.get("NTPClockOffset", "0");
    NTPClockDelay = storage.get("NTPClockDelay", "0");
    if (!NTPClockOffset) {
        NTPClockOffset = 0;
    } else {
        NTPClockOffset = parseInt(NTPClockOffset.split("|")[0]);
    }
    if (NTPClockOffset < 0) {
        var offset_str = "慢了" + -NTPClockOffset + 'ms，'
    } else {
        offset_str = "快了" + NTPClockOffset + 'ms，'
    }
    ui.networkTest.setText("当前设备时间比淘宝" + offset_str + "网络延迟：" + NTPClockDelay + "ms");
    ui.startTime.setText(getTime());
    ui.isUseNetTime.checked = storage.get("isUseNetTime", true);
    ui.forwardTime.setText(storage.get("forwardTime", "500").toString());
    ui.interval.setText(storage.get("interval", "100").toString());
    ui.lastTime.setText(storage.get("lastTime", "5").toString());
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
// 检测时间字符串是否有效
function strDateTime(str) {
    var reg = /^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/;
    var r = str.match(reg);
    if (r == null) return false;
    var d = new Date(r[1], r[3] - 1, r[4], r[5], r[6], r[7]);
    return (d.getFullYear() == r[1] && (d.getMonth() + 1) == r[3] && d.getDate() == r[4] && d.getHours() == r[5] && d.getMinutes() == r[6] && d.getSeconds() == r[7]);
}

// 时间戳转时间字符串
function add0(m) {
    return m < 10 ? '0' + m : m
}

function formatDate(needTime) {
    //needTime是整数，否则要parseInt转换
    var time = new Date(parseInt(needTime));
    var h = time.getHours();
    var mm = time.getMinutes();
    var s = time.getSeconds();
    return add0(h) + ':' + add0(mm) + ':' + add0(s);
}

// 根据时间偏移值计算真实时间
function getNow() {
    var now = new Date().getTime();
    if (ui.isUseNetTime.isChecked()) {
        return now - NTPClockOffset
    }
    return now
}

// 程序主要逻辑
ui.runSrt.click(function () {
    // 检查无障碍服务
    if (auto.service == null) {
        toast("请先开启无障碍服务！");
        return;
    }

    //运行
    startTime = ui.startTime.getText().toString();
    isUseNetTime = ui.isUseNetTime.isChecked();
    forwardTime = parseInt(ui.forwardTime.getText());
    interval = parseInt(ui.interval.getText());
    lastTime = parseInt(ui.lastTime.getText());
    if (!strDateTime(startTime)) {
        ui.startTime.setError("请输入正确的日期");
        return;
    } else if (forwardTime > 1000) {
        ui.forwardTime.setError("请输入0-1000之间的值");
        return;
    }
    storage.put("isUseNetTime", isUseNetTime);
    storage.put("forwardTime", forwardTime);
    storage.put("interval", interval);
    storage.put("lastTime", lastTime);
    // retryTimes = Math.round(lastTime * 1000 / interval);

    if (ui.runSrt.getText().toString() === '开始运行') {
        // 一直保持屏幕常亮
        device.keepScreenOn();
        threads.start(main);
        ui.runSrt.setText('停止运行');
    } else {
        threads.shutDownAll();
        console.hide();
        device.cancelKeepingAwake();
        ui.runSrt.setText('开始运行');
    }
});

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
function main() {
    //显示控制台
    var middle = device.width / 2 - 400;
    console.setSize(800, 800);
    console.setPosition(middle, 0);
    console.show();

    var carCount = 0;
    var notInCarCount = 0;
    var retryCount = 0;
    var dunCount = 0;
    var susses = 0;
    var loadding = 0;
    var notChecked = 0;

    logWithTime("脚本开始运行，当前时间偏移: " + NTPClockOffset + " 网络延迟: " + NTPClockDelay);
    var startChecktime = new Date(Date.parse(startTime)).getTime();
    var endTime = new Date(startChecktime.valueOf() + lastTime * 1000).getTime();
    var startChecktimeFix = startChecktime - forwardTime;

    logWithTime("预期开始抢购时间为：" + formatDate(startChecktimeFix) + "." + startChecktimeFix.toString().substr(10,3));

    // 检测是否进入购物车
    x = setInterval(function () {
        var t = getNow();
        if (t < startChecktimeFix) {
            if (id("button_cart_charge").exists() || className("android.widget.TextView").text("全选").exists()) {
                if (carCount === 0) {
                    logWithTime("已进入购物车，请检查需要抢购的商品是否已勾选，并设置好购买数量，脚本将自动结算");
                    carCount++;
                    notInCarCount = 0
                }

            } else {
                if (notInCarCount === 0) {
                    logWithTime("未进入购物车，请前往");
                    carCount = 0;
                    notInCarCount++
                }
            }
        } else {
            not_in_car_count = 0;  // 购物车状态复位
            clearInterval(x)
        }

    }, 500);


    z = setInterval(function () {
        var nowTime = getNow();
        var found = false;

        if (nowTime >= startChecktimeFix && nowTime < endTime) {
            if (retryCount === 0) {
                // sleep(forwardTime);
                logWithTime("时间到，开始抢购");
            }

            // 如果在购物车页面且已勾选商品
            if (className("android.widget.TextView").textContains("结算(").exists()) {
                className("android.widget.TextView").textContains("结算(").findOne().click();
                notInCarCount = 0;
                found = true;
                logWithTime("去结算");
                className("android.widget.TextView").text("提交订单").findOne().click();
            }

            // 如果加载中
            else if (className("android.widget.TextView").textContains("加载中").exists()) {
                if (loadding === 0){
                    loadding = 1
                    logWithTime("加载中");
                }
                found = true;

            }

            // 如果在提交订单界面
            else if (className("android.widget.TextView").text("提交订单").exists()) {
                className("android.widget.TextView").text("提交订单").findOne().click();
                found = true;
                logWithTime("提交订单");
            }

            // 如果已经卖完
            else if (className("android.widget.TextView").text("失效宝贝").exists() || className("android.widget.TextView").text("商品不能购买").exists()) {
                found = true;
                logWithTime("商品已失效/卖完，抢购结束");
                clearInterval(z);
                device.cancelKeepingAwake();

            }

            // 如果被盾了
            else if (className("android.widget.TextView").text("我知道了").exists()) {
                className("android.widget.TextView").text("我知道了").findOne().click();
                found = true;
                dunCount++;
                logWithTime("第" + dunCount + "次被盾，您还有机会，重试中...");
            }

            // 抢购成功
            else if (className("android.widget.TextView").text("立即付款").exists()) {
                logWithTime("抢购成功！请支付！");
                found = true;
                susses++;
                clearInterval(z);
                device.cancelKeepingAwake();
            }

            // 如果未勾选商品
            else if (className("android.widget.TextView").text("结算").exists()) {
                className("android.widget.TextView").text("结算").findOne().click();
                found = true;
                if (notChecked === 0){
                    notChecked = 1
                    logWithTime("请勾选需要抢购的商品");
                }
            }

            // 如果都不是
            else if (notInCarCount === 0 && susses === 0 && found === false) {
                logWithTime("未检测到相关页面，请前往购物车");
                notInCarCount++;
            }

            retryCount++

        } else if (nowTime >= endTime) {
            logWithTime("超出预定抢购时长，抢购结束");
            device.cancelKeepingAwake();
            clearInterval(z);
        }

    }, interval);
}
//autojs源码提取,加密打包,代码解密,还原.微信:zxkj6898 或zx033245 或QQ168196007
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
