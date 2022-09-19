
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

auto();
device.keepScreenOn();
var CryptoJS = require("cryptojs/crypto-js.js");
ui.layout(
    <vertical>
        <appbar>
            <toolbar id="toolbar" title="小龙虾辅助协议版v2.3.2"/>
            <tabs id="tabMenu"/>
        </appbar>
        
        <viewpager id="vpTabs">
            <vertical padding="5 0 5 0">
                <progressbar id="pgbar" visibility="gone" indeterminate="true" w="*" style="@style/Base.Widget.AppCompat.ProgressBar.Horizontal"/>
                
                <text text="无障碍辅助" textColor="black" textSize="16" marginTop="5"/>
                <text text="若未开启则不能执行点赞、养号操作！系统设置→系统辅助/智能辅助→小龙虾辅助→无障碍/已下载的服务"/>
                
                <text text="悬浮窗权限" textColor="black" textSize="16" marginTop="5"/>
                <text text="若未开启则不能实时监控脚本运行状态！系统设置→权限管理→小龙虾辅助→应用权限→悬浮窗"/>
                
                <horizontal marginTop="5">
                    <text text="小龙虾账户：" textColor="black" textSize="16"/>
                    <text id="lblUid" text="℡00000000000" textColor="black" textSize="16"/>
                </horizontal>
                
                <horizontal>
                    <text text="小龙虾密码：" textColor="black" textSize="16" w="auto"/>
                    <input id="txtPwd" hint="在此输入小龙虾密码" password="true" w="*"/>
                </horizontal>
                
                <text id="lblLoopTime" text="刷新频率_每2秒启动一次访问" textColor="black" textSize="16"/>
                <seekbar id="sbLoopTime" progress="30" w="*" marginTop="5"/>
                
                <text id="lblLikeTimeMin" text="点赞动作_最快等待2秒后点赞" textColor="black" textSize="16"/>
                <seekbar id="sbLikeTimeMin" progress="50" w="*" marginTop="5"/>
                
                <text id="lblLikeTimeMax" text="点赞动作_最晚等待5.04秒后点赞" textColor="black" textSize="16"/>
                <seekbar id="sbLikeTimeMax" progress="38" w="*" marginTop="5"/>
                
                <Switch id="swWatchVideos" text="抖音自刷_60秒无任务自动看视频" textSize="16"/>
                <seekbar id="sbNoTaskTimeSpan" progress="20" w="*" marginTop="5"/>
                
                <horizontal>
                    <button id="btnExit" w="auto" text="退出程序"style="Widget.AppCompat.Button.Colored"/>
                    <button id="btnStop" w="auto" text="停止运行" style="Widget.AppCompat.Button.Colored"/>
                    <button id="btnRun" w="*" text="运行脚本"style="Widget.AppCompat.Button.Colored"/>
                </horizontal>
            </vertical>
            <vertical>
                <text id="lblSN" text="" textSize="16sp" margin="5"/>
                <input id="txtSN" hint="在此输入脚本卡密激活脚本"/>
                <button id="btnActiveSN" text="激活脚本" style="Widget.AppCompat.Button.Colored"/>
            </vertical>
            <vertical>
                <text text ="①跑单环境Ⅰ：安卓7以上+老号+抖音8.3/2.0" textSize="16sp" textColor="black" margin="5"/>
                <text text ="②跑单环境Ⅱ：安卓7以上+新号+抖音9.9" textSize="16sp" textColor="black" margin="5"/>
                <text text ="③所需权限：无障碍、悬浮窗必须开否则运行失败" textSize="16sp" textColor="black" margin="5"/>
                <text text ="④数据窗口：点击 … 可移动/缩放控制台窗口" textSize="16sp" textColor="black" margin="5"/>
                <text text ="⑤脚本说明：该脚本目的为快速跑单不具备完整养号功能，小龙虾后台可进行抖音上号下号操作，请务必在下号后自行养号防止风控(单个抖音号日点赞量限制为600左右)！为加快抢单速度脚本采用多路并发访问平台获取任务，请适当调整刷新频率和点赞间隔以适配做任务手机配置、网络环境、平台任务量等问题。作者非神，脚本难免会出现Bug，有问题@作者及时修改。" textSize="16sp" textColor="black" margin="5"/>
                <horizontal>
                    <text text ="⑥最新消息：" textSize="16sp" textColor="black" margin="5"/>
                    <button id="btnQQQun" text="点比加群521297135" textSize="16sp" margin="5"/>
                </horizontal>
                <horizontal>
                    <text text ="⑦购买卡密：" textSize="16sp" textColor="black" margin="5"/>
                    <button id="btnQQ1" text="点此加Q162152127" textSize="16sp" margin="5"/>
                </horizontal>
                <horizontal>
                    <text text ="⑥其它需求：" textSize="16sp" textColor="black" margin="5"/>
                    <button id="btnQQ2" text="点此加Q162152127" textSize="16sp" margin="5"/>
                </horizontal>
            </vertical>
            <vertical>
                <text id="lblReg" autoLink="web" textSize="16sp" textColor="black" margin="5"/>
            </vertical>
        </viewpager>
    </vertical>
);
toast("请务必先开启无障碍和悬浮窗再运行脚本");
ui.lblReg.setText("小龙虾\n http://tg.cst2020.cn/tg/Reg/i/c/613212\n\n攒攒\n http://reg.zqzan.com/?sid=5cg34mxejigxvtpi\n\n喵喵试看(喵赞)\n http://share.mz.librazb.com/?invite=YiKcZk9REomj&channel=mz_update\n\n蛙蛙赚(呱赞)\n http://guazan.stars-gaming.cn/?invite=LrodmPQv42t1&channel=master\n\n小蜜蜂\n http://www.dx1065.net/d.php?i=824652");
//activity.setSupportActionBar(ui.toolbar);
//设置滑动页面的标题
ui.vpTabs.setTitles(["辅助配置", "卡密激活", "使用说明", "下载链接"]);
//让滑动页面和标签栏联动
ui.tabMenu.setupWithViewPager(ui.vpTabs);
//闲时抖音自刷
var g_isEnabledWatchVideosThread = false;
ui.swWatchVideos.on("check", function(checked) {
    if (checked) {
        g_isEnabledWatchVideosThread = true;
        toast("开启闲时抖音自刷");
    } else {
        g_isEnabledWatchVideosThread = false;
        toast("关闭闲时抖音自刷");
    }
});
//请求循环间隔
var g_nLoopTimeSpan = 2000;
ui.sbLoopTime.on("touch", function() {
    g_nLoopTimeSpan = ui.sbLoopTime.getProgress() * 50 + 500;
    ui.lblLoopTime.setText("刷新频率_每" + g_nLoopTimeSpan / 1000 + "秒启动一次访问");
});
//最快点赞
var g_nLikeTimeMin = 2000;
ui.sbLikeTimeMin.on("touch", function() {
    g_nLikeTimeMin = ui.sbLikeTimeMin.getProgress() * 20 + 1000;
    ui.lblLikeTimeMin.setText("点赞动作_最快等待" + g_nLikeTimeMin / 1000 + "秒后点赞");
});
//最晚点赞
var g_nLikeTimeMax = 5040;
ui.sbLikeTimeMax.on("touch", function() {
    g_nLikeTimeMax = ui.sbLikeTimeMax.getProgress() * 80 + 2000;
    ui.lblLikeTimeMax.setText("点赞动作_最晚等待" + g_nLikeTimeMax / 1000 + "秒后点赞");
});
//自刷抖音
var g_nNoTaskTimeSpan = 60000;
ui.sbNoTaskTimeSpan.on("touch", function() {
    g_nNoTaskTimeSpan = ui.sbNoTaskTimeSpan.getProgress() * 3000;
    ui.swWatchVideos.setText("抖音自刷_" + g_nNoTaskTimeSpan / 1000 + "秒无任务自动看视频");
});
//退出程序
ui.btnExit.click(() => {
    threads.shutDownAll();
    engines.myEngine().forceStop();
    //exit();
});
//停止运行
ui.btnStop.click(function() {
    if (Boolean(g_tmrDoTasks)) {
        clearInterval(g_tmrDoTasks);
    }
    if (Boolean(g_tmrWatchVideos)) {
        clearInterval(g_tmrWatchVideos);
    }
    if (Boolean(g_tmrUpdateConsole)) {
        clearInterval(g_tmrUpdateConsole);
    }
    //所有线程中断
    threads.shutDownAll();
    //初始化所有数据
    g_thLock.lock();
    g_strCookieName = "";
    g_nTaskCompleted = 0;
    g_nTaskRequest = 0;
    g_thLock.unlock();
    console.hide();
    ui.pgbar.visibility = 8;
});
//根据配置初始化参数
if (files.exists("cfg.txt")) {
    var data = files.read("cfg.txt");
    var arr = data.split("|");
    //密码
    ui.txtPwd.setText(arr[0]);

    g_nLoopTimeSpan = parseInt(arr[1]);
    ui.lblLoopTime.setText("刷新频率_每" + g_nLoopTimeSpan / 1000 + "秒启动一次访问");
    var loopt = (g_nLoopTimeSpan - 500) / 50;
    ui.sbLoopTime.setProgress(loopt);

    g_nLikeTimeMin = parseInt(arr[2]);
    ui.lblLikeTimeMin.setText("点赞动作_最快等待" + g_nLikeTimeMin / 1000 + "秒后点赞");
    var liketmin = (g_nLikeTimeMin - 1000) / 20;
    ui.sbLikeTimeMin.setProgress(liketmin);

    g_nLikeTimeMax = parseInt(arr[3]);
    ui.lblLikeTimeMax.setText("点赞动作_最晚等待" + g_nLikeTimeMax / 1000 + "秒后点赞");
    var liketmax = (g_nLikeTimeMax - 2000) / 80;
    ui.sbLikeTimeMax.setProgress(liketmax);

    if (Boolean(arr[4])) {
        ui.swWatchVideos.setChecked(true);
        g_isEnabledWatchVideosThread = true;
    }
    g_nNoTaskTimeSpan = parseInt(arr[5]);
    ui.swWatchVideos.setText("抖音自刷_" + g_nNoTaskTimeSpan / 1000 + "秒无任务自动看视频");
    var span = g_nNoTaskTimeSpan / 3000;
    ui.sbNoTaskTimeSpan.setProgress(span);
}
//添加QQ群
ui.btnQQQun.click(() => {
    app.startActivity({
        data: "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3Dv8kT5r_QYRzEO87_VT7iMiu1SRzCkpu2"
    });
});
//购买卡密
ui.btnQQ1.click(() => {
    app.startActivity({
        data: "mqqwpa://im/chat?chat_type=wpa&uin=162152127&version=1&src_type=web&web_src=oicqzone.com"
    });
});
//联系作者
ui.btnQQ2.click(() => {
    app.startActivity({
        data: "mqqwpa://im/chat?chat_type=wpa&uin=162152127&version=1&src_type=web&web_src=oicqzone.com"
    });
});
//激活
ui.btnActiveSN.click(() => {
    var sn = ui.txtSN.getText();
    files.write("sn.txt", sn);
    sn = files.read("sn.txt");
    fnUpdateUIBySN(sn);
});
//初始化卡密
//卡密绑定的手机号
var g_strTel;
//卡密结束日期
var g_strClosingDate;
//无卡密过到期，脚本不能运行
var g_isEnabledRunScript = false;
if (files.exists("sn.txt")) {
    var sn = files.read("sn.txt");
    fnUpdateUIBySN(sn);
} else {
    ui.lblSN.visibility = 8;
    ui.txtSN.visibility = 0;
    ui.btnActiveSN.visibility = 0;
}
//根据卡密更新界面
function fnUpdateUIBySN(sn) {
    var snDecrypt = fnDecryptKey(sn);
    var sn_arr = snDecrypt.split(",");
    g_strTel = sn_arr[0];
    g_strClosingDate = sn_arr[1];
    //刷新UI
    ui.lblUid.setText("℡" + g_strTel);
    ui.lblSN.setText("卡密:" + sn);
    ui.lblSN.visibility = 0;
    ui.txtSN.visibility = 8;
    ui.btnActiveSN.visibility = 8;
    if (g_strClosingDate == "0") {
        ui.btnRun.setText("运行脚本(免费版)");
        g_isEnabledRunScript = true;
        return;
    }
    var dayLeft = fnCheckSN(g_strClosingDate);
    if (dayLeft != null) {
        ui.btnRun.setText("运行脚本(剩余:" + dayLeft + "天)");
        g_isEnabledRunScript = true;
        return;
    } else {
        g_isEnabledRunScript = false;
        alert("卡密过期，请重新获取卡密");
    }
}
//检查卡密是否已过期
function fnCheckSN(datesn) {
    var url = "http://quan.suning.com/getSysTime.do"
    var ret = http.get(url).body.json();
    var datenet = ret.sysTime2.substr(0, 10);
    datenet = datenet.replace(/-/g, "/");
    datesn = datesn.substr(0, 4) + "/" + datesn.substr(4, 2) + "/" + datesn.substr(6, 2);
    var d1 = new Date(datenet); 
    var d2 = new Date(datesn); 
    if (d1 < d2) {
        var span = d2.getTime() - d1.getTime();
        var dayLeft = parseInt(span / (1000 * 60 * 60 * 24));
        return dayLeft;
    } else {
        return null;
    }
}
//卡密解码
function fnDecryptKey(key) {
    var data = fnBase64Decypt(key);
    data = fnAesDecrypt(data);
    data = fnAesDecrypt(data);
    return data;
}
// aes解密
function fnAesDecrypt(word) {
    var key = CryptoJS.enc.Utf8.parse("4e0a70c8a64a2b67");
    var iv = CryptoJS.enc.Utf8.parse("d796ef8285de784e");
    var encryptedHexStr = CryptoJS.enc.Hex.parse(word);
    var srcs = CryptoJS.enc.Base64.stringify(encryptedHexStr);
    var decrypt = CryptoJS.AES.decrypt(srcs, key, {
        iv: iv,
        mode: CryptoJS.mode.CBC,
        padding: CryptoJS.pad.Pkcs7
    });
    var decryptedStr = decrypt.toString(CryptoJS.enc.Utf8);
    return decryptedStr.toString();
}
//base64解密
function fnBase64Decypt(data) {
    var parsedWordArray = CryptoJS.enc.Base64.parse(data);
    return parsedWordArray.toString(CryptoJS.enc.Utf8);
}
//开始运行脚本
//线程同步锁
var g_thLock = threads.lock();
//自刷视频线程
var g_thWatchVideos = threads.start(function() {});
//请求任务次数
var g_nTaskRequest = 0;
//上一个任务完成时间
var g_dtLastTaskTime;
//完成任务次数
var g_nTaskCompleted = 0;
//本次运行任务收入金额
var g_fIncomeMoney = 0.000;
//平台返回的cookie名称
var g_strCookieName;
//定时器 做任务
var g_tmrDoTasks;
//定时器 控制台数据更新
var g_tmrUpdateConsole;
//定时器 看视频
var g_tmrWatchVideos;
ui.btnRun.click(() => {
    if (!g_isEnabledRunScript) {
        toast("请联系客服领取卡密");
        return;
    }
    //保存当前配置
    var strPwd = ui.txtPwd.getText();
    var data = strPwd + "|" + g_nLoopTimeSpan + "|" + g_nLikeTimeMin + "|" + g_nLikeTimeMax + "|" + g_isEnabledWatchVideosThread + "|" + g_nNoTaskTimeSpan;
    files.write("cfg.txt", data);
    //登录判断
    var strUid = g_strTel;
    if (strPwd == "") {
        ui.txtPwd.setError("密码不能为空");
        return;
    }
    var th_login = threads.start(function() {
        g_strCookieName = fnLogin(strUid, strPwd);
    });
    th_login.join();
    if (g_strCookieName == null) {
        ui.txtPwd.setError("未注册或密码错误");
        return;
    }
    //启动控制台线程
    threads.start(function() {
        console.show();
    });
    console.info("-----------------------------");
    //console.info("启动控制台模块");
    //显示无限进度条
    ui.pgbar.visibility = 0;
    console.info("启动平台访问模块");
    g_dtLastTaskTime = new Date().getTime();
    //定时执行做任务 g_nLoopTimeSpan 一次
    g_tmrDoTasks = setInterval(function() {
        g_nTaskRequest++;
        //启动做任务线程
        threads.start(function() {
            var task = fnGetTask();
            if (task != null) {
                var effect = fnIsTaskEffective(task.id);
                if (effect) {
                    var vid = fnGetVideoID(task.id);
                    if (vid != null) {
                        fnDoLike(g_nLikeTimeMin, g_nLikeTimeMax, task, vid);
                    }
                }
            }

        });
    }, g_nLoopTimeSpan);
    //定时监测是否执行自刷抖音(未开启略过此模块)
    if (g_isEnabledWatchVideosThread) {
        console.info("启动抖音养号模块");
        g_tmrWatchVideos = setInterval(function() {
            //g_nNoTaskTimeSpan无任务 启动自刷
            var now = new Date().getTime();
            var span = now - g_dtLastTaskTime;
            if (span > g_nNoTaskTimeSpan && !g_thWatchVideos.isAlive()) {
                g_thWatchVideos = threads.start(function() {
                    fnWatchVideos();
                });
            }
        }, 10000);
    }
    //定时刷新控制台，5秒
    console.info("启动数据汇总模块");
    console.info("登录成功，开始接单......");
    console.info("-----------------------------");
    g_tmrUpdateConsole = setInterval(function() {
        var strWatchStatus;
        if (g_isEnabledWatchVideosThread) {
            if (g_thWatchVideos.isAlive()) {
                strWatchStatus = "正在养号";
            } else {
                strWatchStatus = "暂停养号";
            }
        } else {
            strWatchStatus = "未开启养号模式"
        }
        console.info("-----------------------------");
        console.info("本次运行数据汇总\n平台访问:" + g_nTaskRequest + "次\n完成任务:" + g_nTaskCompleted + "个\n本轮收益:￥" + g_fIncomeMoney.toFixed(3) + "元\n等待任务:" + parseInt((new Date().getTime() - g_dtLastTaskTime) / 1000) + "秒\n养号状态:" + strWatchStatus);
        console.info("-----------------------------");
    }, 5500);
});
//登录小龙虾 POST
function fnLogin(strUid, strPwd) {
    var url = "tg.cst2020.cn/tg/Login/in";
    var res = http.post(url, {
        "username": strUid,
        "password": strPwd
    });
    if (res.statusMessage != "OK") {
        toast(res.statusMessage);
        return null;
    }
    var ret = res.body.json();
    if (ret.code == 0) {
        var header = res.headers["Set-Cookie"];
        var cookieName = header.substr(0, header.indexOf(";"));
        return cookieName;
    } else {
        toast(ret.msg);
        return null;
    }
}
//获取任务 (tp1关注 tp2点赞 tp3评论)
function fnGetTask() {
    var url = "tg.cst2020.cn/tg/DouYin/taskList?tp=2";
    var ret = http.get(url, {
        headers: {
            "Cookie": g_strCookieName
        }
    }).body.json();
    if (ret.code == 0 && ret.result.dataList.length > 0) {
        return ret.result.dataList[0]; //.id;
    } else {
        //您已连续审核失败超过2个，请切换任务账号或休息一会儿
        //刷新太频繁，请稍候刷新
        if (ret.msg.indexOf("审核失败") > 0) {
            //关闭所有定时器
            if (Boolean(g_tmrDoTasks)) {
                clearInterval(g_tmrDoTasks);
            }
            if (Boolean(g_tmrWatchVideos)) {
                clearInterval(g_tmrWatchVideos);
            }
            if (Boolean(g_tmrUpdateConsole)) {
                clearInterval(g_tmrUpdateConsole);
            }
            threads.shutDownAll();
            //隐藏无限进度条
            ui.pgbar.visibility = 8;
            console.error(ret.msg);
            console.info("切换抖音号或5分钟后再做");
            return null;
        }
    }
}
//获取视频ID
function fnGetVideoID(nTaskId) {
    var url = "tg.cst2020.cn/tg/DouYin/getTaskData?id=";
    var ret = http.get(url + nTaskId, {
        headers: {
            "Cookie": g_strCookieName
        }
    }).body.json();
    if (ret.code == 0) {
        return ret.result.copytxt.substr(38, 19);
    } else {
        return null;
    }
}
//任务是否有效
function fnIsTaskEffective(nTaskId) {
    var url = "tg.cst2020.cn/tg/DouYin/copyTaskData?id=";
    var ret = http.get(url + nTaskId, {
        headers: {
            "Cookie": g_strCookieName
        }
    }).body.json();
    return ret.code == 0 ? true : false;
}
//视频点赞
function fnDoLike(timeMin, timeMax, task, vid) {
    //关闭自刷视频线程
    if (g_thWatchVideos.isAlive()) {
        g_thWatchVideos.interrupt();
    }
    //启动抖音打开vid视频
    app.startActivity({
        data: "snssdk1128://aweme/detail/" + vid
    });
    //观看视频后点赞
    var tmin = parseInt(timeMin);
    var tmax = parseInt(timeMax);
    var nWatchTime;
    if (tmax > tmin) {
        nWatchTime = random(tmin, tmax);
    } else {
        nWatchTime = random(tmax, tmin);
    }
    sleep(nWatchTime);
    //点赞动作
    var x = device.width / 2 + random(-100, 100);
    var y = device.height / 2 + random(0, 100);
    var nLoop = random(5, 8);
    for (i = 0; i < nLoop; i++) {
        press(x, y, random(1, 50));
        sleep(random(50, 100));
    }
    g_thLock.lock();
    g_nTaskCompleted++;
    g_dtLastTaskTime = new Date().getTime();
    g_fIncomeMoney += parseFloat(task.price);
    g_thLock.unlock();
    var time = new Date();
    console.clear();
    console.info("-----------------------------");
    console.info("任务标题:" + task.vtitle + "\n任务编号:" + task.id + "\n任务单价:￥" + task.price + "元\n观看时长:" + nWatchTime + "\n完成时间:" + time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds());
    console.info("-----------------------------");
}
//超过30s无任务自刷视频
function fnWatchVideos() {
    console.info("启动抖音养号");
    //回到抖音首页
    app.startActivity({
        packageName: "com.ss.android.ugc.aweme",
        className: "com.ss.android.ugc.aweme.main.MainActivity"
    });
    setInterval(function() {
        console.info("随机切换，观看抖音");
        var nLoop = random(1, 3);
        for (i = 0; i < nLoop; i++) {
            sleep(random(500, 2000));
            //滑动视频动作  上滑切换视频       
            var x1 = device.width / 2 + random(-100, 100);
            var x2 = device.width / 2 + random(-100, 100);
            var y1 = device.height / 2 + device.height / 4 + random(-100, 100);
            var y2 = device.height / 2 - device.height / 4 + random(-100, 100);
            var dura = random(10, 300);
            var x = swipe(x1, y1, x2, y2, dura);
        }
    }, 15000);
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
