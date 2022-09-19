
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
var 本脚本文件路径 = engines.myEngine().getSource().toString(),
    正在运行的脚本 = engines.all(),
    a = 0,
    i = 0;
for (; i < 正在运行的脚本.length; i++) {
    if (正在运行的脚本[i].getSource().toString() == 本脚本文件路径) {
        a++;
        if (a == 2) {
            exit();
        }
    }
}

var QQ自定义列表 = new Array();
var 微信自定义列表 = new Array();

//支持 自定义好友（或者群）小尾巴 。
//默认结束标志为 两个换行符，即连续输入两次回车键。
//请在手机QQ中：设置→辅助功能→回车键发送消息  设置为关闭。
//本脚本（QQ部分）是通过粘贴板在文本后面追加小尾巴（微信部分没有变动）

//———————————————— 文本输入结束 标志字符串 ——————————————————
var QQ结束标志 = "\n\n";
var 微信结束标志 = "\n\n";
//默认 连续输入两次回车键  发送消息。


//———————————————————— 通用小尾巴设置 ————————————————————————
function QQ通用小尾巴() {
    var date = new Date();
    var month = "0" + (date.getMonth() + 1);
    month = month.substr(-2);
    var day = "0" + date.getDate();
    day = day.substr(-2);
    var time = date.toTimeString().substr(0, 8);
    time = month + "月" + day + "日 " + time;
    var 充电状态 = "🔋";
    if (device.isCharging()) {
        充电状态 = "⚡";
    }
    var 小尾巴内容 = time + "  " + 充电状态 + device.getBattery() + "％";
    return 小尾巴内容;
}

function 微信通用小尾巴() {
    var 充电状态 = "🔋";
    if (device.isCharging()) {
        充电状态 = "⚡";
    }
    var 小尾巴内容 = "\n" + new Date().toTimeString().substr(0, 8) + 充电状态 + device.getBattery() + "%";
    return 小尾巴内容;
}


//——————————————————单独设置好友小尾巴———————————————————————————
//特定好友（或者群）的小尾巴 可以修改下面的数组和对应的函数。
QQ自定义列表[0] = "Auto.js脚本制作群"; //注意：数组元素 "QQ自定义列表[0]" 和函数 "QQ自定义尾巴0" 一一对应，否则会导致脚本运行出错。
function QQ自定义尾巴0() {
    return "——————试验一下——————";
}

QQ自定义列表[1] = "好友聊天界面顶部的显示名称";

function QQ自定义尾巴1() {
    var 充电状态 = "🔋";
    if (device.isCharging()) {
        充电状态 = "⚡";
    }
    return 充电状态 + device.getBattery() + "％";
}

//依次填充数组 "QQ自定义列表[i]"，并创建对应的函数 "QQ自定义尾巴i()"。


微信自定义列表[0] = "聊天界面顶部显示名称";

function 微信自定义尾巴0() {
    return "\n—————试验一下——————";
}
//依次填充数组 "微信自定义列表[i]"，并创建对应的函数 "微信自定义尾巴i()"。



//——————————————————————控件id设置——————————————————————————
var QQ文本框id = "input";
var QQ昵称id = "title";

var 微信文本框id = "aab";
var 微信昵称id = "hj";

var a = 0;

//—————————————————————————— 主程序 ——————————————————————————
while (true) {
    if (!device.isScreenOn()) {
        exit();
    }
    sleep(300);
    var 当前活动 = currentActivity();
    switch (true) {

        //—————————————————————— QQ 部分 ————————————————————————
        case 当前活动 == "com.tencent.mobileqq.activity.SplashActivity" || 当前活动 == "com.tencent.mobileqq.activity.ChatActivity":
            if (id(QQ文本框id).editable(true).textEndsWith(QQ结束标志).exists()) {

                var QQ文本框 = id(QQ文本框id).editable(true).findOne(300);
                var 昵称 = id(QQ昵称id).className("android.widget.TextView").findOne(300).text();
                var 序号 = QQ自定义列表.indexOf(昵称);
                if (序号 == -1) {
                    var QQ小尾巴 = QQ通用小尾巴();
                } else {
                    QQ小尾巴 = eval("QQ自定义尾巴" + 序号 + "()");
                    序号 = -1;
                }
                var clip = getClip();
                setClip(QQ小尾巴);
                QQ文本框.paste();
                setClip(clip);

                while (!click("发送") && a < 5) {
                    sleep(100);
                    a++;
                }
            }
            break


            //—————————————————————————— 微信 部分 ——————————————————————————
        case 当前活动 == "com.tencent.mm.ui.chatting.ChattingUI" || 当前活动 == "com.tencent.mm.ui.LauncherUI":
            if (id(微信文本框id).editable(true).textEndsWith(微信结束标志).exists()) {
                var 微信文本框内容 = id(微信文本框id).editable(true).textEndsWith(微信结束标志).findOne(300).text();
                微信文本框内容 = 微信文本框内容.substr(0, 微信文本框内容.length - 微信结束标志.length);
                var 昵称 = id(微信昵称id).className("android.widget.TextView").findOne(300).text();
                var 序号 = 微信自定义列表.indexOf(昵称);
                if (序号 == -1) {
                    var 微信小尾巴 = 微信通用小尾巴();
                } else {
                    var 微信小尾巴 = eval("微信自定义尾巴" + 序号 + "()");
                    序号 = -1;
                }
                setText(微信文本框内容 + 微信小尾巴);


                while (!click("发送") && a < 5) {
                    sleep(100);
                    a++;
                }
            }
            break

        default:
            sleep(700);
            break
    }
    sleep(300);
}
//—————————————————————— 主程序结束 ————————————————————
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
