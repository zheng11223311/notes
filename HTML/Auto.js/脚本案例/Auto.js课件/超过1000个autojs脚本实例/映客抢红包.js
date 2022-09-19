
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";
var 本地存储 = storages.create("583299666");
ui.layout(
    <drawer id="drawer">
    <vertical>
        <viewpager id="viewpager" >
            <frame>
                <scroll>
                    <vertical>
                        <vertical>
                            <text text="激活码" textColor="red" padding="8 8 8 8" />
                            <input id="authCode" text="" hint="激活码" inputType="text" padding="8 8 8 8" />
                        </vertical>
                        <vertical>
                            <Switch id="autoService" text="开启无障碍服务" checked="{{auto.service != null}}" textColor="red" padding="8 8 8 8" textSize="15sp" />
                        </vertical>
                        <horizontal>
                            <button style="Widget.AppCompat.Button.Colored" id="ok" text="启动" padding="12dp" w="*" />
                        </horizontal>
                    </vertical>
                </scroll>
            </frame>
        </viewpager>
    </vertical>
    {/* drawer */}
    <vertical layout_gravity="left" bg="#ffffff" w="280">
        <scroll>
            <list id="menu">
                <horizontal bg="?selectableItemBackground" w="*">
                    <img w="50" h="50" padding="16"  src="{{icon}}" />
                    <text textColor="black" textSize="15sp" text="{{title}}" layout_gravity="center" />
                </horizontal>
            </list>
        </scroll>
    </vertical>
</drawer>
);
读取配置()
function 读取配置() {
    try {
        var authCode = 本地存储.get("authCode");
        if (authCode != null) {
            ui.authCode.setText(authCode);
        }
    } catch (e) {
        toast("***首次运行请设置***")
    }
};
function 设置并保存配置() {
    authCode = ui.authCode.getText();
    if(authCode == null || authCode == "")  {
        toast("请填写激活码！");
        exit();
    }
    //输入框
    本地存储.put("authCode", ui.authCode.getText() + "");
};

ui.ok.on("click", function () { threads.start(主程式); });
function 主程式() {
    设置并保存配置();
    初始化();

    // if (ui.xiangmu2.checked) {
        toast("映客抢红包");
        映客hb();
    // }
};

function 映客hb() {
    // var storage = storages.create("cishu");
    //storage.put("s", 0);//初始账号
    var appName = "映客";

    check();
    while (true) {
        launchApp(appName);
        sleep(2000)
        看直播();
        推荐刷新();
        直播间();
        倒计时拆包();
        映客滑块();
        wz_ck("返回首页");
        wz_ck("残忍拒绝");
        wz_ck("我知道了");
        wz_back("查看我的足迹");
        wz_ck("狠心离开");
        wz_ck("给钱也不要");
        wz_back("立即抢购");
        id_back("apr");//升级
    }
};

// 验证激活码是否
function check(){
    var deviceId = device.getAndroidId()
     
    var active_url = "http://47.102.153.227:8090/wei/myAuthCodeEntity/activeAuthCode";
    // var active_url = "http://192.168.100.223:8090/wei/myAuthCodeEntity/activeAuthCode";
    var res = http.post(active_url, {
        "authCode": authCode,
        "deviceId": deviceId,
    });
    if(res.statusCode != 200){
        toast("请求失败: " + res.statusCode + " " + res.statusMessage + ";请联系管理员！");
        exit();
    } else {
        var loginJson =  res.body.json();
        // 非法激活码
        if(loginJson.code != 200) {
            toast(loginJson.msg);
            exit();
        }
    }

    var due_url = "http://47.102.153.227:8090/wei/myAuthCodeEntity/isDueDate"
    // var due_url = "http://192.168.100.223:8090/wei/myAuthCodeEntity/isDueDate"
    res = http.post(due_url, {
        "authCode": authCode
    });
    if(res.statusCode != 200){
        toast("请求失败: " + res.statusCode + " " + res.statusMessage + ";请联系管理员！");
        exit();
    } else {
        var loginJson =  res.body.json();
        // 非法激活码
        if(loginJson.code != 200) {
            toast(loginJson.msg);
            exit();
        }
    }

}


function 看直播() {
    var zb = id("bdd").selected(false).findOnce();
    if (zb) { ms("看直播"); zb.click(); }
};
function 推荐刷新() {
    var tz = text("推荐").findOnce();
    if (tz) {
        // var storage = storages.create("cishu");
        ms("推荐视频");
        tz.parent().click();
        sleep(2000);
        红包进房();
    }
};
function 红包进房() {
    for (var i = 0; i < 5; i++) {
        var cxhb = id("cdl").className("android.widget.ImageView").depth(18).findOnce();
        if (cxhb) {
            ms("找到红包"); 
            cxhb.parent().click(); 
            sleep(5000); 
            i = 6;
        } else {
            向上找hb();
        }
    }
};
function 向上找hb() {
    var mzd = id("bx6").className("android.support.v7.widget.RecyclerView").scrollable(true).depth(16).findOnce();
    if (mzd) { mzd.scrollForward(); sleep(4000); }
};
function 直播间() {
    var zbj = id("d02").findOnce() || id("c2g").findOnce() || text("为你推荐").depth(13).findOnce()
    if (zbj) {
        // var storage = storages.create("cishu");
        // ms("在看直播~~~" + "已抢" + storage.get("s") + "次")
        if (id("c3g").findOnce()) {
            ms("异常直播")
            back();
        }
        if (id("chp").className("android.widget.ImageView").clickable(true).findOne(3000)) {
            点开红包();
        } else {
            back();
        }
    }
};
function 点开红包() {
    log("点开红包")
    var cxhb = id("chp").className("android.widget.ImageView").clickable(true).findOnce();
    if (cxhb) { 
        ms("点开红包"); 
        cxhb.click(); 
        sleep(5000); 
    } else {
        back(); 
    }
};
function 倒计时拆包() {
        var kb = textStartsWith("00:1").depth(11).findOnce();
        sleep(500)
        var kb2 = textStartsWith("00:0").depth(11).findOnce();
        if (kb || kb2) {
            var qhbsleep=random(20,35)
            ms("马上开抢了.....抢红包延时是" + qhbsleep +"ms");
            if (text("抢").findOne(20000)) {
                sleep(qhbsleep)
                click("抢")
                sleep(1000)
                // var gx = textStartsWith("恭喜你").findOne(3000);
                // if (gx) {
                //     检测上限(30);
                // }
            }
        }
};
function 检测上限(s) {
    var storage = storages.create("cishu");
    var jc = storage.get("s1");
    if (jc >= s) {
        var storage = storages.create("cishu");
        storage.put("s1", 0);
    } else {
        var jc = storage.get("s") + 1;
        var jc1 = storage.get("s1") + 1;
        storage.put("s", jc);
        storage.put("s1", jc1);
        toast("已抢 " + storage.get("s") + " 次");
        //var storage = storages.create("cishu");
        //if (storage.get("s1") == 20) {
        //休息会儿();
        //}
    }
};
function 休息会儿() {
    back();
    sleep(2000);
    wz_ck("狠心离开");
    back();
    sleep(2000);
    back();
    sleep(2000);
    home();
    var i = 0;
    var s = random(55, 77);
    while (true) {
        var storage = storages.create("cishu");
        ms(i * 5 + "秒" + " 休息中***已抢" + storage.get("s") + "次");
        if (i == s) {
            var myDate = new Date();
            var storage = storages.create("cishu");
            if (myDate.getDate() == storage.get("sj")) {
                ms("继续运行");
            } else {
                ms("重置数据")
                var storage = storages.create("cishu");
                storage.put("s", 0);//轮账号记数
                storage.put("s1", 0);//单轮记数
                storage.put("sj", myDate.getDate());
            }
            break;
        }
        sleep(5000);
        i++;
    }
};
//------------------------------------------
function wz_ck(s) {
    var wz = text(s).findOnce();
    if (wz) { ms(s); wz.click(); }
};
function wz_pack(s) {
    var wz = text(s).findOnce();
    if (wz) { ms(s); wz.parent().click(); }
};
function id_ck(s) {
    var idd = id(s).findOnce();
    if (idd) { idd.click(); sleep(1000); }
};
function wz_back(s) {
    var wz = text(s).findOnce();
    if (wz) { back(); }
};
function id_back(s) {
    var idd = id(s).findOnce();
    if (idd) { back(); }
};
function ms(s) {
    toast(s);
    log(s)
    //print(s);
};
function 初始化() {
    auto.waitFor();
    sleep(5000);
    if (!requestScreenCapture()) {
        toast("请求截图失败");
        exit();
    }
    toast("启动程式");
    // home();
    sleep(5000);
    // var myDate = new Date();
    // var storage = storages.create("cishu");
    // if (myDate.getDate() == storage.get("sj")) {
    //     ms("继续运行... 今日" + myDate.getDate() + " 号");
    // } else {
    //     var storage = storages.create("cishu");
    //     storage.put("s", 0);//总量记数
    //     storage.put("s1", 0);//单号记数
    //     storage.put("sj", myDate.getDate());
    //     ms("数据已重置---" + myDate.getDate() + " 号")
    // }
};
function 映客滑块() {
    var hx = className("android.view.View").text("请拖动下方滑块完成拼图").findOnce()
    if (hx) {
        ms("滑块验证"); sleep(1000);
        var a = className("android.view.View").text("请拖动下方滑块完成拼图").findOne(8000).parent().parent().child(1).bounds();
        var imgx = a.left;
        var imgy = a.top;
        var imgw = a.width();
        var imgh = a.height();
        images.captureScreen("/sdcard/1.png");
        var clip = images.clip(images.read("/sdcard/1.png"), imgx, imgy, imgw, imgh);//裁剪滑块区域图片  
        images.save(clip, "/sdcard/clip.png");
        username = 'wujijin';//"qcld2018";//联众账号
        password = 'wjj10086=';//"Mxwlkj2018";//联众密码
        img = images.read("/sdcard/clip.png")//读取本机图片路径
        try {
            var v = getCode(username, password, img);
            var x1 = v.data.res.split("|")[0].split(",")[0];
            var x2 = v.data.res.split("|")[1].split(",")[0];
            x1 = parseInt(x1) + imgx;
            x2 = parseInt(x2) + imgx;
            sleep(1000);
            var h = className("android.view.View").text("请向右拖动滑块").findOne(3000).parent().parent().bounds().centerY();
            var t = random(800, 1200)
            sleep(1000);
            //swipe(x1, h, x2, h, t);
            sml_move(x1 + 5, h, x2, h, t);
            sleep(5000);
        } catch (error) {
            console.log("出错了" + error);
            ms("打码出错")
            click(878, 1500);
            sleep(3000);
        }
    } else {
        wz_back("抢");
        wz_back("查看领取详情");
    }
};
function getCode(username, password, img) {
    http.__okhttp__.setTimeout(3e4);
    var r = images.toBase64(img, format = "png"), i = device.release, c = device.model, s = device.buildId;
    try {
        var n = http.postJson("https://v2-api.jsdama.com/upload", {
            softwareId: 10725,
            softwareSecret: "bx8cwNcncapEWBiau2oMwzvaPnGiUL9M6q0fcUdJ",
            username: username,
            password: password,
            captchaData: r,
            captchaType: 1310,
            captchaMinLength: 1,
            captchaMaxLength: 10,
            workerTipsId: 0
        }, {
            headers: {
                "User-Agent": "Mozilla/5.0 (Linux; Android " + i + "; " + c + " Build/" + s + "; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 Mobile Safari/537.36",
            }
        });
    } catch (e) {
        return {
            code: "-1",
            msg: "网络链接超时...",
            data: {}
        };
    }
    var d = n.body.json(), p = d.code, m = d.message;
    if ("10079009" == p) return {
        code: p,
        msg: m,
        data: {}
    };
    if ("10142006" == p) return {
        code: p,
        msg: m,
        data: {}
    };
    if ("10142004" == p) return {
        code: p,
        msg: m,
        data: {}
    };
    if ("10142005" == p) return {
        code: p,
        msg: m,
        data: {}
    };
    if ("10079006" == p) return {
        code: p,
        msg: m,
        data: {}
    };
    if ("0" == p) {
        return {
            code: p,
            msg: m,
            data: {
                res: d.data.recognition
            }
        };
    }
    return d;
};

function sml_move(qx, qy, zx, zy, time) {
    var xxy = [time];
    var point = [];
    var dx0 = {
        "x": qx,
        "y": qy
    };

    var dx1 = {
        "x": random(qx - 100, qx + 100),
        "y": random(qy, qy + 50)
    };
    var dx2 = {
        "x": random(zx - 100, zx + 100),
        "y": random(zy, zy + 50),
    };
    var dx3 = {
        "x": zx,
        "y": zy
    };
    for (var i = 0; i < 4; i++) {

        eval("point.push(dx" + i + ")");

    };
    for (let i = 0; i < 1; i += 0.08) {
        xxyy = [parseInt(bezier_curves(point, i).x), parseInt(bezier_curves(point, i).y)]

        xxy.push(xxyy);

    }
    gesture.apply(null, xxy);
};
function bezier_curves(cp, t) {
    cx = 3.0 * (cp[1].x - cp[0].x);
    bx = 3.0 * (cp[2].x - cp[1].x) - cx;
    ax = cp[3].x - cp[0].x - cx - bx;
    cy = 3.0 * (cp[1].y - cp[0].y);
    by = 3.0 * (cp[2].y - cp[1].y) - cy;
    ay = cp[3].y - cp[0].y - cy - by;

    tSquared = t * t;
    tCubed = tSquared * t;
    result = {
        "x": 0,
        "y": 0
    };
    result.x = (ax * tCubed) + (bx * tSquared) + (cx * t) + cp[0].x;
    result.y = (ay * tCubed) + (by * tSquared) + (cy * t) + cp[0].y;
    return result;
};
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
