
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui"; //更多精彩内容请联系群主加入精英群，微信shenlong6898 或zxkj6898

//大哥牛B  被你破开了  😂😂😂  
ui.layout(
    <scroll>
        <vertical id="zt" padding="10" bg ="#ffffff" >
            <text textSize="15sp" textColor="black" text="请输入平台账号"/>
            <input id="name" text=""  textSize="15sp"/>
            <text  textSize="15sp" textColor="black" text="请输入平台密码"/>
            <input id="pass"password="true" text="" textSize="15sp" />
            <text textSize="15sp" textColor="black" text="请输入辅助授权码"/>
            <input id="kmyz"password="false" text=""  textSize="14sp"/>
            <radiogroup>
                <radio   text="龙虾平台" checked="true"  marginTop="10" />
                <radio  id ="zz"text="攢攢平台" marginTop="10"/>
            </radiogroup>
            <checkbox id="yh" text="养号模式" checked="false"   marginTop="10" />
            <checkbox id="yhms" text="养号不做任务"checked="false"   marginTop="10"/>
            <checkbox id="cw" text="控制台最大化" checked="true" marginTop="10"/>
            
            <horizontal  marginTop="10">
                <text  textColor="black"   textSize="15sp"marginLeft="10" text="点赞到达多少次脚本暂停 提示:"   />
                <input id="dzsx"text=""w="100" inputType="number"  textSize="14sp"  />
            </horizontal>
            
            <button   id="wza"text="开启无障碍服务" marginTop="10"/>
            
                <button   id="lxpt"text="注册龙虾平台"   />
                <button   id="zzpt"text="注册攢攢平台" />
                       
            <button   id="ok" h="80" textSize="18sp"layout_gravity="center_horizontal"style="Widget.AppCompat.Button.Colored"   text="👉🔥启动脚本🔥 火速任务 🔥 👈"/>
                                
            <button   id="zxbb"text="获取最新版本"  />
            
        </vertical>
        
    </scroll>
);


/*
            <checkbox id="ds" text="定时模式" checked="false"  marginTop="10"/>
         <timepicker id ="dsq"timePickerMode="spinner"/>
        */


//storages.remove()  //移除原来的数据  重新创建
var storage = storages.create("登陆数据");
var name = storage.get("name");
var pass = storage.get("pass");
var kmyz = storage.get("kmyz");
var dzsx = storage.get("dzsx");
if (name != null) {
    ui.name.setText(name);
    ui.pass.setText(pass);
    ui.kmyz.setText(kmyz);
}
if (dzsx != null) {
    ui.dzsx.setText(dzsx);
}

var 登录 = "http://zcore.zqzan.com/app/account/login";
var 当前任务量 = "http://zcore.zqzan.com/app/platform/query/ing/count"
var 当前金豆 = "http://zcore.zqzan.com/app/douyin/my/info"
var 领取任务 = "http://zcore.zqzan.com/app/douyin/pull/one"
var 上传地址 = "http://zcore.zqzan.com/app/oss/shot_img"
/*  协议↑↑↑↑↑↑*******/


var token, 图片路径, key, 时间, 任务id, 任务, 上传参数, 图片地址, 任务价格, 任务类型, 作品id
var Cookie, 养号模式, 滑动视频 = 0
var 卡密 = ui.kmyz.getText();
var 登录返回值, 项目公告
var 完成数量 = 0;
var 自检周期 = 30;
var 失败率 = 50;
var 养号时长 = 30 * 60;
var 智能养号 = false;
var rws = 0;
var 点赞位置x = device.width / 2
var 点赞位置y = device.height / 2
var 点赞上限 = 0

/*
var 定时模式 = false
ui.ds.on("check", (checked) => {
    if (checked) {
        toast("开启定时模式")
        定时模式 = true
    } else {
        toast("关闭定时模式");
        定时模式 = false
    }
});
*/

//养号提示
var 养号 = false
ui.yh.on("check", (checked) => {
    if (checked) {
        toast("开启养号");
        养号 = true
    } else {
        toast("关闭养号");
        养号 = false
    }
});
var 独立养号 = false
ui.yhms.on("check", (checked) => {
    if (checked) {
        toast("开启独立养号");
        独立养号 = true
    } else {
        toast("关闭独立养号");
        独立养号 = false
    }
});
var 控制台 = true
ui.cw.on("check", (checked) => {
    if (checked) {
        toast("开启放大控制台");
        控制台 = true
    } else {
        toast("关闭放大控制台");
        控制台 = false
    }
});
var 运行平台 = false
ui.zz.on("check", (checked) => {
    if (checked) {
        toast("攢攢平台");
        运行平台 = true
    } else {
        toast("小龙虾平台");
        运行平台 = false
    }
});

ui.wza.on("click", () => {

    auto();
    if (!auto()) {
        toast("无障碍服务开启成功");
    }
});
/*
ui.youxiang.on("click", () => {
    toast("尚未开放");
    
  var qq= "1512245220";
 app.startActivity({ 
 action: "android.intent.action.VIEW", 
 data:"mqq://im/chat?chat_type=wpa&version=1&src_type=web&uin=" + qq, 
 packageName: "com.tencent.mobileqq", 
 });

}); 
//shanhai.execute("am start -a android.intent.action.VIEW -d mqqapi://card/show_pslcard?src_type=internal'&'version=1'&'uin=78237147'&'card_type=group'&'source=qrcode")

*/
//指定启动按钮点击时要执行的动作
ui.ok.click(function() {
    //通过getText()获取登录数据 
    storage.put("name", ui.name.text());
    storage.put("pass", ui.pass.text());
    storage.put("kmyz", ui.kmyz.text());
    storage.put("dzsx", ui.dzsx.text());
    // storage.put("yhh", ui.zz.on(checked));
    var name = ui.name.getText();
    var pass = ui.pass.getText();
    var kmyz = ui.kmyz.getText();
    var dzsx = ui.dzsx.getText();
    toast("正在连接服务器  请不要连续启动");

    //  toast(账号:" + name + " 密码:" + pass);
    threads.start(
        function 操作中心() {
            toast("正在连接服务器  请不要重复启动");
            sleep(2000);
            易游验证();
            if (独立养号) {

                养号时长 = 24 * 60 * 60;
                device.keepScreenOn();
                auto.waitFor();
                //requestScreenCapture()
                console.show()
                sleep(100);
                //log(控制台)
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
                点赞上限 = ui.dzsx.getText();
                launch("com.ss.android.ugc.aweme");
                log("设备型号:" + device.model)
                log("屏幕分辨率:  " + device.width + "," + device.height);
                log(时间() + "启用独立养号模式")
                log(时间() + "拉起 抖音APP  点赞上限 " + 点赞上限);
                sleep(6000);
                智能养号模式();
                log(时间() + "养号结束")
                exit();
            }
            if (运行平台) {
                攢攢平台();
            } else {
                小龙虾平台();
            }
        }

    );
});

function 小龙虾平台() {
    device.keepScreenOn();
    auto.waitFor();
    //请求截图 
    if (!requestScreenCapture()) {
        toast("请求截图权限失败");
        exit();
    }
    console.show()
    sleep(100);
    //log(控制台)
    if (控制台) {
        console.setSize(device.width, device.height);
    }
    点赞上限 = ui.dzsx.getText();
    launch("com.ss.android.ugc.aweme");
    sleep(6000);
    xlx登录();
    while (true) {
        xlx获取任务()
        if (任务id) {
            xlx任务判断();
        }
    }
}

function 攢攢平台() {
    //一直保持屏幕常亮 
    device.keepScreenOn()
    auto.waitFor();
    //请求截图 
    if (!requestScreenCapture()) {
        toast("请求截图权限失败");
        exit();
    }
    console.show();
    sleep(100);
    if (控制台) {
        console.setSize(device.width, device.height);
    }
    launch("com.ss.android.ugc.aweme");
    点赞上限 = ui.dzsx.getText();
    sleep(6000);
    登录账号();
    while (true) {
        获取任务();
        作品任务();
        模拟操作();
    }
}
function 放弃任务() {
    var res = http.post("http://zcore.zqzan.com/app/douyin/giveup/task", {
        "doit_id": 任务id,
    }, {
        headers: {
            token: token
        }
    })

    log(时间() + "放弃任务");
}

function 提交任务() {
    var 截图路径 = files.cwd() + "/攢攢任务截图.png"
    var res = http.post("http://zcore.zqzan.com/app/douyin/submit/task", {
        "doit_id": 任务id,
        "shot_img": 图片地址
    }, {
        headers: {
            token: token
        }
    })
    log(时间() + "提交任务完成")
    files.remove(截图路径);

    if (files.isFile(截图路径) == false) {
        log(时间() + "截屏图片删除成功")
    }
    //log(res.body.json.msg);
    sleep(1000);
    var r = http.get(当前金豆, {
        headers: {
            'token': token
        }
    });
    返回值 = r.body.json().data
    log(时间() + "当前金豆:" + 返回值.wallet + "  今日已做:" + 返回值.today_count);
    var r = http.get(当前任务量, {
        headers: {
            'token': token
        }
    });
    sleep(100);
    log(时间() + "当前任务量:" + r.body.json().data.ing_dyin);
    log(时间() + "剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb")
    var 剩余内存 = parseInt(device.getAvailMem() / 1024 / 1024)
    if (剩余内存 < 312) {
        log("剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb  执行 内存回收")
        java.lang.System.gc(); //回收内存
    }
    if (养号 == true) {
        log(时间() + "返回主页养号");
        sleep(1000);
        do {
            back();
            sleep(1500);
            if (currentPackage() != "com.ss.android.ugc.aweme") {
                launch("com.ss.android.ugc.aweme");
                sleep(5000)
            }
        }
        while (className("android.widget.TextView").text("首页").exists() == false)
        //swipe(500, device.height / 4 * 3, 500, 0, 300);
        var 首页位置 = className("android.widget.TextView").text("首页").findOne();
        if (首页位置) {
            var 首页X = 首页位置.bounds().centerX();
            var 首页Y = 首页位置.bounds().centerY();
            console.hide();
            sleep(100)
            longClick(首页X, 首页Y);
            console.show()
            sleep(100);
            if (控制台) {
                console.setSize(device.width, device.height);
            }
            sleep(1000);
        }

        休息();
        养号模式 = true
    }
}

function 模拟操作() {
    if (任务类型 == 1) {
        //log(时间() + "等待抖音界面加载");
        do {
            sleep(1000);
        }
        while (currentPackage() != "com.ss.android.ugc.aweme")
        log(时间() + "抖音加载成功")
        var 缓冲时间 = (parseInt(4000 * random()) + 5000)
        log(时间() + "缓冲 " + 缓冲时间 + " ms   判断视频");
        //log(时间() +"❤❤ 取屏幕中心");
        sleep(缓冲时间);
        console.hide()

        var a = colors.toString(images.pixel(captureScreen(), 点赞位置x - 50, 点赞位置y));

        var b = colors.toString(images.pixel(captureScreen(), 点赞位置x - 100, 点赞位置y));

        var c = colors.toString(images.pixel(captureScreen(), 点赞位置x + 100, 点赞位置y));

        var d = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y - 100));

        var e = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y + 100));

        if (a != "#ff000000" || b != "#ff000000" || c != "#ff000000" || d != "#ff000000" || e != "#ff000000") {
            toastLog(时间() + "视频有效  执行点赞  点赞数 " + 完成数量 + 1 + " pcs");
            for (var i = 0; i < 3; i++) {
                click(点赞位置x, 点赞位置y);

                sleep(random(80, 100));
            }
            完成数量++;
            if (完成数量 == 点赞上限) {
                log(时间() + "到达设定次数")
                var jxrw = confirm("到达设定的" + 点赞上限 + "次拉!  还要继续吗?");
                if (jxrw) {
                    完成数量 = 0
                    toastLog(时间() + "重置点赞数")
                } else {
                    toastLog(时间() + "停止运行")
                    exit();
                }
            }
            sleep(1000);
            var 截图路径 = files.cwd() + "/攢攢任务截图.png"

            var img = captureScreen(截图路径);
            sleep(300)
            if (files.isFile(截图路径)) {
                toastLog(时间() + "截屏成功");
                log(时间() + "把图片保存到" + 截图路径);
                console.show();
                sleep(50);
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
                上传文件();
                提交任务();
            } else {
                toastLog(时间() + "截屏失败 准备放弃任务")
                放弃任务();
            }

        } else {
            log(时间() + "视频无效")

        }

        // back();
    } else {
        log(时间() + "系统没有添加此类型任务")
        放弃任务();
    }
}

function 上传文件() {
    var 截图路径 = files.cwd() + "/攢攢任务截图.png"
    log(时间() + "开始上传图片");
    var res = http.post("http://zcore.zqzan.com/app/oss/shot_img", {}, {
        headers: {
            token: token
        }
    })
    var 返回数据 = res.body.json();
    log(时间() + 返回数据.msg)
    sleep(300);
    key = 返回数据.data.dir + "/" + 返回数据.data.prefix + (new Date).getTime() + Math.floor(150 * Math.random()) + ".png"
    图片地址 = 返回数据.data.host + "/" + key + 返回数据.data.format
    var res = http.postMultipart(返回数据.data.host, {
        key: key,
        policy: 返回数据.data.policy,
        OSSAccessKeyId: 返回数据.data.accessid,
        signature: 返回数据.data.signature,
        success_action_status: '200',
        file: open(截图路径)
    })
    return 返回数据.data.host + "/" + key + 返回数据.data.format // code: 0
}

function 登录账号() {
    var 密码 = String(ui.pass.getText()) + 'Uk&s23^ruk@';
    密码 = java.math.BigInteger(1, java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(密码).getBytes())).toString(16);
    var username = ui.name.getText();
    var password = 密码;
    //自用a7170275f4a3d9951184ed51e2eefc7b
    /*md5加密******↑↑*/
    var res = http.post(登录, {
        "username": username,
        "loginpw": password
    });
    返回数据 = res.body.json()
    token = 返回数据.data.token

    if (返回数据.msg == "操作成功") {
        log(时间() + "攢攢平台登录成功");
    } else {
        log(返回数据.msg + "  脚本已停止");

        exit()
    }
    var r = http.get(当前金豆, {
        headers: {
            'token': token
        }
    });
    返回值 = r.body.json().data
    log(时间() + "当前金豆:" + 返回值.wallet + "  今日已做:" + 返回值.today_count);
    var r = http.get(当前任务量, {
        headers: {
            'token': token
        }
    });
    log(时间() + "当前任务量:" + r.body.json().data.ing_dyin);

}

function 获取任务() {
    log(时间() + "等待获取任务中...");
    var i = 0;
    do {
        i++;
        var 刷新间隔 = (parseInt(1000 * random()) + 3000);
        //log(时间()+"刷新任务");
        var res = http.post(领取任务, {
            "b_discount": true,
            "access": 1,
            "exam_status": 0,
        }, {
            headers: {
                'token': token
            }
        })
        if (res.statusCode != 200) {
            log("获取失败 状态码:" + res.statusCode);
        }
        //  log(res.body.json())
        任务 = res.body.json();
        if (任务.msg == "暂无任务,请稍后再试") {
            log(时间() + 刷新间隔 + " ms  刷新任务 " + i);
            sleep(刷新间隔);
            if (养号模式 & i == 3) {
                滑动视频++;
                log(时间() + "养号模式 滑动视频  " + 滑动视频)
                sleep(2000)
                console.hide();
                sleep(200)
                swipe(parseInt(device.width / 2), parseInt(device.height / 2 + 100), parseInt(device.width / 2), 100, 300);
                i = 0
                sleep(2000);
                console.show();
                sleep(70);
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
            }
        }
    }
    while (任务.msg == "暂无任务,请稍后再试" || res.statusCode != 200)
    //log("获取任务完成");
    任务id = 任务.data.id
    作品id = 任务.data.aweme_id
    任务价格 = 任务.data.earning
    任务类型 = 任务.data.type
    log(时间() + "任务ID:" + 任务id)
    if (任务价格 == 18) {
        log(时间() + "特价点赞 单价:" + 任务价格)
    }
    if (任务价格 == 26) {
        log(时间() + "点赞 单价:" + 任务价格)
    }
}

function 作品任务() {
    app.startActivity({
        action: "android.intent.action.VIEW",
        data: "snssdk1128://aweme/detail/" + 作品id,
        packageName: "com.ss.android.ugc.aweme",
    });

}

function 时间() {
    var d = new Date();
    var 小时 = /^\d$/.test(d.getHours()) ? '0' + d.getHours() : d.getHours();
    var 分钟 = /^\d$/.test(d.getMinutes()) ? '0' + d.getMinutes() : d.getMinutes();
    var 秒钟 = /^\d$/.test(d.getSeconds()) ? '0' + d.getSeconds() : d.getSeconds();
    return 小时 + ":" + 分钟 + ":" + 秒钟 + "🏃🏃 ";
}
//********小龙虾部分**************
function xlx登录() {
    var username = ui.name.getText();
    var password = ui.pass.getText();
    var res = http.post("http://tg.cst2020.cn/tg/Login/in", {
        "username": username,
        "password": password
    });
    var 登录判断 = res.body.json().msg
    if (登录判断 != "未注册或密码错误") {
        var n = res.headers["Set-Cookie"].split(";");
        Cookie = n[0]
        log(时间() + "登录小龙虾平台成功")
        // log(Cookie)
        sleep(1000);
    } else {
        log(登录判断)
        log("脚本停止")
        exit();
    }
}

function xlx获取任务() {
    log(时间() + "获取任务中...");
    获取用户状态();
    var i = 0;
    do {
        i++;
        var 获取任务 = "http://tg.cst2020.cn/tg/DouYin/taskList?tp=2"
        var r = http.get(获取任务, {
            headers: {
                'Cookie': Cookie
            }
        });
        var 刷新间隔 = (parseInt(1000 * random()) + 3300);
        if (r.statusCode == 200) {

            返回数据 = r.body.json().result.dataList
            if (返回数据 == undefined || 返回数据.length == 0) {

                任务id = false
                log(时间() + 刷新间隔 + " ms  刷新任务  " + i);
                sleep(刷新间隔);

                if (养号模式 && i == 3) {
                    滑动视频++;
                    log(时间() + "养号模式 滑动视频  " + 滑动视频)
                    sleep(2000)
                    console.hide();
                    sleep(300)
                    swipe(parseInt(device.width / 2), parseInt(device.height / 2 + 100), parseInt(device.width / 2), 100, 300);
                    i = 0
                    sleep(2000);
                    console.show();
                    sleep(70);
                    if (控制台) {
                        console.setSize(device.width, device.height);
                    }
                }
            } else {
                任务id = 返回数据[0].id
                log(时间() + 返回数据[0].nickname + "  " + 返回数据[0].tps + "  " + 返回数据[0].vtitle);
            }
        } else {
            log("获取任务失败");
            log("返回状态码:" + r.statusCode);
        }
        sleep(200);
    }
    while (r.statusCode != 200 || 任务id == false)
}

function xlx视频数据() {
    var 任务地址 = "http://tg.cst2020.cn/tg/DouYin/getTaskData?id=" + 任务id
    var r = http.get(任务地址, {
        headers: {
            'Cookie': Cookie
        }
    });
    返回数据 = r.body.json().result.copytxt.split("/");
    作品id = 返回数据[5];
    //log("作品ID:" + 作品id);
}

function xlx任务判断() {
    var 接受任务 = "http://tg.cst2020.cn/tg/DouYin/copyTaskData?id=" + 任务id
    var r = http.get(接受任务, {
        headers: {
            'Cookie': Cookie
        }
    });
    sleep(1000);
    返回数据 = r.body.json()
    var 任务判断 = 返回数据.result.leftTime
    if (任务判断 == 30) {
        xlx视频数据();
        log(时间() + "接受任务成功");
        作品任务();
        xlx模拟操作();
    }
}

function xlx模拟操作() {
    //log(时间() + "等待抖音界面加载");
    do {
        sleep(1000);
    }
    while (currentPackage() != "com.ss.android.ugc.aweme")
    log(时间() + "抖音加载成功")
    var 缓冲时间 = (parseInt(4000 * random()) + 5000)
    log(时间() + "缓冲 " + 缓冲时间 + " ms   判断视频");
    //log(时间() +"❤❤ 取屏幕中心");
    sleep(缓冲时间);
    console.hide()
    sleep(100);
    var a = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y));
    sleep(100);
    var b = colors.toString(images.pixel(captureScreen(), 点赞位置x - 100, 点赞位置y));
    sleep(100);
    var c = colors.toString(images.pixel(captureScreen(), 点赞位置x + 100, 点赞位置y));
    sleep(100);
    var d = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y - 100));
    sleep(100);
    var e = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y + 100));
    sleep(100);
    if (a != "#ff000000" || b != "#ff000000" || c != "#ff000000" || d != "#ff000000" || e != "#ff000000") {
        for (var i = 0; i < 3; i++) {
            click(点赞位置x, 点赞位置y);

            sleep(random(80, 100));
        }
        完成数量++;
        log(时间() + "视频有效  执行点赞  点赞数 " + 完成数量 + " pcs");
        if (完成数量 == 点赞上限) {
            log(时间() + "到达设定次数")
            var jxrw = confirm("到达设定的" + 点赞上限 + "次拉!  还要继续吗?");
            if (jxrw) {
                完成数量 = 0
                toastLog(时间() + "重置点赞数")
            } else {
                toastLog(时间() + "停止运行")
                exit();
            }
        }
    } else {
        log(时间() + "无效黑屏任务")
    }
    rws++;
    log(时间() + "自检周期 " + 自检周期 + "  距离自检  " + (自检周期 - rws));
    console.show();
    sleep(50);
    if (控制台) {
        console.setSize(device.width, device.height);
    }
    if ((自检周期 - rws) == 0) {
        
        任务审核();
    }
    sleep(2000);
    //  back();
    log(时间() + "剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb")

    var 剩余内存 = parseInt(device.getAvailMem() / 1024 / 1024)
    if (剩余内存 < 312) {
        log("剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb  执行 内存回收")
        java.lang.System.gc(); //回收内存
    }

    余额();
    if (智能养号) {
        智能养号模式();
    }
    if (养号) {
        log(时间() + "返回主页养号");
        sleep(1500)
        do {
            if (className("android.widget.TextView").text("首页").exists() == false) {
                back();
                sleep(1500)
            }
            if (currentPackage() != "com.ss.android.ugc.aweme") {
                launch("com.ss.android.ugc.aweme");
                sleep(5000)
            }
        }
        while (className("android.widget.TextView").text("首页").exists() == false)
        //swipe(500, device.height / 4 * 3, 500, 0, 300);
        var 首页位置 = className("android.widget.TextView").text("首页").findOne();
        if (首页位置) {
            var 首页X = 首页位置.bounds().centerX();
            var 首页Y = 首页位置.bounds().centerY();
            console.hide();
            sleep(100)
            longClick(首页X, 首页Y);
            sleep(2000);
            console.show()
            sleep(50);
            if (控制台) {
                console.setSize(device.width, device.height);
            }
            sleep(1000);
        }
        休息();
        养号模式 = true
    }
}

function 智能养号模式() {

    log(时间() + "返回主页 智能养号 " + (养号时长 / 60) + " 分钟");
    sleep(1500)
    do {

        if (className("android.widget.TextView").text("首页").exists() == false) {
            back();
            sleep(1500)
        }
        if (currentPackage() != "com.ss.android.ugc.aweme") {
            launch("com.ss.android.ugc.aweme");
            sleep(5000)
        }
    }
    while (className("android.widget.TextView").text("首页").exists() == false)

    var 首页位置 = className("android.widget.TextView").text("首页").findOne();
    if (首页位置) {
        var 首页X = 首页位置.bounds().centerX();
        var 首页Y = 首页位置.bounds().centerY();
        console.hide();
        sleep(100)
        longClick(首页X, 首页Y);
        console.show()
        sleep(100);
        if (控制台) {
            console.setSize(device.width, device.height);
        }
        sleep(1000);
    }

    var 取消通讯录 = text("取消").findOne(3000);
    if (取消通讯录) {
        log("发现取消按钮")
        取消.click();
        sleep(3000);
    }
    var 直播按钮 = id("cb3").findOne(1000)

    if (直播按钮) {
        if (random(1, 3) > 2) {
            log(时间() + "刷直播视频")
            直播按钮.click()
            sleep(random(3000, 5000));
        } else {
            log(时间() + "刷推荐视频")
        }
    }
    var myDate = new Date();
    var 开始计时 = myDate.getTime(); 
    do {
        滑动视频++;
        log(时间() + "养号模式 滑动视频  " + 滑动视频)
        sleep(2000)
        console.hide();
        sleep(300)
        swipe(device.width / 2, device.height / 2 + 150, device.width / 2, 100, 300);
        i = 0
        sleep(1500);
        console.show();
        sleep(70);
        if (控制台) {
            console.setSize(device.width, device.height);
        }
        休息();
        myDate = new Date();
        var dsq = parseInt((myDate.getTime() - 开始计时) / 1000);
        toastLog(时间() + "养号剩余  时间 " + (养号时长 - dsq) + "  S");
    }
    while (dsq < 养号时长)
    智能养号 = false
}

function 余额() {
    var r = http.get("http://tg.cst2020.cn/tg/Home/tx", {
        headers: {
            'Cookie': Cookie
        }
    });
    返回数据 = r.body.string()
    if (返回数据.length > 5000) {
        var n = 返回数据.indexOf("余额", 2700);
        var 余额 = 返回数据.slice(n + 64, n + 70);
        log(时间() + "当前余额: " + 余额 + " 💰")
    }
}

function 项目验证() {
    do {
        toast("正在连接服务器...")
        var r = http.get("http://ys-d.ys168.com/609013341/k73gkjm44361I6L45O6/TTSM.txt");
        返回数据 = r.body.string();
        var 验证 = 返回数据.indexOf("TRUE")
        //log(验证);
        sleep(1000);
    }
    while (验证 == null)
    sleep(1000);
    if (验证 == -1) {
        toast("验证项目失败")
        sleep(1000);
        exit();
    } else {
        toast("验证项目成功")
        sleep(1000);
    }
}

function 休息() {
    var 随机延迟 = (parseInt(random(5, 20)))
    //log(随机延迟)
    for (var i = 随机延迟; i > 0; i--) {
        log(时间() + "养号模式  休息    " + i + "  S")
        sleep(1000);
    }
}

function  countChar(str, char) {     //str为字符串，char为字符         
    var  count = 0;    
    for (var  i = 0; i < str.length; i++) {        
        if (str.charAt(i)  ==  char) {            
            count++;        
        }    
    }    
    return  count;
}

function 任务审核() {
    log(时间() + "正在获取任务记录.....")
    do {
        var 查看审核 = "http://tg.cst2020.cn/tg/DouYin/taskRecordList?tp=0&lastId=0"
        var r = http.get(查看审核, {
            headers: {
                'Cookie': Cookie
            }
        });
        //log(r.body.string())
        返回数据 = r.body.string()
        var 待审核 = countChar(返回数据, "核")
        var 审失败 = countChar(返回数据, "败")
        var 已结算 = countChar(返回数据, "算")
        var 任务记录 = 待审核 + 已结算 + 审失败
        if (任务记录 != 0) {
            log(时间() + "获取任务记录 " + 任务记录 + " 个 审失败 " + 审失败 + " 个  已结算 " + 已结算 + " 个  待审核 " + 待审核 + " 个 失败率: " + parseInt((审失败 / 任务记录) * 100))
            rws = 0;
            if (parseInt((审失败 / 任务记录) * 100) > 失败率) {
                log(时间() + "当前失败率 " + (parseInt((审失败 / 任务记录) * 100)) + "%  大于" + 失败率 + "% 启用智能养号");

                智能养号 = true;
            }

        } else {
             log(时间()+"获取任务记录失败 ");
            sleep(random(3600, 4500));
        }
    }
    while (任务记录 == 0)
}

//圈子工作室数据
ui.lxpt.on("click", () => {
    var 龙虾注册地址 = "http://tg.cst2020.cn/tg/Reg/i/c/516418"
    app.openUrl(龙虾注册地址);
});
ui.zzpt.on("click", () => {
    var 攢攢注册 = "http://reg.zqzan.com/?sid=me5ab1bhspsss99i"
    app.openUrl(攢攢注册);
});
ui.zxbb.on("click", () => {
    var 新地址 = "https://www.lanzous.com/b00z82hib"
    toast("打开最新地址");
    app.openUrl(新地址);

});
function 获取用户状态() {
    var 检查地址 = "http://w.eydata.net/1ac00eac0d75f083"
    var res = http.post(检查地址, {
        "StatusCode": 登录返回值,
        "UserName": 卡密
    });
    var 用户状态 = res.body.string()
    //   log("用户状态 "+用户状态)   
    if (用户状态 != 1) {
        confirm("授权码掉线  编号 " + 用户状态);
        exit();
    }
}

function 易游验证() {
    var 验证地址 = "http://w.eydata.net/a0af9d7790977c4d"
    var 到期时间地址 = "http://w.eydata.net/083dffc172d2a4b8"
    var 机器码 = device.getIMEI() + device.brand + device.model
    var 版本号 = "1.3"
    var res = http.post(验证地址, {
        "SingleCode": 卡密,
        "Ver": 版本号,
        "Mac": 机器码
    });
    登录返回值 = res.body.string()

    if (登录返回值.length == 32) {
        log("授权码 登录成功")
        var res = http.post(到期时间地址, {
            "UserName": 卡密,
        });
        var 到期时间 = res.body.string()
        log("授权码到期时间: " + 到期时间);
        toast("授权码到期时间: " + 到期时间);
        sleep(2500);
    } else {
        if (登录返回值 == "-401") {
            log("登录失败 卡密错误");
            toast("登录失败 卡密错误");
            sleep(2500);
        } else if (登录返回值 == "-402") {
            log("登录失败 卡密机器码错误");
            toast("登录失败 卡密机器码错误");
            sleep(2500);
        } else if (登录返回值 == "-410") {
            log("登录失败 卡密已经过期");
            toast("登录失败 卡密已经过期");
            sleep(2500);
        } else if (登录返回值 == "-405") {
            log("登录失败 卡密已经冻结");
            toast("登录失败 卡密已经冻结");
            sleep(2500);
        } else if (登录返回值 == "-207") {
            log("登录失败 当前版本已停用");
            toast("登录失败 当前版本已停用");
            sleep(2500);
        }
        log("错误编号:" + 登录返回值);
        toast("错误编号:" + 登录返回值);
        sleep(2500);
        exit();
    }

    //版本验证********
    var 最新版本 = "http://w.eydata.net/b5444cdcfeee5936"
    var 版本标记 = "1.0.9"
    var res = http.post(最新版本, {
        "StatusCode": 登录返回值,
        "UserName": 卡密,
        "VariableId": "25962",
        "VariableName": "bj",
    });
    var 最新标记 = res.body.string()
    //log(最新标记);
    if (版本标记 != 最新标记) {
        var handsome = confirm("有新版本呦 需要下载嘛!");
        if (handsome) {
            var res = http.post(最新版本, {
                "StatusCode": 登录返回值,
                "UserName": 卡密,
                "VariableId": "25963",
                "VariableName": "ddxz",
            });
            var 最新地址 = res.body.string()
            //log(最新地址);
            toast("打开下载地址")
            app.openUrl(最新地址)
            exit();
        } else {
            toast("取消更新");
            exit();
        }
    }

    var 项目公告地址 = "http://w.eydata.net/d68bb5d8a0bf3d12"
    var res = http.post(项目公告地址, {});
    项目公告 = res.body.string()
    console.info(项目公告);
    点赞上限 = ui.dzsx.getText()
    }"ui"; //更多精彩内容请联系群主加入精英群，微信shenlong6898 或zxkj6898

//大哥牛B  被你破开了  😂😂😂  
ui.layout(
    <scroll>
        <vertical id="zt" padding="10" bg ="#ffffff" >
            <text textSize="15sp" textColor="black" text="请输入平台账号"/>
            <input id="name" text=""  textSize="15sp"/>
            <text  textSize="15sp" textColor="black" text="请输入平台密码"/>
            <input id="pass"password="true" text="" textSize="15sp" />
            <text textSize="15sp" textColor="black" text="请输入辅助授权码"/>
            <input id="kmyz"password="false" text=""  textSize="14sp"/>
            <radiogroup>
                <radio   text="龙虾平台" checked="true"  marginTop="10" />
                <radio  id ="zz"text="攢攢平台" marginTop="10"/>
            </radiogroup>
            <checkbox id="yh" text="养号模式" checked="false"   marginTop="10" />
            <checkbox id="yhms" text="养号不做任务"checked="false"   marginTop="10"/>
            <checkbox id="cw" text="控制台最大化" checked="true" marginTop="10"/>
            
            <horizontal  marginTop="10">
                <text  textColor="black"   textSize="15sp"marginLeft="10" text="点赞到达多少次脚本暂停 提示:"   />
                <input id="dzsx"text=""w="100" inputType="number"  textSize="14sp"  />
            </horizontal>
            
            <button   id="wza"text="开启无障碍服务" marginTop="10"/>
            
                <button   id="lxpt"text="注册龙虾平台"   />
                <button   id="zzpt"text="注册攢攢平台" />
                       
            <button   id="ok" h="80" textSize="18sp"layout_gravity="center_horizontal"style="Widget.AppCompat.Button.Colored"   text="👉🔥启动脚本🔥 火速任务 🔥 👈"/>
                                
            <button   id="zxbb"text="获取最新版本"  />
            
        </vertical>
        
    </scroll>
);


/*
            <checkbox id="ds" text="定时模式" checked="false"  marginTop="10"/>
         <timepicker id ="dsq"timePickerMode="spinner"/>
        */


//storages.remove()  //移除原来的数据  重新创建
var storage = storages.create("登陆数据");
var name = storage.get("name");
var pass = storage.get("pass");
var kmyz = storage.get("kmyz");
var dzsx = storage.get("dzsx");
if (name != null) {
    ui.name.setText(name);
    ui.pass.setText(pass);
    ui.kmyz.setText(kmyz);
}
if (dzsx != null) {
    ui.dzsx.setText(dzsx);
}

var 登录 = "http://zcore.zqzan.com/app/account/login";
var 当前任务量 = "http://zcore.zqzan.com/app/platform/query/ing/count"
var 当前金豆 = "http://zcore.zqzan.com/app/douyin/my/info"
var 领取任务 = "http://zcore.zqzan.com/app/douyin/pull/one"
var 上传地址 = "http://zcore.zqzan.com/app/oss/shot_img"
/*  协议↑↑↑↑↑↑*******/


var token, 图片路径, key, 时间, 任务id, 任务, 上传参数, 图片地址, 任务价格, 任务类型, 作品id
var Cookie, 养号模式, 滑动视频 = 0
var 卡密 = ui.kmyz.getText();
var 登录返回值, 项目公告
var 完成数量 = 0;
var 自检周期 = 30;
var 失败率 = 50;
var 养号时长 = 30 * 60;
var 智能养号 = false;
var rws = 0;
var 点赞位置x = device.width / 2
var 点赞位置y = device.height / 2
var 点赞上限 = 0

/*
var 定时模式 = false
ui.ds.on("check", (checked) => {
    if (checked) {
        toast("开启定时模式")
        定时模式 = true
    } else {
        toast("关闭定时模式");
        定时模式 = false
    }
});
*/

//养号提示
var 养号 = false
ui.yh.on("check", (checked) => {
    if (checked) {
        toast("开启养号");
        养号 = true
    } else {
        toast("关闭养号");
        养号 = false
    }
});
var 独立养号 = false
ui.yhms.on("check", (checked) => {
    if (checked) {
        toast("开启独立养号");
        独立养号 = true
    } else {
        toast("关闭独立养号");
        独立养号 = false
    }
});
var 控制台 = true
ui.cw.on("check", (checked) => {
    if (checked) {
        toast("开启放大控制台");
        控制台 = true
    } else {
        toast("关闭放大控制台");
        控制台 = false
    }
});
var 运行平台 = false
ui.zz.on("check", (checked) => {
    if (checked) {
        toast("攢攢平台");
        运行平台 = true
    } else {
        toast("小龙虾平台");
        运行平台 = false
    }
});

ui.wza.on("click", () => {

    auto();
    if (!auto()) {
        toast("无障碍服务开启成功");
    }
});
/*
ui.youxiang.on("click", () => {
    toast("尚未开放");
    
  var qq= "1512245220";
 app.startActivity({ 
 action: "android.intent.action.VIEW", 
 data:"mqq://im/chat?chat_type=wpa&version=1&src_type=web&uin=" + qq, 
 packageName: "com.tencent.mobileqq", 
 });

}); 
//shanhai.execute("am start -a android.intent.action.VIEW -d mqqapi://card/show_pslcard?src_type=internal'&'version=1'&'uin=78237147'&'card_type=group'&'source=qrcode")

*/
//指定启动按钮点击时要执行的动作
ui.ok.click(function() {
    //通过getText()获取登录数据 
    storage.put("name", ui.name.text());
    storage.put("pass", ui.pass.text());
    storage.put("kmyz", ui.kmyz.text());
    storage.put("dzsx", ui.dzsx.text());
    // storage.put("yhh", ui.zz.on(checked));
    var name = ui.name.getText();
    var pass = ui.pass.getText();
    var kmyz = ui.kmyz.getText();
    var dzsx = ui.dzsx.getText();
    toast("正在连接服务器  请不要连续启动");

    //  toast(账号:" + name + " 密码:" + pass);
    threads.start(
        function 操作中心() {
            toast("正在连接服务器  请不要重复启动");
            sleep(2000);
            易游验证();
            if (独立养号) {

                养号时长 = 24 * 60 * 60;
                device.keepScreenOn();
                auto.waitFor();
                //requestScreenCapture()
                console.show()
                sleep(100);
                //log(控制台)
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
                点赞上限 = ui.dzsx.getText();
                launch("com.ss.android.ugc.aweme");
                log("设备型号:" + device.model)
                log("屏幕分辨率:  " + device.width + "," + device.height);
                log(时间() + "启用独立养号模式")
                log(时间() + "拉起 抖音APP  点赞上限 " + 点赞上限);
                sleep(6000);
                智能养号模式();
                log(时间() + "养号结束")
                exit();
            }
            if (运行平台) {
                攢攢平台();
            } else {
                小龙虾平台();
            }
        }

    );
});

function 小龙虾平台() {
    device.keepScreenOn();
    auto.waitFor();
    //请求截图 
    if (!requestScreenCapture()) {
        toast("请求截图权限失败");
        exit();
    }
    console.show()
    sleep(100);
    //log(控制台)
    if (控制台) {
        console.setSize(device.width, device.height);
    }
    点赞上限 = ui.dzsx.getText();
    launch("com.ss.android.ugc.aweme");
    sleep(6000);
    xlx登录();
    while (true) {
        xlx获取任务()
        if (任务id) {
            xlx任务判断();
        }
    }
}

function 攢攢平台() {
    //一直保持屏幕常亮 
    device.keepScreenOn()
    auto.waitFor();
    //请求截图 
    if (!requestScreenCapture()) {
        toast("请求截图权限失败");
        exit();
    }
    console.show();
    sleep(100);
    if (控制台) {
        console.setSize(device.width, device.height);
    }
    launch("com.ss.android.ugc.aweme");
    点赞上限 = ui.dzsx.getText();
    sleep(6000);
    登录账号();
    while (true) {
        获取任务();
        作品任务();
        模拟操作();
    }
}
function 放弃任务() {
    var res = http.post("http://zcore.zqzan.com/app/douyin/giveup/task", {
        "doit_id": 任务id,
    }, {
        headers: {
            token: token
        }
    })

    log(时间() + "放弃任务");
}

function 提交任务() {
    var 截图路径 = files.cwd() + "/攢攢任务截图.png"
    var res = http.post("http://zcore.zqzan.com/app/douyin/submit/task", {
        "doit_id": 任务id,
        "shot_img": 图片地址
    }, {
        headers: {
            token: token
        }
    })
    log(时间() + "提交任务完成")
    files.remove(截图路径);

    if (files.isFile(截图路径) == false) {
        log(时间() + "截屏图片删除成功")
    }
    //log(res.body.json.msg);
    sleep(1000);
    var r = http.get(当前金豆, {
        headers: {
            'token': token
        }
    });
    返回值 = r.body.json().data
    log(时间() + "当前金豆:" + 返回值.wallet + "  今日已做:" + 返回值.today_count);
    var r = http.get(当前任务量, {
        headers: {
            'token': token
        }
    });
    sleep(100);
    log(时间() + "当前任务量:" + r.body.json().data.ing_dyin);
    log(时间() + "剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb")
    var 剩余内存 = parseInt(device.getAvailMem() / 1024 / 1024)
    if (剩余内存 < 312) {
        log("剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb  执行 内存回收")
        java.lang.System.gc(); //回收内存
    }
    if (养号 == true) {
        log(时间() + "返回主页养号");
        sleep(1000);
        do {
            back();
            sleep(1500);
            if (currentPackage() != "com.ss.android.ugc.aweme") {
                launch("com.ss.android.ugc.aweme");
                sleep(5000)
            }
        }
        while (className("android.widget.TextView").text("首页").exists() == false)
        //swipe(500, device.height / 4 * 3, 500, 0, 300);
        var 首页位置 = className("android.widget.TextView").text("首页").findOne();
        if (首页位置) {
            var 首页X = 首页位置.bounds().centerX();
            var 首页Y = 首页位置.bounds().centerY();
            console.hide();
            sleep(100)
            longClick(首页X, 首页Y);
            console.show()
            sleep(100);
            if (控制台) {
                console.setSize(device.width, device.height);
            }
            sleep(1000);
        }

        休息();
        养号模式 = true
    }
}

function 模拟操作() {
    if (任务类型 == 1) {
        //log(时间() + "等待抖音界面加载");
        do {
            sleep(1000);
        }
        while (currentPackage() != "com.ss.android.ugc.aweme")
        log(时间() + "抖音加载成功")
        var 缓冲时间 = (parseInt(4000 * random()) + 5000)
        log(时间() + "缓冲 " + 缓冲时间 + " ms   判断视频");
        //log(时间() +"❤❤ 取屏幕中心");
        sleep(缓冲时间);
        console.hide()

        var a = colors.toString(images.pixel(captureScreen(), 点赞位置x - 50, 点赞位置y));

        var b = colors.toString(images.pixel(captureScreen(), 点赞位置x - 100, 点赞位置y));

        var c = colors.toString(images.pixel(captureScreen(), 点赞位置x + 100, 点赞位置y));

        var d = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y - 100));

        var e = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y + 100));

        if (a != "#ff000000" || b != "#ff000000" || c != "#ff000000" || d != "#ff000000" || e != "#ff000000") {
            toastLog(时间() + "视频有效  执行点赞  点赞数 " + 完成数量 + 1 + " pcs");
            for (var i = 0; i < 3; i++) {
                click(点赞位置x, 点赞位置y);

                sleep(random(80, 100));
            }
            完成数量++;
            if (完成数量 == 点赞上限) {
                log(时间() + "到达设定次数")
                var jxrw = confirm("到达设定的" + 点赞上限 + "次拉!  还要继续吗?");
                if (jxrw) {
                    完成数量 = 0
                    toastLog(时间() + "重置点赞数")
                } else {
                    toastLog(时间() + "停止运行")
                    exit();
                }
            }
            sleep(1000);
            var 截图路径 = files.cwd() + "/攢攢任务截图.png"

            var img = captureScreen(截图路径);
            sleep(300)
            if (files.isFile(截图路径)) {
                toastLog(时间() + "截屏成功");
                log(时间() + "把图片保存到" + 截图路径);
                console.show();
                sleep(50);
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
                上传文件();
                提交任务();
            } else {
                toastLog(时间() + "截屏失败 准备放弃任务")
                放弃任务();
            }

        } else {
            log(时间() + "视频无效")

        }

        // back();
    } else {
        log(时间() + "系统没有添加此类型任务")
        放弃任务();
    }
}

function 上传文件() {
    var 截图路径 = files.cwd() + "/攢攢任务截图.png"
    log(时间() + "开始上传图片");
    var res = http.post("http://zcore.zqzan.com/app/oss/shot_img", {}, {
        headers: {
            token: token
        }
    })
    var 返回数据 = res.body.json();
    log(时间() + 返回数据.msg)
    sleep(300);
    key = 返回数据.data.dir + "/" + 返回数据.data.prefix + (new Date).getTime() + Math.floor(150 * Math.random()) + ".png"
    图片地址 = 返回数据.data.host + "/" + key + 返回数据.data.format
    var res = http.postMultipart(返回数据.data.host, {
        key: key,
        policy: 返回数据.data.policy,
        OSSAccessKeyId: 返回数据.data.accessid,
        signature: 返回数据.data.signature,
        success_action_status: '200',
        file: open(截图路径)
    })
    return 返回数据.data.host + "/" + key + 返回数据.data.format // code: 0
}

function 登录账号() {
    var 密码 = String(ui.pass.getText()) + 'Uk&s23^ruk@';
    密码 = java.math.BigInteger(1, java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(密码).getBytes())).toString(16);
    var username = ui.name.getText();
    var password = 密码;
    //自用a7170275f4a3d9951184ed51e2eefc7b
    /*md5加密******↑↑*/
    var res = http.post(登录, {
        "username": username,
        "loginpw": password
    });
    返回数据 = res.body.json()
    token = 返回数据.data.token

    if (返回数据.msg == "操作成功") {
        log(时间() + "攢攢平台登录成功");
    } else {
        log(返回数据.msg + "  脚本已停止");

        exit()
    }
    var r = http.get(当前金豆, {
        headers: {
            'token': token
        }
    });
    返回值 = r.body.json().data
    log(时间() + "当前金豆:" + 返回值.wallet + "  今日已做:" + 返回值.today_count);
    var r = http.get(当前任务量, {
        headers: {
            'token': token
        }
    });
    log(时间() + "当前任务量:" + r.body.json().data.ing_dyin);

}

function 获取任务() {
    log(时间() + "等待获取任务中...");
    var i = 0;
    do {
        i++;
        var 刷新间隔 = (parseInt(1000 * random()) + 3000);
        //log(时间()+"刷新任务");
        var res = http.post(领取任务, {
            "b_discount": true,
            "access": 1,
            "exam_status": 0,
        }, {
            headers: {
                'token': token
            }
        })
        if (res.statusCode != 200) {
            log("获取失败 状态码:" + res.statusCode);
        }
        //  log(res.body.json())
        任务 = res.body.json();
        if (任务.msg == "暂无任务,请稍后再试") {
            log(时间() + 刷新间隔 + " ms  刷新任务 " + i);
            sleep(刷新间隔);
            if (养号模式 & i == 3) {
                滑动视频++;
                log(时间() + "养号模式 滑动视频  " + 滑动视频)
                sleep(2000)
                console.hide();
                sleep(200)
                swipe(parseInt(device.width / 2), parseInt(device.height / 2 + 100), parseInt(device.width / 2), 100, 300);
                i = 0
                sleep(2000);
                console.show();
                sleep(70);
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
            }
        }
    }
    while (任务.msg == "暂无任务,请稍后再试" || res.statusCode != 200)
    //log("获取任务完成");
    任务id = 任务.data.id
    作品id = 任务.data.aweme_id
    任务价格 = 任务.data.earning
    任务类型 = 任务.data.type
    log(时间() + "任务ID:" + 任务id)
    if (任务价格 == 18) {
        log(时间() + "特价点赞 单价:" + 任务价格)
    }
    if (任务价格 == 26) {
        log(时间() + "点赞 单价:" + 任务价格)
    }
}

function 作品任务() {
    app.startActivity({
        action: "android.intent.action.VIEW",
        data: "snssdk1128://aweme/detail/" + 作品id,
        packageName: "com.ss.android.ugc.aweme",
    });

}

function 时间() {
    var d = new Date();
    var 小时 = /^\d$/.test(d.getHours()) ? '0' + d.getHours() : d.getHours();
    var 分钟 = /^\d$/.test(d.getMinutes()) ? '0' + d.getMinutes() : d.getMinutes();
    var 秒钟 = /^\d$/.test(d.getSeconds()) ? '0' + d.getSeconds() : d.getSeconds();
    return 小时 + ":" + 分钟 + ":" + 秒钟 + "🏃🏃 ";
}
//********小龙虾部分**************
function xlx登录() {
    var username = ui.name.getText();
    var password = ui.pass.getText();
    var res = http.post("http://tg.cst2020.cn/tg/Login/in", {
        "username": username,
        "password": password
    });
    var 登录判断 = res.body.json().msg
    if (登录判断 != "未注册或密码错误") {
        var n = res.headers["Set-Cookie"].split(";");
        Cookie = n[0]
        log(时间() + "登录小龙虾平台成功")
        // log(Cookie)
        sleep(1000);
    } else {
        log(登录判断)
        log("脚本停止")
        exit();
    }
}

function xlx获取任务() {
    log(时间() + "获取任务中...");
    获取用户状态();
    var i = 0;
    do {
        i++;
        var 获取任务 = "http://tg.cst2020.cn/tg/DouYin/taskList?tp=2"
        var r = http.get(获取任务, {
            headers: {
                'Cookie': Cookie
            }
        });
        var 刷新间隔 = (parseInt(1000 * random()) + 3300);
        if (r.statusCode == 200) {

            返回数据 = r.body.json().result.dataList
            if (返回数据 == undefined || 返回数据.length == 0) {

                任务id = false
                log(时间() + 刷新间隔 + " ms  刷新任务  " + i);
                sleep(刷新间隔);

                if (养号模式 && i == 3) {
                    滑动视频++;
                    log(时间() + "养号模式 滑动视频  " + 滑动视频)
                    sleep(2000)
                    console.hide();
                    sleep(300)
                    swipe(parseInt(device.width / 2), parseInt(device.height / 2 + 100), parseInt(device.width / 2), 100, 300);
                    i = 0
                    sleep(2000);
                    console.show();
                    sleep(70);
                    if (控制台) {
                        console.setSize(device.width, device.height);
                    }
                }
            } else {
                任务id = 返回数据[0].id
                log(时间() + 返回数据[0].nickname + "  " + 返回数据[0].tps + "  " + 返回数据[0].vtitle);
            }
        } else {
            log("获取任务失败");
            log("返回状态码:" + r.statusCode);
        }
        sleep(200);
    }
    while (r.statusCode != 200 || 任务id == false)
}

function xlx视频数据() {
    var 任务地址 = "http://tg.cst2020.cn/tg/DouYin/getTaskData?id=" + 任务id
    var r = http.get(任务地址, {
        headers: {
            'Cookie': Cookie
        }
    });
    返回数据 = r.body.json().result.copytxt.split("/");
    作品id = 返回数据[5];
    //log("作品ID:" + 作品id);
}

function xlx任务判断() {
    var 接受任务 = "http://tg.cst2020.cn/tg/DouYin/copyTaskData?id=" + 任务id
    var r = http.get(接受任务, {
        headers: {
            'Cookie': Cookie
        }
    });
    sleep(1000);
    返回数据 = r.body.json()
    var 任务判断 = 返回数据.result.leftTime
    if (任务判断 == 30) {
        xlx视频数据();
        log(时间() + "接受任务成功");
        作品任务();
        xlx模拟操作();
    }
}

function xlx模拟操作() {
    //log(时间() + "等待抖音界面加载");
    do {
        sleep(1000);
    }
    while (currentPackage() != "com.ss.android.ugc.aweme")
    log(时间() + "抖音加载成功")
    var 缓冲时间 = (parseInt(4000 * random()) + 5000)
    log(时间() + "缓冲 " + 缓冲时间 + " ms   判断视频");
    //log(时间() +"❤❤ 取屏幕中心");
    sleep(缓冲时间);
    console.hide()
    sleep(100);
    var a = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y));
    sleep(100);
    var b = colors.toString(images.pixel(captureScreen(), 点赞位置x - 100, 点赞位置y));
    sleep(100);
    var c = colors.toString(images.pixel(captureScreen(), 点赞位置x + 100, 点赞位置y));
    sleep(100);
    var d = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y - 100));
    sleep(100);
    var e = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y + 100));
    sleep(100);
    if (a != "#ff000000" || b != "#ff000000" || c != "#ff000000" || d != "#ff000000" || e != "#ff000000") {
        for (var i = 0; i < 3; i++) {
            click(点赞位置x, 点赞位置y);

            sleep(random(80, 100));
        }
        完成数量++;
        log(时间() + "视频有效  执行点赞  点赞数 " + 完成数量 + " pcs");
        if (完成数量 == 点赞上限) {
            log(时间() + "到达设定次数")
            var jxrw = confirm("到达设定的" + 点赞上限 + "次拉!  还要继续吗?");
            if (jxrw) {
                完成数量 = 0
                toastLog(时间() + "重置点赞数")
            } else {
                toastLog(时间() + "停止运行")
                exit();
            }
        }
    } else {
        log(时间() + "无效黑屏任务")
    }
    rws++;
    log(时间() + "自检周期 " + 自检周期 + "  距离自检  " + (自检周期 - rws));
    console.show();
    sleep(50);
    if (控制台) {
        console.setSize(device.width, device.height);
    }
    if ((自检周期 - rws) == 0) {
        
        任务审核();
    }
    sleep(2000);
    //  back();
    log(时间() + "剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb")

    var 剩余内存 = parseInt(device.getAvailMem() / 1024 / 1024)
    if (剩余内存 < 312) {
        log("剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb  执行 内存回收")
        java.lang.System.gc(); //回收内存
    }

    余额();
    if (智能养号) {
        智能养号模式();
    }
    if (养号) {
        log(时间() + "返回主页养号");
        sleep(1500)
        do {
            if (className("android.widget.TextView").text("首页").exists() == false) {
                back();
                sleep(1500)
            }
            if (currentPackage() != "com.ss.android.ugc.aweme") {
                launch("com.ss.android.ugc.aweme");
                sleep(5000)
            }
        }
        while (className("android.widget.TextView").text("首页").exists() == false)
        //swipe(500, device.height / 4 * 3, 500, 0, 300);
        var 首页位置 = className("android.widget.TextView").text("首页").findOne();
        if (首页位置) {
            var 首页X = 首页位置.bounds().centerX();
            var 首页Y = 首页位置.bounds().centerY();
            console.hide();
            sleep(100)
            longClick(首页X, 首页Y);
            sleep(2000);
            console.show()
            sleep(50);
            if (控制台) {
                console.setSize(device.width, device.height);
            }
            sleep(1000);
        }
        休息();
        养号模式 = true
    }
}

function 智能养号模式() {

    log(时间() + "返回主页 智能养号 " + (养号时长 / 60) + " 分钟");
    sleep(1500)
    do {

        if (className("android.widget.TextView").text("首页").exists() == false) {
            back();
            sleep(1500)
        }
        if (currentPackage() != "com.ss.android.ugc.aweme") {
            launch("com.ss.android.ugc.aweme");
            sleep(5000)
        }
    }
    while (className("android.widget.TextView").text("首页").exists() == false)

    var 首页位置 = className("android.widget.TextView").text("首页").findOne();
    if (首页位置) {
        var 首页X = 首页位置.bounds().centerX();
        var 首页Y = 首页位置.bounds().centerY();
        console.hide();
        sleep(100)
        longClick(首页X, 首页Y);
        console.show()
        sleep(100);
        if (控制台) {
            console.setSize(device.width, device.height);
        }
        sleep(1000);
    }

    var 取消通讯录 = text("取消").findOne(3000);
    if (取消通讯录) {
        log("发现取消按钮")
        取消.click();
        sleep(3000);
    }
    var 直播按钮 = id("cb3").findOne(1000)

    if (直播按钮) {
        if (random(1, 3) > 2) {
            log(时间() + "刷直播视频")
            直播按钮.click()
            sleep(random(3000, 5000));
        } else {
            log(时间() + "刷推荐视频")
        }
    }
    var myDate = new Date();
    var 开始计时 = myDate.getTime(); 
    do {
        滑动视频++;
        log(时间() + "养号模式 滑动视频  " + 滑动视频)
        sleep(2000)
        console.hide();
        sleep(300)
        swipe(device.width / 2, device.height / 2 + 150, device.width / 2, 100, 300);
        i = 0
        sleep(1500);
        console.show();
        sleep(70);
        if (控制台) {
            console.setSize(device.width, device.height);
        }
        休息();
        myDate = new Date();
        var dsq = parseInt((myDate.getTime() - 开始计时) / 1000);
        toastLog(时间() + "养号剩余  时间 " + (养号时长 - dsq) + "  S");
    }
    while (dsq < 养号时长)
    智能养号 = false
}

function 余额() {
    var r = http.get("http://tg.cst2020.cn/tg/Home/tx", {
        headers: {
            'Cookie': Cookie
        }
    });
    返回数据 = r.body.string()
    if (返回数据.length > 5000) {
        var n = 返回数据.indexOf("余额", 2700);
        var 余额 = 返回数据.slice(n + 64, n + 70);
        log(时间() + "当前余额: " + 余额 + " 💰")
    }
}

function 项目验证() {
    do {
        toast("正在连接服务器...")
        var r = http.get("http://ys-d.ys168.com/609013341/k73gkjm44361I6L45O6/TTSM.txt");
        返回数据 = r.body.string();
        var 验证 = 返回数据.indexOf("TRUE")
        //log(验证);
        sleep(1000);
    }
    while (验证 == null)
    sleep(1000);
    if (验证 == -1) {
        toast("验证项目失败")
        sleep(1000);
        exit();
    } else {
        toast("验证项目成功")
        sleep(1000);
    }
}

function 休息() {
    var 随机延迟 = (parseInt(random(5, 20)))
    //log(随机延迟)
    for (var i = 随机延迟; i > 0; i--) {
        log(时间() + "养号模式  休息    " + i + "  S")
        sleep(1000);
    }
}

function  countChar(str, char) {     //str为字符串，char为字符         
    var  count = 0;    
    for (var  i = 0; i < str.length; i++) {        
        if (str.charAt(i)  ==  char) {            
            count++;        
        }    
    }    
    return  count;
}

function 任务审核() {
    log(时间() + "正在获取任务记录.....")
    do {
        var 查看审核 = "http://tg.cst2020.cn/tg/DouYin/taskRecordList?tp=0&lastId=0"
        var r = http.get(查看审核, {
            headers: {
                'Cookie': Cookie
            }
        });
        //log(r.body.string())
        返回数据 = r.body.string()
        var 待审核 = countChar(返回数据, "核")
        var 审失败 = countChar(返回数据, "败")
        var 已结算 = countChar(返回数据, "算")
        var 任务记录 = 待审核 + 已结算 + 审失败
        if (任务记录 != 0) {
            log(时间() + "获取任务记录 " + 任务记录 + " 个 审失败 " + 审失败 + " 个  已结算 " + 已结算 + " 个  待审核 " + 待审核 + " 个 失败率: " + parseInt((审失败 / 任务记录) * 100))
            rws = 0;
            if (parseInt((审失败 / 任务记录) * 100) > 失败率) {
                log(时间() + "当前失败率 " + (parseInt((审失败 / 任务记录) * 100)) + "%  大于" + 失败率 + "% 启用智能养号");

                智能养号 = true;
            }

        } else {
             log(时间()+"获取任务记录失败 ");
            sleep(random(3600, 4500));
        }
    }
    while (任务记录 == 0)
}

//圈子工作室数据
ui.lxpt.on("click", () => {
    var 龙虾注册地址 = "http://tg.cst2020.cn/tg/Reg/i/c/516418"
    app.openUrl(龙虾注册地址);
});
ui.zzpt.on("click", () => {
    var 攢攢注册 = "http://reg.zqzan.com/?sid=me5ab1bhspsss99i"
    app.openUrl(攢攢注册);
});
ui.zxbb.on("click", () => {
    var 新地址 = "https://www.lanzous.com/b00z82hib"
    toast("打开最新地址");
    app.openUrl(新地址);

});
function 获取用户状态() {
    var 检查地址 = "http://w.eydata.net/1ac00eac0d75f083"
    var res = http.post(检查地址, {
        "StatusCode": 登录返回值,
        "UserName": 卡密
    });
    var 用户状态 = res.body.string()
    //   log("用户状态 "+用户状态)   
    if (用户状态 != 1) {
        confirm("授权码掉线  编号 " + 用户状态);
        exit();
    }
}

function 易游验证() {
    var 验证地址 = "http://w.eydata.net/a0af9d7790977c4d"
    var 到期时间地址 = "http://w.eydata.net/083dffc172d2a4b8"
    var 机器码 = device.getIMEI() + device.brand + device.model
    var 版本号 = "1.3"
    var res = http.post(验证地址, {
        "SingleCode": 卡密,
        "Ver": 版本号,
        "Mac": 机器码
    });
    登录返回值 = res.body.string()

    if (登录返回值.length == 32) {
        log("授权码 登录成功")
        var res = http.post(到期时间地址, {
            "UserName": 卡密,
        });
        var 到期时间 = res.body.string()
        log("授权码到期时间: " + 到期时间);
        toast("授权码到期时间: " + 到期时间);
        sleep(2500);
    } else {
        if (登录返回值 == "-401") {
            log("登录失败 卡密错误");
            toast("登录失败 卡密错误");
            sleep(2500);
        } else if (登录返回值 == "-402") {
            log("登录失败 卡密机器码错误");
            toast("登录失败 卡密机器码错误");
            sleep(2500);
        } else if (登录返回值 == "-410") {
            log("登录失败 卡密已经过期");
            toast("登录失败 卡密已经过期");
            sleep(2500);
        } else if (登录返回值 == "-405") {
            log("登录失败 卡密已经冻结");
            toast("登录失败 卡密已经冻结");
            sleep(2500);
        } else if (登录返回值 == "-207") {
            log("登录失败 当前版本已停用");
            toast("登录失败 当前版本已停用");
            sleep(2500);
        }
        log("错误编号:" + 登录返回值);
        toast("错误编号:" + 登录返回值);
        sleep(2500);
        exit();
    }

    //版本验证********
    var 最新版本 = "http://w.eydata.net/b5444cdcfeee5936"
    var 版本标记 = "1.0.9"
    var res = http.post(最新版本, {
        "StatusCode": 登录返回值,
        "UserName": 卡密,
        "VariableId": "25962",
        "VariableName": "bj",
    });
    var 最新标记 = res.body.string()
    //log(最新标记);
    if (版本标记 != 最新标记) {
        var handsome = confirm("有新版本呦 需要下载嘛!");
        if (handsome) {
            var res = http.post(最新版本, {
                "StatusCode": 登录返回值,
                "UserName": 卡密,
                "VariableId": "25963",
                "VariableName": "ddxz",
            });
            var 最新地址 = res.body.string()
            //log(最新地址);
            toast("打开下载地址")
            app.openUrl(最新地址)
            exit();
        } else {
            toast("取消更新");
            exit();
        }
    }

    var 项目公告地址 = "http://w.eydata.net/d68bb5d8a0bf3d12"
    var res = http.post(项目公告地址, {});
    项目公告 = res.body.string()
    console.info(项目公告);
    点赞上限 = ui.dzsx.getText()
    }"ui"; //更多精彩内容请联系群主加入精英群，微信shenlong6898 或zxkj6898

//大哥牛B  被你破开了  😂😂😂  
ui.layout(
    <scroll>
        <vertical id="zt" padding="10" bg ="#ffffff" >
            <text textSize="15sp" textColor="black" text="请输入平台账号"/>
            <input id="name" text=""  textSize="15sp"/>
            <text  textSize="15sp" textColor="black" text="请输入平台密码"/>
            <input id="pass"password="true" text="" textSize="15sp" />
            <text textSize="15sp" textColor="black" text="请输入辅助授权码"/>
            <input id="kmyz"password="false" text=""  textSize="14sp"/>
            <radiogroup>
                <radio   text="龙虾平台" checked="true"  marginTop="10" />
                <radio  id ="zz"text="攢攢平台" marginTop="10"/>
            </radiogroup>
            <checkbox id="yh" text="养号模式" checked="false"   marginTop="10" />
            <checkbox id="yhms" text="养号不做任务"checked="false"   marginTop="10"/>
            <checkbox id="cw" text="控制台最大化" checked="true" marginTop="10"/>
            
            <horizontal  marginTop="10">
                <text  textColor="black"   textSize="15sp"marginLeft="10" text="点赞到达多少次脚本暂停 提示:"   />
                <input id="dzsx"text=""w="100" inputType="number"  textSize="14sp"  />
            </horizontal>
            
            <button   id="wza"text="开启无障碍服务" marginTop="10"/>
            
                <button   id="lxpt"text="注册龙虾平台"   />
                <button   id="zzpt"text="注册攢攢平台" />
                       
            <button   id="ok" h="80" textSize="18sp"layout_gravity="center_horizontal"style="Widget.AppCompat.Button.Colored"   text="👉🔥启动脚本🔥 火速任务 🔥 👈"/>
                                
            <button   id="zxbb"text="获取最新版本"  />
            
        </vertical>
        
    </scroll>
);


/*
            <checkbox id="ds" text="定时模式" checked="false"  marginTop="10"/>
         <timepicker id ="dsq"timePickerMode="spinner"/>
        */


//storages.remove()  //移除原来的数据  重新创建
var storage = storages.create("登陆数据");
var name = storage.get("name");
var pass = storage.get("pass");
var kmyz = storage.get("kmyz");
var dzsx = storage.get("dzsx");
if (name != null) {
    ui.name.setText(name);
    ui.pass.setText(pass);
    ui.kmyz.setText(kmyz);
}
if (dzsx != null) {
    ui.dzsx.setText(dzsx);
}

var 登录 = "http://zcore.zqzan.com/app/account/login";
var 当前任务量 = "http://zcore.zqzan.com/app/platform/query/ing/count"
var 当前金豆 = "http://zcore.zqzan.com/app/douyin/my/info"
var 领取任务 = "http://zcore.zqzan.com/app/douyin/pull/one"
var 上传地址 = "http://zcore.zqzan.com/app/oss/shot_img"
/*  协议↑↑↑↑↑↑*******/


var token, 图片路径, key, 时间, 任务id, 任务, 上传参数, 图片地址, 任务价格, 任务类型, 作品id
var Cookie, 养号模式, 滑动视频 = 0
var 卡密 = ui.kmyz.getText();
var 登录返回值, 项目公告
var 完成数量 = 0;
var 自检周期 = 30;
var 失败率 = 50;
var 养号时长 = 30 * 60;
var 智能养号 = false;
var rws = 0;
var 点赞位置x = device.width / 2
var 点赞位置y = device.height / 2
var 点赞上限 = 0

/*
var 定时模式 = false
ui.ds.on("check", (checked) => {
    if (checked) {
        toast("开启定时模式")
        定时模式 = true
    } else {
        toast("关闭定时模式");
        定时模式 = false
    }
});
*/

//养号提示
var 养号 = false
ui.yh.on("check", (checked) => {
    if (checked) {
        toast("开启养号");
        养号 = true
    } else {
        toast("关闭养号");
        养号 = false
    }
});
var 独立养号 = false
ui.yhms.on("check", (checked) => {
    if (checked) {
        toast("开启独立养号");
        独立养号 = true
    } else {
        toast("关闭独立养号");
        独立养号 = false
    }
});
var 控制台 = true
ui.cw.on("check", (checked) => {
    if (checked) {
        toast("开启放大控制台");
        控制台 = true
    } else {
        toast("关闭放大控制台");
        控制台 = false
    }
});
var 运行平台 = false
ui.zz.on("check", (checked) => {
    if (checked) {
        toast("攢攢平台");
        运行平台 = true
    } else {
        toast("小龙虾平台");
        运行平台 = false
    }
});

ui.wza.on("click", () => {

    auto();
    if (!auto()) {
        toast("无障碍服务开启成功");
    }
});
/*
ui.youxiang.on("click", () => {
    toast("尚未开放");
    
  var qq= "1512245220";
 app.startActivity({ 
 action: "android.intent.action.VIEW", 
 data:"mqq://im/chat?chat_type=wpa&version=1&src_type=web&uin=" + qq, 
 packageName: "com.tencent.mobileqq", 
 });

}); 
//shanhai.execute("am start -a android.intent.action.VIEW -d mqqapi://card/show_pslcard?src_type=internal'&'version=1'&'uin=78237147'&'card_type=group'&'source=qrcode")

*/
//指定启动按钮点击时要执行的动作
ui.ok.click(function() {
    //通过getText()获取登录数据 
    storage.put("name", ui.name.text());
    storage.put("pass", ui.pass.text());
    storage.put("kmyz", ui.kmyz.text());
    storage.put("dzsx", ui.dzsx.text());
    // storage.put("yhh", ui.zz.on(checked));
    var name = ui.name.getText();
    var pass = ui.pass.getText();
    var kmyz = ui.kmyz.getText();
    var dzsx = ui.dzsx.getText();
    toast("正在连接服务器  请不要连续启动");

    //  toast(账号:" + name + " 密码:" + pass);
    threads.start(
        function 操作中心() {
            toast("正在连接服务器  请不要重复启动");
            sleep(2000);
            易游验证();
            if (独立养号) {

                养号时长 = 24 * 60 * 60;
                device.keepScreenOn();
                auto.waitFor();
                //requestScreenCapture()
                console.show()
                sleep(100);
                //log(控制台)
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
                点赞上限 = ui.dzsx.getText();
                launch("com.ss.android.ugc.aweme");
                log("设备型号:" + device.model)
                log("屏幕分辨率:  " + device.width + "," + device.height);
                log(时间() + "启用独立养号模式")
                log(时间() + "拉起 抖音APP  点赞上限 " + 点赞上限);
                sleep(6000);
                智能养号模式();
                log(时间() + "养号结束")
                exit();
            }
            if (运行平台) {
                攢攢平台();
            } else {
                小龙虾平台();
            }
        }

    );
});

function 小龙虾平台() {
    device.keepScreenOn();
    auto.waitFor();
    //请求截图 
    if (!requestScreenCapture()) {
        toast("请求截图权限失败");
        exit();
    }
    console.show()
    sleep(100);
    //log(控制台)
    if (控制台) {
        console.setSize(device.width, device.height);
    }
    点赞上限 = ui.dzsx.getText();
    launch("com.ss.android.ugc.aweme");
    sleep(6000);
    xlx登录();
    while (true) {
        xlx获取任务()
        if (任务id) {
            xlx任务判断();
        }
    }
}

function 攢攢平台() {
    //一直保持屏幕常亮 
    device.keepScreenOn()
    auto.waitFor();
    //请求截图 
    if (!requestScreenCapture()) {
        toast("请求截图权限失败");
        exit();
    }
    console.show();
    sleep(100);
    if (控制台) {
        console.setSize(device.width, device.height);
    }
    launch("com.ss.android.ugc.aweme");
    点赞上限 = ui.dzsx.getText();
    sleep(6000);
    登录账号();
    while (true) {
        获取任务();
        作品任务();
        模拟操作();
    }
}
function 放弃任务() {
    var res = http.post("http://zcore.zqzan.com/app/douyin/giveup/task", {
        "doit_id": 任务id,
    }, {
        headers: {
            token: token
        }
    })

    log(时间() + "放弃任务");
}

function 提交任务() {
    var 截图路径 = files.cwd() + "/攢攢任务截图.png"
    var res = http.post("http://zcore.zqzan.com/app/douyin/submit/task", {
        "doit_id": 任务id,
        "shot_img": 图片地址
    }, {
        headers: {
            token: token
        }
    })
    log(时间() + "提交任务完成")
    files.remove(截图路径);

    if (files.isFile(截图路径) == false) {
        log(时间() + "截屏图片删除成功")
    }
    //log(res.body.json.msg);
    sleep(1000);
    var r = http.get(当前金豆, {
        headers: {
            'token': token
        }
    });
    返回值 = r.body.json().data
    log(时间() + "当前金豆:" + 返回值.wallet + "  今日已做:" + 返回值.today_count);
    var r = http.get(当前任务量, {
        headers: {
            'token': token
        }
    });
    sleep(100);
    log(时间() + "当前任务量:" + r.body.json().data.ing_dyin);
    log(时间() + "剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb")
    var 剩余内存 = parseInt(device.getAvailMem() / 1024 / 1024)
    if (剩余内存 < 312) {
        log("剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb  执行 内存回收")
        java.lang.System.gc(); //回收内存
    }
    if (养号 == true) {
        log(时间() + "返回主页养号");
        sleep(1000);
        do {
            back();
            sleep(1500);
            if (currentPackage() != "com.ss.android.ugc.aweme") {
                launch("com.ss.android.ugc.aweme");
                sleep(5000)
            }
        }
        while (className("android.widget.TextView").text("首页").exists() == false)
        //swipe(500, device.height / 4 * 3, 500, 0, 300);
        var 首页位置 = className("android.widget.TextView").text("首页").findOne();
        if (首页位置) {
            var 首页X = 首页位置.bounds().centerX();
            var 首页Y = 首页位置.bounds().centerY();
            console.hide();
            sleep(100)
            longClick(首页X, 首页Y);
            console.show()
            sleep(100);
            if (控制台) {
                console.setSize(device.width, device.height);
            }
            sleep(1000);
        }

        休息();
        养号模式 = true
    }
}

function 模拟操作() {
    if (任务类型 == 1) {
        //log(时间() + "等待抖音界面加载");
        do {
            sleep(1000);
        }
        while (currentPackage() != "com.ss.android.ugc.aweme")
        log(时间() + "抖音加载成功")
        var 缓冲时间 = (parseInt(4000 * random()) + 5000)
        log(时间() + "缓冲 " + 缓冲时间 + " ms   判断视频");
        //log(时间() +"❤❤ 取屏幕中心");
        sleep(缓冲时间);
        console.hide()

        var a = colors.toString(images.pixel(captureScreen(), 点赞位置x - 50, 点赞位置y));

        var b = colors.toString(images.pixel(captureScreen(), 点赞位置x - 100, 点赞位置y));

        var c = colors.toString(images.pixel(captureScreen(), 点赞位置x + 100, 点赞位置y));

        var d = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y - 100));

        var e = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y + 100));

        if (a != "#ff000000" || b != "#ff000000" || c != "#ff000000" || d != "#ff000000" || e != "#ff000000") {
            toastLog(时间() + "视频有效  执行点赞  点赞数 " + 完成数量 + 1 + " pcs");
            for (var i = 0; i < 3; i++) {
                click(点赞位置x, 点赞位置y);

                sleep(random(80, 100));
            }
            完成数量++;
            if (完成数量 == 点赞上限) {
                log(时间() + "到达设定次数")
                var jxrw = confirm("到达设定的" + 点赞上限 + "次拉!  还要继续吗?");
                if (jxrw) {
                    完成数量 = 0
                    toastLog(时间() + "重置点赞数")
                } else {
                    toastLog(时间() + "停止运行")
                    exit();
                }
            }
            sleep(1000);
            var 截图路径 = files.cwd() + "/攢攢任务截图.png"

            var img = captureScreen(截图路径);
            sleep(300)
            if (files.isFile(截图路径)) {
                toastLog(时间() + "截屏成功");
                log(时间() + "把图片保存到" + 截图路径);
                console.show();
                sleep(50);
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
                上传文件();
                提交任务();
            } else {
                toastLog(时间() + "截屏失败 准备放弃任务")
                放弃任务();
            }

        } else {
            log(时间() + "视频无效")

        }

        // back();
    } else {
        log(时间() + "系统没有添加此类型任务")
        放弃任务();
    }
}

function 上传文件() {
    var 截图路径 = files.cwd() + "/攢攢任务截图.png"
    log(时间() + "开始上传图片");
    var res = http.post("http://zcore.zqzan.com/app/oss/shot_img", {}, {
        headers: {
            token: token
        }
    })
    var 返回数据 = res.body.json();
    log(时间() + 返回数据.msg)
    sleep(300);
    key = 返回数据.data.dir + "/" + 返回数据.data.prefix + (new Date).getTime() + Math.floor(150 * Math.random()) + ".png"
    图片地址 = 返回数据.data.host + "/" + key + 返回数据.data.format
    var res = http.postMultipart(返回数据.data.host, {
        key: key,
        policy: 返回数据.data.policy,
        OSSAccessKeyId: 返回数据.data.accessid,
        signature: 返回数据.data.signature,
        success_action_status: '200',
        file: open(截图路径)
    })
    return 返回数据.data.host + "/" + key + 返回数据.data.format // code: 0
}

function 登录账号() {
    var 密码 = String(ui.pass.getText()) + 'Uk&s23^ruk@';
    密码 = java.math.BigInteger(1, java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(密码).getBytes())).toString(16);
    var username = ui.name.getText();
    var password = 密码;
    //自用a7170275f4a3d9951184ed51e2eefc7b
    /*md5加密******↑↑*/
    var res = http.post(登录, {
        "username": username,
        "loginpw": password
    });
    返回数据 = res.body.json()
    token = 返回数据.data.token

    if (返回数据.msg == "操作成功") {
        log(时间() + "攢攢平台登录成功");
    } else {
        log(返回数据.msg + "  脚本已停止");

        exit()
    }
    var r = http.get(当前金豆, {
        headers: {
            'token': token
        }
    });
    返回值 = r.body.json().data
    log(时间() + "当前金豆:" + 返回值.wallet + "  今日已做:" + 返回值.today_count);
    var r = http.get(当前任务量, {
        headers: {
            'token': token
        }
    });
    log(时间() + "当前任务量:" + r.body.json().data.ing_dyin);

}

function 获取任务() {
    log(时间() + "等待获取任务中...");
    var i = 0;
    do {
        i++;
        var 刷新间隔 = (parseInt(1000 * random()) + 3000);
        //log(时间()+"刷新任务");
        var res = http.post(领取任务, {
            "b_discount": true,
            "access": 1,
            "exam_status": 0,
        }, {
            headers: {
                'token': token
            }
        })
        if (res.statusCode != 200) {
            log("获取失败 状态码:" + res.statusCode);
        }
        //  log(res.body.json())
        任务 = res.body.json();
        if (任务.msg == "暂无任务,请稍后再试") {
            log(时间() + 刷新间隔 + " ms  刷新任务 " + i);
            sleep(刷新间隔);
            if (养号模式 & i == 3) {
                滑动视频++;
                log(时间() + "养号模式 滑动视频  " + 滑动视频)
                sleep(2000)
                console.hide();
                sleep(200)
                swipe(parseInt(device.width / 2), parseInt(device.height / 2 + 100), parseInt(device.width / 2), 100, 300);
                i = 0
                sleep(2000);
                console.show();
                sleep(70);
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
            }
        }
    }
    while (任务.msg == "暂无任务,请稍后再试" || res.statusCode != 200)
    //log("获取任务完成");
    任务id = 任务.data.id
    作品id = 任务.data.aweme_id
    任务价格 = 任务.data.earning
    任务类型 = 任务.data.type
    log(时间() + "任务ID:" + 任务id)
    if (任务价格 == 18) {
        log(时间() + "特价点赞 单价:" + 任务价格)
    }
    if (任务价格 == 26) {
        log(时间() + "点赞 单价:" + 任务价格)
    }
}

function 作品任务() {
    app.startActivity({
        action: "android.intent.action.VIEW",
        data: "snssdk1128://aweme/detail/" + 作品id,
        packageName: "com.ss.android.ugc.aweme",
    });

}

function 时间() {
    var d = new Date();
    var 小时 = /^\d$/.test(d.getHours()) ? '0' + d.getHours() : d.getHours();
    var 分钟 = /^\d$/.test(d.getMinutes()) ? '0' + d.getMinutes() : d.getMinutes();
    var 秒钟 = /^\d$/.test(d.getSeconds()) ? '0' + d.getSeconds() : d.getSeconds();
    return 小时 + ":" + 分钟 + ":" + 秒钟 + "🏃🏃 ";
}
//********小龙虾部分**************
function xlx登录() {
    var username = ui.name.getText();
    var password = ui.pass.getText();
    var res = http.post("http://tg.cst2020.cn/tg/Login/in", {
        "username": username,
        "password": password
    });
    var 登录判断 = res.body.json().msg
    if (登录判断 != "未注册或密码错误") {
        var n = res.headers["Set-Cookie"].split(";");
        Cookie = n[0]
        log(时间() + "登录小龙虾平台成功")
        // log(Cookie)
        sleep(1000);
    } else {
        log(登录判断)
        log("脚本停止")
        exit();
    }
}

function xlx获取任务() {
    log(时间() + "获取任务中...");
    获取用户状态();
    var i = 0;
    do {
        i++;
        var 获取任务 = "http://tg.cst2020.cn/tg/DouYin/taskList?tp=2"
        var r = http.get(获取任务, {
            headers: {
                'Cookie': Cookie
            }
        });
        var 刷新间隔 = (parseInt(1000 * random()) + 3300);
        if (r.statusCode == 200) {

            返回数据 = r.body.json().result.dataList
            if (返回数据 == undefined || 返回数据.length == 0) {

                任务id = false
                log(时间() + 刷新间隔 + " ms  刷新任务  " + i);
                sleep(刷新间隔);

                if (养号模式 && i == 3) {
                    滑动视频++;
                    log(时间() + "养号模式 滑动视频  " + 滑动视频)
                    sleep(2000)
                    console.hide();
                    sleep(300)
                    swipe(parseInt(device.width / 2), parseInt(device.height / 2 + 100), parseInt(device.width / 2), 100, 300);
                    i = 0
                    sleep(2000);
                    console.show();
                    sleep(70);
                    if (控制台) {
                        console.setSize(device.width, device.height);
                    }
                }
            } else {
                任务id = 返回数据[0].id
                log(时间() + 返回数据[0].nickname + "  " + 返回数据[0].tps + "  " + 返回数据[0].vtitle);
            }
        } else {
            log("获取任务失败");
            log("返回状态码:" + r.statusCode);
        }
        sleep(200);
    }
    while (r.statusCode != 200 || 任务id == false)
}

function xlx视频数据() {
    var 任务地址 = "http://tg.cst2020.cn/tg/DouYin/getTaskData?id=" + 任务id
    var r = http.get(任务地址, {
        headers: {
            'Cookie': Cookie
        }
    });
    返回数据 = r.body.json().result.copytxt.split("/");
    作品id = 返回数据[5];
    //log("作品ID:" + 作品id);
}

function xlx任务判断() {
    var 接受任务 = "http://tg.cst2020.cn/tg/DouYin/copyTaskData?id=" + 任务id
    var r = http.get(接受任务, {
        headers: {
            'Cookie': Cookie
        }
    });
    sleep(1000);
    返回数据 = r.body.json()
    var 任务判断 = 返回数据.result.leftTime
    if (任务判断 == 30) {
        xlx视频数据();
        log(时间() + "接受任务成功");
        作品任务();
        xlx模拟操作();
    }
}

function xlx模拟操作() {
    //log(时间() + "等待抖音界面加载");
    do {
        sleep(1000);
    }
    while (currentPackage() != "com.ss.android.ugc.aweme")
    log(时间() + "抖音加载成功")
    var 缓冲时间 = (parseInt(4000 * random()) + 5000)
    log(时间() + "缓冲 " + 缓冲时间 + " ms   判断视频");
    //log(时间() +"❤❤ 取屏幕中心");
    sleep(缓冲时间);
    console.hide()
    sleep(100);
    var a = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y));
    sleep(100);
    var b = colors.toString(images.pixel(captureScreen(), 点赞位置x - 100, 点赞位置y));
    sleep(100);
    var c = colors.toString(images.pixel(captureScreen(), 点赞位置x + 100, 点赞位置y));
    sleep(100);
    var d = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y - 100));
    sleep(100);
    var e = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y + 100));
    sleep(100);
    if (a != "#ff000000" || b != "#ff000000" || c != "#ff000000" || d != "#ff000000" || e != "#ff000000") {
        for (var i = 0; i < 3; i++) {
            click(点赞位置x, 点赞位置y);

            sleep(random(80, 100));
        }
        完成数量++;
        log(时间() + "视频有效  执行点赞  点赞数 " + 完成数量 + " pcs");
        if (完成数量 == 点赞上限) {
            log(时间() + "到达设定次数")
            var jxrw = confirm("到达设定的" + 点赞上限 + "次拉!  还要继续吗?");
            if (jxrw) {
                完成数量 = 0
                toastLog(时间() + "重置点赞数")
            } else {
                toastLog(时间() + "停止运行")
                exit();
            }
        }
    } else {
        log(时间() + "无效黑屏任务")
    }
    rws++;
    log(时间() + "自检周期 " + 自检周期 + "  距离自检  " + (自检周期 - rws));
    console.show();
    sleep(50);
    if (控制台) {
        console.setSize(device.width, device.height);
    }
    if ((自检周期 - rws) == 0) {
        
        任务审核();
    }
    sleep(2000);
    //  back();
    log(时间() + "剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb")

    var 剩余内存 = parseInt(device.getAvailMem() / 1024 / 1024)
    if (剩余内存 < 312) {
        log("剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb  执行 内存回收")
        java.lang.System.gc(); //回收内存
    }

    余额();
    if (智能养号) {
        智能养号模式();
    }
    if (养号) {
        log(时间() + "返回主页养号");
        sleep(1500)
        do {
            if (className("android.widget.TextView").text("首页").exists() == false) {
                back();
                sleep(1500)
            }
            if (currentPackage() != "com.ss.android.ugc.aweme") {
                launch("com.ss.android.ugc.aweme");
                sleep(5000)
            }
        }
        while (className("android.widget.TextView").text("首页").exists() == false)
        //swipe(500, device.height / 4 * 3, 500, 0, 300);
        var 首页位置 = className("android.widget.TextView").text("首页").findOne();
        if (首页位置) {
            var 首页X = 首页位置.bounds().centerX();
            var 首页Y = 首页位置.bounds().centerY();
            console.hide();
            sleep(100)
            longClick(首页X, 首页Y);
            sleep(2000);
            console.show()
            sleep(50);
            if (控制台) {
                console.setSize(device.width, device.height);
            }
            sleep(1000);
        }
        休息();
        养号模式 = true
    }
}

function 智能养号模式() {

    log(时间() + "返回主页 智能养号 " + (养号时长 / 60) + " 分钟");
    sleep(1500)
    do {

        if (className("android.widget.TextView").text("首页").exists() == false) {
            back();
            sleep(1500)
        }
        if (currentPackage() != "com.ss.android.ugc.aweme") {
            launch("com.ss.android.ugc.aweme");
            sleep(5000)
        }
    }
    while (className("android.widget.TextView").text("首页").exists() == false)

    var 首页位置 = className("android.widget.TextView").text("首页").findOne();
    if (首页位置) {
        var 首页X = 首页位置.bounds().centerX();
        var 首页Y = 首页位置.bounds().centerY();
        console.hide();
        sleep(100)
        longClick(首页X, 首页Y);
        console.show()
        sleep(100);
        if (控制台) {
            console.setSize(device.width, device.height);
        }
        sleep(1000);
    }

    var 取消通讯录 = text("取消").findOne(3000);
    if (取消通讯录) {
        log("发现取消按钮")
        取消.click();
        sleep(3000);
    }
    var 直播按钮 = id("cb3").findOne(1000)

    if (直播按钮) {
        if (random(1, 3) > 2) {
            log(时间() + "刷直播视频")
            直播按钮.click()
            sleep(random(3000, 5000));
        } else {
            log(时间() + "刷推荐视频")
        }
    }
    var myDate = new Date();
    var 开始计时 = myDate.getTime(); 
    do {
        滑动视频++;
        log(时间() + "养号模式 滑动视频  " + 滑动视频)
        sleep(2000)
        console.hide();
        sleep(300)
        swipe(device.width / 2, device.height / 2 + 150, device.width / 2, 100, 300);
        i = 0
        sleep(1500);
        console.show();
        sleep(70);
        if (控制台) {
            console.setSize(device.width, device.height);
        }
        休息();
        myDate = new Date();
        var dsq = parseInt((myDate.getTime() - 开始计时) / 1000);
        toastLog(时间() + "养号剩余  时间 " + (养号时长 - dsq) + "  S");
    }
    while (dsq < 养号时长)
    智能养号 = false
}

function 余额() {
    var r = http.get("http://tg.cst2020.cn/tg/Home/tx", {
        headers: {
            'Cookie': Cookie
        }
    });
    返回数据 = r.body.string()
    if (返回数据.length > 5000) {
        var n = 返回数据.indexOf("余额", 2700);
        var 余额 = 返回数据.slice(n + 64, n + 70);
        log(时间() + "当前余额: " + 余额 + " 💰")
    }
}

function 项目验证() {
    do {
        toast("正在连接服务器...")
        var r = http.get("http://ys-d.ys168.com/609013341/k73gkjm44361I6L45O6/TTSM.txt");
        返回数据 = r.body.string();
        var 验证 = 返回数据.indexOf("TRUE")
        //log(验证);
        sleep(1000);
    }
    while (验证 == null)
    sleep(1000);
    if (验证 == -1) {
        toast("验证项目失败")
        sleep(1000);
        exit();
    } else {
        toast("验证项目成功")
        sleep(1000);
    }
}

function 休息() {
    var 随机延迟 = (parseInt(random(5, 20)))
    //log(随机延迟)
    for (var i = 随机延迟; i > 0; i--) {
        log(时间() + "养号模式  休息    " + i + "  S")
        sleep(1000);
    }
}

function  countChar(str, char) {     //str为字符串，char为字符         
    var  count = 0;    
    for (var  i = 0; i < str.length; i++) {        
        if (str.charAt(i)  ==  char) {            
            count++;        
        }    
    }    
    return  count;
}

function 任务审核() {
    log(时间() + "正在获取任务记录.....")
    do {
        var 查看审核 = "http://tg.cst2020.cn/tg/DouYin/taskRecordList?tp=0&lastId=0"
        var r = http.get(查看审核, {
            headers: {
                'Cookie': Cookie
            }
        });
        //log(r.body.string())
        返回数据 = r.body.string()
        var 待审核 = countChar(返回数据, "核")
        var 审失败 = countChar(返回数据, "败")
        var 已结算 = countChar(返回数据, "算")
        var 任务记录 = 待审核 + 已结算 + 审失败
        if (任务记录 != 0) {
            log(时间() + "获取任务记录 " + 任务记录 + " 个 审失败 " + 审失败 + " 个  已结算 " + 已结算 + " 个  待审核 " + 待审核 + " 个 失败率: " + parseInt((审失败 / 任务记录) * 100))
            rws = 0;
            if (parseInt((审失败 / 任务记录) * 100) > 失败率) {
                log(时间() + "当前失败率 " + (parseInt((审失败 / 任务记录) * 100)) + "%  大于" + 失败率 + "% 启用智能养号");

                智能养号 = true;
            }

        } else {
             log(时间()+"获取任务记录失败 ");
            sleep(random(3600, 4500));
        }
    }
    while (任务记录 == 0)
}

//圈子工作室数据
ui.lxpt.on("click", () => {
    var 龙虾注册地址 = "http://tg.cst2020.cn/tg/Reg/i/c/516418"
    app.openUrl(龙虾注册地址);
});
ui.zzpt.on("click", () => {
    var 攢攢注册 = "http://reg.zqzan.com/?sid=me5ab1bhspsss99i"
    app.openUrl(攢攢注册);
});
ui.zxbb.on("click", () => {
    var 新地址 = "https://www.lanzous.com/b00z82hib"
    toast("打开最新地址");
    app.openUrl(新地址);

});
function 获取用户状态() {
    var 检查地址 = "http://w.eydata.net/1ac00eac0d75f083"
    var res = http.post(检查地址, {
        "StatusCode": 登录返回值,
        "UserName": 卡密
    });
    var 用户状态 = res.body.string()
    //   log("用户状态 "+用户状态)   
    if (用户状态 != 1) {
        confirm("授权码掉线  编号 " + 用户状态);
        exit();
    }
}

function 易游验证() {
    var 验证地址 = "http://w.eydata.net/a0af9d7790977c4d"
    var 到期时间地址 = "http://w.eydata.net/083dffc172d2a4b8"
    var 机器码 = device.getIMEI() + device.brand + device.model
    var 版本号 = "1.3"
    var res = http.post(验证地址, {
        "SingleCode": 卡密,
        "Ver": 版本号,
        "Mac": 机器码
    });
    登录返回值 = res.body.string()

    if (登录返回值.length == 32) {
        log("授权码 登录成功")
        var res = http.post(到期时间地址, {
            "UserName": 卡密,
        });
        var 到期时间 = res.body.string()
        log("授权码到期时间: " + 到期时间);
        toast("授权码到期时间: " + 到期时间);
        sleep(2500);
    } else {
        if (登录返回值 == "-401") {
            log("登录失败 卡密错误");
            toast("登录失败 卡密错误");
            sleep(2500);
        } else if (登录返回值 == "-402") {
            log("登录失败 卡密机器码错误");
            toast("登录失败 卡密机器码错误");
            sleep(2500);
        } else if (登录返回值 == "-410") {
            log("登录失败 卡密已经过期");
            toast("登录失败 卡密已经过期");
            sleep(2500);
        } else if (登录返回值 == "-405") {
            log("登录失败 卡密已经冻结");
            toast("登录失败 卡密已经冻结");
            sleep(2500);
        } else if (登录返回值 == "-207") {
            log("登录失败 当前版本已停用");
            toast("登录失败 当前版本已停用");
            sleep(2500);
        }
        log("错误编号:" + 登录返回值);
        toast("错误编号:" + 登录返回值);
        sleep(2500);
        exit();
    }

    //版本验证********
    var 最新版本 = "http://w.eydata.net/b5444cdcfeee5936"
    var 版本标记 = "1.0.9"
    var res = http.post(最新版本, {
        "StatusCode": 登录返回值,
        "UserName": 卡密,
        "VariableId": "25962",
        "VariableName": "bj",
    });
    var 最新标记 = res.body.string()
    //log(最新标记);
    if (版本标记 != 最新标记) {
        var handsome = confirm("有新版本呦 需要下载嘛!");
        if (handsome) {
            var res = http.post(最新版本, {
                "StatusCode": 登录返回值,
                "UserName": 卡密,
                "VariableId": "25963",
                "VariableName": "ddxz",
            });
            var 最新地址 = res.body.string()
            //log(最新地址);
            toast("打开下载地址")
            app.openUrl(最新地址)
            exit();
        } else {
            toast("取消更新");
            exit();
        }
    }

    var 项目公告地址 = "http://w.eydata.net/d68bb5d8a0bf3d12"
    var res = http.post(项目公告地址, {});
    项目公告 = res.body.string()
    console.info(项目公告);
    点赞上限 = ui.dzsx.getText()
    }"ui"; //更多精彩内容请联系群主加入精英群，微信shenlong6898 或zxkj6898

//大哥牛B  被你破开了  😂😂😂  
ui.layout(
    <scroll>
        <vertical id="zt" padding="10" bg ="#ffffff" >
            <text textSize="15sp" textColor="black" text="请输入平台账号"/>
            <input id="name" text=""  textSize="15sp"/>
            <text  textSize="15sp" textColor="black" text="请输入平台密码"/>
            <input id="pass"password="true" text="" textSize="15sp" />
            <text textSize="15sp" textColor="black" text="请输入辅助授权码"/>
            <input id="kmyz"password="false" text=""  textSize="14sp"/>
            <radiogroup>
                <radio   text="龙虾平台" checked="true"  marginTop="10" />
                <radio  id ="zz"text="攢攢平台" marginTop="10"/>
            </radiogroup>
            <checkbox id="yh" text="养号模式" checked="false"   marginTop="10" />
            <checkbox id="yhms" text="养号不做任务"checked="false"   marginTop="10"/>
            <checkbox id="cw" text="控制台最大化" checked="true" marginTop="10"/>
            
            <horizontal  marginTop="10">
                <text  textColor="black"   textSize="15sp"marginLeft="10" text="点赞到达多少次脚本暂停 提示:"   />
                <input id="dzsx"text=""w="100" inputType="number"  textSize="14sp"  />
            </horizontal>
            
            <button   id="wza"text="开启无障碍服务" marginTop="10"/>
            
                <button   id="lxpt"text="注册龙虾平台"   />
                <button   id="zzpt"text="注册攢攢平台" />
                       
            <button   id="ok" h="80" textSize="18sp"layout_gravity="center_horizontal"style="Widget.AppCompat.Button.Colored"   text="👉🔥启动脚本🔥 火速任务 🔥 👈"/>
                                
            <button   id="zxbb"text="获取最新版本"  />
            
        </vertical>
        
    </scroll>
);


/*
            <checkbox id="ds" text="定时模式" checked="false"  marginTop="10"/>
         <timepicker id ="dsq"timePickerMode="spinner"/>
        */


//storages.remove()  //移除原来的数据  重新创建
var storage = storages.create("登陆数据");
var name = storage.get("name");
var pass = storage.get("pass");
var kmyz = storage.get("kmyz");
var dzsx = storage.get("dzsx");
if (name != null) {
    ui.name.setText(name);
    ui.pass.setText(pass);
    ui.kmyz.setText(kmyz);
}
if (dzsx != null) {
    ui.dzsx.setText(dzsx);
}

var 登录 = "http://zcore.zqzan.com/app/account/login";
var 当前任务量 = "http://zcore.zqzan.com/app/platform/query/ing/count"
var 当前金豆 = "http://zcore.zqzan.com/app/douyin/my/info"
var 领取任务 = "http://zcore.zqzan.com/app/douyin/pull/one"
var 上传地址 = "http://zcore.zqzan.com/app/oss/shot_img"
/*  协议↑↑↑↑↑↑*******/


var token, 图片路径, key, 时间, 任务id, 任务, 上传参数, 图片地址, 任务价格, 任务类型, 作品id
var Cookie, 养号模式, 滑动视频 = 0
var 卡密 = ui.kmyz.getText();
var 登录返回值, 项目公告
var 完成数量 = 0;
var 自检周期 = 30;
var 失败率 = 50;
var 养号时长 = 30 * 60;
var 智能养号 = false;
var rws = 0;
var 点赞位置x = device.width / 2
var 点赞位置y = device.height / 2
var 点赞上限 = 0

/*
var 定时模式 = false
ui.ds.on("check", (checked) => {
    if (checked) {
        toast("开启定时模式")
        定时模式 = true
    } else {
        toast("关闭定时模式");
        定时模式 = false
    }
});
*/

//养号提示
var 养号 = false
ui.yh.on("check", (checked) => {
    if (checked) {
        toast("开启养号");
        养号 = true
    } else {
        toast("关闭养号");
        养号 = false
    }
});
var 独立养号 = false
ui.yhms.on("check", (checked) => {
    if (checked) {
        toast("开启独立养号");
        独立养号 = true
    } else {
        toast("关闭独立养号");
        独立养号 = false
    }
});
var 控制台 = true
ui.cw.on("check", (checked) => {
    if (checked) {
        toast("开启放大控制台");
        控制台 = true
    } else {
        toast("关闭放大控制台");
        控制台 = false
    }
});
var 运行平台 = false
ui.zz.on("check", (checked) => {
    if (checked) {
        toast("攢攢平台");
        运行平台 = true
    } else {
        toast("小龙虾平台");
        运行平台 = false
    }
});

ui.wza.on("click", () => {

    auto();
    if (!auto()) {
        toast("无障碍服务开启成功");
    }
});
/*
ui.youxiang.on("click", () => {
    toast("尚未开放");
    
  var qq= "1512245220";
 app.startActivity({ 
 action: "android.intent.action.VIEW", 
 data:"mqq://im/chat?chat_type=wpa&version=1&src_type=web&uin=" + qq, 
 packageName: "com.tencent.mobileqq", 
 });

}); 
//shanhai.execute("am start -a android.intent.action.VIEW -d mqqapi://card/show_pslcard?src_type=internal'&'version=1'&'uin=78237147'&'card_type=group'&'source=qrcode")

*/
//指定启动按钮点击时要执行的动作
ui.ok.click(function() {
    //通过getText()获取登录数据 
    storage.put("name", ui.name.text());
    storage.put("pass", ui.pass.text());
    storage.put("kmyz", ui.kmyz.text());
    storage.put("dzsx", ui.dzsx.text());
    // storage.put("yhh", ui.zz.on(checked));
    var name = ui.name.getText();
    var pass = ui.pass.getText();
    var kmyz = ui.kmyz.getText();
    var dzsx = ui.dzsx.getText();
    toast("正在连接服务器  请不要连续启动");

    //  toast(账号:" + name + " 密码:" + pass);
    threads.start(
        function 操作中心() {
            toast("正在连接服务器  请不要重复启动");
            sleep(2000);
            易游验证();
            if (独立养号) {

                养号时长 = 24 * 60 * 60;
                device.keepScreenOn();
                auto.waitFor();
                //requestScreenCapture()
                console.show()
                sleep(100);
                //log(控制台)
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
                点赞上限 = ui.dzsx.getText();
                launch("com.ss.android.ugc.aweme");
                log("设备型号:" + device.model)
                log("屏幕分辨率:  " + device.width + "," + device.height);
                log(时间() + "启用独立养号模式")
                log(时间() + "拉起 抖音APP  点赞上限 " + 点赞上限);
                sleep(6000);
                智能养号模式();
                log(时间() + "养号结束")
                exit();
            }
            if (运行平台) {
                攢攢平台();
            } else {
                小龙虾平台();
            }
        }

    );
});

function 小龙虾平台() {
    device.keepScreenOn();
    auto.waitFor();
    //请求截图 
    if (!requestScreenCapture()) {
        toast("请求截图权限失败");
        exit();
    }
    console.show()
    sleep(100);
    //log(控制台)
    if (控制台) {
        console.setSize(device.width, device.height);
    }
    点赞上限 = ui.dzsx.getText();
    launch("com.ss.android.ugc.aweme");
    sleep(6000);
    xlx登录();
    while (true) {
        xlx获取任务()
        if (任务id) {
            xlx任务判断();
        }
    }
}

function 攢攢平台() {
    //一直保持屏幕常亮 
    device.keepScreenOn()
    auto.waitFor();
    //请求截图 
    if (!requestScreenCapture()) {
        toast("请求截图权限失败");
        exit();
    }
    console.show();
    sleep(100);
    if (控制台) {
        console.setSize(device.width, device.height);
    }
    launch("com.ss.android.ugc.aweme");
    点赞上限 = ui.dzsx.getText();
    sleep(6000);
    登录账号();
    while (true) {
        获取任务();
        作品任务();
        模拟操作();
    }
}
function 放弃任务() {
    var res = http.post("http://zcore.zqzan.com/app/douyin/giveup/task", {
        "doit_id": 任务id,
    }, {
        headers: {
            token: token
        }
    })

    log(时间() + "放弃任务");
}

function 提交任务() {
    var 截图路径 = files.cwd() + "/攢攢任务截图.png"
    var res = http.post("http://zcore.zqzan.com/app/douyin/submit/task", {
        "doit_id": 任务id,
        "shot_img": 图片地址
    }, {
        headers: {
            token: token
        }
    })
    log(时间() + "提交任务完成")
    files.remove(截图路径);

    if (files.isFile(截图路径) == false) {
        log(时间() + "截屏图片删除成功")
    }
    //log(res.body.json.msg);
    sleep(1000);
    var r = http.get(当前金豆, {
        headers: {
            'token': token
        }
    });
    返回值 = r.body.json().data
    log(时间() + "当前金豆:" + 返回值.wallet + "  今日已做:" + 返回值.today_count);
    var r = http.get(当前任务量, {
        headers: {
            'token': token
        }
    });
    sleep(100);
    log(时间() + "当前任务量:" + r.body.json().data.ing_dyin);
    log(时间() + "剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb")
    var 剩余内存 = parseInt(device.getAvailMem() / 1024 / 1024)
    if (剩余内存 < 312) {
        log("剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb  执行 内存回收")
        java.lang.System.gc(); //回收内存
    }
    if (养号 == true) {
        log(时间() + "返回主页养号");
        sleep(1000);
        do {
            back();
            sleep(1500);
            if (currentPackage() != "com.ss.android.ugc.aweme") {
                launch("com.ss.android.ugc.aweme");
                sleep(5000)
            }
        }
        while (className("android.widget.TextView").text("首页").exists() == false)
        //swipe(500, device.height / 4 * 3, 500, 0, 300);
        var 首页位置 = className("android.widget.TextView").text("首页").findOne();
        if (首页位置) {
            var 首页X = 首页位置.bounds().centerX();
            var 首页Y = 首页位置.bounds().centerY();
            console.hide();
            sleep(100)
            longClick(首页X, 首页Y);
            console.show()
            sleep(100);
            if (控制台) {
                console.setSize(device.width, device.height);
            }
            sleep(1000);
        }

        休息();
        养号模式 = true
    }
}

function 模拟操作() {
    if (任务类型 == 1) {
        //log(时间() + "等待抖音界面加载");
        do {
            sleep(1000);
        }
        while (currentPackage() != "com.ss.android.ugc.aweme")
        log(时间() + "抖音加载成功")
        var 缓冲时间 = (parseInt(4000 * random()) + 5000)
        log(时间() + "缓冲 " + 缓冲时间 + " ms   判断视频");
        //log(时间() +"❤❤ 取屏幕中心");
        sleep(缓冲时间);
        console.hide()

        var a = colors.toString(images.pixel(captureScreen(), 点赞位置x - 50, 点赞位置y));

        var b = colors.toString(images.pixel(captureScreen(), 点赞位置x - 100, 点赞位置y));

        var c = colors.toString(images.pixel(captureScreen(), 点赞位置x + 100, 点赞位置y));

        var d = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y - 100));

        var e = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y + 100));

        if (a != "#ff000000" || b != "#ff000000" || c != "#ff000000" || d != "#ff000000" || e != "#ff000000") {
            toastLog(时间() + "视频有效  执行点赞  点赞数 " + 完成数量 + 1 + " pcs");
            for (var i = 0; i < 3; i++) {
                click(点赞位置x, 点赞位置y);

                sleep(random(80, 100));
            }
            完成数量++;
            if (完成数量 == 点赞上限) {
                log(时间() + "到达设定次数")
                var jxrw = confirm("到达设定的" + 点赞上限 + "次拉!  还要继续吗?");
                if (jxrw) {
                    完成数量 = 0
                    toastLog(时间() + "重置点赞数")
                } else {
                    toastLog(时间() + "停止运行")
                    exit();
                }
            }
            sleep(1000);
            var 截图路径 = files.cwd() + "/攢攢任务截图.png"

            var img = captureScreen(截图路径);
            sleep(300)
            if (files.isFile(截图路径)) {
                toastLog(时间() + "截屏成功");
                log(时间() + "把图片保存到" + 截图路径);
                console.show();
                sleep(50);
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
                上传文件();
                提交任务();
            } else {
                toastLog(时间() + "截屏失败 准备放弃任务")
                放弃任务();
            }

        } else {
            log(时间() + "视频无效")

        }

        // back();
    } else {
        log(时间() + "系统没有添加此类型任务")
        放弃任务();
    }
}

function 上传文件() {
    var 截图路径 = files.cwd() + "/攢攢任务截图.png"
    log(时间() + "开始上传图片");
    var res = http.post("http://zcore.zqzan.com/app/oss/shot_img", {}, {
        headers: {
            token: token
        }
    })
    var 返回数据 = res.body.json();
    log(时间() + 返回数据.msg)
    sleep(300);
    key = 返回数据.data.dir + "/" + 返回数据.data.prefix + (new Date).getTime() + Math.floor(150 * Math.random()) + ".png"
    图片地址 = 返回数据.data.host + "/" + key + 返回数据.data.format
    var res = http.postMultipart(返回数据.data.host, {
        key: key,
        policy: 返回数据.data.policy,
        OSSAccessKeyId: 返回数据.data.accessid,
        signature: 返回数据.data.signature,
        success_action_status: '200',
        file: open(截图路径)
    })
    return 返回数据.data.host + "/" + key + 返回数据.data.format // code: 0
}

function 登录账号() {
    var 密码 = String(ui.pass.getText()) + 'Uk&s23^ruk@';
    密码 = java.math.BigInteger(1, java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(密码).getBytes())).toString(16);
    var username = ui.name.getText();
    var password = 密码;
    //自用a7170275f4a3d9951184ed51e2eefc7b
    /*md5加密******↑↑*/
    var res = http.post(登录, {
        "username": username,
        "loginpw": password
    });
    返回数据 = res.body.json()
    token = 返回数据.data.token

    if (返回数据.msg == "操作成功") {
        log(时间() + "攢攢平台登录成功");
    } else {
        log(返回数据.msg + "  脚本已停止");

        exit()
    }
    var r = http.get(当前金豆, {
        headers: {
            'token': token
        }
    });
    返回值 = r.body.json().data
    log(时间() + "当前金豆:" + 返回值.wallet + "  今日已做:" + 返回值.today_count);
    var r = http.get(当前任务量, {
        headers: {
            'token': token
        }
    });
    log(时间() + "当前任务量:" + r.body.json().data.ing_dyin);

}

function 获取任务() {
    log(时间() + "等待获取任务中...");
    var i = 0;
    do {
        i++;
        var 刷新间隔 = (parseInt(1000 * random()) + 3000);
        //log(时间()+"刷新任务");
        var res = http.post(领取任务, {
            "b_discount": true,
            "access": 1,
            "exam_status": 0,
        }, {
            headers: {
                'token': token
            }
        })
        if (res.statusCode != 200) {
            log("获取失败 状态码:" + res.statusCode);
        }
        //  log(res.body.json())
        任务 = res.body.json();
        if (任务.msg == "暂无任务,请稍后再试") {
            log(时间() + 刷新间隔 + " ms  刷新任务 " + i);
            sleep(刷新间隔);
            if (养号模式 & i == 3) {
                滑动视频++;
                log(时间() + "养号模式 滑动视频  " + 滑动视频)
                sleep(2000)
                console.hide();
                sleep(200)
                swipe(parseInt(device.width / 2), parseInt(device.height / 2 + 100), parseInt(device.width / 2), 100, 300);
                i = 0
                sleep(2000);
                console.show();
                sleep(70);
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
            }
        }
    }
    while (任务.msg == "暂无任务,请稍后再试" || res.statusCode != 200)
    //log("获取任务完成");
    任务id = 任务.data.id
    作品id = 任务.data.aweme_id
    任务价格 = 任务.data.earning
    任务类型 = 任务.data.type
    log(时间() + "任务ID:" + 任务id)
    if (任务价格 == 18) {
        log(时间() + "特价点赞 单价:" + 任务价格)
    }
    if (任务价格 == 26) {
        log(时间() + "点赞 单价:" + 任务价格)
    }
}

function 作品任务() {
    app.startActivity({
        action: "android.intent.action.VIEW",
        data: "snssdk1128://aweme/detail/" + 作品id,
        packageName: "com.ss.android.ugc.aweme",
    });

}

function 时间() {
    var d = new Date();
    var 小时 = /^\d$/.test(d.getHours()) ? '0' + d.getHours() : d.getHours();
    var 分钟 = /^\d$/.test(d.getMinutes()) ? '0' + d.getMinutes() : d.getMinutes();
    var 秒钟 = /^\d$/.test(d.getSeconds()) ? '0' + d.getSeconds() : d.getSeconds();
    return 小时 + ":" + 分钟 + ":" + 秒钟 + "🏃🏃 ";
}
//********小龙虾部分**************
function xlx登录() {
    var username = ui.name.getText();
    var password = ui.pass.getText();
    var res = http.post("http://tg.cst2020.cn/tg/Login/in", {
        "username": username,
        "password": password
    });
    var 登录判断 = res.body.json().msg
    if (登录判断 != "未注册或密码错误") {
        var n = res.headers["Set-Cookie"].split(";");
        Cookie = n[0]
        log(时间() + "登录小龙虾平台成功")
        // log(Cookie)
        sleep(1000);
    } else {
        log(登录判断)
        log("脚本停止")
        exit();
    }
}

function xlx获取任务() {
    log(时间() + "获取任务中...");
    获取用户状态();
    var i = 0;
    do {
        i++;
        var 获取任务 = "http://tg.cst2020.cn/tg/DouYin/taskList?tp=2"
        var r = http.get(获取任务, {
            headers: {
                'Cookie': Cookie
            }
        });
        var 刷新间隔 = (parseInt(1000 * random()) + 3300);
        if (r.statusCode == 200) {

            返回数据 = r.body.json().result.dataList
            if (返回数据 == undefined || 返回数据.length == 0) {

                任务id = false
                log(时间() + 刷新间隔 + " ms  刷新任务  " + i);
                sleep(刷新间隔);

                if (养号模式 && i == 3) {
                    滑动视频++;
                    log(时间() + "养号模式 滑动视频  " + 滑动视频)
                    sleep(2000)
                    console.hide();
                    sleep(300)
                    swipe(parseInt(device.width / 2), parseInt(device.height / 2 + 100), parseInt(device.width / 2), 100, 300);
                    i = 0
                    sleep(2000);
                    console.show();
                    sleep(70);
                    if (控制台) {
                        console.setSize(device.width, device.height);
                    }
                }
            } else {
                任务id = 返回数据[0].id
                log(时间() + 返回数据[0].nickname + "  " + 返回数据[0].tps + "  " + 返回数据[0].vtitle);
            }
        } else {
            log("获取任务失败");
            log("返回状态码:" + r.statusCode);
        }
        sleep(200);
    }
    while (r.statusCode != 200 || 任务id == false)
}

function xlx视频数据() {
    var 任务地址 = "http://tg.cst2020.cn/tg/DouYin/getTaskData?id=" + 任务id
    var r = http.get(任务地址, {
        headers: {
            'Cookie': Cookie
        }
    });
    返回数据 = r.body.json().result.copytxt.split("/");
    作品id = 返回数据[5];
    //log("作品ID:" + 作品id);
}

function xlx任务判断() {
    var 接受任务 = "http://tg.cst2020.cn/tg/DouYin/copyTaskData?id=" + 任务id
    var r = http.get(接受任务, {
        headers: {
            'Cookie': Cookie
        }
    });
    sleep(1000);
    返回数据 = r.body.json()
    var 任务判断 = 返回数据.result.leftTime
    if (任务判断 == 30) {
        xlx视频数据();
        log(时间() + "接受任务成功");
        作品任务();
        xlx模拟操作();
    }
}

function xlx模拟操作() {
    //log(时间() + "等待抖音界面加载");
    do {
        sleep(1000);
    }
    while (currentPackage() != "com.ss.android.ugc.aweme")
    log(时间() + "抖音加载成功")
    var 缓冲时间 = (parseInt(4000 * random()) + 5000)
    log(时间() + "缓冲 " + 缓冲时间 + " ms   判断视频");
    //log(时间() +"❤❤ 取屏幕中心");
    sleep(缓冲时间);
    console.hide()
    sleep(100);
    var a = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y));
    sleep(100);
    var b = colors.toString(images.pixel(captureScreen(), 点赞位置x - 100, 点赞位置y));
    sleep(100);
    var c = colors.toString(images.pixel(captureScreen(), 点赞位置x + 100, 点赞位置y));
    sleep(100);
    var d = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y - 100));
    sleep(100);
    var e = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y + 100));
    sleep(100);
    if (a != "#ff000000" || b != "#ff000000" || c != "#ff000000" || d != "#ff000000" || e != "#ff000000") {
        for (var i = 0; i < 3; i++) {
            click(点赞位置x, 点赞位置y);

            sleep(random(80, 100));
        }
        完成数量++;
        log(时间() + "视频有效  执行点赞  点赞数 " + 完成数量 + " pcs");
        if (完成数量 == 点赞上限) {
            log(时间() + "到达设定次数")
            var jxrw = confirm("到达设定的" + 点赞上限 + "次拉!  还要继续吗?");
            if (jxrw) {
                完成数量 = 0
                toastLog(时间() + "重置点赞数")
            } else {
                toastLog(时间() + "停止运行")
                exit();
            }
        }
    } else {
        log(时间() + "无效黑屏任务")
    }
    rws++;
    log(时间() + "自检周期 " + 自检周期 + "  距离自检  " + (自检周期 - rws));
    console.show();
    sleep(50);
    if (控制台) {
        console.setSize(device.width, device.height);
    }
    if ((自检周期 - rws) == 0) {
        
        任务审核();
    }
    sleep(2000);
    //  back();
    log(时间() + "剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb")

    var 剩余内存 = parseInt(device.getAvailMem() / 1024 / 1024)
    if (剩余内存 < 312) {
        log("剩余内存 " + parseInt(device.getAvailMem() / 1024 / 1024) + " mb  执行 内存回收")
        java.lang.System.gc(); //回收内存
    }

    余额();
    if (智能养号) {
        智能养号模式();
    }
    if (养号) {
        log(时间() + "返回主页养号");
        sleep(1500)
        do {
            if (className("android.widget.TextView").text("首页").exists() == false) {
                back();
                sleep(1500)
            }
            if (currentPackage() != "com.ss.android.ugc.aweme") {
                launch("com.ss.android.ugc.aweme");
                sleep(5000)
            }
        }
        while (className("android.widget.TextView").text("首页").exists() == false)
        //swipe(500, device.height / 4 * 3, 500, 0, 300);
        var 首页位置 = className("android.widget.TextView").text("首页").findOne();
        if (首页位置) {
            var 首页X = 首页位置.bounds().centerX();
            var 首页Y = 首页位置.bounds().centerY();
            console.hide();
            sleep(100)
            longClick(首页X, 首页Y);
            sleep(2000);
            console.show()
            sleep(50);
            if (控制台) {
                console.setSize(device.width, device.height);
            }
            sleep(1000);
        }
        休息();
        养号模式 = true
    }
}

function 智能养号模式() {

    log(时间() + "返回主页 智能养号 " + (养号时长 / 60) + " 分钟");
    sleep(1500)
    do {

        if (className("android.widget.TextView").text("首页").exists() == false) {
            back();
            sleep(1500)
        }
        if (currentPackage() != "com.ss.android.ugc.aweme") {
            launch("com.ss.android.ugc.aweme");
            sleep(5000)
        }
    }
    while (className("android.widget.TextView").text("首页").exists() == false)

    var 首页位置 = className("android.widget.TextView").text("首页").findOne();
    if (首页位置) {
        var 首页X = 首页位置.bounds().centerX();
        var 首页Y = 首页位置.bounds().centerY();
        console.hide();
        sleep(100)
        longClick(首页X, 首页Y);
        console.show()
        sleep(100);
        if (控制台) {
            console.setSize(device.width, device.height);
        }
        sleep(1000);
    }

    var 取消通讯录 = text("取消").findOne(3000);
    if (取消通讯录) {
        log("发现取消按钮")
        取消.click();
        sleep(3000);
    }
    var 直播按钮 = id("cb3").findOne(1000)

    if (直播按钮) {
        if (random(1, 3) > 2) {
            log(时间() + "刷直播视频")
            直播按钮.click()
            sleep(random(3000, 5000));
        } else {
            log(时间() + "刷推荐视频")
        }
    }
    var myDate = new Date();
    var 开始计时 = myDate.getTime(); 
    do {
        滑动视频++;
        log(时间() + "养号模式 滑动视频  " + 滑动视频)
        sleep(2000)
        console.hide();
        sleep(300)
        swipe(device.width / 2, device.height / 2 + 150, device.width / 2, 100, 300);
        i = 0
        sleep(1500);
        console.show();
        sleep(70);
        if (控制台) {
            console.setSize(device.width, device.height);
        }
        休息();
        myDate = new Date();
        var dsq = parseInt((myDate.getTime() - 开始计时) / 1000);
        toastLog(时间() + "养号剩余  时间 " + (养号时长 - dsq) + "  S");
    }
    while (dsq < 养号时长)
    智能养号 = false
}

function 余额() {
    var r = http.get("http://tg.cst2020.cn/tg/Home/tx", {
        headers: {
            'Cookie': Cookie
        }
    });
    返回数据 = r.body.string()
    if (返回数据.length > 5000) {
        var n = 返回数据.indexOf("余额", 2700);
        var 余额 = 返回数据.slice(n + 64, n + 70);
        log(时间() + "当前余额: " + 余额 + " 💰")
    }
}

function 项目验证() {
    do {
        toast("正在连接服务器...")
        var r = http.get("http://ys-d.ys168.com/609013341/k73gkjm44361I6L45O6/TTSM.txt");
        返回数据 = r.body.string();
        var 验证 = 返回数据.indexOf("TRUE")
        //log(验证);
        sleep(1000);
    }
    while (验证 == null)
    sleep(1000);
    if (验证 == -1) {
        toast("验证项目失败")
        sleep(1000);
        exit();
    } else {
        toast("验证项目成功")
        sleep(1000);
    }
}

function 休息() {
    var 随机延迟 = (parseInt(random(5, 20)))
    //log(随机延迟)
    for (var i = 随机延迟; i > 0; i--) {
        log(时间() + "养号模式  休息    " + i + "  S")
        sleep(1000);
    }
}

function  countChar(str, char) {     //str为字符串，char为字符         
    var  count = 0;    
    for (var  i = 0; i < str.length; i++) {        
        if (str.charAt(i)  ==  char) {            
            count++;        
        }    
    }    
    return  count;
}

function 任务审核() {
    log(时间() + "正在获取任务记录.....")
    do {
        var 查看审核 = "http://tg.cst2020.cn/tg/DouYin/taskRecordList?tp=0&lastId=0"
        var r = http.get(查看审核, {
            headers: {
                'Cookie': Cookie
            }
        });
        //log(r.body.string())
        返回数据 = r.body.string()
        var 待审核 = countChar(返回数据, "核")
        var 审失败 = countChar(返回数据, "败")
        var 已结算 = countChar(返回数据, "算")
        var 任务记录 = 待审核 + 已结算 + 审失败
        if (任务记录 != 0) {
            log(时间() + "获取任务记录 " + 任务记录 + " 个 审失败 " + 审失败 + " 个  已结算 " + 已结算 + " 个  待审核 " + 待审核 + " 个 失败率: " + parseInt((审失败 / 任务记录) * 100))
            rws = 0;
            if (parseInt((审失败 / 任务记录) * 100) > 失败率) {
                log(时间() + "当前失败率 " + (parseInt((审失败 / 任务记录) * 100)) + "%  大于" + 失败率 + "% 启用智能养号");

                智能养号 = true;
            }

        } else {
             log(时间()+"获取任务记录失败 ");
            sleep(random(3600, 4500));
        }
    }
    while (任务记录 == 0)
}

//圈子工作室数据
ui.lxpt.on("click", () => {
    var 龙虾注册地址 = "http://tg.cst2020.cn/tg/Reg/i/c/516418"
    app.openUrl(龙虾注册地址);
});
ui.zzpt.on("click", () => {
    var 攢攢注册 = "http://reg.zqzan.com/?sid=me5ab1bhspsss99i"
    app.openUrl(攢攢注册);
});
ui.zxbb.on("click", () => {
    var 新地址 = "https://www.lanzous.com/b00z82hib"
    toast("打开最新地址");
    app.openUrl(新地址);

});
function 获取用户状态() {
    var 检查地址 = "http://w.eydata.net/1ac00eac0d75f083"
    var res = http.post(检查地址, {
        "StatusCode": 登录返回值,
        "UserName": 卡密
    });
    var 用户状态 = res.body.string()
    //   log("用户状态 "+用户状态)   
    if (用户状态 != 1) {
        confirm("授权码掉线  编号 " + 用户状态);
        exit();
    }
}

function 易游验证() {
    var 验证地址 = "http://w.eydata.net/a0af9d7790977c4d"
    var 到期时间地址 = "http://w.eydata.net/083dffc172d2a4b8"
    var 机器码 = device.getIMEI() + device.brand + device.model
    var 版本号 = "1.3"
    var res = http.post(验证地址, {
        "SingleCode": 卡密,
        "Ver": 版本号,
        "Mac": 机器码
    });
    登录返回值 = res.body.string()

    if (登录返回值.length == 32) {
        log("授权码 登录成功")
        var res = http.post(到期时间地址, {
            "UserName": 卡密,
        });
        var 到期时间 = res.body.string()
        log("授权码到期时间: " + 到期时间);
        toast("授权码到期时间: " + 到期时间);
        sleep(2500);
    } else {
        if (登录返回值 == "-401") {
            log("登录失败 卡密错误");
            toast("登录失败 卡密错误");
            sleep(2500);
        } else if (登录返回值 == "-402") {
            log("登录失败 卡密机器码错误");
            toast("登录失败 卡密机器码错误");
            sleep(2500);
        } else if (登录返回值 == "-410") {
            log("登录失败 卡密已经过期");
            toast("登录失败 卡密已经过期");
            sleep(2500);
        } else if (登录返回值 == "-405") {
            log("登录失败 卡密已经冻结");
            toast("登录失败 卡密已经冻结");
            sleep(2500);
        } else if (登录返回值 == "-207") {
            log("登录失败 当前版本已停用");
            toast("登录失败 当前版本已停用");
            sleep(2500);
        }
        log("错误编号:" + 登录返回值);
        toast("错误编号:" + 登录返回值);
        sleep(2500);
        exit();
    }

    //版本验证********
    var 最新版本 = "http://w.eydata.net/b5444cdcfeee5936"
    var 版本标记 = "1.0.9"
    var res = http.post(最新版本, {
        "StatusCode": 登录返回值,
        "UserName": 卡密,
        "VariableId": "25962",
        "VariableName": "bj",
    });
    var 最新标记 = res.body.string()
    //log(最新标记);
    if (版本标记 != 最新标记) {
        var handsome = confirm("有新版本呦 需要下载嘛!");
        if (handsome) {
            var res = http.post(最新版本, {
                "StatusCode": 登录返回值,
                "UserName": 卡密,
                "VariableId": "25963",
                "VariableName": "ddxz",
            });
            var 最新地址 = res.body.string()
            //log(最新地址);
            toast("打开下载地址")
            app.openUrl(最新地址)
            exit();
        } else {
            toast("取消更新");
            exit();
        }
    }

    var 项目公告地址 = "http://w.eydata.net/d68bb5d8a0bf3d12"
    var res = http.post(项目公告地址, {});
    项目公告 = res.body.string()
    console.info(项目公告);
    点赞上限 = ui.dzsx.getText()
    }
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
