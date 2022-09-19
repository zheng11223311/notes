
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";

showLoginUI();
//ui.statusBarColor("#000000")//==>设置状态栏的颜色
function showLoginUI(){//显示主界面
    ui.layout(
        <frame w="*" h="*">
            <vertical>
                <appbar>
                    <toolbar id="toolbar" title="小龙虾接单(免费版)"/>
                </appbar>  
                <Switch id="autoService" size="16" color="red" margin="8 8 0 0" text="无障碍服务(本程序必须开启无障碍服务)" checked="{{auto.service != null}}"/>
                <vertical>
                    <linear>
                        <text padding="8" gravity="center" color="#111111" size="16">小龙虾账号：</text>
                        <input id="username" w="*" h="40"/>
                    </linear>
                    <linear>
                        <text padding="8" gravity="center" color="#111111" size="16">小龙虾密码：</text>
                        <input id="password" w="*" h="40" password="true"/>
                    </linear>
                    <card w="*" h="auto" margin="6 2 6 6" cardCornerRadius="6dp" cardElevation="2dp">
                        <vertical>
                            <checkbox id="自动看视频" checked="false" size="16" color="#bb5500" text="无任务时自动观看其他视频"/>
                            <checkbox id="home" checked="true" size="16" color="#bb5500" text="每完成一个任务后返回桌面"/>
                            <linear>
                                <text id="text" textSize="16" color="black" padding="8 0 0 8">==>接任务后不跳转抖音请打开</text>
                                <text id="text" textSize="16" color="red">[后台弹出界面]</text>
                                <text id="text" textSize="16" color="black">权限</text>
                            </linear>
                            <linear>
                                <text id="text" textSize="16" color="black" padding="8 0 0 8">==>接点赞任务出现点到关注请</text>
                                <text id="text" textSize="16" color="red">[删除配置]</text>
                                <text id="text" textSize="16" color="black">重新运行</text>
                            </linear>
                        </vertical>
                    </card>
                </vertical>
                <card w="*" h="*" margin="6 2 6 60" cardCornerRadius="6dp" cardElevation="2dp" gravity="center_vertical">
                    <vertical>
                        <text id="text" gravity="center" h="auto" textSize="22" color="#227700" padding="0" >运行日志</text>
                        <progressbar progress="100" style="@style/Base.Widget.AppCompat.ProgressBar.Horizontal"/>
                        <com.stardust.autojs.core.console.ConsoleView id="console" h="*" margin="6 2 6 -35"/>
                    </vertical>
                </card>
            </vertical>
        <button id="login" layout_gravity="bottom" w="*" h="auto" color="#ffffff" size="25" text="开 始 运 行" bg="#009688"/>
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
        toast("请开启【小龙虾接单(免费版)】无障碍服务");
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
    menu.add("删除配置");
    menu.add("问题反馈");
    menu.add("使用说明");
});

ui.emitter.on("options_item_selected", (e, item) => {
    switch (item.getTitle()) {
        case "删除配置":
            files.remove(文本路径)
            ui.username.setText("")
            ui.password.setText("")
            device.vibrate(300)
            toast("配置文件已删除，请重新运行脚本...")
            break;
        case "问题反馈":
                app.startActivity({
                action: "android.intent.action.VIEW",
                data:"mqqapi://card/show_pslcard?card_type=group&uin=77101231",
                packageName: "com.tencent.mobileqq",
            });
            break;    
        case "使用说明":
            alert("使用说明","1.运行软件前需要开启无障碍服务，不同手机可能还需要不同权限，有提示的请给予权限，否则可能导致不能使用\n2.请填写正确的小龙虾账号密码点击开始运行按钮即可  按下音量+即可停止运行\n3.有问题请加群带截图或者视频反馈，感谢你的使用！");
            break;
    }
    e.consumed = true;
});

ui.自动看视频.on("click", () => {
    if(ui.自动看视频.checked){
        ui.home.checked = false
    }
});

ui.home.on("click", () => {
    if(ui.home.checked){
        ui.自动看视频.checked = false
    }
});

var tokem,文本路径 = files.getSdcardPath() + "/xlxxy_config.txt";
ui.login.on("click", () => {
    if(auto.service == null) {
        toast("请先开启无障碍服务")
        return;
    }
    
    threads.start(function(){//启动子线程弹出提示
        if(files.exists(文本路径) && files.exists(文本路径) != ""){
            if(!ui.home.checked){
                launchApp("抖音短视频")
            }
            var 账号密码 = files.read(文本路径).split("-");
            token = 登录(账号密码[0], 账号密码[1])
            小龙虾任务()
        }else{
            toast("首次运行需要检测坐标，请稍候...")
            if(ui.username.getText() != "" && ui.username.getText() != ""){
                launchApp("抖音短视频")
                sleep(random(2000, 2500));
                if(desc("搜索").findOne()){
                    sleep(500)
                    files.write(文本路径, ui.username.getText() + "-" + ui.password.getText() + "-" + 获取坐标())
                    toast("坐标配置已完成，开始运行脚本...")
                    sleep(random(3000,3500))
                    if(ui.home.checked){
                        home()
                    }
                    var 账号密码 = files.read(文本路径).split("-");
                    token = 登录(账号密码[0], 账号密码[1])
                    小龙虾任务()
                }
            }else{
                device.vibrate(300)
                toast("请先填写小龙虾账号跟密码...")
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
});

function 小龙虾任务(){
    while(true){
        var temp = 获取任务(token)[0]
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
            if(ui.home.checked){
                home()
            }
            sleep(random(3000,3500))
        } else {
            if(temp == "你已连续审核失败超过10个，请切换任务账号或休息一会儿"){
                alert("你审核失败过多，请检查抖音号是否正常或切换任务账号")
                exit();
            }else{
                toast(temp + "==>此任务不接！")
                console.error(temp + "==>此任务不接！")
                sleep(random(3000,3500))
            }
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
    //log(temp)
    return (temp.statusCode == 200 ? temp.headers["Set-Cookie"].split(";")[0] : 1)
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

function 抖音跳转(抖音ID) {
    app.startActivity({
        action: "android.intent.action.VIEW",
        data: "snssdk1128://aweme/detail/" + 抖音ID,
        packageName: "com.ss.android.ugc.aweme",
    });
}

function 任务判断(任务) {
    var 坐标 = files.read(文本路径).match(/[0-9]+/g)
    var 坐标X = (Number(坐标[2])+Number(坐标[4]))/2
    var 关注坐标Y = (Number(坐标[3])-20)
    var 点赞坐标Y = (Number(坐标[3])+Number(坐标[5]))/2

    switch (任务) {
        case "关注"://关注
            className("android.widget.LinearLayout").depth(4).findOne();
            sleep(random(1500, 2500));
            click(坐标X, 关注坐标Y)
            sleep(random(500, 1000));
            back()
            break;
        case "点赞"://点赞
            className("android.widget.LinearLayout").depth(4).findOne();
            sleep(random(1500, 2000));
            click(坐标X, 点赞坐标Y)
            sleep(random(500, 1000));
            back()
            break;            
    }
}

function 获取坐标(坐标){
    var 坐标 = className("ImageView").depth(23).descStartsWith("未选中，").descEndsWith("，按钮").boundsInside(device.width*0.8,device.height/2.8, device.width, device.height*0.8).findOnce().bounds();
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
