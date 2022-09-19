
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//autojs源码提取,加密打包,代码解密,还原.微信:zxkj6898 或zx033245 或QQ168196007

auto.waitFor();
setScreenMetrics(1080, 1920);
//______________________________UI数据引用__________________________________
var path = "./脚本设置.text"
var file = open(path);
微鲤运行检测 = file.readline();
log(微鲤运行检测 + "//////////////////////////////////////")
微鲤看看_文章篇数 = file.readline();
log(微鲤看看_文章篇数 + "//////////////////////////////////////")
快手极速版运行检测 = file.readline();
log(快手极速版运行检测 + "//////////////////////////////////////")
快手极速版_视频数 = file.readline();
log(快手极速版_视频数 + "//////////////////////////////////////")
刷宝短视频运行检测 = file.readline();
log(刷宝短视频运行检测 + "//////////////////////////////////////")
刷宝_视频数 = file.readline();
log(刷宝短视频运行检测)
file.close();

if (微鲤运行检测 == "true") {
    微鲤看看();
    调试信息("运行微鲤看看");
} else {
    调试信息("不运行微鲤看看");
};

if (快手极速版运行检测 == "true") {
    快手极速版();
    调试信息("运行快手极速版");
} else {
    调试信息("不运行快手极速版")
};

if (刷宝短视频运行检测 == "true") {
    调试信息("运行刷宝短视频");
    刷宝短视频();
} else {
    调试信息("不运行刷宝短视频")
};


//______________________________阅读_脚本__________________________________
// //获取截图权限
// if (!requestScreenCapture(false)) {
//     log("截图权限开启失败")
//     toast("截图权限开启失败")
// } else {
//     log("截图权限开启成功")

//     toast("截图权限开启成功")
// }
//text("立即开始").findOne(4000).click();
//********************************************************脚本启动通用********************************************
function 点亮手机屏幕() {
    device.wakeUp();
};

function 调试信息(提示内容) {
    log(提示内容);
    toast(提示内容);
};

// function 时间() {
//     var myDate = new Date()
//     console.log(myDate.getTime());
//     return myDate.getTime();
// }

function 关闭APP_结束脚本(名称) {
    var 是否有猎豹清理APP = app.getAppName("com.cleanmaster.mguard_cn");
    if (是否有猎豹清理APP != null) {
        for (let a = 1; a < 6; a++) {
            back();
            sleep(20);
            toast("关闭APP");
        }
        toast(名称 + "运行结束");
        console.log(名称 + "运行结束");
        engines.execScriptFile("./猎豹清理.js");
        sleep(220000);
    } else {
        log("无猎豹清理APP");
        toast("无猎豹清理APP");
        back();
        sleep(2000);
        back();
        sleep(50);
        back();
        sleep(50);
        back();
        sleep(50);
        back();
        sleep(50);
        back();
        sleep(50);
        back();
        sleep(3000);
    };
};
//********************************************************刷宝*********************************************

function 刷宝短视频() {
    var 是否有刷宝APP = app.getAppName("com.jm.video");
    if (是否有刷宝APP != null) {
        启动刷宝();
        刷宝_打开视频();
        刷宝视频页_观看();
        关闭APP_结束脚本("刷宝段视频");
    } else {
        调试信息("未检测到刷宝短视频APP");
    };
};

function 启动刷宝() {
    launchApp("刷宝短视频");
    sleep(5000);
};
//********************************************************刷宝_首页*********************************************
function 刷宝_打开视频() {
    click(1000, 500);
    调试信息("刷宝计划滑动" + 刷宝_视频数 + "次");
};

//********************************************************刷宝_视频页*********************************************
function 刷宝视频页_观看() {
    刷宝视频_滑动();
    var 已滑动次数 = 1;
    while (已滑动次数 < 刷宝_视频数) {
        调试信息("第" + 已滑动次数 + "个视频");
        sleep(3000);
        刷宝视频_滑动();
        已滑动次数 = 已滑动次数 + 1;
    };
};

function 刷宝视频_滑动() {
    var 视频冷却时间 = random(10000, 18000);
    var x = random(400, 300);
    var y = random(1600, 1750);
    var x1 = random(400, 300);
    var y1 = random(200, 300);
    var duration = random(300, 500);
    swipe(x, y, x1, y1, duration);
    sleep(视频冷却时间);
    调试信息("视频等待" + 视频冷却时间);
};
//********************************************************刷宝*********************************************
//********************************************************微鲤看看_运行*********************************************

var 微鲤看看_异常计数 = 1;
var 已阅读篇数 = 1;
var 微鲤看看异常重启 = 1;

function 微鲤看看() {
    点亮手机屏幕();
    var 是否有微鲤看看APP = app.getAppName("cn.weli.story");
    if (是否有微鲤看看APP != null) {
        调试信息("微鲤看看APP检测成功");
        微鲤看看_阅读();
    } else {
        调试信息("未安装微鲤看看APP");
    };
};

function 微鲤看看_阅读() {
    微鲤看看_启动();
    //微鲤看看_根据周设置阅读篇数();
    //微鲤看看_首页_升级弹窗();
    微鲤看看_首页_阅读();
    微鲤看看_首页检测();
    if (微鲤看看_首页检测()) {
        微鲤看看_新闻页_阅读();
        微鲤看看_聊一聊_情亲红包();
        关闭APP_结束脚本("微鲤看看");
    };
};

function 微鲤看看_启动() {
    launch("cn.weli.story")
    调试信息("运行微鲤阅读脚本");
};

function 微鲤看看_异常检测() {
    if (微鲤看看异常重启 < 6) {
        if (微鲤看看_异常计数 > 10) {
            微鲤看看_启动();
            调试信息("重新启动微鲤看看")
            微鲤看看_异常计数 = 0;
            微鲤看看异常重启 = 微鲤看看异常重启 + 1;
        };
    } else {
        调试信息("微鲤看看运行异常");
        阅读篇数 = 已阅读篇数;
    };
};

//********************************************************微鲤看看_首页*********************************************
function 微鲤看看_首页_阅读() {
    微鲤看看_首页_红包();
    微鲤看看_左上角_时间金币();
};



function 微鲤看看_首页_升级弹窗() {
    var 微鲤看看_首页_升级弹窗1 = id("image.close").className("android.widget.ImageView").findOne(15000)
    if (微鲤看看_首页_升级弹窗1 != null) {
        微鲤看看_首页_升级弹窗1.click();
        调试信息("点击取消微鲤版本升级");
    } else {
        调试信息("未找到微鲤版本升级按钮")
    };
};


function 微鲤看看_首页检测() {
    for (var c = 0; c < 9; c++) {
        //查找右上角"+"号
        if (id("ll_menu").findOne(10000) != null) {
            调试信息("首页检测成功");
            return true;
        } else {
            微鲤看看_异常计数 = 微鲤看看_异常计数 + 1;
            调试信息("等待微鲤看看首页");
            sleep(2000);
            if (c => 6) {
                back();
                sleep(50);
                back();
                微鲤看看();
                调试信息("重启微鲤看看");
            };
        };
    };
};
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!



function 微鲤看看_首页_红包() {
    for (var i = 1; i < 6; i++) {
        if (id("layout").clickable(true).longClickable(false).findOne(2000) != null) {
            id("layout").clickable(true).longClickable(false).findOne(2000).click();
            sleep(1000);
            if (id("ll_ok").findOne(7000) != null) {
                id("ll_ok").findOne(7000).click();
            };
            if (id("ll_menu").findOne(6000) != null) {
                log("点击关闭领奖页面")
                console.log("关闭领奖页面");
                sleep(1000);
            } else {
                log("等待广告视频播放")
                toast("等待广告视频播放")
                sleep(30000);
                //查找并点击X按钮
                if (className("android.widget.ImageView").findOne(11000) != null) {
                    log("点击关闭视频")
                    toast("点击关闭视频")
                    className("android.widget.ImageView").findOne(8000).click();
                };
                if (id("tt_video_ad_close_layout").findOne(5000) != null) {
                    id("tt_video_ad_close_layout").findOne(5000).click();
                    log("点击右上角X");
                    toast("点击右上角X");
                }
                break;
            };
        } else {
            log("未找到首页红包");
            swipe(300, 1680, 300, 100, 500);
            sleep(1500);
        };
    };
    微鲤看看_首页_刷新();
};

function 微鲤看看_左上角_时间金币() {
    if (id("iv_gold_grey").findOne(10000) != null) {
        log("无左上角时间金币");
        return false;
    } else {
        log("检测左上角金币未领取");
        if (id("rl_head_line").findOne(10000)) {
            id("rl_head_line").findOne(10000).click();
            log("领取左上角时间金币");
            sleep(6000);
            back();
            return true;
        };
    };
}

function 微鲤看看_聊一聊_进入页面() {
    var 聊一聊 = id("rl_bottom_2").findOne(5000)
    if (聊一聊 != null) {
        聊一聊.click();
        sleep(1000);
    };
};
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!


function 微鲤看看_聊一聊_情亲红包() {
    微鲤看看_聊一聊_进入页面()
    var 微鲤看看_聊一聊_红包 = text("红包").findOne(5000);
    if (text("红包") != null) {
        click(微鲤看看_聊一聊_红包.bounds().centerX(), 微鲤看看_聊一聊_红包.bounds().centerY());
        sleep(2000);

        //发送情亲红包

        if (id("iv_group_redPacket").findOnce()) {
            id("iv_group_redPacket").findOnce().click();
            console.log("群情亲红包发送成功");
            sleep(2000)
        } else {
            console.log("群情亲红包已发");
        };

        var 红包 = text("点击领取").findOne(2000);
        if (红包 != null) {
            微鲤情亲红包检测 = text("点击领取").findOne(5000);
            while (微鲤情亲红包检测 != null) {
                var 红包 = text("点击领取").find();
                红包.forEach(红包 => {
                    click(红包.bounds().centerX(), 红包.bounds().centerY());
                    console.log("领取红包");
                    sleep(6000);
                    swipe(300, 230, 300, 1200, 400);
                    sleep(2000);
                    微鲤情亲红包检测 = text("点击领取").findOne(5000);
                });
            };        
            log("没有情亲红包了");
            sleep(2000);
        };
    };
back();
log("返回首页")
sleep(2000);
};

function 微鲤看看_聊一聊_一起攒比邻心() {
    var 微鲤看看_聊一聊_一起攒比邻心红包 = text("来看看这个有意思的功能").findOnce()
    click(微鲤看看_聊一聊_一起攒比邻心红包.bounds().centerX(), 微鲤看看_聊一聊_一起攒比邻心红包.bounds().centerY());
    sleep(5000)
};

//*********************************************************微鲤看看_新闻页*********************************************
function 微鲤看看_新闻页_阅读() {
    微鲤看看_已阅读篇数 = 1;
    while (滑动次数 = 0, 微鲤看看_已阅读篇数 < 微鲤看看_文章篇数) {
        if (微鲤看看_首页检测()) {
            if (微鲤看看_已阅读篇数 % 3 == 0) {
                微鲤看看_左上角_时间金币();
                微鲤看看_首页_红包();
            } else {
                toast("不查找首页红包");
            }
            微鲤看看_新闻页阅读(random(15, 20));
        };
    };
};

function 微鲤看看_新闻页阅读(滑动次数) {
    微鲤看看_进入新闻页();
    sleep(3000);
    已滑动次数 = 0;
    if (微鲤看看_新闻页_检测()) {
        while (已滑动次数 < 滑动次数) {
            微鲤看看_新闻页_滑动(3500);
            已滑动次数 = 已滑动次数 + 1;
            调试信息(微鲤看看_已阅读篇数 + "篇已滑动次数" + 已滑动次数);
            if (已滑动次数 == 3) {
                微鲤看看_新闻页_检测展开全文();
            };
        };
        微鲤看看_已阅读篇数 = 微鲤看看_已阅读篇数 + 1
    };
    back();
    微鲤看看_首页_刷新()
};
function 微鲤看看_首页_刷新() {
    var 首页 = id("rl_bottom_0").findOne(4000)
    if (首页 != null) {
        调试信息("刷新首页");
        首页.click();
        sleep(3000);
    } else {
        调试信息("未找到微鲤刷新首页按钮");
        back();
    }
};

function 微鲤看看_进入新闻页() {
    click(461, 657);
    sleep(2000);
};

function 微鲤看看_新闻页_检测() {
    if (id("btn_more").findOne(3000) != null) {
        调试信息("新闻页检测成功");
        return true;
    } else {
        微鲤看看_异常计数 = 微鲤看看_异常计数 + 1
        调试信息("新闻页检测失败");
        back();
        微鲤看看_异常检测();
    }
};

function 微鲤看看_新闻页_检测展开全文() {
    sleep(2000);
    if (id("ll_height_more").findOnce() != null) {
        id("ll_height_more").findOnce().click();
        调试信息("检测展开全文成功");
        return true
    } else {
        调试信息("检测展开全文失败");
        return false;
    };
};

function 微鲤看看_新闻页_滑动(滑动等待时间) {
    var x = random(200, 300);
    var y = random(700, 800);
    var x1 = random(200, 300);
    var y1 = random(100, 200);
    swipe(x, y, x1, y1, 300);
    if (已滑动次数 < 3) {
        var 滑动等待时间 = 50;
    }
    var a = 滑动等待时间
    sleep(a);
    微鲤看看_新闻页_继续阅读弹窗()
};

//未引用
// function 微鲤看看_新闻页_收下啦弹窗() {
//     //收下啦_弹窗
//     if (id("bt_ok").findOnce()) {
//         id("bt_ok").findOnce().click();
//     };
// };

function 微鲤看看_新闻页_继续阅读弹窗() {
    var 继续阅读 = text("继续阅读").findOne(1000);
    if (继续阅读 != null) {
        调试信息("关闭继续阅读弹窗");
        back();
        // click(继续阅读.bounds().centerX, 继续阅读.bounds().centerY)
    };
};
//*********************************************************通用函数*********************************************
function 查找图片(sim, path) {
    var 手机屏幕 = captureScreen();
    sleep(4000)
    var 要找的图片 = images.read(path)
    sleep(1000)
    查找结果 = findImage(手机屏幕, 要找的图片, {
        region: [0, 0, 1080, 1920],
        threshold: sim
    })
    if (查找结果) {
        x = 查找结果.x + 30;
        y = 查找结果.y + 30;
        调试信息("找到图片X" + x + "y" + y)
    } else {
        调试信息("未找到图片");
    };
};

//*********************************************************快手极速*********************************************
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!


function 快手极速版() {
    var 是否有快手极速APP = app.getAppName("com.kuaishou.nebula");
    if (是否有快手极速APP != null) {
        快手极速版_启动();
        if (快手极速版_首页检测()) {
            快手极速版运行(刷宝_视频数);
        } else {
            快手极速版运行(900);
        }
    } else {
        调试信息("未安装快手极速版");
    };
};

function 快手极速版_启动() {
    launch("com.kuaishou.nebula");
    调试信息("启动快手极速版");
    sleep(3000);
};

//*********************************************************快手极速_首页*********************************************
function 快手极速版_首页检测() {
    快手极速首页检测 = id("left_btn").findOne(15000)
    if (快手极速首页检测 != null) {
        调试信息("快手极速首页检测成功");
        return true;
    } else {
        调试信息("快手极速首页检测失败");
    };
};

//*********************************************************快手极速_视频页*********************************************
function 快手极速版运行(刷宝_视频数) {
    var 已滑动次数 = 1, 视频等待时间
    调试信息("点击视频");
    click(322, 351);
    sleep(2000);
    click(322, 351);
    调试信息("开始循环");
    while (已滑动次数 < 刷宝_视频数) {
        if (id("red_packet").findOne(10000) != null) {
            视频等待时间 = random(20000, 30000);
            sleep(视频等待时间);
            快手极速版_滑动();
            已滑动次数 = 已滑动次数 + 1;
            调试信息(视频等待时间 + "滑动" + 已滑动次数);
        } else {
            快手极速版_滑动();
            toast("跳过图片");
            console.log("跳过图片");
            sleep(5000);
        };
    };
    关闭APP_结束脚本("快手极速版");
};
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

function 快手极速版_滑动() {
    var x = random(600, 200);
    var y = random(1500, 1800);
    var x1 = random(600, 200);
    var y1 = random(200, 300);
    var duration = random(200, 300);
    swipe(x, y, x1, y1, duration);
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
