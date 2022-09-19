
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
auto.waitFor();
/**
autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
1群:168196007 
2群:830810438 
3群:571854376 
4群:63732194
5群:592916456
 */
checkUpgrade();

main();
 //autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
function main() {
    //启动QQ
    sleep(1500);
    app.launchPackage("com.tencent.mobileqq");
    //等待登录页面
    if (waitForActivityTimeOut("com.tencent.mobileqq.activity.LoginActivity", 200, 1000 * 5)) {
        toast('登录页面');
    } else if (textContains('发现版本更新').exists() || currentActivity().indexOf('SplashActivity') !== -1 || currentPackage().indexOf('com.tencent.mobileqq') !== -1) {
        toast('已登录!!!');
        groupTask();
        return;
    } else {
        toast('非登录页面 ' + currentActivity());
        return;
    }

    sleep(100);

    if (id("btn_login").exists()) {
        debugInfo('点击登录');
        id("btn_login").findOne().click();

        sleepRandom(500, 1000);
    }

    sleep(500);
 //autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
    var time = new Date().getTime();
    var url = "http://zym20201314.applinzi.com/qq/qq.php";
    r = http.get(url);

    var j = r.body.string();

    var qq = j.split('----')[0];
    var pwd = j.split('----')[1];

    //qq = '2329264277';
    //pwd = 'www.mm8.com.cn';

    debugInfo('输入帐号');
    className("android.widget.EditText").desc("请输入QQ号码或手机或邮箱").findOne().setText(qq);
    sleep(1000);

    debugInfo('输入密码');
    id("password").setText(pwd);
    sleep(1000);

    debugInfo('登录');
    id("login").findOne().click();

    toast('登录结果检测中...');

    var logining = 0;
    for (let i = 0; i < 20; i++) {
        sleep(1000);
        var act = currentActivity();
        //判断验证码
        if (textContains('验证码').exists()) {
            if (descContains('滑块')) {
                toast('滑块验证码');

                yanzm();

                sleep(2000);
                //判断是否密码错误,部分帐号第一次会密码错误
                if (!textContains('帐号或密码错误').find().empty()) {
                    toast('重新登录! ');
                    text('确定').findOne().click();

                    sleep(500);

                    main();
                } else {
                    toast('登录成功');
                    groupTask();
                }
            } else {
                toast('字符验证码');
            }
            break;
        }

        if (textContains('发现版本更新').exists()) {
            toast('登录成功!!');
            groupTask();
            break;
        }

        if (textContains('登录中').exists()) {
            logining += 1;
            if (logining > 5) {
                toast('登录超时!!!');
                break;
            }
        }

        if (!textContains('安全中心').find().empty()) {
            //冻结限制类型
            toast('帐号异常');
            break
        }

        if (!textContains('登录验证').find().empty()) {
            //密保验证
            toast('登录失败,密保验证');
            break;
        }

        if (!id('et_search_keyword').find().empty()) {
            toast('登录成功');
            groupTask();
            break;
        }
    }
}

function checkUpgrade() {
    threads.start(function () {
        //在新线程执行的代码
        while (true) {
            sleep(1000);
            if (currentActivity().indexOf('UpgradeActivity') !== -1) {
                back();
            }
        }
    });
}

function groupTask() {
    toast('group task');

    sleep(1000);

    if (currentActivity().indexOf('UpgradeActivity') !== -1) {
        back();
        sleep(1000);
    }

    if (text('QQ钱包').exists()) {
        back();
        sleep(1000);
    }

    sleep(1000);

    var groupCodes = '1002465291,832887820,645583351,470617303,1025581600,764664274,832849548,857311441,1027172684,1026315367,815544468,487586099,274027280,274046324,208449416,274046428,578488290,726975594,577405903,722565456,1027060319,1026035093,149667830,348524723,656196135,805425103,762923759,1027335264,699373715,815821320,318125063,790758720,871626816,201820705,783735070,553252944,650163140,958298229,634895137,706843934,993556093,1027159774,1025793274,282688802,735226160,663447150,656801681,365151198,687266062,148332966,857868871,120348501,657867514,740251242,129974765,649734318,826127849,839288390,196867070,208862941,295935283,993601714,631941812,564589917,8367280,947744475,632862238,517162944,516637649,952406205,452923222';
    var groupCode = groupCodes.split(',');
    //groupCode[0] = '10164689';
    //groupCode[1] = '454611563';
    //groupCode[2] = '538995892';
    //groupCode[3] = '818178218';
    //groupCode[4] = '567544670';
    //groupCode[5] = '293738346';
    //groupCode[6] = '1027218223';
    //groupCode[7] = '736222674';
    //groupCode[8] = '389131216';
    //groupCode[9] = '849831130';

    for (let i = 0; i < groupCode.length && i < 5; i++) {
        var word = http.get("http://word.rainss.cn/api_system.php?type=txt").body.string();
        if (!joinOrSendMessage(groupCode[random(0, groupCode.length - 1)], word)) {
            //加群失败,切换帐号
            toast('加群失败!');
            //break;
        }
        sleep(5000);
    }

    //正常加群五个,切换帐号
    changeAccount();
}

function joinOrSendMessage(uid, message) {
    qq.joinGroup(uid);

    if (waitForActivityTimeOut('com.tencent.mobileqq.activity.ChatSettingForTroop', 200, 1000 * 5)) {
        //判断是否付费
        sleepRandom(1500, 4500);
        if (textContains('元入群').exists()) {
            toast('付费群,取消');
            back();
        } else {
            //申请加群
            if (text('发消息').exists()) {
                text('发消息').findOne().click();
                //sendGroupMessage(uid, message);
            } else {
                text('申请加群').findOne().click();
                if (waitForActivityTimeOut('com.tencent.mobileqq.activity.AddFriendVerifyActivity', 200, 1000 * 5)) {
                    toast('加群验证');
                    sleepRandom(1500, 4000);
                    setText('大家好，我是        ,来自射手座女一枚~ ');
                    text('发送').findOne().click();
                    sleepRandom(2000, 5000);
                    if (textContains('请求发送成功').exists()) {
                        toast('加群发送成功,等待验证');
                    } else if (desc('群资料卡').exists()) {
                        toast('加群成功');
                        //sendGroupMessage(uid, message);
                    } else {
                        toast('加群失败');
                        //如果还是在当前页面,加群失败
                        if (currentActivity().indexOf('com.tencent.mobileqq.activity.AddFriendVerifyActivity') !== -1) {
                            toast('加群失败');
                            for (let i = 0; i < 20; i++) {
                                //返回
                                back();
                                sleep(1000);
                                if (desc('快捷入口').exists()) {
                                    break;
                                }
                            }
                            return false;
                        }
                    }
                } else {
                    //判断当前页面
                    if (text('我知道了').exists()) {
                        text('我知道了').findOne().click();
                        sleep(1000);
                    }

                    if (desc('群资料卡').exists()) {
                        toast('加群成功');
                        //sendGroupMessage(uid, message);
                    } else if (currentActivity().indexOf('com.tencent.mobileqq.activity.ChatSettingForTroop') !== -1) {
                        //加群没反应
                        toast('加群失败!返回首页');
                        for (let i = 0; i < 20; i++) {
                            //返回
                            back();
                            sleep(1000);
                            if (desc('快捷入口').exists()) {
                                break;
                            }
                        }
                        return false;
                    }
                }
            }
        }
    } else {
        if (currentActivity().indexOf('LoginActivity') !== -1) {
            main();
            return false;
        } else if (currentActivity().indexOf('UpgradeActivity') !== -1) {
            if (text('稍后处理').exists()) {
                text('稍后处理').findOne().click();
            }
            main();
            return false;
        } else if (currentActivity().indexOf('PhoneUnityIntroductionActivity') !== -1) {
            //手机号绑定
            back();
            return false;
        }
    }

    sleepRandom(2000, 3000);

    return true;
}

//改变帐号
function changeAccount() {
    toast('切换帐号 !!');

    sleep(1000);
    desc('帐户及设置').findOne().click();

    sleep(1000);
    desc('设置').findOne().click();

    waitForActivityTimeOut('com.tencent.mobileqq.activity.QQSettingSettingActivity', 200, 1000 * 3);

    sleep(1000);
    id('account_switch').findOne().click();

    sleep(1500);
    text('编辑').findOne().click();

    var del = desc('打开删除').find();
    for (let i = 0; i < del.size(); i++) {
        del.get(i).click();
        sleep(1000);

        //删除按钮
        text('删除').findOne().click();

        sleep(500);

        //仅删除帐号
        text('仅删除帐号').findOne().parent().click();
        sleep(2000);

        if (currentActivity().indexOf('LoginActivity') !== -1) {
            //已退出当前帐号
            toast('帐号已退出');

            main();
            return;
        }
    }

    sleep(1500);
    id('dialogRightBtn').findOne().click();

    toast('帐号已退出');

    sleep(4000);

    main();
}

function sendGroupMessage(uid, message) {
    id('input').findOne().setText(message);
    sleepRandom(1000, 2000);

    text('发送').findOne().click();
    sleepRandom(1000, 2000);
    toast('消息发送成功!!');
}

function debugInfo(text) {
    toast(text);
}

function yanzm() {
    //显示控制台
    //console.show();
    //console.setPosition(100, 1300);
    sleep(5000);

    //请求权限
    if (!requestScreenCapture()) {
       alert("请求截图权限失败！");
       exit();
    }
    toast('滑块');
    //启动 //设置滑动按钮高度
    var slideBgWrap = textContains('&captype').findOnce();
    toast(slideBgWrap);
    var bounds = slideBgWrap.bounds();
}

/**
 * 识别滑块位置
 *
 * 传入值img，ratio
 * img为要识别的图片
 * ratio为识别图片的分辨率（暂时只可选择720或1080）
 *
 * 返回值x
 * 识别出方块位置的左端横坐标
 */
function discernSlidingblock(img, ratio) {
    //创建识别变量
    var temp, temp2, x, y, num, color, p, temp3, arr1;
    //分析设备分辨率
    if (ratio == 720) {
        var tb = [348, 253, 691, 638, 81];
        log("您的设备分辨率为：720p");
    } else if (ratio == 1080) {
        var tb = [463, 387, 912, 831, 125];
        log("您的设备分辨率为：1080p");
    } else {
        log("当前设备分辨率不符合规范");
        return -2
    }
    num = Math.ceil(tb[4] / 3.3 - 4);

    //计算滑块位置
    for (var k = 29; k <= 40; k++) {
        temp2 = "";
        color = "#" + k + "" + k + "" + k + "";
        for (var i = 1; i <= num; i++) {
            temp2 = temp2 + "0|" + i + "|" + color + ",";
            temp2 = temp2 + i + "|0|" + color + ",";
            temp2 = temp2 + "1|" + i + "|" + color + ",";
            temp2 = temp2 + i + "|1|" + color + ",";
            temp2 = temp2 + "2|" + i + "|" + color + ",";
            temp2 = temp2 + i + "|2|" + color + ",";
        }
        x = 0;
        while (x > -2) {
            y = 0;
            while (y > -2) {
                temp = "";
                for (var i = 1; i <= num; i += 2) {
                    temp = temp + "0|" + (tb[4] + y - i - 1) + "|" + color + ",";
                    temp = temp + (tb[4] + x) + "|" + i + "|" + color + ",";
                    temp = temp + (tb[4] + x) + "|" + (tb[4] + y - i - 1) + "|" + color + ",";
                    temp = temp + (tb[4] + x - i - 1) + "|0|" + color + ",";
                    temp = temp + i + "|" + (tb[4] + y) + "|" + color + ",";
                    temp = temp + (tb[4] + x - i - 1) + "|" + (tb[4] + y) + "|" + color + ",";
                    temp = temp + "1|" + (tb[4] + y - i - 1) + "|" + color + ",";
                    temp = temp + (tb[4] + x - 1) + "|" + i + "|" + color + ",";
                    temp = temp + (tb[4] + x - 1) + "|" + (tb[4] + y - i - 1) + "|" + color + ",";
                    temp = temp + (tb[4] + x - i - 1) + "|1|" + color + ",";
                    temp = temp + i + "|" + (tb[4] + y - 1) + "|" + color + ",";
                    temp = temp + (tb[4] + x - i - 1) + "|" + (tb[4] + y - 1) + "|" + color + ",";
                }
                temp = temp + temp2 + "0|0|" + color;
                arr1 = temp.split(",");
                var arr2 = new Array();
                for (var i = 0; i < arr1.length - 1; i++) {
                    arr2[i] = new Array();
                    temp3 = arr1[i].split("|");
                    arr2[i] = [Number(temp3[0]), Number(temp3[1]), temp3[2]];
                }
                try {
                    p = images.findMultiColors(img, color, arr2, {
                        region: [tb[0], tb[1], tb[2] - tb[0], tb[3] - tb[1]],
                        threshold: (Math.floor(k / 10) * 16 + k % 10)
                    });
                    if (p) {
                        img.recycle();
                        return p.x
                    }
                } catch (error) {
                    //出错
                    console.log("识别失败，错误原因：" + error);
                    return -1;
                }
                y = --y;
            }
            x = --x;
        }
    }
    try {
        img.recycle();
    } catch (error) {
        console.log("识别失败，错误原因：" + error);
    }
    return -1;
}

function start(y) {
    log('开始滑块处理 - ' + y);
    auto.waitFor();
    while (true) {
        img = images.captureScreen();
        if (img) {
            log("截图成功。进行识别滑块！");
            break;
        } else {
            log('截图失败,重新截图');
        }
    }
    var x = discernSlidingblock(img, device.width) + 65
    console.info("识别结果滑块X坐标：" + x);

    if (x > -1) {
        randomSwipe(180, y, x, y)
        //滑动完成
    } else {
        console.log("识别有误，请确认是否在滑块界面");
    }
}

function bezierCreate(x1, y1, x2, y2, x3, y3, x4, y4) {
    //构建参数
    var h = 100;
    var cp = [{x: x1, y: y1 + h}, {x: x2, y: y2 + h}, {x: x3, y: y3 + h}, {x: x4, y: y4 + h}];
    var numberOfPoints = 100;
    var curve = [];
    var dt = 1.0 / (numberOfPoints - 1);

    //计算轨迹
    for (var i = 0; i < numberOfPoints; i++) {
        var ax, bx, cx;
        var ay, by, cy;
        var tSquared, tCubed;
        var result_x, result_y;

        cx = 3.0 * (cp[1].x - cp[0].x);
        bx = 3.0 * (cp[2].x - cp[1].x) - cx;
        ax = cp[3].x - cp[0].x - cx - bx;
        cy = 3.0 * (cp[1].y - cp[0].y);
        by = 3.0 * (cp[2].y - cp[1].y) - cy;
        ay = cp[3].y - cp[0].y - cy - by;

        var t = dt * i;
        tSquared = t * t;
        tCubed = tSquared * t;
        result_x = (ax * tCubed) + (bx * tSquared) + (cx * t) + cp[0].x;
        result_y = (ay * tCubed) + (by * tSquared) + (cy * t) + cp[0].y;
        curve[i] = {
            x: result_x,
            y: result_y
        };
    }
 //autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
    //轨迹转路数组
    var array = [];
    for (var i = 0; i < curve.length; i++) {
        try {
            var j = (i < 100) ? i : (199 - i);
            xx = parseInt(curve[j].x);
            yy = parseInt(Math.abs(100 - curve[j].y))
        } catch (e) {
            break
        }
        array.push([xx, yy])
    }

    return array;
}

/**
 * 真人模拟滑动函数
 * //autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
 * 传入值：起点终点坐标
 * 效果：模拟真人滑动
 */
function randomSwipe(sx, sy, ex, ey) {
    Swipe(sx, sy, ex, ey);

    if (sx != -1) {
        return;
    }

    //设置随机滑动时长范围
    var timeMin = 1000;
    var timeMax = 3000;
    //设置控制点极限距离
    var leaveHeightLength = 500;

    //根据偏差距离，应用不同的随机方式
    if (Math.abs(ex - sx) > Math.abs(ey - sy)) {
        var my = (sy + ey) / 2;
        var y2 = my + random(0, leaveHeightLength);
        var y3 = my - random(0, leaveHeightLength);

        var lx = (sx - ex) / 3;
        if (lx < 0) {
            lx = -lx
        }
        var x2 = sx + lx / 2 + random(0, lx)
        var x3 = sx + lx + lx / 2 + random(0, lx)
    } else {
        var mx = (sx + ex) / 2
        var y2 = mx + random(0, leaveHeightLength)
        var y3 = mx - random(0, leaveHeightLength)

        var ly = (sy - ey) / 3
        if (ly < 0) {
            ly = -ly
        }
        var y2 = sy + ly / 2 + random(0, ly)
        var y3 = sy + ly + ly / 2 + random(0, ly)
    }

    //获取运行轨迹，及参数
    var time = [0, random(timeMin, timeMax)]
    var track = bezierCreate(sx, sy, x2, y2, x3, y3, ex, ey)

    log("随机控制点A坐标：" + x2 + "," + y2)
    log("随机控制点B坐标：" + x3 + "," + y3)
    log("随机滑动时长：" + time[1])

    //滑动
    gestures(time.concat(track));
}


/**
 * 联众图像识别函数
 * @param {string} username 联众图像识别账号
 * @param {string} password 联众图像识别密码
 * @param {object} img 识别图片
 */

/**
 * 敬告使用者
 *
 * 接口、实例文件，均为第三方开发，因技术原因，联众识图平台未进行代码审查，亦不能确定代码的功能作用，请接入的开发者审查代码后调用。如实例中包含恶意代码或针对某网站、软件的攻击行为，请联系联众识图平台删除。
 *
 * 联众识别平台仅为残障人士以及有需要的个人和企业提供图像识别和图像识别分类服务，联众平台仅仅被动接受开发者传入的图像返回图像中的文字或结果信息，不参与破解，不为恶意软件提供帮助，不针对任何网站或个人。
 * 请勿利用联众识别做违反国家法律法规的行为，否则强制停止使用，不予退费，联众将依法向有关部门递交您的个人资料！
 * 违法软件是指的是包括但不限于以下用途的软件：
 * 1、破解、入侵系统，或正常登录但超越授权范围获取信息。
 * 2、赌博
 * 3、薅羊毛
 * 4、批量登录、批量注册、批量支付
 * 5、游戏外挂、游戏辅助
 * 6、超越访问频率限制
 * 7、批量盗取公民个人信息，获取手机号、身份证等隐私信息
 *
 */

function getCode(username, password, img) {
    http.__okhttp__.setTimeout(3e4);
    var r = images.toBase64(img, format = "png"), i = device.release, c = device.model, s = device.buildId;
    try {
        var n = http.postJson("https://v2-api.jsdama.com/upload", {
            softwareId: 11111,
            softwareSecret: "        ",
            username: username,
            password: password,
            captchaData: r,
            captchaType: 1001,
            captchaMinLength: 0,
            captchaMaxLength: 0,
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
}
 //autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
