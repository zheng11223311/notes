/*
 * @Version: 1.0.0
 * @Autor: 飞云
 * @QQ: 283054503
 * @Date: 2019-11-25 13:51:40
 * @LastEditors: Please set LastEditors
 * @LastEditTime: 2020-02-26 10:02:21
 * @param: 
 * @Description: 
 */
"ui";
var myAPP = {}, myTask = {}, myNode = {}, mayaNode = {}, mySetup = {}, myOverall = {};
myAPP.color = "#333333";   //主题色
myAPP.imei = device.getIMEI()

myAPP.packageName = "com.ss.android.ugc.aweme"
var taskThread = 0   //任务线程
//---------------------------------------------------------------------------------------------------------

ui.layout(
    <drawer id="drawer">
        <vertical>
            <appbar background="{{myAPP.color}}">
                <toolbar id="toolbar" title=" " />
                <tabs id="tabs" />
            </appbar>
            <viewpager id="viewpager">
                {/** 第1屏布局*/}
                <frame>
                    <ScrollView>
                        <vertical marginTop="10">
                            <card w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                                <vertical padding="18 8" h="auto">
                                    <linear>
                                        <Switch id="autoService" text="无障碍服务" checked="{{auto.service != null}}" w="auto" textStyle="bold" />
                                    </linear>
                                </vertical>
                                <View bg="#E51400" h="*" w="5" />
                            </card>

                            <card w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                                <vertical padding="18 8" h="auto">
                                    <linear>
                                        <Switch id="editDevice" text="编辑设备信息" w="auto" textStyle="bold" />
                                    </linear>
                                </vertical>
                                <View bg="#5FB878" h="*" w="5" />
                            </card>
                            <card w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                                <vertical padding="18 8" marginBottom="10" h="auto">
                                    <linear>
                                        <text text="用户UUID" textColor="black" w="auto" textStyle="bold" />
                                        <input id="uid" color="#666666" paddingLeft="5" inputType="number" marginLeft="10" w="*" hint="" />
                                    </linear>
                                    <linear>
                                        <text text="设备编号" textColor="black" w="auto" textStyle="bold" />
                                        <input id="device_number" color="#666666" paddingLeft="5" marginLeft="10" w="*" hint="" />
                                    </linear>
                                    <button marginTop="10" id="save" text="保存" h="50" w="*" style="Widget.AppCompat.Button.Colored" ></button>
                                </vertical>
                              <View bg="#1BA1E2" h="*" w="5" /> 
                            </card>
                           <card id="card3" w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                                <vertical padding="18 8" h="auto">
                                    <linear>
                                        <Switch id="detailed" text="详细日志:" checked="false" w="auto" textStyle="bold" />
                                    </linear>
                                </vertical>
                                <View bg="#1e9fff" h="*" w="5" />
                            </card> 
                            <card id="card1" w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                                <vertical padding="18 8" h="auto">
                                    <linear>
                                        <Switch id="openConsole" text="控制台:" checked="false" w="auto" textStyle="bold" />
                                    </linear>
                                </vertical>
                                <View bg="#1e9fff" h="*" w="5" />
                            </card>
                            <card id="card2" w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                                <vertical padding="18 8" h="auto">
                                    <linear>
                                        <Switch id="taskMonitor" text="任务监控:" checked="false" w="auto" textStyle="bold" />
                                    </linear>
                                </vertical>
                                <View bg="#1e9fff" h="*" w="5" />
                            </card>
                        </vertical>

                    </ScrollView>
                </frame>
                {/** 第2屏布局*/}
                <frame>
                    <ScrollView>
                        <vertical marginTop="10">
                            <card w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical" marginBottom="20">
                                <vertical padding="18 8" h="auto">
                                    <text margin="0 5" text="设备型号：{{device.model}}" textColor="black" w="auto" />
                                    <text margin="0 5" text="制造厂商：{{device.brand}}" textColor="black" w="auto" />
                                    <text margin="0 5" text="Android版本号：{{device.release}}" textColor="black" w="auto" />
                                    <text margin="0 5" text="屏幕分辨率：{{ device.width + '×' + device.height }}" textColor="black" w="auto" />

                                    <text margin="0 5" text="剩余电量：{{device.getBattery() + '%'}}" textColor="black" w="auto" />
                                    <text margin="0 5" text="可用内存占比：{{ (device.getAvailMem() / device.getTotalMem() * 100).toFixed(2) + '%' }}" textColor="black" w="auto" />
                                    <text margin="0 5" text="可用内存：{{device.getAvailMem()}}" textColor="black" w="auto" />
                                    <text margin="0 5" text="内存总量：{{device.getTotalMem()}}" textColor="black" w="auto" />
                                    <text margin="0 5" text="主板：{{device.board}}" textColor="black" w="auto" />
                                    <text margin="0 5" text="IMEI：{{myAPP.imei}}" textColor="black" w="auto" />
                                    <text margin="0 5" text="Mac：{{device.getMacAddress()}}" textColor="black" w="auto" />
                                </vertical>
                                {/* <View bg="#DEDFDE" h="*" w="5" /> */}
                            </card>
                        </vertical>
                    </ScrollView>
                </frame>
            </viewpager>
        </vertical>
        <vertical layout_gravity="left" bg="#ffffff" w="280">
            <img w="280" h="200" scaleType="fitXY" src="http://images.shejidaren.com/wp-content/uploads/2014/10/023746fki.jpg" />
            <list id="menu">
                <horizontal bg="?selectableItemBackground" w="*">
                    <img w="50" h="50" padding="16" src="{{this.icon}}" tint="{{ myAPP.color }}" />
                    <text textColor="black" textSize="15sp" text="{{this.title}}" layout_gravity="center" w="auto" />
                    <Switch id="{{this.id}}" checked="false" layout_gravity="center" w="auto" />
                </horizontal>
            </list>
        </vertical>
    </drawer>
);


//---------------------------------------------------------------------------------------------------------

// // 测试用,生产环境删除
// delStorageData(myAPP.imei, "uid");
// delStorageData(myAPP.imei, "number");

getData(true);  // 初始化界面组件数据
if (isNetworking()) {
    log("网络正常")
} else {
    log("网络异常")
    exit();
}

// 请求版本信息,检查版本更新
if (getSetupParam()) {
    if (mySetup.version_latest != app.versionCode) {
        log('发现新版,版本号:' + mySetup.version_latest)
        var dialog = new android.app.AlertDialog.Builder(activity).setTitle(mySetup.upeate_dialog_title).setMessage(mySetup.upeate_dialog_content)
            .setNeutralButton("返回", new android.content.DialogInterface
                .OnClickListener({
                    onClick: (dialog, which) => {
                        //是否强制更新
                        if (mySetup.upeate_is_force == 'true') {
                            exit()
                        } else {
                            // suspendButton();    //打开悬浮窗
                        }
                    }
                })
            ).setNegativeButton("更新", new android.content.DialogInterface
                .OnClickListener({
                    onClick: (dialog, which) => {
                        app.openUrl(mySetup.upeate_download);
                        exit()
                    }
                })
            ).show();
        dialog.setCanceledOnTouchOutside(false); //点击dialog其它地方dismiss无效
        dialog.setCancelable(false); //点击返回键无效
    } else {
        log('被控端是最新版')
        // suspendButton();    //打开悬浮窗
    }
} else {
    uploadLog("未获取到版本配置", "warn", "log", myAPP.uid, myAPP.appName)
    exit();
}



//---------------------------------------------------------------------------------------------------------

//创建选项菜单(右上角)
ui.emitter.on("create_options_menu", menu => {
    menu.add("日志");
    menu.add("下载");
    // menu.add("后台");
});

//监听选项菜单点击
ui.emitter.on("options_item_selected", (e, item) => {
    switch (item.getTitle()) {
        case "日志":
            app.startActivity('console');
            break;
        case "下载":
            app.openUrl("https://www.lanzous.com/b0djla27i");
            break;
        // case "后台":
        //     app.openUrl("http://kedou.feiyunjs.com");
        //     break;
    }
    e.consumed = true;
});
activity.setSupportActionBar(ui.toolbar);

ui.statusBarColor(myAPP.color); //设置任务栏背景色
ui.viewpager.setTitles(["设置", "设备信息"]); //设置滑动页面的标题
ui.tabs.setupWithViewPager(ui.viewpager); //让滑动页面和标签栏联动


//让工具栏左上角可以打开侧拉菜单
ui.toolbar.setupWithDrawer(ui.drawer);
ui.menu.setDataSource([
    {
        title: "Debug模式                            ",
        icon: "@drawable/ic_android_black_48dp",
        id: "detailed"
    },
    {
        title: "Root模式                               ",
        icon: "@drawable/ic_settings_black_48dp",
        id: "isRootEd"
    },
]);
// ui.menu.on("item_click", item => {
//     switch (item.title) {
//         case "Debug模式                            ":
//             log(ui.detailed.isChecked())
//             // ui.finish();
//             break;
//     }
// })


//---------------------------------------------------------------------------------------------------------
// 启动任务监控
var isRequest = false;
ui.openConsole.on("check", function (checked) {
    ui.card1.setVisibility(View.GONE); //不可见，且不占据空间
    console.show();    //只能打开一次.关闭后无法再次打开
});

ui.taskMonitor.on("check", function (checked) {
    if (!myAPP.uid) {
        log("设备信息未正确录入")
        ui.taskMonitor.setChecked(false);
    } else {
        if (checked) {
            uploadLog("开启任务监控", "info", "log", myAPP.uid)
            ui.card2.setVisibility(View.GONE); //不可见，且不占据空间
            taskThread = threads.start(function () {
                if (!isRequest) {
                    isRequest = requestScreenshot();   //请求截图权限,自动处理弹窗
                }
                if (getOverallParam()) {
                    checkPoint();   //检查联众识别点数
                    suspendButton()
                    core();
                };   // 请求全局配置
            });

        } else {
            uploadLog("停止任务监控", "info", "log", myAPP.uid)
            taskThread.interrupt();   //中断线程运行
        };
    };
});


let isStop = false;    //完成任务后是否停止
let isFail = false   //是否失败
let isLogin = false;   ///是否登录
let isExecution = false;    //是否结束执行互关私信
let isSuspensionShow = false;   //是否显示悬浮按钮

let startNum1 = 0;
let isDigg = false;    //是否点赞
let likeNum = 0;   //点赞计数
let isDiggTask = false;

let isClickCommentIcon = false;   //是否点击首页评论按钮
let isComment = false;    //是否浏览评论
let isCommentTask = false;
let isCommentDigg = false;   //是否评论区随机点赞
let isCommentDiggTask = false;
let isCommentMessage = false;    //是否评论区留言
let isCommentMessageTask = false;
let commentNum = 0;   //评论计数

let isForward = false;    //是否转发
let forwardNum = 0;   //转发计数
let isForwardTask = false;

let isFollowing = false;    //是否关注
let followingNum = 0;   //关注计数
let isFollowingTask = false;

let isLiveWatch = false;
let isLiveWatchTask = false;

let isLiveFollowing = false;    //是否直播间关注
let isLiveFollowingTask = false;
let liveFollowingNum = 0;   //直播间关注计数

let isLiveComment = false;    //是否直播间发言
let isLiveCommentTask = false;
let liveCommentNum = 0;   //直播间发言计数


let isUidWatchWoks = false;   //是否浏览uid作品
let isUidWatchWoksTask = false;
let isWaitNextTask = false;   //是否等待下个任务完成
let isUidWorksDigg = false;  //是否对uid作品点赞
let isUidWorksDiggTask = false;
let isUidWorksComment = false;   //是否对uid作品评论
let isUidWorksCommentTask = false;
let isUidCommentDigg = false;   //是否评论区随机点赞
let isUidFollowing = false;   //是否关注uid作者
let isUidFollowingTask = false;
let isUidSendLetter = false;   //是否发送私信
let isUidSendLetterTask = false;
let mindRotationNum = 0;   //防封养号轮次
let rotationNum = 0;   //防封养号计次
let numberArr = [];   //存储抖音号的数组

//任务计数
let matTaskNum = getStorageData(myAPP.imei, "matTaskNum");
let uidTaskNum = getStorageData(myAPP.imei, "uidTaskNum");
let mayaTaskNum = getStorageData(myAPP.imei, "mayaTaskNum");
let letterTaskNum = getStorageData(myAPP.imei, "letterTaskNum");
let removeFollowingTaskNum = getStorageData(myAPP.imei, "removeFollowingTaskNum");
let removeFollowerTaskNum = getStorageData(myAPP.imei, "removeFollowerTaskNum");
let today = getStorageData(myAPP.imei, "today");

if (matTaskNum != undefined && today != undefined && today == getToday()) {
    matTaskNum = Number(matTaskNum);
} else {
    matTaskNum = 0
    setStorageData(myAPP.imei, "matTaskNum", matTaskNum)
    setStorageData(myAPP.imei, "today", getToday())
};
if (uidTaskNum != undefined && today != undefined && today == getToday()) {
    uidTaskNum = Number(uidTaskNum);
} else {
    uidTaskNum = 0
    setStorageData(myAPP.imei, "uidTaskNum", uidTaskNum)
    setStorageData(myAPP.imei, "today", getToday())
};
if (mayaTaskNum != undefined && today != undefined && today == getToday()) {
    mayaTaskNum = Number(mayaTaskNum);
} else {
    mayaTaskNum = 0
    setStorageData(myAPP.imei, "mayaTaskNum", mayaTaskNum)
    setStorageData(myAPP.imei, "today", getToday())
};
if (letterTaskNum != undefined && today != undefined && today == getToday()) {
    letterTaskNum = Number(letterTaskNum);
} else {
    letterTaskNum = 0
    setStorageData(myAPP.imei, "letterTaskNum", letterTaskNum)
    setStorageData(myAPP.imei, "today", getToday())
};
if (removeFollowingTaskNum != undefined && today != undefined && today == getToday()) {
    removeFollowingTaskNum = Number(removeFollowingTaskNum);
} else {
    removeFollowingTaskNum = 0
    setStorageData(myAPP.imei, "removeFollowingTaskNum", removeFollowingTaskNum)
    setStorageData(myAPP.imei, "today", getToday())
};
if (removeFollowerTaskNum != undefined && today != undefined && today == getToday()) {
    removeFollowerTaskNum = Number(removeFollowerTaskNum);
} else {
    removeFollowerTaskNum = 0
    setStorageData(myAPP.imei, "removeFollowingTaskNum", removeFollowerTaskNum)
    setStorageData(myAPP.imei, "today", getToday())
};
log("养号:" + matTaskNum + ",UID操作:" + uidTaskNum + ",夕闪私信:" + mayaTaskNum + ",互关私信:" + letterTaskNum + ",单向取关:" + removeFollowingTaskNum + ",取消互关:" + removeFollowerTaskNum + ",记录日期:" + today)

let startNum2 = 0;
let startNum3 = 0;
let cannotNum = 0;  //多闪没发送计数


let isUserDataPage = false;   //是否在用户个人资料页
let isMaintenance = false;  //是否执行养号防封操作
let isEditingMaterials = false;    //是否进入编辑资料
let isGoOn = false;
var date1, date2, date3;
let matDuration = 60;   //uid防封养号时长
let delay = random(1, 3) * 1000;    //全局延时
if (delay < 500) {
    delay = 1000   //如果没取到全局配置,设置一个默认值
}
let commentContent = "";   //评论内容
let rndNode = "";   //随机表情节点
let isDetailedLog = false;    //是否开启详细日志
let isRootEd = false;   //系统是否root

//--------------------------------------------------------------------------------------------------------------------------
// 联众识别-动态数据
let requestTimes = 5      //最大请求次数
let captchaType = '1318'   //字母数字
let captchaMinLength = 1    //验证码位数
let captchaMaxLength = 1    //验证码位数
// 联众识别-固定数据
let softwareId, softwareSecret, username, password;

//--------------------------------------------------------------------------------------------------------------------------

ui.toolbar.setTitle(getUserAgentInfo())
// threads.start(function () {
//     var uid = ui.uid.text();
//     var device_number = ui.device_number.text();
//     //定时更新设备信息(刷新在线状态)
//     var intervalId = setInterval(function () {
//         if (uid && uid != undefined && device_number && device_number != undefined) {
//             setDeviceData(uid, device_number);
//         } else {
//             log('新设备,请录入信息')
//         }
//     }, 120000);
// });


function core() {
    // 请求任务参数
    if (!getTaskParam()) {
        return;
    } else {
        myTask.mat_total_switch && log("养号：" + myTask.mat_total_switch)
        myTask.uid_total_switch && log("UID操作：" + myTask.uid_total_switch)
        myTask.maya_total_switch && log("夕闪私信：" + myTask.maya_total_switch)
        myTask.remove_following_switch && log("单向取关：" + myTask.remove_following_switch)
        myTask.remove_follower_switch && log("取消互关：" + myTask.remove_follower_switch)
        myTask.letter_total_switch && log("互关私信：" + myTask.letter_total_switch)
    };

    isDetailedLog = ui.detailed.isChecked();
    isRootEd = ui.isRootEd.isChecked();
    let version = getPackageVersion(myAPP.packageName);
    let mayaVersion = getPackageVersion("my.maya.android");
    log("某音版本:" + version + "，夕闪版本:" + mayaVersion)
    if (!checkVersion(version)) {
        log("脚本不支持当前某音版本")
        return;
    };
    if (mayaVersion != "") {
        if (!checkMayaVersion(mayaVersion) && myTask.maya_total_switch == "on") {
            log("脚本不支持当前夕闪版本")
            return;
        };
    } else {
        if (myTask.maya_total_switch == "on") {
            log("未安装夕闪,请安装")
            return;
        } else {
            log("未安装夕闪")
        }
    }

    // 查询节点信息
    if (!getNodeParam(version)) {
        return;
    };
    if (!getMayaNodeParam(mayaVersion)) {
        return;
    };

    if (count(myTask) > 0) {
        log("已获取到任务")
    };

    while (true) {
        myAPP.activity = currentActivity()
        isDetailedLog && uploadLog("页面地址：" + myAPP.activity, "info", "log", myAPP.uid, myAPP.appName)

        // matTaskNum = Number(myTask.mat_watch_day_num)   //养号任务计数
        // uidTaskNum = Number(myTask.uid_open_day_num)   //uid任务计数
        // letterTaskNum = Number(myTask.letter_send_day_num)   //互关私信任务计数

        //到达0点,重置任务计数
        if (today != getToday()) {
            matTaskNum = 0
            uidTaskNum = 0
            letterTaskNum = 0
            today = getToday()
            setStorageData(myAPP.imei, "matTaskNum", matTaskNum)
            setStorageData(myAPP.imei, "uidTaskNum", uidTaskNum)
            setStorageData(myAPP.imei, "mayaTaskNum", mayaTaskNum)
            setStorageData(myAPP.imei, "letterTaskNum", letterTaskNum)
            setStorageData(myAPP.imei, "removeFollowingTaskNum", removeFollowingTaskNum)
            setStorageData(myAPP.imei, "removeFollowerTaskNum", removeFollowerTaskNum)
            setStorageData(myAPP.imei, "today", getToday())
        };


        switch (myAPP.activity) {
            case "com.android.maya.activity.MainActivity":
                isDetailedLog && uploadLog("页面地址：夕闪首页", "info", "log", myAPP.uid, myAPP.appName)
                let news = text("消息").visibleToUser(true).find();
                if (clickNode("text", "立即升级", delay)) {

                } else if (clickNode("text", "好的", delay * 2)) {
                    //快来查收你的2019最佳照片
                } else if (findNode("text", "申请加好友")) {
                    back();
                } else if (news.length < 2) {
                    isDetailedLog && log("点击消息TAB，进入消息列表")
                    clickNodeR("text", "消息", delay, isRootEd)
                } else {
                    isDetailedLog && log("当前在消息列表")
                    while (true) {
                        let object = id(mayaNode.letter_id_message_red).find();
                        if (!object.empty()) {
                            //遍历红点
                            object.forEach(function (currentValue, index) {
                                if (mayaTaskNum >= Number(myTask.maya_total_num)) {
                                    uploadLog("夕闪私信任务完成", "info", "log", myAPP.uid, myAPP.appName);
                                    isStop = true;
                                } else if (cannotNum >= Number(myTask.maya_cannot_deliver)) {
                                    uploadLog("累计打开达到上限,停止任务", "info", "log", myAPP.uid, myAPP.appName);
                                    isStop = true;
                                    // } else if (isTempBox(currentValue)) {
                                    //     isDetailedLog && log("跳过消息盒子")
                                } else if (clickObjectR(currentValue, delay, isRootEd)) {
                                    if (currentActivity() == "com.android.maya.business.im.chat.ChatActivity") {
                                        if (findNode("text", "多闪小助手") || findNode("text", "临时会话盒子")) {
                                            log("跳过此人")
                                            cannotNum++;
                                        } else {
                                            //处理自行结束的问题
                                            if (findNode("text", "发送")) {
                                                setText("")  //清空输入框
                                                back();   //收缩输入法
                                                sleep(delay)
                                            };

                                            //发送私信
                                            if (myTask.maya_skip == "on") {
                                                if (!多闪_是否发过消息()) {
                                                    夕闪私信();
                                                } else {
                                                    cannotNum++;
                                                }
                                            } else {
                                                夕闪私信();
                                            };
                                        };
                                    };
                                    back()
                                    sleep(delay)
                                }
                            });

                            scrollForward();   //向下翻页
                            // if (findNode("text", "立刻邀请") || findNode("text", "添加")) {
                            //     log("没有更多了")

                            //     let news = text("消息").visibleToUser(true).findOnce(1);
                            //     if (news != null) {
                            //         //模拟双击,双击左下角消息tab,跳转到未读消息位置
                            //         let x = news.bounds().centerX()
                            //         let y = news.bounds().centerY()

                            //         //模拟双击
                            //         log("----->双击坐标:", x, y)
                            //         click(parseInt(x), parseInt(y))
                            //         sleep(50)
                            //         click(parseInt(x), parseInt(y))
                            //     } else {
                            //         isStop = true;
                            //         break;
                            //     };
                            // }

                        } else {
                            isDetailedLog && log("没找到未读消息╭(╯^╰)╮");
                            scrollForward();   //向下翻页
                            if (findNode("text", "立刻邀请") || findNode("text", "添加")) {
                                log("没有更多了")

                                let news = text("消息").visibleToUser(true).findOnce(1);
                                if (news != null) {
                                    //模拟双击,双击左下角消息tab,跳转到未读消息位置
                                    let x = news.bounds().centerX()
                                    let y = news.bounds().centerY()

                                    //模拟双击
                                    isDetailedLog && log("----->双击坐标:", x, y)
                                    if (isRootEd) {
                                        Tap(parseInt(x), parseInt(y))
                                        sleep(50)
                                        Tap(parseInt(x), parseInt(y))
                                    } else {
                                        click(parseInt(x), parseInt(y))
                                        sleep(50)
                                        click(parseInt(x), parseInt(y))
                                    };
                                    cannotNum++;
                                } else {
                                    isStop = true;
                                    break;
                                };
                            };
                        };
                        sleep(500)
                    }
                };
                break;
            // case "com.android.maya.business.im.chat.ChatActivity":
            //     // uploadLog("页面：多闪会话", "info", "log", myAPP.uid, myAPP.appName)
            //     break;
            case "my.maya.android.tiktokapi.BaseLoginActivity":
                // uploadLog("页面：多闪登录", "info", "log", myAPP.uid, myAPP.appName)
                clickNodeR("text", "抖音登录", delay, isRootEd);
                break;
            case "com.ss.android.ugc.aweme.openauthorize.AwemeAuthorizedActivity":
                // uploadLog("页面：抖音授权登录", "info", "log", myAPP.uid, myAPP.appName)
                clickNode("text", "授权并登录", delay);
                break;
            case "com.ss.android.ugc.aweme.following.ui.FollowRelationTabActivity":
                if (!isLogin) {
                    back();
                }
                if (myTask.letter_total_switch == 'on') {
                    if (myAPP.nickname != "" && findNode('text', myAPP.nickname)) {
                        // uploadLog("页面地址：粉丝列表", "info", "log", myAPP.uid, myAPP.appName)
                        let tabTitle = textStartsWith('粉丝 ').findOne(1000)
                        if (tabTitle != null) {
                            clickObjectR(tabTitle, delay, isRootEd);   //点击tab
                        } else {
                            log("没找到TAB╭(╯^╰)╮");
                        };

                        let object = text("互相关注").visibleToUser(true).find();    //遍历互相关注按钮
                        if (!object.empty() && findNode('text', myAPP.nickname)) {
                            object.forEach(function (currentValue, index) {
                                // log(currentValue.className(), currentValue.id(), currentValue.text(), currentValue.depth(), currentValue.bounds(), index);
                                // if (!textStartsWith('粉丝 ').exists()) {
                                //     // back();
                                //     return false;   //防止不在粉丝列表出现报错
                                // };

                                if (findNode('text', myAPP.nickname)) {
                                    var tv = currentValue.parent().parent().parent();
                                    if (tv != null) {
                                        tv.click()   //点击列表项,进入用户资料页
                                        sleep(random(Number(myTask.letter_following_sleep_min) * 1000, Number(myTask.letter_following_sleep_max) * 1000));   //主页停留时长

                                        let nickname = getNodeText('id', myNode.personal_id_text_nickname);
                                        let number = getNodeText('id', myNode.personal_id_text_number);
                                        log("->", nickname)

                                        if (myTask.letter_shake_once == 'on') {
                                            clickNodeR("text", "抖一下", delay, isRootEd);
                                        };

                                        let gender, is_carry = false, is_continue = false;
                                        let year = textEndsWith("岁").findOne(1000);
                                        // if (findNode("text", "女")) {
                                        //     gender = '女'
                                        // } else if (findNode("text", "男")) {
                                        //     gender = '男'
                                        // } else if (year != null) {
                                        //     // log(1)
                                        //     let str = year.text().replace("岁", "");
                                        //     // log(2)
                                        //     if (Number(str) > 0) {
                                        //         // log(3)
                                        //         gender = APP_取性别()
                                        //         // log(4)
                                        //     }
                                        // } else {
                                        //     gender = '无'
                                        // };

                                        // if (myTask.letter_sex_female == 'on') {
                                        //     is_carry = true;
                                        // }
                                        // if (myTask.letter_sex_male == 'on') {
                                        //     is_carry = true;
                                        // }
                                        // if (myTask.letter_sex_none == 'on') {
                                        //     is_carry = true;
                                        // }

                                        is_carry = true;
                                        //翻页衔接处的抖音号判定,避免重复进入会话页
                                        if (number != "") {
                                            if (isInArray(numberArr, number)) {
                                                is_carry = false;
                                            } else {
                                                numberArr.push(number);   //将抖音号存入数组
                                            }
                                        };


                                        // 执行发送私信/关注等操作
                                        if (letterTaskNum >= Number(myTask.letter_send_total_num)) {
                                            uploadLog("互关私信任务完成", "info", "log", myAPP.uid, myAPP.appName);
                                            isStop = true;
                                            back();
                                        } else if (is_carry && clickNodeR("text", "私信", delay, isRootEd)) {
                                            is_continue = true;
                                        } else if (is_carry && clickNode("desc", "更多", delay)) {
                                            if (findNode("text", "更多") && clickNode("desc", "私信", delay)) {
                                                is_continue = true;
                                            }
                                        } else {
                                            back();
                                        }
                                        // log(gender, is_carry, is_continue)

                                        if (is_continue && textStartsWith("发送消息").exists()) {
                                            isUidSendLetter = false;

                                            发送私信();
                                            if (findNode("text", "更多") && findNode("text", "举报")) {
                                                back();   //当前在更多页
                                                sleep(delay);
                                            };
                                            if (textStartsWith("作品").exists() && textStartsWith("动态").exists() && textStartsWith("粉丝").exists()) {
                                                back();   //当前在用户资料页
                                                sleep(delay);
                                            };
                                        };
                                    } else {
                                        log("点击表项失败")
                                    };
                                } else {
                                    log("可能不在粉丝列表")
                                }

                                sleep(delay);
                            });

                            scrollForward();   //向下翻页
                            if (findNode("text", "没有更多了")) {
                                log("没有更多了")
                                isExecution = true;
                                isStop = true;
                                back();
                            }
                        } else {
                            log("没找到互相关注按钮╭(╯^╰)╮");
                        };
                    } else {
                        back();
                    }
                } else if (myTask.remove_following_switch == 'on') {
                    单向取关();
                } else if (myTask.remove_follower_switch == 'on') {
                    取消互关();
                };
                break;
            case "com.ss.android.ugc.aweme.main.MainActivity":
                if (isLogin) {
                    if (isGoOn) {
                        UID操作();
                    } else if (myTask.mat_total_switch == 'on' || isMaintenance) {
                        if (Number(myTask.mat_watch_total_num) < 1) {
                            toastLog("未配置养号策略")
                            isGoOn = true;
                        } else if (isMaintenance) {
                            if (myTask.uid_mind_mat_type == 'mat_duration') {
                                date2 = new Date();    //结束时间
                                date3 = date2.getTime() - date1.getTime()  //时间差的毫秒数
                                if (date3 / 1000 < matDuration) {
                                    养号操作();
                                } else {
                                    log('养号时间已到,继续UID操作')
                                    if (!findNode("text", "编辑资料") && !findNode("text", "编辑企业资料") && !findNode("id", myNode.me_id_edit_data)) {
                                        back();
                                        sleep(delay);
                                    }
                                    UID操作();
                                }
                            } else if (myTask.uid_mind_mat_type == 'mat_rotation') {
                                if (rotationNum < mindRotationNum) {
                                    养号操作();
                                } else {
                                    log('防封养号结束,继续UID操作')
                                    UID操作();
                                }
                            }
                        } else {
                            养号操作();
                        }
                    } else if (myTask.uid_total_switch == 'on') {
                        if (myTask.uid_mind_switch == 'on' && uidTaskNum > 0 && uidTaskNum % Number(myTask.uid_mind_every_num) == 0 && uidTaskNum < Number(myTask.uid_open_total_num) && !isMaintenance && !isGoOn) {
                            //每操作多少个UID,进入养号操作
                            if (myTask.uid_mind_mat_type == 'mat_duration') {
                                matDuration = random(Number(myTask.uid_mind_mat_duration_min), Number(myTask.uid_mind_mat_duration_max))
                                if (matDuration > 0) {
                                    toastLog("防封养号开始,需执行时长:" + matDuration)
                                    isMaintenance = true;
                                    date1 = new Date();  //开始时间
                                } else {
                                    log('error:未取到养号时间间隔')
                                    isGoOn = true;
                                }
                            } else if (myTask.uid_mind_mat_type == 'mat_rotation') {
                                mindRotationNum = random(Number(myTask.uid_mind_mat_rotation_min), Number(myTask.uid_mind_mat_rotation_max))
                                if (mindRotationNum > 0) {
                                    toastLog("防封养号开始,需执行轮次:" + mindRotationNum)
                                    rotationNum = 0;   //防封养号计次
                                    isMaintenance = true;
                                } else {
                                    log('error:未取到养号轮次')
                                    isGoOn = true;
                                }
                            }
                        } else {
                            UID操作();
                        }
                    } else if (myTask.letter_total_switch == 'on' && !isExecution) {
                        互关私信();
                    } else if (myTask.remove_following_switch == 'on' && !isExecution) {
                        if (findNode("text", "编辑资料") || findNode("text", "编辑企业资料") || findNode("id", myNode.me_id_edit_data)) {
                            clickNodeR("text", "关注", delay, isRootEd)
                        } else {
                            back();
                        }

                    } else if (myTask.remove_follower_switch == 'on' && !isExecution) {
                        if (findNode("text", "编辑资料") || findNode("text", "编辑企业资料") || findNode("id", myNode.me_id_edit_data)) {
                            clickNodeR("text", "粉丝", delay, isRootEd)
                        } else {
                            back();
                        }
                    };
                } else if (findNode("text", "推荐") && !findNode("desc", "表情")) {
                    isDetailedLog && log("进入个人中心A")
                    clickNodeR("text", "我", delay, isRootEd)   //进入个人资料页,检查是否登录
                } else if (findNode("text", "消息") && findNode("text", "发起聊天")) {
                    isDetailedLog && log("进入个人中心B")
                    clickNodeR("text", "我", delay, isRootEd)   //当前在消息页面,进入个人资料页,检查是否登录
                } else if (findNode("text", "编辑资料") || findNode("text", "编辑企业资料") || findNode("id", myNode.me_id_edit_data)) {
                    isDetailedLog && log("> 更新账号信息统计")
                    updateAccountCensus();  // 更新账号信息统计
                    isLogin = true;
                    // isLogin = clickNodeR("text", "首页", delay,isRootEd)
                } else if (findNode("text", "首页") && findNode("text", "我")) {
                    // log(10)
                    if (findNode("text", "留下你的精彩评论吧")) {
                        back();  //评论卡片
                    } else {
                        isDetailedLog && log("进入个人中心C")
                        clickNodeR("text", "我", delay, isRootEd)   //当前在首页,进入个人资料页,检查是否登录
                    }
                } else if (findNode("text", "发现通讯录好友") || findNode("text", "去商店评分")) {
                    // log(4)
                    clickNode("text", "取消")     // 查询弹窗
                } else if (clickNodeR("text", "我知道了", delay, isRootEd)) {
                    isDetailedLog && log("> 我知道了")
                } else if (clickNodeR("text", "以后再说", delay, isRootEd)) {
                    //检测到新版本
                    isDetailedLog && log("> 以后再说")
                } else if (clickNode("text", "继续播放")) {
                    isDetailedLog && log("> 继续播放")
                } else if (findNode("text", '允许访问你的"位置"？')) {
                    isDetailedLog && log("> 暂不允许访问位置")
                    clickNode("text", "暂不")   // 查询弹窗
                } else {
                    back();
                };
                break;
            case "com.ss.android.ugc.aweme.im.sdk.chat.ChatRoomActivity":
                uploadLog("页面：私信页面", "info", "log", myAPP.uid, myAPP.appName)
                发送私信();
                break;
            case "com.ss.android.ugc.aweme.profile.ui.ProfileMoreActivity":
                uploadLog("页面：更多", "info", "log", myAPP.uid, myAPP.appName)
                if (textStartsWith("安装").exists()) {
                    clickNode("text", "取消");   //提示安装多闪
                } else if (!isLogin) {
                    back()
                } else if (myTask.uid_letter_switch == 'on' && !isUidSendLetter) {
                    clickNode("desc", "私信", delay);
                } else {
                    back();
                }
                break;
            case "com.ss.android.ugc.aweme.profile.ui.UserProfileActivity":
            case "com.ss.android.ugc.aweme.detail.ui.DetailActivity":
                if (!isLogin) {
                    back()
                } else if (myTask.uid_total_switch == 'on') {
                    if (isUidWorksDigg && isUidWorksComment && isUidSendLetter) {
                        back()
                    } else if (textStartsWith('抖音号').exists()) {
                        // uploadLog("页面：视频作者资料页", "info", "log", myAPP.uid, myAPP.appName)
                        if (findNode("text", "这是私密帐号")) {
                            log("这是私密帐号,返回")
                            back();
                        } else if (findNode("text", "已重置")) {
                            //无作品默认会打开喜欢tab,所以这里要做个判断
                            log("用户已重置,返回");
                            back();
                        } else if (myTask.uid_watch_switch == 'on' && !isUidWatchWoks) {
                            uploadLog("检查UID作品浏览,概率 " + myTask.uid_watch_chance, "info", "log", myAPP.uid, myAPP.appName)
                            if (parseInt(Math.random() * 100) <= Number(myTask.uid_watch_chance)) {
                                if (findNode("text", "作品 0")) {
                                    //无作品默认会打开喜欢tab,所以这里要做个判断
                                    log("该用户还没有发布过作品");
                                } else {
                                    let works = descMatches(/视频\d+/).find();
                                    if (!works.empty()) {
                                        let randIndex = random(0, works.length - 1)   //随机取一个作品
                                        if (works[randIndex].click()) {
                                            log("随机打开该UID用户的第 " + randIndex + " 个作品")
                                            sleep(random(Number(myTask.uid_watch_duration_min) * 1000, Number(myTask.uid_watch_duration_max) * 1000));   //浏览指定UID作品时长

                                            if (myTask.uid_digg_switch != 'on' && myTask.uid_comment_switch != 'on') {
                                                back();  //不做作品的点赞和评论任务,返回到个人资料页
                                                sleep(random(1000, 3000))
                                            } else {
                                                isWaitNextTask = true;
                                            }
                                        };
                                    } else {
                                        log("没找到作品╭(╯^╰)╮");
                                    };
                                }
                            } else {
                                // log("概率不匹配,跳过UID作品浏览")
                            };
                            isUidWatchWoks = true;
                        }

                        if (!isWaitNextTask) {
                            if (myTask.uid_following_switch == 'on' && !isUidFollowing) {
                                uploadLog("检查UID关注,概率 " + myTask.uid_following_chance, "info", "log", myAPP.uid, myAPP.appName)
                                if (parseInt(Math.random() * 100) <= Number(myTask.uid_following_chance)) {
                                    if (clickNode("id", myNode.personal_id_btn_following, delay)) {
                                        uploadLog("----->UID已关注作者A", "info", "log", myAPP.uid, myAPP.appName)
                                    } else if (clickNode("id", myNode.personal_id_btn_following_sm, delay)) {
                                        uploadLog("----->UID已关注作者B", "info", "log", myAPP.uid, myAPP.appName)
                                    } else if (findNode("text", "取消关注")) {
                                        isDetailedLog && log("UID已关注，无需执行")
                                    } else {
                                        isDetailedLog && log("未找到UID关注按钮节点")
                                    };
                                } else {
                                    // log("概率不匹配,跳过UID关注")
                                };
                                isUidFollowing = true;
                            }

                            if (myTask.uid_letter_switch == 'on' && !isUidSendLetter) {
                                uploadLog("检查UID私信,概率 100%", "info", "log", myAPP.uid, myAPP.appName)
                                clickNode("desc", "更多", delay);
                            } else {
                                back();
                            }
                        }
                    } else {
                        // uploadLog("页面：视频作者的作品", "info", "log", myAPP.uid, myAPP.appName)
                        if (myTask.uid_digg_switch == 'on' && !isUidWorksDigg) {
                            uploadLog("检查点赞,概率 " + myTask.uid_digg_chance, "info", "log", myAPP.uid, myAPP.appName)
                            // 按指定概率执行
                            if (parseInt(Math.random() * 100) <= Number(myTask.uid_digg_chance)) {
                                // 这个页面没有点赞节点,采用坐标方式执行
                                let x = device.width / 2
                                let y = device.height / 2
                                if (x > 10 && y > 10) {

                                } else {
                                    // 有的机型取出来的设备宽度和高度都是0
                                    x = 500
                                    y = 500
                                }
                                //模拟双击
                                log("----->点赞坐标:", x, y)
                                if (isRootEd) {
                                    Tap(parseInt(x), parseInt(y))
                                    sleep(50)
                                    Tap(parseInt(x), parseInt(y))
                                } else {
                                    click(parseInt(x), parseInt(y))
                                    sleep(50)
                                    click(parseInt(x), parseInt(y))
                                };


                                sleep(delay);
                            } else {
                                // log("概率不匹配,跳过作品点赞")
                            };
                            isUidWorksDigg = true;
                            isWaitNextTask = false;
                        };

                        if (myTask.uid_comment_switch == 'on' && !isUidWorksComment) {
                            if (findNode("text", "评论并转发")) {
                                log("选择内容并发送")
                                // 评论内容有3种,一种是随机表情,一种是复制别人的评论,一种是从库里取
                                // let face = new Array(
                                //     "[微笑]按钮", "[呲牙]按钮", "[捂脸]按钮", "[害羞]按钮", "[来看我]按钮", "[可爱]按钮"
                                // );

                                if (commentContent) {
                                    log('评论内容:' + commentContent)
                                    isSend = setText(commentContent);
                                    sleep(random(500, 1000))
                                } else {
                                    log("未获取到用户作品评论话术,使用随机表情")
                                    let face = new Array(
                                        "[赞]", "[玫瑰]", "[捂脸]", "[666]", "[鼓掌]", "[呲牙]", "[微笑]", "[耶]"
                                    );
                                    rndNode = face[random(0, face.length - 1)];    //随机取一个表情
                                    log('评论内容:' + rndNode)
                                    isSend = clickNode("desc", rndNode, delay)
                                };

                                if (isSend) {
                                    if (clickNode('id', myNode.main_id_forward_send, delay)) {
                                        uploadLog("----->已评论3,内容:" + rndNode, "info", "log", myAPP.uid, myAPP.appName)
                                    } else {
                                        log("未找到评论发送按钮节点:" + myNode.main_id_forward_send)
                                    }
                                }

                                isUidWorksComment = back();
                                isWaitNextTask = false;
                            } else {
                                uploadLog("检查评论,概率 " + myTask.uid_comment_chance, "info", "log", myAPP.uid, myAPP.appName)
                                if (parseInt(Math.random() * 100) <= Number(myTask.uid_comment_chance)) {
                                    // 逻辑说明:先取话术库里的内容.如果娶不到,就取别人的第一条内容.如果还娶不到,就取随机表情
                                    commentContent = getTalkingsFromRedis("用户作品评论", myOverall.talking_get_type);
                                    if (!commentContent) {
                                        // 获取卡片上的第一条评论内容(节点若抓取不到,可以枚举TextView)
                                        let content = id(myNode.main_id_comment_content).findOnce(0);
                                        if (content != null) {
                                            let strs = new Array();
                                            strs = content.text().split(" "); //字符分割,排除掉时间
                                            commentContent = strs[0]
                                        }
                                    }

                                    if (clickNodeR('id', myNode.works_id_comment_edit, delay, isRootEd)) {
                                        uploadLog("点击作品评论输入框", "info", "log", myAPP.uid, myAPP.appName)
                                    } else {
                                        log("未找到作品评论输入框节点:" + myNode.works_id_comment_edit)
                                        isUidWorksComment = true;
                                    }
                                } else {
                                    // log("概率不匹配,跳过作品评论")
                                    isUidWorksComment = back();
                                    isWaitNextTask = false;
                                };
                            };
                        } else {
                            back();
                        };
                    };
                } else if (!clickNode("desc", "返回", delay)) {
                    back();
                };
                break;
            case "com.ss.android.ugc.aweme.live.LivePlayActivity":
                // uploadLog("页面：直播间页面", "info", "log", myAPP.uid, myAPP.appName)
                if (findNode("text", "立即赠送")) {
                    back();
                }
                if (myTask.mat_live_following_switch == 'on' && !isLiveFollowingTask) {
                    uploadLog("检查直播间关注主播,概率 " + myTask.mat_live_following_chance, "info", "log", myAPP.uid, myAPP.appName)
                    if (parseInt(Math.random() * 100) <= Number(myTask.mat_live_following_chance)) {
                        if (clickNode('id', myNode.live_id_following_icon, delay * 2)) {
                            uploadLog("----->已关注主播", "info", "log", myAPP.uid, myAPP.appName)
                            liveFollowingNum++;
                        } else {
                            log("未找到关注主播按钮节点:" + myNode.live_id_following_icon)
                        }
                    } else {
                        // log("概率不匹配,跳过直播间关注")

                    };
                }
                isLiveFollowingTask = true;

                if (myTask.mat_live_comment_switch == 'on' && !isLiveCommentTask) {
                    let sendBtn = id(myNode.live_id_card_send).findOne(1000);
                    if (sendBtn != null) {
                        // 这里发送内容
                        let content = getTalkingsFromRedis("直播间评论", myOverall.talking_get_type)
                        if (content) {
                            setText(content);
                            sleep(500)
                            if (sendBtn.click()) {
                                uploadLog("----->已发言，内容：" + content, "info", "log", myAPP.uid, myAPP.appName)
                                sleep(random(Number(myTask.mat_live_comment_sleep_min) * 1000, Number(myTask.mat_live_comment_sleep_max) * 1000));   //直播发言后停留时间
                                liveCommentNum++;
                            };
                        } else {
                            uploadLog("发言失败,未获取到话术", "info", "log", myAPP.uid, myAPP.appName)
                        }
                        isLiveCommentTask = true;
                    } else {
                        uploadLog("检查直播间发言,概率 " + myTask.mat_live_comment_chance, "info", "log", myAPP.uid, myAPP.appName)
                        if (parseInt(Math.random() * 100) <= Number(myTask.mat_live_comment_chance)) {
                            if (clickNode('id', myNode.live_id_room_edit, delay)) {
                                uploadLog("点击直播间底部输入框,弹出输入卡片", "info", "log", myAPP.uid, myAPP.appName)
                            } else {
                                log("未找到直播间底部输入框节点:" + myNode.main_id_live_icon)
                                isLiveCommentTask = true;
                            }
                        } else {
                            // log("概率不匹配,跳过直播间发言")
                            isLiveCommentTask = true;
                        };
                    }
                } else {
                    isLiveCommentTask = back();   //退出直播间
                };
                break;
            case "com.ss.android.ugc.aweme.profile.ui.ProfileEditActivity":
                uploadLog("页面地址：编辑个人资料", "info", "log", myAPP.uid, myAPP.appName)
                if (!clickNode("desc", '返回', delay)) {
                    back();
                };
                break;

            case "com.ss.android.ugc.aweme.account.white.login.DYLoginActivity":
            case "com.ss.android.ugc.aweme.account.login.ui.LoginOrRegisterActivity":
                uploadLog("账号未登录", "warn", "log", myAPP.uid, myAPP.appName)
                isFail = true;
                break;
            case "com.android.packageinstaller.PackageInstallerActivity":
                uploadLog("页面地址：安装", "info", "log", myAPP.uid, myAPP.appName)
                if (findNode("text", myAPP.appName)) {
                    if (!clickNode("text", "设置")) {
                        uploadLog("开始安装新版", "info", "log", myAPP.uid, myAPP.appName)
                        clickNode("text", "安装", 5000);
                    };
                } else {
                    back();
                };
                break;
            case "com.android.settings.Settings$ManageAppExternalSourcesActivity":
            case "com.android.systemui.recents.RecentsActivity":
                uploadLog("页面:安装未知应用", "info", "log", myAPP.uid, myAPP.appName)
                if (findNode('desc', "更多选项") && findNode('desc', "转到上一层级")) {
                    home();  //打开了被控端
                } else {
                    //允许APP安装应用
                    let check = className("CheckBox").findOne(1000);
                    if (check != null) {
                        if (!check.checked()) {
                            let object = text("允许来自此来源的应用").findOne(1000)
                            if (object != null) {
                                let par = object.parent().parent();
                                if (par != null) {
                                    par.click()
                                };
                            };
                        } else {
                            if (!back()) {
                                clickNode("desc", "返回")
                            };
                        };
                    };
                };
                break;
            case "com.android.packageinstaller.InstallAppProgress":
                // uploadLog("页面：安装-打开", "info", "log", myAPP.uid, myAPP.appName)
                if (findNode("text", "立即清理")) {
                    // 安装失败,存储空间不足
                    if (clickNode("text", "完成")) {
                        uploadLog("更新失败,存储空间不足", "warn", "log", myAPP.uid, myAPP.appName)
                    };
                } else {
                    if (clickNode("text", "打开")) {
                        uploadLog("更新成功", "info", "log", myAPP.uid, myAPP.appName)
                    };
                };
                break;
            case "com.miui.cleanmaster.LowMemoryIntentDispatchActivity":
                // uploadLog("页面：存储空间严重不足", "info", "log", myAPP.uid, myAPP.appName)
                clickNode("text", "取消");
                break;
            default:
                // uploadLog("页面：其他", "info", "log", myAPP.uid, myAPP.appName)
                if (myTask.maya_total_switch == 'on') {
                    let packageName = "my.maya.android"
                    if (currentPackage() != packageName) {
                        if (!launch(packageName)) {
                            uploadLog("夕闪未安装", "warn", "log", myAPP.uid, myAPP.appName)
                            isFail = true;
                        } else {
                            uploadLog("启动夕闪", "info", "log", myAPP.uid, myAPP.appName)
                            sleep(5000);   //启动后延时
                        };
                    } else {
                        back();
                    };
                } else {
                    if (currentPackage() != myAPP.packageName) {
                        if (!launch(myAPP.packageName)) {
                            uploadLog("app未安装", "warn", "log", myAPP.uid, myAPP.appName)
                            isFail = true;
                        } else {
                            uploadLog("启动APP", "info", "log", myAPP.uid, myAPP.appName)
                            sleep(5000);   //启动后延时
                        };
                    } else {
                        back();
                    };
                }
        };

        if (findNode("text", "完成下列验证后继续")) {
            uploadLog("出现滑块验证", "info", "log", myAPP.uid, myAPP.appName)

            if (!verificationCode()) {
                log("自动打码失败")
                // killAPP(myAPP.packageName);
                isFail = true;   //滑块验证码
            };
        } else if (findNode("text", "此账号已被封禁")) {
            uploadLog("此账号已被封禁", "info", "log", myAPP.uid, myAPP.appName)
            isFail = true;
        };

        if (isFail) {
            break;  //跳出循环 
        } else if (isStop) {
            home();
            countdown(300, "任务完成,等待");  // 倒计时提示
            getOverallParam();     //请求全局配置
            getTaskParam();  // 请求任务参数
            isStop = false;
        } else {
            checkPopup();   //查询弹窗

            if (random(1, 10) % 4 == 0) {
                // 使用随机数,降低请求频率
                isDetailedLog && log("请求全局配置")
                getOverallParam();     //请求全局配置
            }
            if (random(1, 10) % 4 == 0) {
                // 使用随机数,降低请求频率
                isDetailedLog && log("请求任务参数")
                getTaskParam();  // 请求任务参数
            }
            if (random(1, 10) % 5 == 0) {
                isDetailedLog && log("更新设备信息")
                setDeviceData(myAPP.uid, myAPP.device_number);    //更新设备信息
            }
        };
    };
};

function 夕闪私信() {
    let letterContent = getTalkingsFromRedis("夕闪私信", myOverall.talking_get_type);
    if (letterContent) {
        if (myTask.maya_heart == 'on') {
            clickNode("id", mayaNode.letter_id_heart, delay);  //打招呼
        };

        let strs = new Array(); //定义数组 
        strs = letterContent.split("|"); //字符分割 

        // log(myTask.content_enjoy)
        let content_enjoy = [], content_character = [], content_punctuate = []
        let letter_prefix_enjoy, letter_suffix_enjoy, letter_prefix_character, letter_suffix_character, letter_prefix_punctuate, letter_suffix_punctuate;
        if (myOverall.content_enjoy) {
            content_enjoy = myOverall.content_enjoy.split("|")
        }
        if (myOverall.content_character) {
            content_character = myOverall.content_character.split("|")
        }
        if (myOverall.content_punctuate) {
            content_punctuate = myOverall.content_punctuate.split("|")
        }
        // log(content_enjoy, content_character, content_punctuate)

        let nickname = getNodeText('id', mayaNode.letter_id_nickname);
        log("->", nickname)
        for (i = 0; i < strs.length; i++) {
            // log(mayaNode.letter_id_talking_warn)
            if (findNode("id", mayaNode.letter_id_talking_warn)) {
                log("私信失败，可能账号异常")
                cannotNum++;
                break;
            }

            let sendContent = strs[i];
            if (content_enjoy.length > 1) {
                letter_prefix_enjoy = content_enjoy[random(0, content_enjoy.length - 1)];
                letter_suffix_enjoy = content_enjoy[random(0, content_enjoy.length - 1)];
            }
            if (content_character.length > 1) {
                letter_prefix_character = content_character[random(0, content_character.length - 1)];
                letter_suffix_character = content_character[random(0, content_character.length - 1)];
            }
            if (content_punctuate.length > 1) {
                letter_prefix_punctuate = content_punctuate[random(0, content_punctuate.length - 1)];
                letter_suffix_punctuate = content_punctuate[random(0, content_punctuate.length - 1)];
            }

            //检测是否为网址
            if (sendContent.indexOf("http") != -1) {
                // uploadLog("开始下载文件", "info", "toastLog", myAPP.uid, myAPP.appName)
                myAPP.dir = downloadFile(sendContent, myAPP.appName, "Download/");   //下载文件
                if (myAPP.dir != "") {
                    uploadLog("文件下载成功", "info", "log", myAPP.uid, myAPP.appName);

                    if (clickNode("id", mayaNode.letter_id_talking_add, delay)) {
                        if (clickParentNode("text", "相册", delay)) {
                            if (findNode("text", "本地相册")) {
                                let thumb = className("android.widget.ImageView").id(mayaNode.letter_id_photo).find();
                                if (!thumb.empty()) {
                                    let far = thumb[0].parent();
                                    if (far != null) {
                                        far.clickable() && far.click();
                                    } else {
                                        //避免点击坐标。会被悬浮窗干扰
                                        let rect = thumb[0].bounds();
                                        click(rect.centerX(), rect.centerY())    //选择第一格文件
                                    };
                                    sleep(delay);

                                    if (clickNode("text", "发送", delay)) {
                                        log("私信第" + (i + 1) + "条，文件已发送");

                                    } else {
                                        log("发送失败")
                                    };
                                } else {
                                    uploadLog("没找到相册╭(╯^╰)╮", "error", "log", myAPP.uid, myAPP.appName);
                                };
                            } else {
                                log("Error：未找到列表页")
                            };
                        };
                    } else {
                        log("未找到文件发送按钮：" + mayaNode.letter_id_talking_add)
                    };

                    files.remove(myAPP.dir);   //删除文件
                } else {
                    uploadLog("文件下载失败", "error", "log", myAPP.uid, myAPP.appName)
                };
            } else {
                if (myOverall.letter_prefix_punctuate == 'on') {
                    sendContent = letter_prefix_punctuate + sendContent
                }
                if (myOverall.letter_suffix_punctuate == 'on') {
                    sendContent = sendContent + letter_suffix_punctuate
                }
                if (myOverall.letter_prefix_character == 'on') {
                    sendContent = letter_prefix_character + sendContent
                }
                if (myOverall.letter_suffix_character == 'on') {
                    sendContent = sendContent + letter_suffix_character
                }
                if (myOverall.letter_prefix_enjoy == 'on') {
                    sendContent = letter_prefix_enjoy + sendContent
                }
                if (myOverall.letter_suffix_enjoy == 'on') {
                    sendContent = sendContent + letter_suffix_enjoy
                }

                if (i == 0 && myOverall.letter_prefix_nickname == 'on' && nickname != "" && nickname.indexOf("用户") == -1) {
                    sendContent = nickname + ' ' + sendContent;   //首条话术前添加对方的昵称
                };
                if (!setText(sendContent)) {
                    let edit = textStartsWith("发消息").findOne(1000)
                    edit && edit.setText(sendContent);
                };
                sleep(delay);

                if (clickNode("text", "发送", delay)) {
                    log("私信第" + (i + 1) + "条: " + sendContent);
                } else {
                    log("发送失败")
                }
            };

        };

        mayaTaskNum++;
        setStorageData(myAPP.imei, "mayaTaskNum", mayaTaskNum)
        uploadLog("----->已私信 " + mayaTaskNum + "/" + myTask.maya_total_num, "info", "log", myAPP.uid, myAPP.appName)

        if (mayaTaskNum > 0 && mayaTaskNum % Number(myTask.maya_every_num) == 0 && mayaTaskNum < Number(myTask.maya_total_num)) {
            //每操作多少个,暂停多长时间
            let waitRand = random(Number(myTask.maya_every_min), Number(myTask.maya_every_max));
            countdown(waitRand, "暂停等待");  // 倒计时提示
        } else {
            sleep(random(Number(myTask.maya_end_sleep_min) * 1000, Number(myTask.maya_end_sleep_max) * 1000));
        }
    } else {
        log("未获取到夕闪私信话术")
        cannotNum++;
    };
};

function 发送私信() {
    let bubble = id(myNode.letter_id_bubble).find(), talking_type;   //会话气泡
    if (!isLogin) {
        back()
    } else if (textStartsWith("由于对方没有关注你").exists() || textStartsWith("你已发送了3条消息").exists() || textStartsWith("由于对方的隐私设置").exists() || textStartsWith("已送达").exists()) {
        // log('历史已私信过,返回')
        isUidSendLetter = back();
    } else if (!bubble.empty() && bubble.length >= 2) {
        // log('存在多条会话,返回')
        isUidSendLetter = back();
    } else if (myTask.uid_letter_switch == 'on' || myTask.letter_total_switch == 'on') {
        if (!isUidSendLetter) {
            if (myTask.uid_total_switch == 'on') {
                talking_type = "陌生人私信"
            } else if (myTask.letter_total_switch == 'on') {
                talking_type = "互关私信"
            };

            let letterContent = getTalkingsFromRedis(talking_type, myOverall.talking_get_type);
            if (letterContent) {
                let strs = new Array(); //定义数组 
                strs = letterContent.split("|"); //字符分割 

                let content_enjoy = [], content_character = [], content_punctuate = []
                let letter_prefix_enjoy, letter_suffix_enjoy, letter_prefix_character, letter_suffix_character, letter_prefix_punctuate, letter_suffix_punctuate;
                if (myOverall.content_enjoy) {
                    content_enjoy = myOverall.content_enjoy.split("|")
                }
                if (myOverall.content_character) {
                    content_character = myOverall.content_character.split("|")
                }
                if (myOverall.content_punctuate) {
                    content_punctuate = myOverall.content_punctuate.split("|")
                }

                let nickname = getNodeText('id', myNode.letter_id_nickname)
                for (i = 0; i < strs.length; i++) {
                    if (textStartsWith("由于对方关闭了私信功能").exists()) {
                        log("由于对方关闭了私信功能,私信失败")
                        break;
                    } else if (textStartsWith("由于对方的隐私设置").exists()) {
                        log("由于对方的隐私设置,私信失败")
                        break;
                    } else if (textStartsWith("私信功能已被封禁").exists()) {
                        log("私信功能已被封禁，详情见消息通知")
                        isStop = true;
                        break;
                    } else if (textStartsWith("你已发送了3条消息").exists()) {
                        log("你已发送了3条消息,终止私信")
                        break;
                    }

                    let sendContent = strs[i];
                    if (content_enjoy.length > 1) {
                        letter_prefix_enjoy = content_enjoy[random(0, content_enjoy.length - 1)];
                        letter_suffix_enjoy = content_enjoy[random(0, content_enjoy.length - 1)];
                    }
                    if (content_character.length > 1) {
                        letter_prefix_character = content_character[random(0, content_character.length - 1)];
                        letter_suffix_character = content_character[random(0, content_character.length - 1)];
                    }
                    if (content_punctuate.length > 1) {
                        letter_prefix_punctuate = content_punctuate[random(0, content_punctuate.length - 1)];
                        letter_suffix_punctuate = content_punctuate[random(0, content_punctuate.length - 1)];
                    }
                    if (myOverall.letter_prefix_punctuate == 'on') {
                        sendContent = letter_prefix_punctuate + sendContent
                    }
                    if (myOverall.letter_suffix_punctuate == 'on') {
                        sendContent = sendContent + letter_suffix_punctuate
                    }
                    if (myOverall.letter_prefix_character == 'on') {
                        sendContent = letter_prefix_character + sendContent
                    }
                    if (myOverall.letter_suffix_character == 'on') {
                        sendContent = sendContent + letter_suffix_character
                    }
                    if (myOverall.letter_prefix_enjoy == 'on') {
                        sendContent = letter_prefix_enjoy + sendContent
                    }
                    if (myOverall.letter_suffix_enjoy == 'on') {
                        sendContent = sendContent + letter_suffix_enjoy
                    }

                    if (i == 0 && myOverall.letter_prefix_nickname == 'on' && nickname != "" && nickname.indexOf("用户") == -1) {
                        setText(nickname + ' ' + sendContent);  //首条话术前添加对方的昵称
                    } else {
                        setText(sendContent);
                    }
                    sleep(delay);
                    if (clickNode("desc", "发送", delay)) {
                        log("私信第" + (i + 1) + "条: " + sendContent);
                        if (myTask.uid_total_switch == 'on') {
                            sleep(random(Number(myTask.uid_letter_sleep_min) * 1000, Number(myTask.uid_letter_sleep_max) * 1000));   //执行后停留时长
                        } else if (myTask.letter_total_switch == 'on') {
                            sleep(random(Number(myTask.letter_end_sleep_min) * 1000, Number(myTask.letter_end_sleep_max) * 1000));   //私信后停留时长
                        }
                    }
                }

                if (myTask.uid_total_switch != 'on' && myTask.letter_total_switch == 'on') {
                    // updateTaskCensus('letter_send_day_num');  //更新任务计数
                    letterTaskNum++;
                    setStorageData(myAPP.imei, "letterTaskNum", letterTaskNum)
                };

                if (myTask.uid_total_switch == 'on') {
                    uploadLog("----->已私信 " + letterTaskNum + "/" + myTask.uid_open_total_num, "info", "log", myAPP.uid, myAPP.appName)
                } else if (myTask.letter_total_switch == 'on') {
                    uploadLog("----->已私信 " + letterTaskNum + "/" + myTask.letter_send_total_num, "info", "log", myAPP.uid, myAPP.appName)
                }

            } else {
                log("未获取到私信话术")
            }
            isUidSendLetter = back();
        }
    } else {
        back();
    }
}

function 互关私信() {
    if (findNode("text", "编辑资料") || findNode("text", "编辑企业资料") || findNode("id", myNode.me_id_edit_data)) {
        clickNodeR("text", "粉丝", delay, isRootEd)
    } else if (findNode("text", "留下你的精彩评论吧")) {
        back();
    } else if (!clickNodeR("text", "我", delay, isRootEd)) {
        back();
    }
}


function 单向取关() {
    if (myAPP.nickname != "" && findNode('text', myAPP.nickname)) {
        // uploadLog("页面地址：粉丝列表", "info", "log", myAPP.uid, myAPP.appName)
        let tabTitle = textStartsWith('关注 ').findOne(1000)
        if (tabTitle != null) {
            clickObjectR(tabTitle, delay, isRootEd);   //点击tab
        } else {
            log("没找到TAB╭(╯^╰)╮");
        };

        // 跳过前几页
        while (startNum2 < Number(myTask.remove_following_skip_page)) {
            let scroll = className("android.support.v7.widget.RecyclerView").scrollable().findOne(1000);
            if (scroll != null) {
                scroll.scrollForward();   //向下翻页
            };

            startNum2++;
            log("跳过第" + startNum2 + "页")
            sleep(delay);
        };

        let object = text("已关注").visibleToUser(true).find();    //遍历关注按钮
        if (!object.empty() && findNode('text', myAPP.nickname)) {
            object.forEach(function (currentValue, index) {
                // log(currentValue.className(), currentValue.id(), currentValue.text(), currentValue.depth(), currentValue.bounds(), index);
                // if (!textStartsWith('粉丝 ').exists()) {
                //     // back();
                //     return false;   //防止不在粉丝列表出现报错
                // };

                if (findNode('text', myAPP.nickname)) {
                    if (removeFollowingTaskNum >= Number(myTask.remove_following_total_num)) {
                        uploadLog("单向取关任务完成", "info", "log", myAPP.uid, myAPP.appName);
                        isStop = true;
                        // back();
                    } else if (currentValue.click()) {
                        removeFollowingTaskNum++;
                        log("单向取关:" + removeFollowingTaskNum + "/" + myTask.remove_following_total_num)
                        if (removeFollowingTaskNum > 0 && removeFollowingTaskNum % Number(myTask.remove_following_every_num) == 0 && removeFollowingTaskNum < Number(myTask.remove_following_total_num)) {
                            //每观看多少个,暂停多长时间（这个不能在直播间等待，不然流量耗不起...）
                            let waitRand = random(Number(myTask.remove_following_every_min), Number(myTask.remove_following_every_max));
                            countdown(waitRand, "暂停等待");  // 倒计时提示
                        } else {
                            sleep(random(Number(myTask.remove_following_end_sleep_min) * 1000, Number(myTask.remove_following_end_sleep_max) * 1000));
                        }
                    };
                } else {
                    log("可能不在关注列表")
                }

                sleep(delay);
            });

            let scroll = className("android.support.v7.widget.RecyclerView").scrollable().findOne(1000);
            if (scroll != null) {
                scroll.scrollForward();   //向下翻页
            };
            sleep(delay);
            if (findNode("text", "没有更多了")) {
                log("没有更多了")
                isStop = true;
                // isExecution = true;
                // back();
            }
        } else {
            if (findNode("text", "没有更多了")) {
                log("没有更多了")
                isStop = true;
                // isExecution = true;
                // back();
            } else {
                log("没找到已关注按钮╭(╯^╰)╮");
                let scroll = className("android.support.v7.widget.RecyclerView").scrollable().findOne(1000);
                if (scroll != null) {
                    scroll.scrollForward();   //向下翻页
                    sleep(delay);
                };
            }
        };

    } else {
        back();
    }
}

function 取消互关() {
    if (myAPP.nickname != "" && findNode('text', myAPP.nickname)) {
        // uploadLog("页面地址：粉丝列表", "info", "log", myAPP.uid, myAPP.appName)
        let tabTitle = textStartsWith('粉丝 ').findOne(1000)
        if (tabTitle != null) {
            clickObjectR(tabTitle, delay, isRootEd);   //点击tab
        } else {
            log("没找到TAB╭(╯^╰)╮");
        };

        // 跳过前几页
        while (startNum3 < Number(myTask.remove_follower_skip_page)) {
            scrollForward();   //向下翻页

            startNum3++;
            log("跳过第" + startNum3 + "页")
            sleep(delay);
        };

        let object = text("互相关注").visibleToUser(true).find();    //遍历关注按钮
        if (!object.empty() && findNode('text', myAPP.nickname)) {
            object.forEach(function (currentValue, index) {
                // log(currentValue.className(), currentValue.id(), currentValue.text(), currentValue.depth(), currentValue.bounds(), index);
                // if (!textStartsWith('粉丝 ').exists()) {
                //     // back();
                //     return false;   //防止不在粉丝列表出现报错
                // };

                if (findNode('text', myAPP.nickname)) {
                    if (removeFollowerTaskNum >= Number(myTask.remove_follower_total_num)) {
                        uploadLog("取消互关任务完成", "info", "log", myAPP.uid, myAPP.appName);
                        isStop = true;
                        // back();
                    } else if (currentValue.click()) {
                        removeFollowerTaskNum++;
                        log("取消互关计数:" + removeFollowerTaskNum + "/" + myTask.remove_follower_total_num)
                        if (removeFollowerTaskNum > 0 && removeFollowerTaskNum % Number(myTask.remove_follower_every_num) == 0 && removeFollowerTaskNum < Number(myTask.remove_follower_total_num)) {
                            //每观看多少个,暂停多长时间（这个不能在直播间等待，不然流量耗不起...）
                            let waitRand = random(Number(myTask.remove_follower_every_min), Number(myTask.remove_follower_every_max));
                            countdown(waitRand, "暂停等待");  // 倒计时提示
                        } else {
                            sleep(random(Number(myTask.remove_follower_end_sleep_min) * 1000, Number(myTask.remove_follower_end_sleep_max) * 1000));
                        };
                    };
                } else {
                    log("可能不在关注列表")
                }

                sleep(delay);
            });

            scrollForward();   //向下翻页
            sleep(delay);
            if (findNode("text", "没有更多了")) {
                log("没有更多了")
                isStop = true;
                // isExecution = true;
                // back();
            }
        } else {
            if (findNode("text", "没有更多了")) {
                log("没有更多了")
                isStop = true;
                // isExecution = true;
                // back();
            } else {
                // log("没找到互相关注按钮╭(╯^╰)╮");
                scrollForward();   //向下翻页
                sleep(delay);
            }
        };

    } else {
        back();
    }
}

function UID操作() {
    if (findNode("text", "编辑资料") || findNode("text", "编辑企业资料") || findNode("id", myNode.me_id_edit_data)) {
        let uidNumber = getRandAwemeUID_Ex(myTask.uid_delete_switch == 'on' ? true : false);   //随机取一条UID
        if (Number(uidNumber) > 0) {
            if (uidTaskNum >= Number(myTask.uid_open_total_num)) {
                uploadLog("UID操作任务完成.共打开 " + Number(myTask.uid_open_total_num) + " 个", "info", "log", myAPP.uid, myAPP.appName);
                isStop = true;
            } else if (myTask.uid_total_switch == 'on' && myTask.uid_refresh_switch == 'on' && uidTaskNum > 0 && uidTaskNum % Number(myTask.uid_refresh_every_num) == 0 && !isEditingMaterials) {
                log("进入编辑资料,刷新数据")
                if (!clickNode("text", "编辑资料", delay)) {
                    if(!clickNode("text", "编辑企业资料", delay)) {
                        clickNode("id", myNode.me_id_edit_data, delay)
                    }
                };    //每操作多少个UID,进入编辑资料
                isEditingMaterials = true;
            } else {
                log("UID操作:" + uidTaskNum + "/" + Number(myTask.uid_open_total_num))
                // updateAccountCensus();  // 更新账号信息统计
                // updateTaskCensus('uid_open_day_num');  //更新任务计数
                uidTaskNum++;
                setStorageData(myAPP.imei, "uidTaskNum", uidTaskNum)
                uploadLog("打开第 " + uidTaskNum + " 个UID: " + uidNumber, "info", "log", myAPP.uid, myAPP.appName)
                try {
                    app.startActivity({
                        data: "snssdk1128://user/detail/" + Number(uidNumber),
                    });
                    sleep(random(Number(myTask.uid_following_sleep_min) * 1000, Number(myTask.uid_following_sleep_max) * 1000));   //执行关注前,停留
                    isUidFollowing = false;   //重置变量
                    isUidWatchWoks = false;
                    isUidWorksDigg = false;
                    isUidWorksComment = false;
                    isUidCommentDigg = false;
                    isUidSendLetter = false;
                    isMaintenance = false;
                    isComplete = false;
                    isEditingMaterials = false;
                    isGoOn = false;
                } catch (err) {
                    log(err)
                };
            };
        } else {
            log('未获取到uid')
        }
    } else if (findNode("text", "留下你的精彩评论吧")) {
        back();
    } else if (!clickNodeR("text", "我", delay, isRootEd)) {
        back();
    }
}

function 养号操作() {
    if (matTaskNum >= Number(myTask.mat_watch_total_num) && myTask.mat_total_switch == 'on') {
        uploadLog("养号任务完成.共浏览 " + Number(myTask.mat_watch_total_num) + " 个,点赞 " + likeNum + "次,转发 " + forwardNum + " 次", "info", "log", myAPP.uid, myAPP.appName);
        if (myTask.mat_total_switch == 'on') {
            isStop = true;
        }
    } else if (isUserDataPage) {
        // uploadLog("页面：视频作者资料页", "info", "log", myAPP.uid, myAPP.appName)
        if (myTask.mat_following_switch == 'on' && !isFollowingTask) {
            if (clickNode("id", myNode.personal_id_btn_following, delay * 2)) {
                uploadLog("----->已关注", "info", "log", myAPP.uid, myAPP.appName)
                followingNum++;
            } else if (findNode("text", "取消关注") || findNode("text", "互相关注")) {
            } else {
                log("未找到关注按钮节点:" + myNode.personal_id_btn_following)
            };
        } else {
            back();   //返回到主页
            isUserDataPage = false;
        };
        isFollowingTask = true;
    } else if (findNode("text", "分享到")) {
        if (myTask.mat_forward_switch == 'on') {
            if (!clickParentNode("text", "转发")) {
                log('转发按钮不存在')
                isForwardTask = clickNode("text", "取消", delay)
            };
        } else {
            clickNode("text", "取消", delay)
            isForwardTask = true;
        };
    } else if (findNode("text", "有爱转发 说点好听的")) {
        if (myTask.mat_forward_switch == 'on' && !isForwardTask) {
            let forwardContent = getTalkingsFromRedis("热门视频转发评论", myOverall.talking_get_type);
            let isSend = false;   //是否发送
            if (forwardContent) {
                isSend = setText(forwardContent);
                sleep(random(500, 1000))
            } else {
                log("未获取到热门视频转发话术,使用随机表情")
                let face = new Array(
                    "[赞]", "[玫瑰]", "[捂脸]", "[666]", "[鼓掌]", "[呲牙]", "[微笑]", "[耶]"
                );
                rndNode = face[random(0, face.length - 1)];    //随机取一个表情
                isSend = clickNode("desc", rndNode, delay)
            }
            if (isSend) {
                if (clickNode("id", myNode.main_id_forward_send, delay)) {
                    uploadLog("----->已转发,内容:" + rndNode, "info", "log", myAPP.uid, myAPP.appName)
                    forwardNum++;
                } else {
                    log("未找到转发发送按钮节点:" + myNode.main_id_forward_send)
                };
            }
        } else {
            back();
        };
        isForwardTask = true;
    } else if (findNode("text", "留下你的精彩评论吧") || findNode("text", "该广告主关闭了评论功能")) {

        if (findNode("text", "暂无评论") || findNode("text", "该广告主关闭了评论功能")) {
            log("暂无评论,不在此留言和点赞")
            isCommentTask = true;
            isCommentDiggTask = true;
            isCommentMessageTask = true;
            back();
        } else if (findNode("text", "评论并转发") && !isCommentMessageTask) {
            log("选择内容并发送")
            // 评论内容有3种,一种是随机表情,一种是复制别人的评论,一种是从库里取
            // let face = new Array(
            //     "[微笑]按钮", "[呲牙]按钮", "[捂脸]按钮", "[害羞]按钮", "[来看我]按钮", "[可爱]按钮"
            // );
            if (commentContent) {
                log('评论内容:' + commentContent)
                isSend = setText(commentContent);
                sleep(random(500, 1000))
            } else {
                log("未获取到热门视频评论话术,使用随机表情1")
                let face = new Array(
                    "[赞]", "[玫瑰]", "[捂脸]", "[666]", "[鼓掌]", "[呲牙]", "[微笑]", "[耶]"
                );
                rndNode = face[random(0, face.length - 1)];    //随机取一个表情 
                log('评论内容:' + rndNode)
                isSend = clickNode("desc", rndNode, delay)
            };

            if (isSend) {
                if (clickNode("id", myNode.main_id_forward_send, delay)) {
                    uploadLog("----->已评论1", "info", "log", myAPP.uid, myAPP.appName)
                    commentNum++;
                } else {
                    log("a未找到评论发送按钮节点:" + myNode.main_id_forward_send)
                };
            }
            isCommentMessage = true;
            isCommentMessageTask = true;
        } else if (myTask.mat_comment_switch == 'on' && !isCommentMessageTask) {
            if (findNode("id", myNode.main_id_forward_send)) {
                // 评论内容有3种,一种是随机表情,一种是复制别人的评论,一种是从库里取
                if (commentContent) {
                    log('评论内容:' + commentContent)
                    isSend = setText(commentContent);
                    sleep(random(500, 1000))
                } else {
                    log("未获取到热门视频评论话术,使用随机表情2")
                    let face = new Array(
                        "[赞]", "[玫瑰]", "[捂脸]", "[666]", "[鼓掌]", "[呲牙]", "[微笑]", "[耶]"
                    );
                    rndNode = face[random(0, face.length - 1)];    //随机取一个表情
                    log('评论内容:' + rndNode)
                    isSend = clickNode("desc", rndNode, delay)
                };

                if (isSend) {
                    if (clickNode("id", myNode.main_id_forward_send, delay)) {
                        uploadLog("----->已评论2", "info", "log", myAPP.uid, myAPP.appName)
                        commentNum++;
                    } else {
                        log("b未找到评论发送按钮节点:" + myNode.main_id_forward_send)
                    };
                }
                isCommentMessage = true;
                isCommentMessageTask = true;
            } else if (myTask.mat_comment_digg_switch == 'on' && !isCommentDiggTask) {
                uploadLog("检查评论区点赞,概率 " + myTask.mat_comment_digg_chance, "info", "log", myAPP.uid, myAPP.appName)
                if (parseInt(Math.random() * 100) <= Number(myTask.mat_comment_digg_chance)) {

                    let heart = id(myNode.main_id_comment_digg_icon).find();
                    let clickNum = random(Number(myTask.mat_comment_digg_min), Number(myTask.mat_comment_digg_max));   //需点赞数量
                    let myArray = new Array();
                    if (!heart.empty()) {
                        for (let i = 0; i < heart.length; i++) {
                            myArray.push(i);   //将所有心形的索引存入数组
                        };

                        log("心形总数:" + myArray.length, "需点赞数量:" + clickNum)
                        if (clickNum < myArray.length) {
                            myArray = getRandomArrayElements(myArray, clickNum)
                            for (let i = 0; i < myArray.length; i++) {
                                if (heart[myArray[i]].click()) {
                                    log("----->点击第 " + myArray[i] + " 个心形")
                                    sleep(random(1000, 3000));
                                };
                            };
                        } else {
                            let randIndex = random(0, heart.length - 1)   //随机取一个心形
                            if (heart[randIndex].click()) {
                                log("随机点击第 " + randIndex + " 个心形")
                            };
                        }
                    } else {
                        log("没找到心形╭(╯^╰)╮");
                    };

                } else {
                    // log("概率不匹配,跳过评论区点赞")
                };
            }
            isCommentDiggTask = true;

            if (myTask.mat_comment_message_switch == 'on') {
                uploadLog("检查评论区留言,概率 " + myTask.mat_comment_message_chance, "info", "log", myAPP.uid, myAPP.appName)
                if (parseInt(Math.random() * 100) <= Number(myTask.mat_comment_message_chance)) {
                    // 逻辑说明:先取话术库里的内容.如果娶不到,就取别人的第一条内容.如果还娶不到,就取随机表情
                    commentContent = getTalkingsFromRedis("热门视频评论", myOverall.talking_get_type);
                    if (!commentContent) {
                        // 获取卡片上的第一条评论内容(节点若抓取不到,可以枚举TextView)
                        let content = id(myNode.main_id_comment_content).findOnce(0);
                        if (content != null) {
                            let strs = new Array();
                            strs = content.text().split(" "); //字符分割,排除掉时间
                            commentContent = strs[0]
                        }
                    }

                    if (clickNode("id", myNode.main_id_comment_edit, delay)) {
                        uploadLog("点击评论输入框", "info", "log", myAPP.uid, myAPP.appName)
                    } else {
                        log("未找到评论输入框:" + myNode.main_id_comment_edit)
                        isCommentMessageTask = back();
                    };
                } else {
                    // log("概率不匹配,跳过评论区留言")
                    isCommentMessageTask = true;
                }
            } else {
                isCommentMessageTask = true;
            }
        } else {
            back();
        };
    } else if (findNode("text", "推荐") && !findNode("desc", "表情")) {
        // uploadLog("页面：首页", "info", "log", myAPP.uid, myAPP.appName)
        if (startNum1 < 1) {
            // 初次启动后,翻一页
            if (isRootEd) {
                Swipe(random(device.width / 3, device.width / 2), random(device.height * 8 / 10, device.height * 7 / 10), random(device.width / 3, device.width / 2), random(device.height * 2 / 10, device.height / 10), random(500, 1000));
            } else {
                swipe(random(device.width / 3, device.width / 2), random(device.height * 8 / 10, device.height * 7 / 10), random(device.width / 3, device.width / 2), random(device.height * 2 / 10, device.height / 10), random(500, 1000));
            };
            sleep(random(Number(myTask.mat_watch_duration_min) * 1000, Number(myTask.mat_watch_duration_max) * 1000));   //浏览视频
            startNum1++;

            // if (myTask.uid_total_switch == 'on' && myTask.mat_total_switch != 'on') {
            //     rotationNum++;   //防封养号计次
            //     log("防封养号执行中,浏览第 " + rotationNum + " 个热门视频")
            // }
        } else if (isDiggTask && isCommentTask && isCommentDiggTask && isCommentMessageTask && isForwardTask && isFollowingTask && isLiveWatchTask && isLiveFollowingTask && isLiveCommentTask) {
            //UID操作不计数
            if (myTask.uid_total_switch == 'on') {
                if (myTask.mat_total_switch != 'on') {
                    rotationNum++;   //防封养号计次
                    log("防封养号执行中,浏览第 " + rotationNum + " 个热门视频")
                } else {
                    matTaskNum++;
                    // updateTaskCensus('mat_watch_day_num');  //更新任务计数
                    setStorageData(myAPP.imei, "matTaskNum", matTaskNum)
                    uploadLog("----->a浏览视频 " + matTaskNum + "/" + myTask.mat_watch_total_num, "info", "toastLog", myAPP.uid, myAPP.appName);
                }
            } else if (myTask.mat_total_switch == 'on') {
                matTaskNum++;
                // updateTaskCensus('mat_watch_day_num');  //更新任务计数
                setStorageData(myAPP.imei, "matTaskNum", matTaskNum)
                myTask.mat_total_switch == 'on' && log("养号任务计数:" + matTaskNum + "/" + Number(myTask.mat_watch_total_num));
                uploadLog("----->b浏览视频 " + matTaskNum + "/" + myTask.mat_watch_total_num, "info", "toastLog", myAPP.uid, myAPP.appName);
            }

            if (isRootEd) {
                Swipe(random(device.width / 3, device.width / 2), random(device.height * 8 / 10, device.height * 7 / 10), random(device.width / 3, device.width / 2), random(device.height * 2 / 10, device.height / 10), random(500, 1000));
            } else {
                swipe(random(device.width / 3, device.width / 2), random(device.height * 8 / 10, device.height * 7 / 10), random(device.width / 3, device.width / 2), random(device.height * 2 / 10, device.height / 10), random(500, 1000));
            };
            sleep(random(Number(myTask.mat_watch_duration_min) * 1000, Number(myTask.mat_watch_duration_max) * 1000));   //浏览视频
            if (!findNode("text", "查看详情")) {
                isDiggTask = false;
                isCommentTask = false;
                isCommentDiggTask = false;
                isCommentMessageTask = false;
                isForwardTask = false;
                isFollowingTask = false;
                isLiveWatchTask = false;
                isLiveFollowingTask = false;
                isLiveCommentTask = false;

                isDigg = false;   //重置变量
                isClickCommentIcon = false;
                isComment = false;
                isCommentDigg = false;
                isCommentMessage = false;
                isForward = false;
                isFollowing = false;
                isLiveFollowing = false;
                isLiveComment = false;

                if (matTaskNum > 0 && matTaskNum % Number(myTask.mat_watch_every_num) == 0 && matTaskNum < Number(myTask.mat_watch_total_num)) {
                    //每观看多少个,暂停多长时间（这个不能在直播间等待，不然流量耗不起...）
                    let waitRand = random(Number(myTask.mat_watch_every_min), Number(myTask.mat_watch_every_max));
                    countdown(waitRand, "观看暂停等待");  // 倒计时提示
                };
            };
        };

        if (myTask.mat_digg_switch == 'on' && !isDiggTask) {
            uploadLog("检查点赞,概率 " + myTask.mat_digg_chance, "info", "log", myAPP.uid, myAPP.appName)
            // 按指定概率执行
            if (parseInt(Math.random() * 100) <= Number(myTask.mat_digg_chance)) {
                let hearts = id(myNode.main_id_digg_icon).find()
                if (hearts.length > 1) {
                    //屏幕截图
                    var img = captureScreen();
                    let scope = id(myNode.main_id_digg_icon).findOnce(1).bounds();
                    let x = scope.centerX()
                    let y = scope.centerY()
                    if (x > 0 && y > 0 && x < device.width && y < device.height) {
                        //取坐标点颜色值,对比是否相似
                        if (colors.isSimilar(images.pixel(img, x, y), -310417)) {
                            uploadLog("已赞过,无需点赞", "warn", "log", myAPP.uid, myAPP.appName)
                        } else {
                            if (click(x, y)) {
                                uploadLog("----->已点赞", "info", "log", myAPP.uid, myAPP.appName)
                                sleep(delay)
                                likeNum++;
                            }
                        };
                    } else {
                        log("点赞图标不在屏幕范围内,", 'x:' + x, 'y:' + y)
                    }

                } else {
                    log("未找到点赞节点:" + myNode.main_id_digg_icon)
                };
            } else {
                // log("概率不匹配,跳过点赞")
            };
        }
        isDiggTask = true;

        if (myTask.mat_comment_switch == 'on' && !isCommentTask) {
            uploadLog("浏览评论,概率 " + myTask.mat_comment_chance, "info", "log", myAPP.uid, myAPP.appName)
            if (parseInt(Math.random() * 100) <= Number(myTask.mat_comment_chance)) {
                if (clickNode("id", myNode.main_id_comment_icon, delay)) {
                    uploadLog("点击评论按钮", "info", "log", myAPP.uid, myAPP.appName)
                } else {
                    log("未找到评论节点:" + myNode.main_id_comment_icon)
                };
            } else {
                // log("概率不匹配,跳过浏览评论")
                isCommentDiggTask = true;
                isCommentMessageTask = true;
            };
        } else {
            isCommentDiggTask = true;
            isCommentMessageTask = true;
        }
        isCommentTask = true;

        if (myTask.mat_forward_switch == 'on' && !isForwardTask) {
            if (!findNode("text", "留下你的精彩评论吧")) {
                uploadLog("检查转发,概率 " + myTask.mat_forward_chance, "info", "log", myAPP.uid, myAPP.appName)
                if (parseInt(Math.random() * 100) <= Number(myTask.mat_forward_chance)) {
                    if (clickNode("id", myNode.main_id_forward_icon, delay)) {
                        uploadLog("点击转发按钮", "info", "log", myAPP.uid, myAPP.appName)
                    } else {
                        log("未找到转发节点:" + myNode.main_id_forward_icon)
                        isForwardTask = true;
                    };
                } else {
                    // log("概率不匹配,跳过转发")
                    isForwardTask = true;
                };
            } else {
                // log("未找到转发图标,等待下一次寻找")
            }
        } else {
            isForwardTask = true;
        }

        if (myTask.mat_following_switch == 'on' && !isFollowingTask) {
            if (!findNode("text", "留下你的精彩评论吧") && !findNode("text", "分享到")) {
                uploadLog("检查关注,概率 " + myTask.mat_following_chance, "info", "log", myAPP.uid, myAPP.appName)
                if (parseInt(Math.random() * 100) <= Number(myTask.mat_following_chance)) {
                    if (clickNode("id", myNode.main_id_header_icon, delay)) {
                        uploadLog("点击用户图像", "info", "log", myAPP.uid, myAPP.appName)
                        sleep(random(Number(myTask.mat_following_sleep_min) * 1000, Number(myTask.mat_following_sleep_max) * 1000));   //执行关注前,停留
                        isUserDataPage = true;   //进入用户资料页
                    } else {
                        log("未找到用户图像节点:" + myNode.main_id_header_icon)
                        isFollowingTask = true;
                    };
                } else {
                    // log("概率不匹配,跳过关注")
                    isFollowingTask = true;
                };
            } else {
                // log("未找到用户图像,等待下一次寻找")
            }
        } else {
            isFollowingTask = true;
        }

        if (myTask.mat_live_switch == 'on' && !isLiveWatchTask) {
            if (!findNode("text", "留下你的精彩评论吧") && !findNode("text", "分享到") && !findNode("desc", "返回") && findNode("text", "首页") && findNode("text", "推荐")) {
                uploadLog("检查直播间观看,概率 " + myTask.mat_live_chance, "info", "log", myAPP.uid, myAPP.appName)
                if (parseInt(Math.random() * 100) <= Number(myTask.mat_live_chance)) {
                    if (clickNode("id", myNode.main_id_live_icon, delay)) {
                        uploadLog("点击直播按钮,进入直播室", "info", "log", myAPP.uid, myAPP.appName)
                        sleep(random(Number(myTask.mat_live_duration_min) * 1000, Number(myTask.mat_live_duration_max) * 1000));   //直播间观看时长
                        isLiveWatchTask = true;
                    } else {
                        log("未找到直播按钮节点:" + myNode.main_id_live_icon)
                        isLiveWatchTask = true;
                        isLiveFollowingTask = true;
                        isLiveCommentTask = true;
                    };
                } else {
                    // log("概率不匹配,跳过直播间观看")
                    isLiveWatchTask = true;
                    isLiveFollowingTask = true;
                    isLiveCommentTask = true;
                };
            } else {
                // log("未找到直播间入口按钮,等待下一次寻找")
            }
        } else {
            isLiveWatchTask = true;
            isLiveFollowingTask = true;
            isLiveCommentTask = true;
        }
    } else if (findNode("text", "编辑资料") || findNode("text", "编辑企业资料") || findNode("id", myNode.me_id_edit_data)) {
        clickNodeR("text", "首页", delay, isRootEd)
    } else {
        // log('返回2')
        back();
    };
}

/**
 * @description: 查询弹窗,查询前请先判断是否和其他页面的按钮有重复,否则会干扰脚本的正常运行
 * @author: 飞云
 * @Date: 2019-09-12 15:09:30
 */
function checkPopup() {
    let tips = {}
    tips["允许"] = "text"
    tips["暂不"] = "text"    //允许访问你的位置
    tips["以后再说"] = "text"
    // tips["立即升级"] = "text"
    // tips["我知道了"] = "text"   //设置青少年模式已登录
    // tips["确定"] = "text"    //你正在使用非WIFI网路
    tips["知道了"] = "text"   //电池电量偏低
    // tips["close"] = "id"   //恭喜收到现金红包
    tips["com.ss.android.ugc.aweme.diamond_sdk:id/diamond_btn_redpackage_close"] = "id"   //见面礼红包
    for (let text in tips) {
        // log(text, tips[text])
        if (clickNode(tips[text], text), 500) {
            break;
        };
    };
};

// 请求全局配置
function getOverallParam() {
    try {
        let json = {};
        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Task_Overall.GetData",
            "uid": myAPP.uid,
        });
        let html = res.body.string();  //取页面html源码
        // log(html)
        json = html ? JSON.parse(html) : json;
        if (json.ret == 200) {
            myOverall = json.data;

            // 重定义变量的值
            delay = random(Number(myOverall.overall_sleep_min), Number(myOverall.overall_sleep_max)) * 1000;    //全局延时
            if (delay < 500) {
                delay = 1000   //如果没取到全局配置,设置一个默认值
            }

            //联众打码配置
            requestTimes = Number(myOverall.jsdati_requestTimes)      //最大请求次数
            softwareId = myOverall.jsdati_softwareId
            softwareSecret = myOverall.jsdati_softwareSecret
            username = myOverall.jsdati_username
            password = myOverall.jsdati_password
        }
        if (!myOverall) {
            toastLog("未获取到全局配置")
        } else {
            return true;
        }
    } catch (err) {
        log("Error:1101");
    };
    return false;
}

// 请求设置
function getSetupParam() {
    try {
        let json = {};
        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Aweme_Setup.GetData",
            "app_name": "可抖云",
        });
        let html = res.body.string();  //取页面html源码
        // log(html)
        json = html ? JSON.parse(html) : json;
        if (json.ret == 200) {
            mySetup = json.data;
        }
        // log(mySetup.data.overall_id)
        if (!mySetup) {
            log("未获取到设置配置")
        } else {
            return true;
        }
    } catch (err) {
        log("Error:1102");
    };
    return false;
}

// 获取OEM软件名
function getUserAgentInfo() {
    var uid = ui.uid.text();
    if (uid && uid != undefined) {
        try {
            let json = {};
            let url = "http://api.feiyunjs.com/public/";
            let res = http.post(url, {
                "service": "App.Other_Agent.GetUserAgentInfo",
                "uid": uid,
            });
            let html = res.body.string();  //取页面html源码
            // log(html)
            json = html ? JSON.parse(html) : json;
            if (json.ret == 200) {

                return json.data ? json.data : "被控端";
            }
        } catch (err) {
            log("Error:1113");
        };
    }
    return "被控端";
}

// 请求任务参数
function getTaskParam() {
    try {
        let json = {};
        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Task_Task.GetTask",
            "imei": myAPP.imei,
            "uid": myAPP.uid,
        });
        let html = res.body.string();  //取页面html源码
        // log(html)
        json = html ? JSON.parse(html) : json;
        // if (json.ret == 200 && myTask.data.mat_id) {
        //     myTask = json.data;
        // }
        // log(myTask.data.mat_id)
        if (json.data.mat_id) {
            myTask = json.data;

            return true;
        } else {
            log(myTask.data.msg)
        }
    } catch (err) {
        log("Error:1103");
    };
    return false;
}

// 查询节点信息
function getNodeParam(version) {

    try {
        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Task_Node.GetAwemeData",
            "version": version,
            "uid": myAPP.uid,
        });
        let html = res.body.string();  //取页面html源码
        // log(html)
        json = html ? JSON.parse(html) : json;
        if (json.ret == 200) {
            myNode = json.data;
        }
        if (!myNode) {
            log("未获取到当前某音版本的节点配置")
        } else {
            return true;
        }
    } catch (err) {
        log("Error:1104");
    };
    return false;
}

// 查询节点信息
function getMayaNodeParam(version) {

    try {
        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Task_Node.GetMayaData",
            "version": version,
            "uid": myAPP.uid,
        });
        let html = res.body.string();  //取页面html源码
        // log(html)
        json = html ? JSON.parse(html) : json;
        if (json.ret == 200) {
            mayaNode = json.data;
        }
        if (!mayaNode) {
            log("未获取到当前夕闪版本的节点配置")
        } else {
            return true;
        }
    } catch (err) {
        log("Error:1144");
    };
    return false;
}

// 查询当前版本是否支持
function checkVersion(version) {
    try {
        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Task_Node.CheckVersion",
            "version": version,
        });
        let html = res.body.string();  //取页面html源码
        // log(html)
        json = html ? JSON.parse(html) : json;
        if (json.ret == 200) {
            return json.data.data;
        } else {
            log(json.data.msg)
            return false;
        }
    } catch (err) {
        log("Error:1105");
    };
    return false;
}

// 查询当前夕闪版本是否支持
function checkMayaVersion(version) {
    try {
        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Task_Node.CheckMayaVersion",
            "version": version,
        });
        let html = res.body.string();  //取页面html源码
        // log(html)
        json = html ? JSON.parse(html) : json;
        if (json.ret == 200) {
            return json.data.data;
        } else {
            log(json.data.msg)
            return false;
        }
    } catch (err) {
        log("Error:1105");
    };
    return false;
}

// 查询评论库内容
function getTalkings(talking_type) {
    try {
        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Document_Talking.GetRndData",
            "talking_type": talking_type,
            "uid": myAPP.uid,
        });
        let html = res.body.string();  //取页面html源码
        // log(html)
        json = html ? JSON.parse(html) : json;
        if (json.ret == 200) {
            return json.data.talking_content;
        }
    } catch (err) {
        log("Error:1106");
    };
}

// 从缓存库里获取话术
function getTalkingsFromRedis(talking_type, talking_get_type) {
    try {
        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Other_Redis.GetTalkingMore",
            "talking_type": talking_type,
            "key": myAPP.uid,
            "talking_get_type": talking_get_type,
        });
        let html = res.body.string();  //取页面html源码
        // log(html)
        json = html ? JSON.parse(html) : json;
        if (json.ret == 200) {
            return json.data;
        }
    } catch (err) {
        log("Error:1106");
    };
}

// 获取随机的UID
function getRandAwemeUID(is_delete) {
    try {
        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Document_Uid.GetRandData",
            "is_delete": is_delete,
            "uid": myAPP.uid,
        });
        let html = res.body.string();  //取页面html源码
        // log(html)
        json = html ? JSON.parse(html) : json;
        if (json.ret == 200) {
            return json.data.uid_content;
        }
    } catch (err) {
        log("Error:1107");
    };
}


// 获取随机的UID
function getRandAwemeUID_Ex(is_delete) {
    let uidArr = getStorageData(myAPP.imei, "uidData");
    if (uidArr != undefined) {

    } else {
        try {
            let url = "http://api.feiyunjs.com/public/";
            let res = http.post(url, {
                service: "App.Other_Redis.GetListMore",
                limit: "10",
                key: myAPP.uid,
            });
            let html = res.body.string();  //取页面html源码
            // log(html)
            json = html ? JSON.parse(html) : json;
            if (json.ret == 200) {
                // 判断是否为数组
                if (Array.isArray(json.data)) {
                    uidArr = json.data;
                }
            }
        } catch (err) {
            log("Error:1107");
        };
    }

    if (uidArr && uidArr.length > 0) {
        let num = random(0, uidArr.length - 1)
        let str = uidArr[num];   //随机取1个UID
        removeByValue(uidArr, str);   //删除数组成员
        if (uidArr.length > 0) {
            setStorageData(myAPP.imei, "uidData", uidArr);   //保存数据
        } else {
            delStorageData(myAPP.imei, "uidData");   //清空数据
        };
        return str;
    } else {
        return ""
    }
};

// 删除数组中的某一元素，并重定义数组下标
function removeByValue(arr, val) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] == val) {
            arr.splice(i, 1);
            break;
        }
    }
};



// 更新账号信息统计
function updateAccountCensus() {
    try {
        myAPP.nickname = getNodeText('id', myNode.me_id_nickname);
        let aber = textStartsWith("抖音号").findOne(1000), aweme_number = "", aweme_gender = "";
        if (aber != null) {
            aweme_number = aber.text().replace('抖音号：', '')
        } else { aber = "" }
        if (findNode("text", "女")) {
            aweme_gender = '2'
        } else if (findNode("text", "男")) {
            aweme_gender = '1'
        }

        let aweme_works = textStartsWith("作品").findOne(1000)
        if (aweme_works != null) {
            aweme_works = Number(aweme_works.text().replace('作品', ''))
        } else { aweme_works = "" }
        // log(aweme_works)
        let aweme_dynamic = textStartsWith("动态").findOne(1000)
        if (aweme_dynamic != null) {
            aweme_dynamic = Number(aweme_dynamic.text().replace('动态', ''))
        } else { aweme_dynamic = "" }
        // log(aweme_dynamic)
        let aweme_like = textStartsWith("喜欢").findOne(1000)
        if (aweme_like != null) {
            aweme_like = Number(aweme_like.text().replace('喜欢', ''))
        } else { aweme_like = "" }
        // log(aweme_like)

        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Aweme_Census.UpdateAccountCensus",
            "imei": myAPP.imei,
            "uid": myAPP.uid,
            "aweme_nickname": myAPP.nickname,
            "aweme_number": aweme_number,
            "aweme_sign": "",
            "aweme_gender": aweme_gender,
            "aweme_area": "",
            "aweme_digg": getNodeText('id', myNode.me_id_digg),
            "aweme_following": getNodeText('id', myNode.me_id_following),
            "aweme_fans": getNodeText('id', myNode.me_id_fans),
            "aweme_works": aweme_works,
            "aweme_dynamic": aweme_dynamic,
            "aweme_like": aweme_like,
            "aweme_message": getNodeText('id', myNode.me_id_message),
        });
        let html = res.body.string();  //取页面html源码
        log("IMEI:" + myAPP.imei, "UID:" + myAPP.uid, "昵称:" + myAPP.nickname, "某音号:" + aweme_number, "获赞:" + getNodeText('id', myNode.me_id_digg), "关注:" + getNodeText('id', myNode.me_id_following), "粉丝:" + getNodeText('id', myNode.me_id_fans), "消息:" + getNodeText('id', myNode.me_id_message), "作品:" + aweme_works, "动态:" + aweme_dynamic, "喜欢:" + aweme_like)
        // log(html)
        json = html ? JSON.parse(html) : json;
        if (json.ret == 200) {
            log('统计信息已上传')
        }
    } catch (err) {
        log("Error:1108");
    };
}



//更新任务计数 20191221改为本地计数,此方法弃用
function updateTaskCensus(type) {
    let mat_watch_day_num = '', uid_open_day_num = '', letter_send_day_num = '';
    switch (type) {
        case 'mat_watch_day_num':
            mat_watch_day_num = '1'
            break;
        case 'uid_open_day_num':
            uid_open_day_num = '1'
            break;
        case 'letter_send_day_num':
            letter_send_day_num = '1'
            break;
        default:
    }
    try {
        // 更新任务计数
        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Task_Task.UpdateTaskCensus",
            "imei": myAPP.imei,
            "uid": myAPP.uid,
            "mat_watch_day_num": mat_watch_day_num,
            "uid_open_day_num": uid_open_day_num,
            "letter_send_day_num": letter_send_day_num,
        });
        // let html = res.body.string();  //取页面html源码
        // log(html)
    } catch (err) {
        log("Error:1109");
    };
}

// 弃用
function APP_取性别() {
    // log(5)
    let year = textEndsWith("岁").findOne(1000);
    if (year != null) {
        var rect = year.bounds();  //寻找性别图标区域
        // log(6)
        var img = captureScreen();

        // log(7)
        var point = images.findColorInRegion(img, -16019034, rect.left, rect.top, rect.width(), rect.height(), 4)   //此函数打包时必须勾选图色模块,否则会报Thread[main (Spawn-2),5]: dlopen failed: library "libopencv_java3.so" not found

        if (point) {
            // log("找到蓝色啦:" + point);   //男
            return "男";
        } else {
            // log("没找到蓝色");
            point = images.findColorInRegion(img, -3060641, rect.left, rect.top, rect.width(), rect.height(), 4)
            if (point) {
                // log("找到粉色啦:" + point);   //女
                return "女";
            } else {
                // log("没找到粉色");
            };
        };
    } else {
        //该用户未设置性别
    };
    return "无";
};


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

// 编辑设备信息
ui.editDevice.on("check", function (checked) {
    setObject(checked);  // 设置组件是否可用
});


// 确定
ui.save.on("click", function () {
    var uid = ui.uid.text();
    var device_number = ui.device_number.text();
    if (uid.length < 1) {
        ui.uid.setError("输入不能为空");
        return;
    } else if (device_number.length < 1) {
        ui.device_number.setError("输入不能为空");
        return;
    } else if (device_number.length > 10) {
        ui.device_number.setError("不能大于10个字符");
        return;
    };

    //程序开始运行之前判断无障碍服务
    if (auto.service == null) {
        toast("请先开启无障碍服务！");
        return;
    };

    if (setDeviceData(uid, device_number)) {
        saveData();
        getData(false);
        setObject(false);  // 设置组件是否可用
        ui.editDevice.setChecked(false);

        uploadLog("已保存", "info", "toastLog", uid)
    } else {

    };

});


// 设置组件是否可用
function setObject(isAllow) {
    ui.uid.setEnabled(isAllow)
    ui.device_number.setEnabled(isAllow)

    importClass(android.view.View);
    if (isAllow) {
        ui.save.setVisibility(View.VISIBLE);  //可视
    } else {
        ui.save.setVisibility(View.GONE);  //不可见，且不占据空间
    };
};

// 读取配置
function getData(isSetValue) {
    // 检查本地存储
    let uid = getStorageData(myAPP.imei, "uid");
    let device_number = getStorageData(myAPP.imei, "device_number");

    if (uid != undefined && device_number != undefined) {
        myAPP.uid = uid;
        myAPP.device_number = device_number;
        if (isSetValue) {
            ui.uid.setText(myAPP.uid);
            ui.device_number.setText(myAPP.device_number);
        };
        let isAllow = myAPP.uid != undefined ? false : true
        ui.editDevice.setChecked(isAllow);
        setObject(isAllow);  // 设置组件是否可用
    } else {
        ui.editDevice.setChecked(true);
        // 根据imei取数据(手机号/设备编号/标签)
        let thread = threads.start(function () {
            //在新线程执行的代码
            // 只要是写在主线程（就是Activity）中的HTTP请求，运行时都会报错，
            // 这是因为Android在4.0以后为了防止应用的ANR（Aplication Not Response）异常，
            // Android这个设计是为了防止网络请求时间过长而导致界面假死的情况发生
            try {
                let url = "http://api.feiyunjs.com/public/";
                let res = http.post(url, {
                    "service": "App.Device_Device.GetDeviceData",
                    "imei": myAPP.imei,
                });
                // log(myAPP.imei, res.statusCode)
                if (res.statusCode == 200) {
                    let html = res.body.string();  //取页面html源码
                    // log(html,myAPP.imei)
                    let json = JSON.parse(html);
                    if (json.ret == "200") {
                        let data = json.data  //设备信息
                        // log(data)
                        if (data.imei) {
                            myAPP.uid = data.uid;
                            myAPP.device_number = data.device_number;
                            // log(myAPP.uid, myAPP.device_number, myAPP.uid.length)
                            if (myAPP.uid.length > 0) {
                                if (isSetValue) {
                                    ui.uid.setText(myAPP.uid);
                                    ui.device_number.setText(myAPP.device_number);
                                };
                                clickNode("text", "保存");
                                thread.interrupt();   //中断线程运行
                            };
                        } else {
                            log("http请求结果:设备未录入!")
                            thread.interrupt();   //中断线程运行
                        };
                    } else {
                        log("http请求失败!网络或接口参数错误!")
                        thread.interrupt();   //中断线程运行
                    }
                };
            } catch (err) {
                log("Error:1110");
                // JavaException: android.os.NetworkOnMainThreadException: null
            };
        });
    };
};

// 保存配置
function saveData() {
    setStorageData(myAPP.imei, "uid", ui.uid.text());
    setStorageData(myAPP.imei, "device_number", ui.device_number.text());
};

/**
 * @description: 上传日志
 * @param {string} content:日志内容
 * @param {string} log_type:日志类型(info/error/warn),不填默认为info
 * @param {string} printWay:日志打印方式(log/toast),不填为不打印.
 * @param {string} uid:用户凭证
 * @param {string} appName:应用名称,可空
 * @param {string} remarks:备注,可空
 * @author: 飞云
 * @Date: 20191125
 */
function uploadLog(content, log_type, printWay, uid, appName, remarks) {
    if (!log_type) { log_type = "info" };
    if (!appName) { appName = "" };
    if (!remarks) { remarks = "" };
    if (printWay == "log") {
        log(content)
    } else if (printWay == "toast") {
        toast(content)
    } else if (printWay == "toastLog") {
        toastLog(content)
    };


    return;

    try {
        //接口采用PhalApi开发
        // 接口文档http://api.feiyunjs.com/public/docs.php?service=App.Log.AddData&detail=1&type=fold
        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Task_Log.AddData",
            "imei": myAPP.imei,
            "uid": uid,
            "source": "module",
            "content": content,
            "log_type": log_type,
            "app_name": appName,
            "remarks": remarks,
        });
        // let html = res.body.string();  //取页面html源码
        // log(html)
        // let json = JSON.parse(html);
    } catch (err) {
        log("Error:1112");
        // JavaException: android.os.NetworkOnMainThreadException: null
    };
};


//保存本地数据
function setStorageData(name, key, value) {
    const storage = storages.create(name);  //创建storage对象
    storage.put(key, value);
}

//读取本地数据
function getStorageData(name, key) {
    const storage = storages.create(name);  //创建storage对象
    if (storage.contains(key)) {
        return storage.get(key);
    };
    //默认返回undefined
}

//删除本地数据
function delStorageData(name, key) {
    const storage = storages.create(name);  //创建storage对象
    if (storage.contains(key)) {
        storage.remove(key);
    };
}


/**
 * @description: 添加/更新设备信息
 * @author: 飞云
 * @Date: 20191220
 */
function setDeviceData(uid, device_number) {
    try {
        let screen_size = device.width != 0 ? device.width + '×' + device.height : "";
        let avail_mem = (device.getAvailMem() / device.getTotalMem() * 100).toFixed(2) + '%'
        let device_mac = device.getMacAddress() != null ? device.getMacAddress() : ""   //个别华为机型取不到mac
        let device_battery = device.getBattery() != null ? device.getBattery() + '%' : ""
        let is_charging = device.isCharging() != null ? device.isCharging() : ""
        let total_mem = device.getTotalMem() != null ? device.getTotalMem() : ""

        let is_screen_on = device.isScreenOn() != null ? device.isScreenOn() : ""
        let screen_brightness = device.getBrightness() != null ? device.getBrightness() : ""
        let music_volume = device.getMusicVolume() != null ? device.getMusicVolume() : ""

        let url = "http://api.feiyunjs.com/public/";
        let res = http.post(url, {
            "service": "App.Device_Device.SetData",
            "imei": myAPP.imei,
            "uid": uid,
            "device_number": device_number,
            "device_model": device.model,
            // "device_network": "",
            "device_mac": device_mac,
            "screen_size": screen_size,
            "device_release": device.release,
            // "host_ip": hostIp,
            "device_battery": device_battery,
            "is_charging": is_charging,
            "avail_mem": avail_mem,
            "total_mem": total_mem,
            "is_screen_on": is_screen_on,
            "screen_brightness": screen_brightness,
            "screen_brightness_model": device.getBrightnessMode() == 0 ? "手动" : "自动",
            "music_volume": music_volume,
            "device_remarks": "",
        });
        let html = res.body.string();  //取页面html源码
        // log(html)
        let json = JSON.parse(html);
        if (json.ret == "200") {
            // uploadLog("更新设备信息", "info", "log", uid)
            if (json.data.msg) {
                toastLog(json.data.msg);
            } else {
                return true;
            }
        } else {
            uploadLog("http请求失败!", "info", "log", uid)
        };
    } catch (err) {
        log("Error:1111");
    };
    return false;
}

// 统计json对象成员数
// https://www.cnblogs.com/sunnywindycloudy/p/7382226.html
function count(o) {
    var t = typeof o;
    if (t == 'string') {
        return o.length;
    } else if (t == 'object') {
        var n = 0;
        for (var i in o) {
            n++;
        }
        return n;
    }
    return false;
};

//--------------------------------------------------------------------------------------------------------------------------

/**
请求截图权限,自动处理提示(一个程序里只允许启动一次)
@version  20191126
@author   飞云<283054503@qq.com> 
@return   Boolean 是否执行成功
*/
function requestScreenshot() {
    let result = false;
    // 新建线程,来处理请求截图权限的弹出卡片
    let thread = threads.start(function () {
        //在新线程执行的代码
        let i = 0;
        while (i < 5) {
            // log("子线程");
            clickNode("text", "立即开始")
            i++;
        }
    });
    //请求截图
    if (!requestScreenCapture()) {
        toast("请求截图失败");
    } else {
        // log("停止线程,请求截图权限成功")
        result = true;
        thread.interrupt();  //停止线程执行
    };
    return result;
};


/**
 * @description: 获取组件的文本
 * @param {string} way:节点属性text/desc/id/className
 * @param {content} content:节点文本
 * @param {content} timeOut:寻找组件的超时时长
 * @return: {string} 节点文本
 * @author: 飞云
 * @Date: 2019-09-07 17:05:26
 */
function getNodeText(way, content, timeOut) {
    if (!timeOut) { timeOut = 1000 }
    let result = ""
    if (!content) {
        return result
    }
    let object
    if (way == "text") {
        object = text(content).visibleToUser(true).findOne(timeOut);
    } else if (way == "desc") {
        object = desc(content).visibleToUser(true).findOne(timeOut);
    } else if (way == "id") {
        object = id(content).visibleToUser(true).findOne(timeOut);
    } else if (way == "className") {
        object = className(content).visibleToUser(true).findOne(timeOut);
    } else {
        log("findNode:" + way + " 参数不正确")
    }

    if (object != null) {
        result = object.text();
    } else {
        log("findNode:" + content + " 不存在/没找到")
    }
    return result
};


/**
寻找节点
@version  20191008
@author   飞云<283054503@qq.com> 
@param    way:节点属性text/desc/id
@param    content:节点文本
@param    timeOut:寻找组件的超时时长
@return   Boolean:是否找到
*/
function findNode(way, content, timeOut) {
    if (!timeOut) { timeOut = 1000 }
    let result = false
    if (!content) {
        return result
    }
    let object
    if (way == "text") {
        object = text(content).visibleToUser(true).findOne(timeOut);
    } else if (way == "desc") {
        object = desc(content).visibleToUser(true).findOne(timeOut);
    } else if (way == "id") {
        object = id(content).visibleToUser(true).findOne(timeOut);
    } else if (way == "className") {
        object = className(content).visibleToUser(true).findOne(timeOut);
    } else {
        log("findNode:" + way + " 参数不正确")
    }

    if (object != null) {
        result = true
    } else {
        // log("findNode:" + content + " 不存在/没找到")
    }
    return result
};

/**
寻找组件
@version  20190819
@author   飞云<283054503@qq.com> 
@param    object:组件对象
@param    timeOut:寻找组件的超时时长
@return   Boolean:是否找到
*/
function findObject(object, timeOut) {
    if (!timeOut) { timeOut = 1000 }
    let result = false
    object = object.findOne(timeOut);

    if (object != null) {
        result = true
    } else {
        // log("findObject:" + content + " 不存在/没找到")
    }
    return result
};


/**
点击节点
@version  20191223
@author   飞云<283054503@qq.com> 
@param    way:节点属性text/desc/id
@param    content:节点文本
@param    milliSecond:点击后延迟,毫秒
@return   Boolean 是否执行成功
*/
function clickNode(way, content, milliSecond) {
    if (!milliSecond) { milliSecond = 1000 }
    let result = false
    if (!content) {
        return result
    }
    let object
    if (way == "text") {
        object = text(content).visibleToUser(true).findOne(1000);
    } else if (way == "desc") {
        object = desc(content).visibleToUser(true).findOne(1000);
    } else if (way == "id") {
        object = id(content).visibleToUser(true).findOne(1000);
    } else if (way == "className") {
        object = className(content).visibleToUser(true).findOne(1000);
    } else {
        log("clickNode:" + way + " 参数不正确")
    }

    if (object != null) {
        if (object.clickable()) {
            result = object.click()
            result && sleep(milliSecond)
        } else {
            log("clickNode:" + content + " 不可点击")
        }
    } else {
        // log("clickNode:" + content + " 不存在/没找到")
    }

    return result
};


/**
点击节点中心点坐标
@version  20191201
@author   飞云<283054503@qq.com> 
@param    way:节点属性text/desc/id
@param    content:节点文本
@param    milliSecond:点击后延迟,毫秒
@return   Boolean:是否执行成功
*/
function clickNodeR(way, content, milliSecond, isRootEd) {
    if (!milliSecond) { milliSecond = 1000 }
    let result = false
    if (!content) {
        return result
    }
    let object
    if (way == "text") {
        object = text(content).visibleToUser(true).findOne(1000);
    } else if (way == "desc") {
        object = desc(content).visibleToUser(true).findOne(1000);
    } else if (way == "id") {
        object = id(content).visibleToUser(true).findOne(1000);
    } else if (way == "className") {
        object = className(content).visibleToUser(true).findOne(1000);
    } else {
        log("clickNodeR:" + way + " 参数不正确")
    }

    if (object != null) {
        let x = object.bounds().centerX()
        let y = object.bounds().centerY()
        if (x > 0 & y > 0) {
            if (isRootEd) {
                result = Tap(parseInt(x), parseInt(y))
            } else {
                result = click(parseInt(x), parseInt(y))
            };

            result && sleep(milliSecond)
        } else {
            log("clickNodeR:" + content + " 不在屏幕可视范围")
        }

    } else {
        // log("clickNodeR:" + content + " 不存在/没找到")
    }

    return result
};

/**
点击组件
@version  20190821
@author   飞云<283054503@qq.com> 
@param    object:组件对象
@param    milliSecond:点击后延迟,毫秒
@return   Boolean:是否执行成功
*/
function clickObject(object, milliSecond) {
    if (!milliSecond) { milliSecond = 1000 }
    let result = false
    object = object.findOne(1000);

    if (object != null) {
        if (object.clickable()) {
            result = object.click()
            result && sleep(milliSecond)
        } else {
            log("clickObject: 不可点击")
        }
    } else {
        // log("clickObject:" + content + " 不存在/没找到")
    }

    return result
};

/**
点击组件中心点
@version  20191217
@author   飞云<283054503@qq.com> 
@param    object:组件对象
@param    milliSecond:点击后延迟,毫秒
@return   Boolean:是否执行成功
*/
function clickObjectR(object, milliSecond, isRootEd) {
    if (!milliSecond) { milliSecond = 1000 }
    let result = false
    // object = object.findOne(1000);
    if (object != null) {
        let x = object.bounds().centerX()
        let y = object.bounds().centerY()
        if (x > 0 & y > 0) {
            if (isRootEd) {
                result = Tap(parseInt(x), parseInt(y))
            } else {
                result = click(parseInt(x), parseInt(y))
            };

            result && sleep(milliSecond)
        } else {
            log("clickObjectR: object 不在屏幕可视范围")
        }

    } else {
        // log("clickNodeR:" + content + " 不存在/没找到")
    }
    return result
};


/**
点击父组件
@version  20190819
@author   飞云<283054503@qq.com> 
@param    way:节点属性text/desc/id
@param    content:节点文本
@param    milliSecond:点击后延迟,毫秒
@return   Boolean 是否执行成功
*/
function clickParentNode(way, content, milliSecond) {
    if (!milliSecond) { milliSecond = 1000 }
    let result = false
    let object
    if (way == "text") {
        object = text(content).findOne(1000);
    } else if (way == "desc") {
        object = desc(content).findOne(1000);
    } else if (way == "id") {
        object = id(content).findOne(1000);
    } else if (way == "className") {
        object = className(content).findOne(1000);
    } else {
        log("clickParentNode:" + way + " 参数不正确")
    }

    if (object != null) {
        let far = object.parent();
        if (far != null) {
            if (far.clickable()) {
                result = far.click()
                result && sleep(milliSecond)
            } else {
                log("clickParentNode:" + content + " 父组件不可点击")
            }
        };
    } else {
        // log("clickNode:" + content + " 不存在/没找到")
    }

    return result
};


/**
点击父组件中心点
@version  20190819
@author   飞云<283054503@qq.com> 
@param    way:节点属性text/desc/id
@param    content:节点文本
@param    milliSecond:点击后延迟,毫秒
@return   Boolean 是否执行成功
*/
function clickParentNodeR(way, content, milliSecond, isRootEd) {
    if (!milliSecond) { milliSecond = 1000 }
    let result = false
    let object
    if (way == "text") {
        object = text(content).findOne(1000);
    } else if (way == "desc") {
        object = desc(content).findOne(1000);
    } else if (way == "id") {
        object = id(content).findOne(1000);
    } else if (way == "className") {
        object = className(content).findOne(1000);
    } else {
        log("clickParentNodeR:" + way + " 参数不正确")
    }

    if (object != null) {
        let far = object.parent();
        if (far != null) {
            if (far.clickable()) {
                result = far.click()
                result && sleep(milliSecond)
            } else {
                let x = far.bounds().centerX()
                let y = far.bounds().centerY()
                if (x > 0 & y > 0) {
                    if (isRootEd) {
                        result = Tap(parseInt(x), parseInt(y))
                    } else {
                        result = click(parseInt(x), parseInt(y))
                    };
                    result && sleep(milliSecond)
                } else {
                    log("clickParentNodeR:" + content + " 父组件不在屏幕可视范围")
                }
            }
        };
    } else {
        // log("clickNode:" + content + " 不存在/没找到")
    }

    return result
};


/*
* 获取指定应用的版本号
* @param {string} packageName 应用包名
* 20191227
*/
function getPackageVersion(packageName) {
    var name = getAppName(packageName);
    if (name != null) {
        importPackage(android.content);
        var pckMan = context.getPackageManager();
        var packageInfo = pckMan.getPackageInfo(packageName, 0);
        return packageInfo.versionName;
    }
    return "";
};

// 倒计时提示
function countdown(waitTime, tips) {
    log('暂停等待 ' + waitTime + ' 秒')
    let m = 0;
    while (m < waitTime) {
        // toastLog(tips + " " + (waitTime - m) + " 秒")
        sleep(1000)
        m++;
    };
}

// 比较日期大小
function compareDate(begintime, endtime) {
    return ((new Date(begintime.replace(/-/g, "\/"))) < (new Date(endtime.replace(/-/g, "\/"))));
};

// 获取当前日期2019-11-26
function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = year + seperator1 + month + seperator1 + strDate;
    return currentdate;
}

//取Enjoy表情
function getRndEnjoyFace() {
    var face = new Array("咖啡", "大笑", "色", "调皮", "害羞", "胜利", "爱心", "酷",
        "鼓掌", "偷笑", "奸笑", "太阳", "可爱", "嘘", "晕", "握手", "鼓掌", "强", "吻", "机智", "得意",
        "玫瑰", "愉快", "比心", "耶", "拥抱", "勾引", "坏笑", "呲牙", "微笑", "加好友", "送心");
    var i = parseInt(10 * Math.random());
    return "[" + face[i] + "]";  //返回字符串（对象转换成字符串）
};


// 从数组中随机取出一个元素或者几个元素
// http://caibaojian.com/js-get-random-elements-from-array.html
function getRandomArrayElements(arr, count) {
    var shuffled = arr.slice(0), i = arr.length, min = i - count, temp, index;
    while (i-- > min) {
        index = Math.floor((i + 1) * Math.random());
        temp = shuffled[index];
        shuffled[index] = shuffled[i];
        shuffled[i] = temp;
    }
    return shuffled.slice(min);
}


/**
 * @description: 验证识别
 * @return: 返回是否识别成功
 * @author: 飞云
 * @Date: 2019-12-07
 */
function verificationCode() {
    let discern = false;
    if (!checkPoint()) {   //检查可用点数
        return discern;
    };
    if (!requestTimes) {
        return discern;
    }

    let num = 0;
    let sure = false;   //是否点击确定按钮
    let captchaId = ""

    while (num < requestTimes) {
        if (findNode("text", "请完成下列验证后继续")) {
            if (sure) {
                uploadLog("联众识别错误,上报问题", "warn", "log", myAPP.uid, myAPP.appName)
                // clickNode("id", "com.douban.frodo:id/change", 5000);    //换一张

                // https://l-files.cn-gd.ufileos.com/api/联众识别2.0-API接口协议.pdf
                var i = device.release, c = device.model, s = device.buildId;
                try {
                    var json = http.postJson("https://v2-api.jsdama.com/report-error", {
                        softwareId: softwareId,
                        softwareSecret: softwareSecret,
                        username: username,
                        password: password,
                        captchaId: captchaId,
                    }, {
                        headers: {
                            "User-Agent": "Mozilla/5.0 (Linux; Android " + i + "; " + c + " Build/" + s + "; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 Mobile Safari/537.36",
                        }
                    });

                    var html = json.body.json(), code = html.code, message = html.message;
                    if (code == "0") {
                        // {"code":0,"message":"","data":{"result":true}}
                        let result = html.data.result;
                        if (result == "true") {
                            uploadLog("上报错误成功", "info", "log", myAPP.uid, myAPP.appName)
                        }
                    } else {
                        log(html)
                        // { code: 10248023, message: '请勿对该数据重复报错' }
                    }
                    sure = false;   //重置变量
                } catch (e) {
                    log("网络请求错误:" + e)
                };

            } else {
                uploadLog("开始执行第 " + num + " 次截图", "info", "log", myAPP.uid, myAPP.appName)
                let src = captureScreen(), clip; //截图
                log("获取验证图片区域")
                let area = className("Image").depth(9).findOnce(1);
                if (area != null) {
                    let rect = area.bounds();
                    clip = images.clip(src, rect.left, rect.top, rect.width(), rect.height());
                    toastLog("对接联众识别")
                    let result = getCode(clip);
                    log("联众识别结果:", result, result.code, result.data.recognition)
                    uploadLog("联众识别结果:" + JSON.stringify(result), "info", "log", myAPP.uid, myAPP.appName)
                    // { code: 0, message: '', data: { recognition: '361,186', captchaId: '20191207:000000000036881447289' } }
                    // { code: '-1', message: '网络链接超时...', data: {} } '-1' undefined
                    if (result.code == 0) {
                        let res = result.data.recognition;
                        captchaId = result.data.captchaId;   //若识别错误,作为提交参数
                        let strs = new Array(); //定义一数组 
                        strs = res.split(","); //字符分割 

                        // 判断识别结果的字符长度
                        if (strs.length == 2) {
                            let slider = className("Image").depth(10).findOnce(0);
                            if (slider != null) {
                                let x = Number(slider.bounds().centerX()), y = Number(slider.bounds().centerY());
                                let halfWith = slider.bounds().width() / 2;
                                log(x, y, x + Number(strs[0]), y)

                                if (isRootEd) {
                                    Swipe(x, y, x + Number(strs[0]), y, 3000);
                                } else {
                                    swipe(x, y, x + Number(strs[0]), y, 3000);
                                };
                                sleep(5000)
                                sure = true;
                            } else {
                                log("未找到滑块")
                            }
                        } else {
                            uploadLog("返回值格式不正确,识图失败.识图结果:" + res, "error", "log", myAPP.uid, myAPP.appName)
                            sure = clickParentNode("text", "刷新");    //换一张
                        };
                    } else {
                        uploadLog("错误信息:" + result.message, "error", "log", myAPP.uid, myAPP.appName)
                    };
                } else {
                    uploadLog("识图出错,未找到验证区域", "error", "log", myAPP.uid, myAPP.appName)
                };
            };
        } else {
            //这个判断可能不严谨
            discern = true;
            uploadLog("识图结束", "info", "log", myAPP.uid, myAPP.appName)
            break;   //跳出循环
        };

        sleep(3000);
        num++;
    };

    return discern;
};

/**
 * @description: 检查可用点数
 * @return: 返回是否识可用
 * @author: 飞云
 * @Date: 2019-12-07
 */
function checkPoint() {
    let discern = false;
    var i = device.release, c = device.model, s = device.buildId;
    if (!softwareId || !softwareSecret || !username || !password) {
        log("联众识别信息未配置")
        return false;
    }
    try {
        var json = http.postJson("https://v2-api.jsdama.com/check-points", {
            softwareId: softwareId,
            softwareSecret: softwareSecret,
            username: username,
            password: password,
        }, {
            headers: {
                "User-Agent": "Mozilla/5.0 (Linux; Android " + i + "; " + c + " Build/" + s + "; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 Mobile Safari/537.36",
            }
        });

        var html = json.body.json(), code = html.code, message = html.message;
        if (code == "0") {
            //  { message: '',data: { availablePoints: 74, lockPoints: 0, userPoints: 74 },code: 0 }
            let availablePoints = html.data.availablePoints, userPoints = html.data.userPoints, lockPoints = html.data.lockPoints;
            log("联众可用/锁定/总点数:" + availablePoints + "/" + lockPoints + "/" + userPoints)
            if (availablePoints < 10) {
                log("联众可用点数不足,请到后台充值")
            } else {
                discern = true;
            }
        } else {
            //{ code: 10196001, message: 'softwareSecret长度错误' }
            log("获取联众点数出错:" + message)
        }
    } catch (e) {
        log("网络请求错误:" + e)
    };
    return discern;
};

/**
 * @description: 联众识别
 * @param {img} img:base64数据 
 * @return: json
 * @author: 飞云
 * @Date: 2019-09-11 16:47:35
 */
function getCode(img) {
    http.__okhttp__.setTimeout(3e4);
    var imgData = images.toBase64(img, format = "png"), i = device.release, c = device.model, s = device.buildId;
    try {
        var json = http.postJson("https://v2-api.jsdama.com/upload", {
            softwareId: softwareId,
            softwareSecret: softwareSecret,
            username: username,
            password: password,
            captchaData: imgData,
            captchaType: captchaType,
            captchaMinLength: captchaMinLength,
            captchaMaxLength: captchaMaxLength,
            workerTipsId: 0
        }, {
            headers: {
                "User-Agent": "Mozilla/5.0 (Linux; Android " + i + "; " + c + " Build/" + s + "; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 Mobile Safari/537.36",
            }
        });

        var html = json.body.json(), code = html.code, message = html.message;
        if (code == "0") {
            // log(html.data.recognition)
            // { data:    { recognition: '296,192',     captchaId: '20190903:000000000033308132201' },  message: '',  code: 0 }
            return {
                code: code,
                message: message,
                data: {
                    recognition: html.data.recognition,
                    captchaId: html.data.captchaId
                }
            };
        } else if (code == "10079009" || code == "10142006" || code == "10142004" || code == "10142005" || code == "10079006") {
            return {
                code: code,
                message: message,
                data: {}
            };
        } else {
            log("其他识别结果", code)
        };
    } catch (e) {
        return {
            code: "-1",
            message: "网络链接超时...",
            data: {}
        };
    };

    return html;
};


//判断是否联网
function isNetworking() {
    try {
        if (http.get("www.baidu.com").statusCode == 200) {
            return true;
        } else {
            return false;
        };
    } catch (e) {
        return false;
    };
};

/**
判断元素是否存在于数组中
@param {Object} arr 数组
@param {Object} value 元素值
*/
function isInArray(arr, value) {
    var index = arr.indexOf(value);
    if (index >= 0) {
        return true;
    }
    return false;
}

// 取今天的日期2019-12-20
function getToday() {
    var day2 = new Date();
    day2.setTime(day2.getTime());
    return day2.getFullYear() + "-" + (day2.getMonth() + 1) + "-" + day2.getDate();
}


//2019.4.5 悬浮按钮方法
function suspendButton() {
    var window = floaty.rawWindow(
        <frame>
            <button id="action" text="■" textColor="#ffffff" size="12" style="Widget.AppCompat.Button.Colored" w="40" h="40" />
        </frame>
    );

    window.setPosition(0, device.height / 2 - 80);   //悬浮块位置
    var x = 0, y = 0;  //记录按键被按下时的触摸坐标
    var windowX, windowY;  //记录按键被按下时的悬浮窗位置
    //当前线程
    window.action.setOnTouchListener(function (view, event) {
        switch (event.getAction()) {
            case event.ACTION_MOVE:
                //移动手指时调整悬浮窗位置
                window.setPosition(windowX + (event.getRawX() - x),
                    windowY + (event.getRawY() - y));
                //如果按下的时间超过多少秒判断为长按，退出脚本
                if (new Date().getTime() - downTime > 4000) {
                    console.hide();
                    exit();
                }
                return true;
            case event.ACTION_DOWN:
                x = event.getRawX();
                y = event.getRawY();
                windowX = window.getX();
                windowY = window.getY();
                downTime = new Date().getTime();
                return true;
            case event.ACTION_UP:
                //手指弹起时如果偏移很小则判断为点击
                if (Math.abs(event.getRawY() - y) < 5 && Math.abs(event.getRawX() - x) < 5) {
                    if (window.action.getText() == '▶') {
                        window.action.setText('■');
                        // ui.taskMonitor.setChecked(true);
                        if (!myAPP.uid) {
                            log("设备信息未正确录入")
                        } else {
                            uploadLog("开启任务监控", "info", "log", myAPP.uid)
                            taskThread = threads.start(function () {
                                if (!isRequest) {
                                    isRequest = requestScreenshot();   //请求截图权限,自动处理弹窗
                                }
                                if (getOverallParam()) {
                                    checkPoint();   //检查联众识别点数
                                    core();
                                };   // 请求全局配置
                            });
                        };
                    } else {
                        window.action.setText('▶');
                        uploadLog("停止任务监控", "info", "log", myAPP.uid)
                        taskThread.interrupt();   //中断线程运行
                        app.startActivity('console');
                        // ui.taskMonitor.setChecked(false);
                    }
                }
                return true;
        }
        return true;
    });
}


function 多闪_是否发过消息() {
    if (id(mayaNode.letter_id_talking_area).exists()) {
        var rect = id(mayaNode.letter_id_talking_area).findOne().bounds();  //寻找会话区域
        var img = captureScreen();

        //寻找绿色
        var point = findColor(img, "#ff28e08b", {
            region: [rect.left, rect.top, rect.width(), rect.height()],
            threshold: 4
        });

        if (point) {
            //寻找会话内容
            let object = id(mayaNode.letter_id_talking_content).find();
            if (!object.empty() && object.length == 1) {
                return false;   //只有一条自己发的绿色消息
            } else {
                return true;
            };
        };
    };
    return false;
};


// 判断是否在临时会话盒子内(不支持不分华为机型)
function isTempBox(object) {
    if (object != null) {
        let child = object.parent().children()
        for (var i = 0; i < child.length; i++) {
            let tv = child[i]
            if (tv.text() == "临时会话盒子") {
                return true;
            }
        };
    }
    return false;
}



/**
下载文件到SD卡
@version  20200208
@author   飞云<283054503@qq.com> 
@param    url:文件网址
@param    appName:应用名称
@param    defaultCatalog:存储目录,"/sdcard/"后面的单层或多层目录,结尾必须有斜杠.可空
@param    defaultFilename:默认文件名,可空
@return   {string}:返回文件路径
*/
function downloadFile(url, appName, defaultCatalog, defaultFilename) {
    let result = "";
    try {
        let fileName = getUrlFileName(url) ? getUrlFileName(url) : defaultFilename;
        let catalogName = defaultCatalog ? "/sdcard/" + defaultCatalog : files.cwd() + "/" + appName + "/resource/";
        // log("下载地址:" + url)
        // log("文件名:" + fileName)
        // log("目录名:" + catalogName)
        // log(catalogName, defaultCatalog, files.cwd())
        files.createWithDirs(catalogName);   //创建一个文件或文件夹并返回是否创建成功
        http.__okhttp__.setTimeout(3e4);
        let res = http.get(url);
        if (res.statusCode == 200) {
            files.writeBytes(catalogName + fileName, res.body.bytes());
            sleep(5000);
            if (files.isFile(catalogName + fileName)) {
                result = catalogName + fileName;
                ////  刷新文件
                app.sendBroadcast(new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE, android.net.Uri.fromFile(java.io.File(result))));
            } else {
                log("下载失败,路径出错")
            };
        } else {
            log("下载失败,网络或服务器文件错误")
        };
    } catch (err) {
        log(err + ",文件不存在,请检查")
    };
    return result;
};



/**
获取URL地址中的文件名
@return     Strimg:返回最后一个斜杠后面的文件名,不含参数
*/
function getUrlFileName(url) {
    var tmp = new Array();  //临时变量，保存分割字符串 
    tmp = url.split("/");  //按照"/"分割 
    var pp = tmp[tmp.length - 1];  //获取最后一部分，即文件名和参数 
    tmp = pp.split("?");  //把参数和文件名分割开 
    return tmp[0];
};

// 抖音数量转换
function changeNum(str) {
    let num = 0;
    if (str.indexOf('w') != -1) {
        //包含W 
        num = parseFloat(str) * 10000
    } else {
        num = parseFloat(str)
    }
    return num;
};