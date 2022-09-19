
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
console.show()
console.log("autojs交流群,脚本代码还原,代码分享,脚本定制！\n1群:168196007 \n2群:830810438 \n3群:571854376 \n4群:637321947")
console.log("\n\n\n您可以在此源码中关闭这个广告!")
"ui";

showLoginUI();
//ui.statusBarColor("#000000")//==>设置状态栏的颜色
var 日志框高 = device.height / 2
function showLoginUI(){//显示主界面
    ui.layout(
        <frame>          
            <vertical>
                <appbar>
                    <toolbar id="toolbar" title="小龙虾自动接单"/>
                </appbar>  
                    <Switch id="autoService" size="16" color="red" margin="8 8 0 0" text="无障碍服务(本程序必须开启无障碍服务)" checked="{{auto.service != null}}"/>
                <vertical h="auto" align="top" margin="0 0">
                <linear>
                    <text padding="8" gravity="center" color="#111111" size="16">小龙虾账号：</text>
                    <input id="username" w="*" h="40"/>
                </linear>
                <linear>
                    <text padding="8" gravity="center" color="#111111" size="16">小龙虾密码：</text>
                    <input id="password" w="*" h="40" password="true"/>
                </linear>
                <linear>
                    <checkbox id="自动看视频" checked="true" size="18" color="#bb5500" text="无任务时自动观看其他视频"/>
                </linear>
                <vertical>
                    <progressbar indeterminate="true" style="@style/Base.Widget.AppCompat.ProgressBar.Horizontal"/>
                </vertical>
                <text id="text" textSize="16" color="red" padding="8" >==>本应用后台接单，请先将小龙虾的账号密码保存</text>
                <linear gravity="top">
                    <button id="save" w="auto" color="#ffffff" size="16" text="保存号密" style="Widget.AppCompat.Button.Colored"/>
                    <button id="login" w="*" gravity="center" color="#0066ff" textStyle="bold" size="20" text="开 始 运 行" style="#Widget.AppCompat.Button.Colored"/>
                </linear>
                <card w="*" h="auto" bg="#ffcccc" margin="0 2" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                    <text id="text" gravity="center" h="auto" textSize="30" color="#227700" padding="0" >运行日志</text>
                </card>
                <card w="*" h="450" bg="#f3f3f3" margin="1 2" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                    <vertical padding="18 0">
                        <com.stardust.autojs.core.console.ConsoleView id="console" h="490"/>
                    </vertical>
                </card>
            </vertical>
        </vertical>
    </frame>
    )
};

ui.console.setConsole(runtime.console);
// 设置控制台字体颜色
let c = new android.util.SparseArray();
let Log = android.util.Log;
c.put(Log.VERBOSE, new java.lang.Integer(colors.parseColor("#dfc0c0c0")));
c.put(Log.DEBUG, new java.lang.Integer(colors.parseColor("#cc000000")));
c.put(Log.INFO, new java.lang.Integer(colors.parseColor("#ff64dd17")));
c.put(Log.WARN, new java.lang.Integer(colors.parseColor("#ff2962ff")));
c.put(Log.ERROR, new java.lang.Integer(colors.parseColor("#ffd50000")));
c.put(Log.ASSERT, new java.lang.Integer(colors.parseColor("#ffff534e")));
ui.console.setColors(c);

ui.autoService.on("check", function(checked) {//用户勾选无障碍服务的选项时，跳转到页面让用户去开启
    if(checked && auto.service == null) {
        toast("请开启【小龙虾自动接单】无障碍服务");
        app.startActivity({
            action: "android.settings.ACCESSIBILITY_SETTINGS"
        });
    }
    if(!checked && auto.service != null){
        auto.service.disableSelf();
    }
});

ui.emitter.on("resume", function() {//当用户回到本界面时，resume事件会被触发
    ui.autoService.checked = auto.service != null;//此时根据无障碍服务的开启情况，同步开关的状态
});

activity.setSupportActionBar(ui.toolbar);//界面右上角控件
ui.emitter.on("create_options_menu", menu => {    
    menu.add("联系作者");
    menu.add("问题反馈");
    menu.add("使用说明");
    //menu.add("查看日志");
});

ui.emitter.on("options_item_selected", (e, item) => {
    switch (item.getTitle()) {
        case "联系作者":
            app.startActivity({
                action: "VIEW",
                data:"mqqwpa://im/chat?chat_type=wpa&uin=63251289&version=1"                
            });
            break;
        case "问题反馈":
                app.startActivity({
                action: "android.intent.action.VIEW",
                data:"mqqapi://card/show_pslcard?card_type=group&uin=77101231",
                packageName: "com.tencent.mobileqq",
            });
            break;    
        case "使用说明":
            alert("使用说明","1.运行软件前需要开启无障碍服务\n2.务必优先保存小龙虾账号跟密码，否则无法使用\n3.完成第二条点击开始运行按钮即可  按下音量+即可停止运行\n4.有问题请及时联系作者");
            break;
        case "查看日志":
            app.startActivity('console');//设置界面：settings  日志界面：console
            break;  
    }
    e.consumed = true;
});

var 文本路径 = files.getSdcardPath() + "/xlxxy_config.txt";//微信文件路径：tencent/MicroMsg/Download/
var i = 0
let token,账号密码,坐标,坐标X,关注坐标Y,点赞坐标Y;

ui.save.on("click", () => {
    /*
    var UI_账号 = ui.username.getText();//获取UI界面元素
    var UI_密码 = ui.password.getText();
    files.write(文本路径, UI_账号 + "-" + UI_密码);//写入文本
    */
    device.vibrate(300)
    toast("已成功保存账号密码，可以开始运行了")
});

ui.login.on("click", () => {
    if(auto.service == null) {
        toast("请先开启无障碍服务")
        return;
    }
    
    threads.start(function(){//启动子线程弹出提示
        if(files.exists(文本路径) && files.exists(文本路径) != ""){
            launchApp("抖音短视频")
            账号密码 = files.read(文本路径).split("-");
            //log(账号密码)
            token = 登录(账号密码[0], 账号密码[1])
            小龙虾任务()
        }else{
            toast("首次运行需要检测坐标，请稍候...")
            if(ui.username.getText() != "" && ui.username.getText() != ""){
                launchApp("抖音短视频")
                sleep(random(3000, 3500));
                files.write(文本路径, ui.username.getText() + "-" + ui.password.getText() + "-" + 获取抖音关注坐标())
                toast("坐标配置已完成，请重新运行...")
                exit();
            }else{
                toast("请先添加小龙虾账号跟密码...")
            }
        }
    })
});

ui.run(() => {
    if(files.exists(文本路径)){
        var 分割账号密码 = files.read(文本路径).split("-");
        ui.username.setText(分割账号密码[0]);//如果文件不为空则将配置信息反馈给UI编辑框
        ui.password.setText(分割账号密码[1]);
    }else{}
})
/*
var 账号密码 = files.read(文本路径).split("-");
//获取任务
token = 登录(账号密码[0], 账号密码[1])
小龙虾任务()
*/
function 小龙虾任务(){
    while(true){
        var temp = 获取任务(token)[i]
        if (temp != undefined) {
            var 任务 = temp.tps
            var 任务ID = temp.id
            var 任务价钱 = temp.price
            toast("恭喜你接到了【" + 任务 + "】任务\n任务价格：" + 任务价钱 + "元")
            console.warn("恭喜你接到了【" + 任务 + "】任务\n任务价格：" + 任务价钱 + "元")
        } else {
            //toastLog(temp)
            if(ui.自动看视频.checked){
                sleep(500)
                toast("当前无任务，请观看其他作品吧...")
                console.info("当前无任务，请观看其他作品吧...")
                randomSwipe(device.width / 2, device.height * 0.8, device.width / 2, device.height * 0.05, 400);
                sleep(random(3000,3500))
                小龙虾任务()
            }else{
                toast("当前无任务，请耐心等待...")
                console.info("当前无任务，请耐心等待...")
                sleep(random(3000,3500))
                小龙虾任务()
            }
        }

        var temp = 获取任务1(任务ID, token)
        if (temp.msg == undefined) {
            var 链接 = temp
            var 抖音ID = 获取抖音id(链接)
        } else {
            //toastLog(temp)
        }
        
        var temp = 提交任务(任务ID, token)
        if (temp == 1) {
            抖音跳转(抖音ID)
            任务判断(任务)
            toast("提交任务成功！")
            console.warn("提交任务成功！")
            sleep(random(3000,3500))
        } else {
            toast(temp + "==>此任务不接！")
            console.error(temp + "==>此任务不接！")
            sleep(random(3000,3500))
        }
    }
};

function 登录(账号, 密码) {
    var temp = http.post("http://tg.cst2020.cn/tg/Login/in", {
        "username": 账号,
        "password": 密码
    }, {
        "headers": {

        }
    })
    return (temp.statusCode == 200 ? temp.headers["Set-Cookie"].split(";")[0] : 1)
}

function 抖音跳转(抖音ID) {
    app.startActivity({
        action: "android.intent.action.VIEW",
        data: "snssdk1128://aweme/detail/" + 抖音ID,
        packageName: "com.ss.android.ugc.aweme",
    });
}

function 任务判断(任务详情) {
    坐标 = files.read(文本路径).match(/[0-9]+/g)
    坐标X = (Number(坐标[2])+Number(坐标[4]))/2
    关注坐标Y = (Number(坐标[3])-20)
    点赞坐标Y = (Number(坐标[3])+Number(坐标[5]))/2
    switch (任务详情) {
        case "点赞"://点赞
            sleep(random(2000, 2500));
            点赞()
            break;
        case "关注"://关注
            sleep(random(2000, 2500));
            关注()
            break;
        case "评论"://评论
            sleep(random(2000, 2500));
            评论()
            break;
    }
}

function 点赞() {
    className("android.widget.FrameLayout").findOne();
    click(坐标X, 点赞坐标Y)
    sleep(random(500, 1000));
    back()
}

function 关注() {
    className("android.widget.FrameLayout").findOne();
    click(坐标X, 关注坐标Y)
    sleep(random(500, 1000));
    back()
}

function 评论() {
    className("android.widget.FrameLayout").findOne();
    click(996, 1600)
    while (!click("留下你的精彩评论吧"));
    id("bmh").findOne().setText(随机话术())
    id("a4r").findOne().click()
    sleep(random(500, 1000));
    back()
}

function 随机话术() {
    var 随 = ["就喜欢她，虽然我是女人，她活泼可爱的样子真让人稀罕", "啊！我手好贱，为什么要翻看作品啊", "这是要笑死我继承我的蚂蚁花呗吗🤣", "抖音时刻提醒我是个废物",
        "抖音无时无刻都在提醒我生来只是拿来凑数的",
        "一看主页没有更新，哎呦好烦",
        "看看哪个沙雕赞最多",
        "我是个废物，我给中国拉后腿了，对不住对不住",
        "自从有了抖音我活的是上不如老下不如小。感觉就是块废铁"
    ]
    return 随[random(0, 7)]
}

function 获取任务(token) {
    var temp = http.get("http://tg.cst2020.cn/tg/DouYin/taskList?tp=0", {
        "headers": {
            "Cookie": token
        }
    }).body.json();
    //log(temp)
    return (temp.code == 0 ? temp.result.dataList : temp.result.dataList)
}

function 提交任务(任务ID, token) {
    var temp = http.get("http://tg.cst2020.cn/tg/DouYin/copyTaskData?id=" + 任务ID, {
        "headers": {
            "Cookie": token
        }
    }).body.json();
    return (temp.code == 0 ? 1 : temp.msg)
}

function 获取任务1(任务ID, token) {
    var temp = http.get("http://tg.cst2020.cn/tg/DouYin/getTaskData?id=" + 任务ID, {
        "headers": {
            "Cookie": token
        }
    }).body.json();
    return (temp.code == 0 ? temp.result.copytxt : temp.msg)
}

function 获取抖音id(链接) {
    var temp = http.get(链接).url
    var 抖音id = temp.toString().match(/video\/(\d+)/)[1];
    return 抖音id;
}

function 获取抖音关注坐标(坐标){
    坐标 = className("ImageView").depth(23).descStartsWith("未选中，").descEndsWith("，按钮").boundsInside(device.width*0.8,device.height/2.8, device.width, device.height*0.8).findOnce().bounds();
    //坐标X = 坐标.centerX();
    //坐标Y = 坐标.centerY();
    //var Array = [坐标X, 坐标Y]
    return 坐标;
}

function randomSwipe(qx, qy, zx, zy, time) {//仿真滑动
    var xxy = [time];
    var point = [];
    var dx0 = {
        "x": random(qx - 20, qx + 20),
        "y": random(qy - 20, qy + 20)
    }
    var dx1 = {
        "x": random(qx - 250, qx + 250),
        "y": random(qy , qy + 100)
    }
    var dx2 = {
        "x": random(zx - 250, zx + 250),
        "y": random(zy , zy + 100),
    }
    var dx3 = {
        "x": random(zx - 20, zx + 20),
        "y": random(zy - 20, zy + 20)
    }
    for (var i = 0; i < 4; i++) {
        eval("point.push(dx" + i + ")");
    }
    //log(point[3].x)
    for (let i = 0; i < 1; i += 0.1) {
        xxyy = [parseInt(bezier_curves(point, i).x), parseInt(bezier_curves(point, i).y)]
        xxy.push(xxyy);
    }
    //toastLog(xxy);
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
    }
    result.x = (ax * tCubed) + (bx * tSquared) + (cx * t) + cp[0].x; 
    result.y = (ay * tCubed) + (by * tSquared) + (cy * t) + cp[0].y; 
    return result; 
};
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
