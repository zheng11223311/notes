
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
/**
 *脚本来源：浩然
 *QQ：2125764918
 *b站UID:275511084
/**
autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
1群:168196007 
2群:830810438 
3群:571854376 
4群:63732194
5群:592916456
 */
 
 *适用版本：所有安卓版本
 *适用分辨率：1080p720p
 *
 *转载请附注来源，谢谢
 *成功率实测百次：成功率100%
 *
 *防检测功能：模拟真人滑动
 *通过四阶贝塞尔曲线，生成完全模仿真的滑动方式
 *
 */
var loginCount = 0;
//QQ路径
var uidPath = '/sdcard/pdd1/uid.txt';

mainX();

function mainX() {
    auto.waitFor();

    sleep(5000);

    //创建文件
    files.ensureDir(uidPath);

    var isFirstLogin = false;

    if (currentActivity().indexOf('com.tencent.mobileqq.activity.LoginActivity') !== -1) {
        //手Q本地无登录帐号
        isFirstLogin = true;

        if (loginMain()) {
            home();
            return;
        }
    }

    toast('等待授权');

    //授权页面
    waitForActivity('com.tencent.open.agent.AuthorityActivity', 200);

    sleep(2000);
    toast('授权登录');

    if (!textContains('非官方正版应用').find().empty()) {
        toast('登录失败,偶发签名验证');
        home();
        text('确定').findOne().click();
        return;
    }

    login(isFirstLogin);
}

var loginc = 0;

function login(isFirstLogin) {
    loginc += 1;

    if (loginc > 4) {
        back();
        sleep(200);
        back();
        sleep(200);
        back();
        sleep(200);
        toast('登录超时');
        return;
    }
    var qq;
    if (!isFirstLogin) {
        //登录指定帐号
        var time = new Date().getTime();
        var url = "http://api.lefu.io:9200/pdd/getQq";
        r = http.postJson(url, {
            reqId: time,
            timestamp: time
        });

        var j = JSON.parse(r.body.string());
        if (j.code !== 0) {
            toast('获取登录帐号异常');
            home();
            return;
        } else {
            qq = j.result.userName;
            var pwd = j.result.password;

            qq = '2329264277';
            pwd = 'www.mm8.com.cn';

            clickView(text('添加帐号').findOne());

            sleep(2000);

            id('account').findOne().setText(qq);
            sleep(2000);

            id('password').findOne().setText(pwd);
            sleep(2000);

            clickView(text('登录').findOne());
        }
    }

    sleep(2000);

    var loginButton;
    if (!text('重新拉取授权信息').find().empty()) {
        clickView(text('重新拉取授权信息').find()[0]);
        sleep(2000);

        list1 = text("授权并登录").find();
        if (list1.empty()) {
            list1 = text("登录").find();
            if (!list1.empty()) {
                loginButton = list1[0];
            }
        } else {
            loginButton = list1[0];
        }

        if (loginButton !== undefined) {
            clickView(loginButton);

            files.write(uidPath, qq);
        } else {
            deleteUidFile(qq);
        }
    } else {
        var list1 = text("授权并登录").find();
        if (list1.empty()) {
            list1 = text("登录").find();
            if (!list1.empty()) {
                loginButton = list1[0];
            }
        } else {
            loginButton = list1[0];
        }

        if (loginButton !== undefined) {
            files.write(uidPath, qq);
            clickView(loginButton);
        } else {
            deleteUidFile(qq);
        }
    }

    sleep(1000);

    if (!textContains('安全中心').find().empty()) {
        //冻结限制类型
        toast('帐号异常');
        deleteUidFile(qq);
    } else if (currentPackage().indexOf('com.tencent.mobileqq') === -1) {
        //离开手Q
        toast('快捷登录成功');
        files.write(uidPath, qq);
    } else if (!textContains('登录验证').find().empty()) {
        //密保验证
        toast('登录失败,密保验证');
        deleteUidFile(qq);
    } else if (!id('et_search_keyword').find().empty()) {
        toast('登录成功');
        files.write(uidPath, qq);
    } else if (!textContains('验证码').find().empty()) {
        toast('登录失败:验证码,重新登录');
        back();
        sleep(200);
        back();
        sleep(2000);
        deleteUidFile(qq);

        login(isFirstLogin);
    }

    toast('脚本完成');

    home();
}

function deleteUidFile(qq) {
    files.remove(uidPath);

    //帐号异常提交
    var time = new Date().getTime();
    var url = "http://api.lefu.io:9200/pdd/loginReport";
    r = http.postJson(url, {
        reqId: time,
        timestamp: time,
        param: {
            loginStatus: 0,
            userName: qq,
            openId: '',
            qqAccessToken: ''
        }
    });
}

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
function loginMain() {
    if (loginCount > 2) {
        toast('登录失败,检查帐号');
        deleteUidFile(qq);
        return;
    }
    var list1 = id('btn_login').find();
    if (!list1.empty()) {
        clickView(list1[0]);
        sleep(1000);
    }

    var time = new Date().getTime();
    var url = "http://api.lefu.io:9200/pdd/getQq";
    r = http.postJson(url, {
        reqId: time,
        timestamp: time
    });

    var j = JSON.parse(r.body.string());
    if (j.code !== 0) {
        toast('获取登录帐号异常');
        home();
        return false;
    } else {
        var qq = j.result.userName;
        var pwd = j.result.password;

        //qq = '2329264277';
        //pwd = 'www.mm8.com.cn';

        setText(0, qq);
        sleep(2000);

        id('password').findOne().setText(pwd);
        sleep(2000);

        var loginButton = desc('登录').findOne();
        clickView(loginButton);
        sleep(5000);
        log('登录完成');
        //判断是否验证码
        if (currentActivity().indexOf('com.tencent.mobileqq.activity.QQBrowserActivity') !== -1) {
            //网页滑块
            yanzm();
            sleep(2000);
            //判断是否密码错误,部分帐号第一次会密码错误
            if (!textContains('帐号或密码错误').find().empty()) {
                loginCount++;

                toast('重新登录! ' + (loginCount + 1));
                clickView(text('确定').findOne());

                sleep(500);

                loginMain();
            } else {
                toast('登录成功');

                files.write(uidPath, qq);
                return true;
            }
        } else if (!textContains('安全中心').find().empty()) {
            //冻结限制类型
            toast('帐号异常');
            deleteUidFile(qq);
        } else if (currentPackage().indexOf('com.tencent.mobileqq') === -1) {
            //离开手Q
            toast('快捷登录成功');
            files.write(uidPath, qq);
            return true;
        } else if (!textContains('登录验证').find().empty()) {
            //密保验证
            toast('登录失败,密保验证');
            deleteUidFile(qq);
        } else if (!id('et_search_keyword').find().empty()) {
            toast('登录成功');
            files.write(uidPath, qq);
            return true;
        } else if (!textContains('验证码').find().empty()) {
            toast('登录失败:验证码');
            back();
            sleep(100);
            back();
            sleep(100);
            back();
            sleep(100);
            back();
            sleep(100);
            deleteUidFile(qq);
        }
        return false;
    }
}

function clickView(view) {
    if (view !== undefined) {
        click(view.bounds().centerX(), view.bounds().centerY());
    }
}

function yanzm() {
    toast('滑块');
    //显示控制台
    //console.show();
    //console.setPosition(100, 1300);
    sleep(5000);

    //请求权限
    if (!requestScreenCapture()) {
        alert("请求截图权限失败！");
        exit();
    }

    //启动 //设置滑动按钮高度
    start(1046);
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
    auto.waitFor();
    for (var i = 0; i < 0; i++) {
        sleep(1000);
        log(i);
    }
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
        randomSwipe(220, y, x, y)
        //滑动完成
    } else {
        console.log("识别有误，请确认是否在滑块界面");
    }
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
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
 *
 * 传入值：起点终点坐标
 * 效果：模拟真人滑动
 */
function randomSwipe(sx, sy, ex, ey) {
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
    gestures(time.concat(track))
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
