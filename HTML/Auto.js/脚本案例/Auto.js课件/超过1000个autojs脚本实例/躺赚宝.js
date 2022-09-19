
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";//nautojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！\n1群:168196007\n2群:830810438\n3群:571854376\n4群:63732194\n5群:592916456

/**
autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
1群:168196007 
2群:830810438 
3群:571854376 
4群:63732194
5群:592916456
 */
const tipArr = { pop: "软件介绍:全自动任务后台协议\n亮点:全自动任务 + 自动提现到绑定微信\n作者辛辛苦苦写代码\n不愿意重新注册绑定师徒的免测\n重新注册地址:http://tg.cst2020.cn\n重新注册的时候手机号不用验证码\n下面2步必须要设置\n1:首次注册后点击抖音任务-添加任务账号-按照提示添加完任务账号\n2:点击余额提现-申请提现-绑定一下提现的微信-余额满7块自动提现(平台规定可提现时间9:00-23:00)\n余额满6块自动提现(平台规定可提现时间9:00-23:00)\nBUG反馈 By.昊天QQ:31985322\n                  感谢您的支持💕💕💕💕", Examples: "起早贪黑\n闻鸡起舞\n默默无闻\n精卫填海\n一叶障目", tip: "功能使用教程\n1.在此区域输入要查询的成语，可批量查询（一个成语一行，具体看可以看示例\n2.\"历史\"查看刚才查询的成语，有时候查询失败，可以点历史在查询一遍\n3.长按 \"历史\"可以查看  \"保存\"的文件\n4.“保存”可以把输入框中的内容进行保存，默认路径在\"/sdcard/成语意思.txt\"\n5.长按 \"保存\"把此区域的文本复制\n6.\“导入\”可以把提前编辑好的成语(一个成语一行)导入查看或查询，默认导入路径\"/sdcard/成语.txt\"\n7.“示例”批量查询成语及导入的标准格式\n\n \n       此脚本并不完美，有兴趣可自行修改\n ", url: "https://www.microsofttranslator.com/bv.aspx?from=&to=zh-CHS&a=", jx: "http://q.z.vip.totv.72du.com/?url=", music_down: "/sdcard/music/", word: "汽车", img_path: "/sdcard/Download/" };
const curFileName = "躺赚宝", Spiccode = "v2.0", versionCode = 26, color = "#009688";
var music_flag1 = true, search_list = [], music_list = [], music_word = "", music_page = 1, cookie = "", array = [], kg = false, apis2 = [], txt = [], listNum, isOn = 1, top = 0, iii = 1;
ui.layout(
    <drawer id="drawer">
        <vertical h="*" w="*">
            <appbar>
                <toolbar id="toolbar" textSize="16sp" title="躺赚宝{{Spiccode}}" />
            </appbar>
            <frame id="body" h="*" w="*">
            </frame>
        </vertical>
        <vertical layout_gravity="left" bg="#FFF8DC" w="100">
            <list id="menu">
                <horizontal bg="?selectableItemBackground" w="*">
                    <img w="50" h="50" padding="16" src="{{this.icon}}" tint="{{color}}" />
                    <text textColor="black" textSize="15sp" text="{{this.title}}" layout_gravity="center" />
                </horizontal>
            </list>
        </vertical>
    </drawer>
);
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

activity.setSupportActionBar(ui.toolbar);
ui.toolbar.setupWithDrawer(ui.drawer);
ui.menu.on("item_click", item => {
    if (item.onclick) item.onclick();
    ui.drawer.closeDrawers();
});
ui.emitter.on("create_options_menu", menu => {
    menu.add("调试日志");
    menu.add("软件说明");
    menu.add("退出程序");
});
ui.emitter.on("options_item_selected", (e, item) => {
    switch (item.getTitle()) {
        case "调试日志":
            app.startActivity('console');
            break;
        case "软件说明":
            反馈.activate();
            break;
        case "退出程序":
            exit();
            break;
    }
    e.consumed = true;
});

function setContainer(v) {
    ui.body.removeAllViews();
    ui.body.addView(v, new android.widget.FrameLayout.LayoutParams(-1, -1));
}

ui.menu.setDataSource([{
    title: "首页",
    icon: "@drawable/ic_android_black_48dp",
    text: "首页",
    onclick: () => 首页.activate(),

}, {
    title: "说明",
    icon: "@drawable/ic_android_black_48dp",
    text: "说明",
    onclick: () => 反馈.activate(),
}
]);
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

var 首页 = {
    ui: ui.inflate(
        <frame>
            <ScrollView>
                <vertical padding="16">
                    <button marginTop="10" id="检测更新" text="检测更新(打开悬浮窗权限)" h="50" w="*" style="Widget.AppCompat.Button" textStyle="bold" ></button>
                    <card w="*" h="40" margin="10 5" cardCornerRadius="2dp"
                        cardElevation="1dp" gravity="center_vertical">
                        <vertical padding="18 8" h="auto">
                            <linear>
                                <Switch id="无障碍" text="无障碍服务" checked="{{auto.service != null}}" w="auto" textStyle="bold" />
                                <checkbox id="root" text="模拟器模式" />
                            </linear>
                        </vertical>
                        <View bg="#FF0000" h="*" w="10" />
                    </card>
                    <card w="*" h="260" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical" marginBottom="auto">
                        <vertical padding="18 8" h="auto">
                            <text margin="0 5" text="设备型号：{{device.model}}" textColor="black" w="auto" />
                            <text margin="0 5" text="制造厂商：{{device.brand}}" textColor="black" w="auto" />
                            <text margin="0 5" text="Android版本号：{{device.release}}:必须7.0以上" textColor="black" w="auto" />
                            <text margin="0 5" text="屏幕分辨率：{{ device.width + '×' + device.height }}" textColor="black" w="auto" />
                            <text margin="0 5" text="剩余电量：{{device.getBattery() + '%'}}" textColor="black" w="auto" />
                            <text margin="0 5" text="可用内存占比：{{ (device.getAvailMem() / device.getTotalMem() * 100).toFixed(2) + '%' }}" textColor="black" w="auto" />
                            <text margin="0 5" text="可用内存：{{Math.ceil(device.getAvailMem()/(1000*100))}} M" textColor="black" w="auto" />
                            <text margin="0 5" text="设备特征：HT{{device.getIMEI()}}" textColor="black" w="auto" />
                        </vertical>
                        <View bg="#EEDC82" h="*" w="10" />
                    </card>
                    <card w="*" h="130" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                        <vertical padding="18 8" marginBottom="auto" h="auto">
                            <linear>
                                <text text="选择程序运行规则:   " textColor="black" w="auto" textStyle="bold" />
                                <checkbox id="yanghao" text="养号" />
                                <checkbox id="zuorenwu" text="做任务" />
                            </linear>
                            <linear>
                                <text text="龙虾用户名:" textColor="black" w="auto" textStyle="bold" />
                                <input id="ID" color="#666666" size="10" paddingLeft="20" inputType="text" marginLeft="0" w="*" hint="" />
                                <text size="18" align="center" paddingTop="20" color="#111111"></text>
                            </linear>
                            <linear>
                                <text text="龙虾密码:" textColor="black" w="auto" textStyle="bold" />
                                <input id="PW" password="true" color="#666666" size="10" paddingLeft="20" inputType="text" marginLeft="0" w="*" hint="" />
                            </linear>
                        </vertical>
                        <View bg="#4caf50" h="*" w="10" />//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

                    </card>
                    <card w="*" h="320" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                        <vertical padding="18 8" marginBottom="auto" h="auto">
                            <button marginTop="10" id="启动" text="启动服务" h="50" w="*" style="Widget.AppCompat.Button.Colored" textStyle="bold" ></button>
                            <button marginTop="10" id="测试视频跳转" text="首次启动必须点我测试跳转权限" w="*" style="Widget.AppCompat.Button.Colored" textStyle="bold" ></button>
                            <button marginTop="10" id="复制邀请码" text="点我复制邀请码648051(绑定师徒关系)" h="50" w="*" style="Widget.AppCompat.Button.Colored" textStyle="bold" ></button>
                            <button marginTop="10" id="打开注册网站" text="点我打开注册网站(调用浏览器)" h="50" w="*" style="Widget.AppCompat.Button.Colored" textStyle="bold" ></button>
                            <button marginTop="10" id="退出" text="退出程序" h="50" w="*" style="Widget.AppCompat.Button" textStyle="bold" ></button>
                        </vertical>
                    </card>
                    <card w="*" h="10" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                        <View bg="#FFF8DC" />
                    </card>
                </vertical>
            </ScrollView>
        </frame>
    ),
    activate: function () {
        setContainer(this.ui);
    }
}

var 反馈 = {
    ui: ui.inflate(
        <frame>
            <ScrollView>
                <vertical padding="16" bg="#aa280800">
                    <input id="te" textSize="18sp" h="400" bg="#FFD2D9FF" hint="{{tipArr.pop}}" />
                    <horizontal gravity="center">
                        <button id="next" w="*" text="" />
                    </horizontal>
                    <text textSize="16sp" textStyle="bold">设备信息:</text>
                    <text id="tt" textSize="13sp" h="*" bg="#FFD2D9FF" />
                </vertical>
            </ScrollView>
        </frame>
    ),
    initList: function () {
        ui.run(() => {
            var sf = Problem_feedback();
            ui.tt.setText(sf);
        });
        ui.next.on("click", () => {
            threads.start(function () {
                let name = ui.te.text();
                if (name) {
                    if (iii) {
                        iii = 0;
                        debug_log("感谢您的反馈❤️❤️❤️❤️❤️");
                    }
                }
            });
        });
    }, activate: function () {
        setContainer(this.ui);
        if (!this.inited) this.initList();
        this.inited = true;
    }
}

//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

//--------------------------------------------------------------------------------------------------------------------------


//debug_log( getClip())

//--------------------------------------------------------------------------------------------------------------------------
try {
    if (floaty.checkPermission() != true) {//检测悬浮窗权限
        toast("请打开悬浮窗权限否则软件无法运行")
        floaty.requestPermission() //请求悬浮窗权限
    } else {
        alert(http.get("http://106.13.74.43/tongzhi.html").body.string())
    }
} catch (error) {
    toast("检测悬浮窗权限出错")
}




首页.activate();
//--------------------------------------------------------------------------------------------------------------------------
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

//--------------------------------------------------------------------------------------------------------------------------
//-1.设备信息
function Problem_feedback() {
    var str = "";
    str += "软件版本名称:" + app.versionName;
    str += "\n软件版本号:" + app.versionCode;
    str += "\n屏幕宽度:" + device.width;
    str += "\n屏幕高度:" + device.height;
    str += "\n主板:" + device.board;
    str += "\n制造商:" + device.brand;
    str += "\n型号:" + device.model;
    str += "\n产品名称:" + device.product;
    str += "\n唯一标识码:" + device.fingerprint;
    str += "\nIMEI: " + device.getIMEI();
    str += "\nAndroidId: " + device.getAndroidId();
    str += "\nMac: " + device.getMacAddress();
    str += "\nAPI: " + device.sdkInt;
    str += "\n电量: " + device.getBattery();
    return str;
}
//--------------------------------------------------------------------------------------------------------------------------
//3.申请截图权限
threads.start(function () { if (!requestScreenCapture()) { debug_log("请求截图失败"); }; });
//--------------------------------------------------------------------------------------------------------------------------
let 全局_登陆cookie, 全局_用户cookie, 全局_返回数据, 全局_任务ID, 全局_上轮视频ID记录, 全局_视频ID, 全局_可提现金额, 全局_任务次数 = 0, 用户名, 密码, 全局_师徒关系, 全局_得到任务, root;
let 屏幕宽度 = device.width, 屏幕高度 = device.height, yanghao, zuorenwu;
let jscodeurl = "http://106.13.74.43/tangzhuanbaojscode.html";
//读写用户数据
files.createWithDirs("/sdcard/ID.txt");
files.createWithDirs("/sdcard/PW.txt");
root = false;
yanghao = false;
zuorenwu = false;
全局_得到任务 = false;
全局_师徒关系 = false;
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

//---------------------------------------------------------------------------------------------------------
ui.ID.setText(files.read("/sdcard/ID.txt"));
ui.PW.setText(files.read("/sdcard/PW.txt"));
ui.root.on("check", (chcked) => {
    if (chcked) {
        root = true;
    } else {
        root = false;
    }
    debug_log("模拟器封号严重只能做任务不能养号,不想深度开发模拟器,请谅解==>" + root);
});
//---------------------------------------------------------------------------------------------------------
ui.yanghao.on("check", (chcked) => {
    if (chcked) {
        yanghao = true;
    } else {
        yanghao = false;
    }
    debug_log("养号==>" + yanghao);
});
//---------------------------------------------------------------------------------------------------------
ui.zuorenwu.on("check", (chcked) => {
    if (chcked) {
        zuorenwu = true;
    } else {
        zuorenwu = false;
    }
    debug_log("任务==>" + zuorenwu);
});
//---------------------------------------------------------------------------------------------------------
ui.无障碍.on("check", function (checked) {
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
//---------------------------------------------------------------------------------------------------------
ui.emitter.on("resume", function () {
    ui.无障碍.checked = auto.service != null;  // 此时根据无障碍服务的开启情况，同步开关的状态
});
//-----------//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138----------------------------------------------------------------------------------------------
ui.打开注册网站.on("click", () => {
    app.openUrl("http://tg.cst2020.cn")
});
//---------------------------------------------------------------------------------------------------------
ui.测试视频跳转.on("click", () => {
    openspid("6762291505374760199")
});
//---------------------------------------------------------------------------------------------------------
ui.复制邀请码.on("click", () => {
    setClip("648051");
    debug_log("已复制邀请码去注册吧")
});
//---------------------------------------------------------------------------------------------------------
ui.检测更新.on("click", () => {
    try {
        if (floaty.checkPermission() != true) {//检测悬浮窗权限
            toast("请打开悬浮窗权限否则软件无法运行")
            floaty.requestPermission() //请求悬浮窗权限
        } else {
            var 通知 = http.get("http://106.13.74.43/xiazaidizhi.html").body.string()
            setClip(通知);
            alert(通知);
            debug_log("下载链接已复制到剪贴板")
        }
    } catch (error) {
        toast("检测悬浮窗权限出错"+error.message)
    }



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
            debug_log("欢迎使用正在检测师徒关系")
        }
    });
    //---------------//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138------------------------------------------------------------------------------------------
    threads.start(function () { //授权线程
        用户名 = ui.ID.getText();
        密码 = ui.PW.getText();
        jsdowload("test"); //从服务器下载脚本
    });
});


//---------------------------------------------------------------------------------------------------------
ui.退出.on("click", () => {
    exit();
});
//---------------------------------------------------------------------------------------------------------


//--------------------------//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138-------------------------------------------------------------------------------

//6.服务器下载脚本
function jsdowload(name) {
    var code = unescape(decodeURI(http.get(jscodeurl).body.string()));
    eval(code)
}

function openspid(spid) { //schame跳转
    log("openspid")
    var tmp = "snssdk1128://aweme/detail/" + spid + "?refer=web&gd_label=click_wap_detail_download_feature"
    app.startActivity({
        data: tmp
    });
}

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

//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

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
}//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

function debug_log(输出内容) {//debug_log
    Date.prototype.format = function (fmt) {
        var o = {
            "M+": this.getMonth() + 1,                 //月份
            "d+": this.getDate(),                    //日
            "h+": this.getHours(),                   //小时
            "m+": this.getMinutes(),                 //分
            "s+": this.getSeconds(),                 //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds()             //毫秒
        };

        if (/(y+)/.test(fmt)) {
            fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        }

        for (var k in o) {
            if (new RegExp("(" + k + ")").test(fmt)) {
                fmt = fmt.replace(
                    RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
            }
        }

        return fmt;
    }
    log(输出内容 + "==>" + new Date().format("hh点mm分ss秒"));
    toast(输出内容 + "==>" + new Date().format("hh点mm分ss秒"));
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
