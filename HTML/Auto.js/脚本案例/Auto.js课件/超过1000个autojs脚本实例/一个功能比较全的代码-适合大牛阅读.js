
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//version:2.6.6
//platform version:7.0.4-1

//程序初始化器
initializer();

//导入安卓原生类
importClass(java.lang.Runnable);
importClass(android.animation.ObjectAnimator)
importClass(android.animation.PropertyValuesHolder)
importClass(android.animation.ValueAnimator)
importClass(android.animation.AnimatorSet)
importClass(android.view.animation.AccelerateInterpolator)
importClass(android.view.animation.TranslateAnimation)
importClass(android.animation.ObjectAnimator)
importClass(android.animation.TimeInterpolator)
importClass(android.os.Bundle)
importClass(android.view.View)
importClass(android.view.Window)
importClass(android.view.animation.AccelerateDecelerateInterpolator)
importClass(android.view.animation.AccelerateInterpolator)
importClass(android.view.animation.AnticipateInterpolator)
importClass(android.view.animation.AnticipateOvershootInterpolator)
importClass(android.view.animation.BounceInterpolator)
importClass(android.view.animation.CycleInterpolator)
importClass(android.view.animation.DecelerateInterpolator)
importClass(android.view.animation.LinearInterpolator)
importClass(android.view.animation.OvershootInterpolator)
importClass(android.view.animation.PathInterpolator)
importClass(android.widget.Button)
importClass(android.widget.ImageView)
importClass(android.widget.TextView)

//全局变量
var LocalData = storages.create("AutoNightsBilibiliLocal");
var logo_switch = false;//悬浮窗的开启关闭检测
var logo_buys = false;//开启和关闭时占用状态 防止多次点击触发
var running_action;//正在运行的操作线程
var running_floating_window;//正在运行的悬浮窗
var time_0, time_1, time_3//定时器 点击退出悬浮窗时定时器关闭
var x = 0,y = 0;//记录按键被按下时的触摸坐标
var windowX, windowY; G_Y = 0//记录按键被按下时的悬浮窗位置
var downTime; yd = false;//记录按键被按下的时间以便判断长按等动作

//可修改参数
var logo_ms = 200;//动画播放时间
var DHK_ms = 200;//对话框动画播放时间
var accent_color = LocalData.get("AccentColor");//强调色
var alternative_color = "#BDBDBD"; //副色


/**
 * 需要三个悬浮窗一起协作达到Auto.js悬浮窗效果
 * win  子菜单悬浮窗 处理子菜单选项点击事件
 * win_1  主悬浮按钮
 * win_2  悬浮按钮动画替身,只有在手指移动主按钮的时候才会被触发
 * 触发时,替身Y值会跟主按钮Y值绑定一起,手指弹起时代替主按钮显示跳动的小球动画
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
var win = floaty.rawWindow(
    <frame >//子菜单悬浮窗
        <frame id="id_logo" w="110" h="210" alpha="0"  >
            <frame id="id_0" w="44" h="44" margin="0 0 0 0" alpha="1" visibility="gone">
                <img w="44" h="44" src="#FFFFFF" circle="true" />
                <img w="28" h="28" src="@drawable/ic_perm_identity_black_48dp" tint="#ffffff" gravity="center" layout_gravity="center" />
                <img id="fab_profile" w="*" h="*" src="#ffffff" circle="true" alpha="0" />
            </frame>
            <frame id="id_1" w="44" h="44" margin="16 15 0 0" alpha="1">
                <img w="44" h="44" src="#4caf50" circle="true" />
                <img w="28" h="28" src="@drawable/ic_menu_black_48dp" tint="#ffffff" gravity="center" layout_gravity="center" />
                <img id="fab_action_menu" w="*" h="*" src="#ffffff" circle="true" alpha="0" />
            </frame>
            <frame id="id_2" w="44" h="44" margin="0 52 0 0" alpha="1" gravity="right" layout_gravity="right">
                <img w="44" h="44" src="#ee534f" circle="true" />
                <img w="28" h="28" src="@drawable/ic_stop_black_48dp" tint="#ffffff" margin="8" />
                <img id="fab_stop_action" w="*" h="*" src="#ffffff" circle="true" alpha="0" />
            </frame>
            <frame id="id_3" w="44" h="44" margin="0 112 0 0" alpha="1" gravity="center" layout_gravity="right">
                <img w="44" h="44" src="#40a5f3" circle="true" />
                <img w="28" h="28" src="@drawable/ic_settings_black_48dp" tint="#ffffff" margin="8" />
                <img id="fab_settings_menu" w="*" h="*" src="#ffffff" circle="true" alpha="0" />
            </frame>
            <frame id="id_4" w="44" h="44" margin="16 0 0 15" alpha="1" gravity="bottom" layout_gravity="bottom">
                <img w="44" h="44" src="#bfc1c0" circle="true" />
                <img w="28" h="28" src="@drawable/ic_more_horiz_black_48dp" tint="#ffffff" margin="8" />
                <img id="fab_misc_menu" w="*" h="*" src="#ffffff" circle="true" alpha="0" />
            </frame>
        </frame>
        <frame id="logo" w="44" h="44" marginTop="83" alpha="1" />
        <frame id="logo_1" w="44" h="44" margin="0 83 22 0" alpha="1" layout_gravity="right" />
    </frame>
)
win.setTouchable(false);//设置子菜单不接收触摸消息

var win_1 = floaty.rawWindow(
    <frame id="logo" w="44" h="44" alpha="0.4" >//悬浮按钮
        <img w="44" h="44" src="#ffffff" circle="true" alpha="0.8" />
        <img id="img_logo" w="32" h="32" src="https://s2.ax1x.com/2019/08/08/e7uzOP.png" gravity="center" layout_gravity="center" />
        <img id="logo_click" w="*" h="*" src="#ffffff" alpha="0" />
    </frame>
);
win_1.setPosition(-21, device.height * 0.1)//悬浮按钮定位

var win_2 = floaty.rawWindow(
    <frame id="logo" w="{{device.width}}px" h="44" alpha="0" >//悬浮按钮 弹性替身
        <img w="44" h="44" src="#ffffff" circle="true" alpha="0.8" />
        <img id="img_logo" w="32" h="32" src="https://s2.ax1x.com/2019/08/08/e7uzOP.png" margin="6 6" />
    </frame>
);
win_2.setTouchable(false);//设置弹性替身不接收触摸消息

/**
 * 脚本广播事件//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
 */
var XY = [], XY1 = [], TT = [], TT1 = [], img_dp = {}, dpZ = 0, logo_right = 0, dpB = 0, dp_H = 0
events.broadcast.on("定时器关闭", function (X) { clearInterval(X) })
events.broadcast.on("悬浮开关", function (X) {
    ui.run(function () {
        switch (X) {
            case true:
                win.id_logo.setVisibility(0)
                win.setTouchable(true);
                logo_switch = true
                break;
            case false:
                win.id_logo.setVisibility(4)
                win.setTouchable(false);
                logo_switch = false
        }
    })

});

events.broadcast.on("悬浮显示", function (X1) {
    ui.run(function () {
        win_2.logo.attr("alpha", "0");
        win_1.logo.attr("alpha", "0.4");
    })
});
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
var terid = setInterval(() => { //等待悬浮窗初始化
    //log("13")
    if (TT.length == 0 && win.logo.getY() > 0) {// 不知道界面初始化的事件  只能放到这里将就下了
        ui.run(function () {
            TT = [win.logo.getX(), win.logo.getY()], TT1 = [win.logo_1.getLeft(), win.logo_1.getTop()], anX = [], anY = []// 获取logo 绝对坐标
            XY = [
                [win.id_0, TT[0] - win.id_0.getX(), TT[1] - win.id_0.getY()],//  获取子菜单 视图和子菜单与logo绝对坐标差值
                [win.id_1, TT[0] - win.id_1.getX(), TT[1] - win.id_1.getY()],
                [win.id_2, TT[0] - win.id_2.getX(), TT[1] - win.id_2.getY()],
                [win.id_3, TT[0] - win.id_3.getX(), TT[1] - win.id_3.getY()],
                [win.id_4, TT[0] - win.id_4.getX(), TT[1] - win.id_4.getY()]]
            //log("上下Y值差值:" + XY[0][2] + "DP值:" + (XY[0][2] / 83))
            dpZ = XY[0][2] / 83
            dpB = dpZ * 22
            XY1 = [
                [parseInt(dpZ * 41), TT1[0] - win.id_0.getLeft(), TT1[1] - win.id_0.getTop()],
                [parseInt(dpZ * -65), TT1[0] - win.id_1.getLeft(), TT1[1] - win.id_1.getTop()],
                [parseInt(dpZ * -106), TT1[0] - win.id_2.getLeft(), TT1[1] - win.id_2.getTop()],
                [parseInt(dpZ * -65), TT1[0] - win.id_3.getLeft(), TT1[1] - win.id_3.getTop()],
                [parseInt(dpZ * 41), TT1[0] - win.id_4.getLeft(), TT1[1] - win.id_4.getTop()]]
            img_dp.h_b = XY[0][2]//两个悬浮窗Y差值
            img_dp.w = parseInt(dpZ * 9)//计算logo左边隐藏时 X值
            img_dp.ww = parseInt(dpZ * (44 - 9))//计算logo右边隐藏时 X值
            logo_right = win.id_2.getX() - parseInt(dpZ * 22)
            win_1.setPosition(0 - img_dp.w, device.height * 0.1)
            win.id_logo.setVisibility(4)
            win.id_logo.attr("alpha", "1")
            events.broadcast.emit("定时器关闭", terid)
        })

    }
}, 100)
time_0 = setInterval(() => {
}, 1000)
win_1.logo.setOnTouchListener(function (view, event) {
    if (logo_buys) { return false}
    //event.getAction())
    switch (event.getAction()) {
        case event.ACTION_DOWN:
            x = event.getRawX();
            y = event.getRawY();
            windowX = win_1.getX();
            windowY = win_1.getY();
            downTime = new Date().getTime();
            return true;
        case event.ACTION_MOVE:
            if (logo_switch) { return true; }
            if (!yd) {//如果移动的距离大于h值 则判断为移动 yd为真
                if (Math.abs(event.getRawY() - y) > 30 || Math.abs(event.getRawX() - x) > 30) { win_1.logo.attr("alpha", "1"); yd = true }
            } else {//移动手指时调整两个悬浮窗位置
                win_1.setPosition(windowX + (event.getRawX() - x),//悬浮按钮定位
                    windowY + (event.getRawY() - y));
                win_2.setPosition(0, windowY + (event.getRawY() - y));//弹性 替身定位(隐藏看不到的,松开手指才会出现)
            }
            return true;
        case event.ACTION_UP:                //手指弹起
            //触摸时间小于 200毫秒 并且移动距离小于30 则判断为 点击
            if (logo_buys) { return false;}//如果在动画正在播放中则退出事件 无操作
            if (Math.abs(event.getRawY() - y) < 30 && Math.abs(event.getRawX() - x) < 30) {
                //toastLog("点击弹起")
                if (logo_switch) {
                    logo_switch = false
                    win_1.logo.attr("alpha", "0.4")
                }
                else
                {
                    //log("左边")
                    win.setPosition(windowX + (event.getRawX() - x),
                        windowY + (event.getRawY() - y) - img_dp.h_b);
                    win.id_logo.setVisibility(0)
                    logo_switch = true
                    win_1.logo.attr("alpha", "0.9")
                }
                animationCreator()
            } else if (!logo_switch) {
                //toastLog("移动弹起")
                G_Y = windowY + (event.getRawY() - y)
                win_1.logo.attr("alpha", "0.4")
                //toastLog("左边")
                animator = ObjectAnimator.ofFloat(win_2.logo, "translationX", windowX + (event.getRawX() - x), 0 - img_dp.w);
                mTimeInterpolator = new BounceInterpolator();
                animator.setInterpolator(mTimeInterpolator);
                animator.setDuration(300);
                win_2.logo.attr("alpha", "0.4")//animationCreator 替身上场
                win_1.logo.attr("alpha", "0");//悬浮按钮隐藏
                win_1.setPosition(0 - img_dp.w, G_Y)//悬浮按钮移动到终点位置等待替身动画结束
                animator.start();

                threads.start(function () {//动画的结束事件一直没有明白 只能拿线程代替了
                    logo_buys = true
                    sleep(logo_ms + 100)
                    events.broadcast.emit("悬浮显示", 0)

                    logo_buys = false
                });
            }
            yd = false
            return true;
    }
    return true;
});

win.fab_profile.on("click", () => { //禁用
    toastLog("Disabled")
    img_down();
})
win.fab_action_menu.on("click", () => {
    if(running_action == null){
        img_down();
        actionMenu();
    }else{
        toast("有操作正在进行，请先停止操作！");
    }
})

win.fab_stop_action.on("click", () => {
    if(running_action == "Floaty"){
        img_down();
        toast("悬浮窗已关闭！");
        running_floating_window.close();
        device.cancelKeepingAwake();
        running_action = null;
    }
    else if (running_action != null)
    {
        img_down();
        toast("操作已停止！");
        running_action.interrupt();
        device.cancelKeepingAwake();
        running_action = null;
    }
    else
    {
        toast("没有操作正在运行！");
    }
})

win.fab_settings_menu.on("click", () => {
    img_down();
    settingsMenu();
})

win.fab_misc_menu.on("click", () => {
    img_down();
    miscMenu();
})
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
function actionMenu()
{
    let menu = ui.inflate(
        <vertical margin="0">
            <text id="seekbar_value" text="功能菜单" textColor="black" textStyle="bold" textSize="22sp" padding="0 10" gravity="center|left" layout_gravity="center|left"/>
            <frame w="*" >
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_repeat_one_black_48dp" tint="{{accent_color}}"/>
                </frame>
                <button id="repeat_stage" text="重复刷本" paddingLeft="40" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*">
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_playlist_play_black_48dp" tint="{{accent_color}}"/>
                </frame>
                <button id="diy_stage" text="自定义刷本[未完成]" paddingLeft="40" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*">
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_person_add_black_48dp" tint="{{accent_color}}"/>
                </frame>
                <button id="hr_helper" text="公开招募助手" paddingLeft="40" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*">
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_trending_up_black_48dp" tint="{{accent_color}}"/>
                </frame>
                <button id="lvlup_calc" text="升级计算器" paddingLeft="40" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*">
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_gradient_black_48dp" tint="{{accent_color}}"/>
                </frame>
                <button id="material_calc" text="材料计算器" paddingLeft="40" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
        </vertical>
    );
    var menu_dialog = dialogs.build({
        customView: menu,
        wrapInScrollView: true,    //view高度超过对话框时是否可滑动
        autoDismiss: false,    //按下按钮时是否自动结束对话框
        canceledOnTouchOutside:true    //点击对话框范围外时是否结束对话框
    }).show();

    menu.repeat_stage.on("click", () => {
        menu_dialog.dismiss();
        running_action = threads.start(function()
        {
            repeatStage();
        });
    })
    menu.diy_stage.on("click", () => {
        //menu_dialog.dismiss();
        toast("此选项尚未完善！");
    })
    menu.hr_helper.on("click", () => {
        menu_dialog.dismiss();
        isPlaying();
        running_action = "Floaty";
        HRHelper();
    })
    menu.lvlup_calc.on("click", () => {
        menu_dialog.dismiss();
        isPlaying();
        running_action = "Floaty";
        LvlUpCalc();
    })
    menu.material_calc.on("click", () => {
        menu_dialog.dismiss();
        isPlaying();
        running_action = "Floaty";
        MaterialCalc();
    })
}
function repeatStage(){    //重复刷本主函数
    var LocalData = storages.create("AutoNightsBilibiliLocal");
    //  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
    //将判断图片载入内存变量
    var start_mission = images.read("./res/start_mission.png");
    var confirm_group = images.read("./res/confirm_group.png");
    var end_mission = images.read("./res/end_mission.png");
    var exchange_stone = images.read("./res/exchange_stone.png");
    var exchange_medicament = images.read("./res/exchange_medicament.png");
    var exchange_confirm = images.read("./res/exchange_confirm.png");
    var exchange_cancel = images.read("./res/exchange_cancel.png");

    var add_times = true;  //是否增加刷本次数的判断
    var toast_message = false;

    var run_times = 0;  //新建变量“已运行次数”并置0
    var total_times = readRepeatTimes();  //读取重复次数配置
    var auto_stone = LocalData.get("AutoStone");  //读取自动兑换理智配置
    var auto_medicament = LocalData.get("AutoMedicament");  //读取自动恢复理智配置
    var auto_lock_screen = LocalData.get("AutoLockScreen");  //读取自动锁屏配置

    isPlaying();
    sleep(1000);
    toast("点击自己想刷的关卡就会开始自动刷本");
    sleep(1000);

    do
    {
        var screen = captureScreen();    //获取屏幕内容

        var start_mission_point = images.findImage(screen, start_mission,{threshold:0.5});   //“开始任务”检测
        var exchange_medicament_point = images.findImage(screen, exchange_medicament,{threshold:0.5});   //“药剂兑换界面”检测
        var exchange_stone_point = images.findImage(screen, exchange_stone,{threshold:0.5});  //“源石兑换界面”检测
        var exchange_confirm_point = images.findImage(screen, exchange_confirm,{threshold:0.5});     //“兑换确认按钮”检测
        var exchange_cancel_point = images.findImage(screen, exchange_cancel,{threshold:0.5});   //“兑换取消按钮”检测
        var confirm_group_point = images.findImage(screen, confirm_group,{threshold:0.5});
        var end_mission_point = images.findImage(screen, end_mission,{threshold:0.5});

        if (start_mission_point){
            sleep(50);
            press(start_mission_point.x, start_mission_point.y, 40);
            sleep(500);
            if(add_times){
                run_times++;
                toast_message = !toast_message;
                add_times = !add_times;
            }
        }else if (confirm_group_point){
            sleep(50);
            press(confirm_group_point.x, confirm_group_point.y, 40);
            sleep(500);
            if(toast_message){
                toast("开始运行第" + String(run_times) + "次，共 " + readRepeatTimes() + " 次");
                toast_message = !toast_message;
            }
        }else if (end_mission_point){
            sleep(50);
            press(end_mission_point.x, end_mission_point.y, 40);
            sleep(500);
            if(!add_times){
                add_times = !add_times;
            }
        }else if(exchange_medicament_point){
            if(auto_medicament == "开"){
                sleep(100);
                press(exchange_confirm_point.x, exchange_confirm_point.y, 40);
                sleep(500);
            }else if(auto_stone == "开"){
                sleep(100);
                press(exchange_medicament_point.x + 500, exchange_medicament_point.y, 40);
                sleep(1000);
                press(exchange_confirm_point.x, exchange_confirm_point.y, 40);
                sleep(500);
            }else{
                sleep(100);
                toast("体力耗尽！根据设定，刷本停止");
                sleep(1000);
                press(exchange_cancel_point.x, exchange_cancel_point.y, 40);
                sleep(500);
                break;
            }
        }else if(exchange_stone_point){
            if(auto_stone == "开"){
                sleep(100);
                press(exchange_confirm_point.x, exchange_confirm_point.y, 40);
                sleep(500);
            }else if(auto_medicament == "开"){
                sleep(100);
                toast("你已经没有药可以恰了！根据设定，刷本停止");
                sleep(1000);
                press(exchange_cancel_point.x, exchange_cancel_point.y, 40);
                sleep(500);
                break;
            }else{
                sleep(100);
                toast("体力耗尽！根据设定，刷本停止");
                sleep(1000);
                press(exchange_cancel_point.x, exchange_cancel_point.y, 40);
                sleep(200);
                break;
            }
        }
        else{
            sleep(500);
        }
    }while ((total_times == "无限") || (run_times <= total_times));
    toast("刷本结束！共运行 " + String(run_times) + " 次");
    device.cancelKeepingAwake();
    if(auto_lock_screen){
        home();
        sleep(1000);
        Power();
    }

    function readRepeatTimes()  //读取重复次数配置
    {
        var LocalData = storages.create("AutoNightsBilibiliLocal");

        var value = LocalData.get("RepeatTimes");
        if (value == "0")
        {
            return "无限";
        }
        else
        {
            return value;
        }
    }
}
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
function HRHelper(){    //公开招募助手主函数
    var helper_url = "https://aktools.graueneko.xyz/hr?hidenav=";
    var helper_window = floaty.rawWindow(
        <horizontal w="*" h="*">
            <button id="button_maximize" w="50px" h="*" text="←" textColor="white" bg="{{accent_color}}" alpha="0.75" style="Widget.AppCompat.Button.Borderless" visibility="gone"/>
            <button id="button_minimize" w="50px" h="*" text="→" textColor="white" bg="{{accent_color}}" alpha="0.75" style="Widget.AppCompat.Button.Borderless"/>
            <webview id="webview" w="*" h="*"/>
        </horizontal>
    );
    running_floating_window = helper_window;
    helper_window.webview.loadUrl(helper_url);
    helper_window.setSize(Math.floor(device.height*0.36), device.width);
    helper_window.setPosition(device.height - Math.floor(device.height*0.36) - 80, 0);
    helper_window.setTouchable(true);
    helper_window.button_minimize.click(function(){
        helper_window.webview.setVisibility(4);
        helper_window.button_minimize.setVisibility(4);
        helper_window.button_maximize.setVisibility(0);
        helper_window.setPosition(device.height - 50 - 80, 0);
    });
    helper_window.button_maximize.click(function(){
        helper_window.webview.setVisibility(0);
        helper_window.button_minimize.setVisibility(0);
        helper_window.button_maximize.setVisibility(4);
        helper_window.setPosition(device.height - Math.floor(device.height*0.36) - 80, 0);
    });

}
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
function LvlUpCalc(){    //公开招募助手主函数
    var helper_url = "https://aktools.graueneko.xyz/lvlup?hidenav=";
    var helper_window = floaty.rawWindow(
        <horizontal w="*" h="*">
            <button id="button_maximize" w="50px" h="*" text="←" textColor="white" bg="{{accent_color}}" alpha="0.75" style="Widget.AppCompat.Button.Borderless" visibility="gone"/>
            <button id="button_minimize" w="50px" h="*" text="→" textColor="white" bg="{{accent_color}}" alpha="0.75" style="Widget.AppCompat.Button.Borderless"/>
            <webview id="webview" w="*" h="*"/>
        </horizontal>
    );
    running_floating_window = helper_window;
    helper_window.webview.loadUrl(helper_url);
    helper_window.setSize(Math.floor(device.height*0.36), device.width);
    helper_window.setPosition(device.height - Math.floor(device.height*0.36) - 80, 0);
    helper_window.setTouchable(true);
    helper_window.button_minimize.click(function(){
        helper_window.webview.setVisibility(4);
        helper_window.button_minimize.setVisibility(4);
        helper_window.button_maximize.setVisibility(0);
        helper_window.setPosition(device.height - 50 - 80, 0);
    });
    helper_window.button_maximize.click(function(){
        helper_window.webview.setVisibility(0);
        helper_window.button_minimize.setVisibility(0);
        helper_window.button_maximize.setVisibility(4);
        helper_window.setPosition(device.height - Math.floor(device.height*0.36) - 80, 0);
    });

}
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
function MaterialCalc(){    //公开招募助手主函数
    var helper_url = "https://aktools.graueneko.xyz/material?hidenav=";
    var helper_window = floaty.rawWindow(
        <horizontal w="*" h="*">
            <button id="button_maximize" w="50px" h="*" text="←" textColor="white" bg="{{accent_color}}" alpha="0.75" style="Widget.AppCompat.Button.Borderless" visibility="gone"/>
            <button id="button_minimize" w="50px" h="*" text="→" textColor="white" bg="{{accent_color}}" alpha="0.75" style="Widget.AppCompat.Button.Borderless"/>
            <webview id="webview" w="*" h="*"/>
        </horizontal>
    );
    running_floating_window = helper_window;
    helper_window.webview.loadUrl(helper_url);
    helper_window.setSize(Math.floor(device.height*0.36), device.width);
    helper_window.setPosition(device.height - Math.floor(device.height*0.36) - 80, 0);
    helper_window.setTouchable(true);
    helper_window.button_minimize.click(function(){
        helper_window.webview.setVisibility(4);
        helper_window.button_minimize.setVisibility(4);
        helper_window.button_maximize.setVisibility(0);
        helper_window.setPosition(device.height - 50 - 80, 0);
    });
    helper_window.button_maximize.click(function(){
        helper_window.webview.setVisibility(0);
        helper_window.button_minimize.setVisibility(0);
        helper_window.button_maximize.setVisibility(4);
        helper_window.setPosition(device.height - Math.floor(device.height*0.36) - 80, 0);
    });

}
function isPlaying(){    //判断是否在游戏内
    if (currentPackage() != "com.hypergryph.arknights.bilibili"){
        launch("com.hypergryph.arknights.bilibili");
    }
}
function settingsMenu(){    //总设置菜单
    let menu = ui.inflate(
        <vertical margin="0">
            <text id="seekbar_value" text="设置" textColor="black" textStyle="bold" textSize="22sp" padding="0 10" gravity="center|left" layout_gravity="center|left"/>
            <frame w="*" >
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_sync_problem_black_48dp" tint="{{accent_color}}" />
                </frame>
                <button id="repeat_stage_settings" text="重复刷本设置" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*">
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_playlist_add_black_48dp" tint="{{accent_color}}" />
                </frame>
                <button id="diy_stage_settings" text="自定义刷本设置（未完成）" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*">
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_account_balance_black_48dp" tint="{{accent_color}}" />
                </frame>
                <button id="basement_settings" text="基建设置（未完成）" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*">
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_toc_black_48dp" tint="{{accent_color}}"/>
                </frame>
                <button id="quest_settings" text="任务设置（未完成）" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*">
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_tune_black_48dp" tint="{{accent_color}}" />
                </frame>
                <button id="other_settings" text="其他设置" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
        </vertical>
    );
    var menu_dialog = dialogs.build({
        customView: menu,
        wrapInScrollView: true,    //view高度超过对话框时是否可滑动
        autoDismiss: false,    //按下按钮时是否自动结束对话框
        canceledOnTouchOutside:true    //点击对话框范围外时是否结束对话框
    }).show();

    menu.repeat_stage_settings.on("click", () => {
        menu_dialog.dismiss();
        repeatStageSettings();
    })
    menu.diy_stage_settings.on("click", () => {
        //menu_dialog.dismiss();
        toast("此选项尚未完善！");
    })
    menu.basement_settings.on("click", () => {
        //menu_dialog.dismiss();
        toast("此选项尚未完善！");
    })
    menu.quest_settings.on("click", () => {
        //menu_dialog.dismiss();
        toast("此选项尚未完善！");
    })
    menu.other_settings.on("click", () => {
        menu_dialog.dismiss();
        otherSettings();
    })
}
function repeatStageSettings(){    //重复刷本设置菜单
    let menu = ui.inflate(
        <vertical>
            <text id="title" text="重复刷本设置" textColor="black" textStyle="bold" textSize="22sp" padding="0 10" gravity="center|left" layout_gravity="center|left"/>
            <frame w="*" >
                <frame w="auto">
                    <img id="img_infinity_times" gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_loop_black_48dp" tint="{{accent_color}}" />
                </frame>
                <frame marginRight="60" w="auto" layout_gravity="right">
                    <text layout_weight="1"  margin="0" text="无限次" textColor="black" textSize="14sp" layout_gravity="center|right" gravity="center|right"/>
                </frame>
                <frame marginRight="20" w="auto" layout_gravity="right">
                    <checkbox id="checkbox_infinity_times" checked="" layout_weight="1" margin="10 0" layout_gravity="center|right" gravity="center|right"/>
                </frame>
                <button id="button_infinity_times" text="刷本次数" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame margin="20 0 30 0">
                <frame>
                    <horizontal>
                        <button id="button_minus_20" layout_weight="1" style="Widget.AppCompat.Button.Borderless" gravity="center|center_vertical" layout_gravity="center" w="30" h="35"/>
                        <button id="button_minus_5" layout_weight="1" style="Widget.AppCompat.Button.Borderless" gravity="center|center_vertical" layout_gravity="center" w="30" h="35"/>
                        <button id="button_minus_1" layout_weight="1" style="Widget.AppCompat.Button.Borderless" gravity="center|center_vertical" layout_gravity="center" w="30" h="35"/>
                        <input layout_weight="2" id="input_repeat_times" text="" inputType="number" textColor="black" textSize="16sp" layout_gravity="center" w="50" h="40" gravity="center" visibility="visible"/>
                        <button id="button_add_1" layout_weight="1" style="Widget.AppCompat.Button.Borderless" gravity="center|center_vertical" layout_gravity="center" w="30" h="35"/>
                        <button id="button_add_5" layout_weight="1" style="Widget.AppCompat.Button.Borderless" gravity="center|center_vertical" layout_gravity="center" w="30" h="35"/>
                        <button id="button_add_20" layout_weight="1" style="Widget.AppCompat.Button.Borderless" gravity="center|center_vertical" layout_gravity="center" w="30" h="35"/>
                    </horizontal>
                </frame>
                <frame>
                    <horizontal>
                        <img layout_weight="1" gravity="center" layout_gravity="center|left" w="30" h="30" src="@drawable/ic_skip_next_black_48dp" rotation="180" tint="{{alternative_color}}"/>
                        <img layout_weight="1" gravity="center" layout_gravity="center|left" w="30" h="30" src="@drawable/ic_fast_forward_black_48dp" rotation="180" tint="{{alternative_color}}"/>
                        <img layout_weight="1" gravity="center" layout_gravity="center|left" w="30" h="30" src="@drawable/ic_play_arrow_black_48dp" rotation="180" tint="{{alternative_color}}"/>
                        <text layout_weight="2"text="无限" textColor="black" textStyle="bold" textSize="16sp" layout_gravity="center" w="50" h="30" gravity="center" visibility="invisible"/>
                        <img layout_weight="1" gravity="center" layout_gravity="center|right" w="30" h="30" src="@drawable/ic_play_arrow_black_48dp" tint="{{alternative_color}}"/>
                        <img layout_weight="1" gravity="center" layout_gravity="center|right" w="30" h="30" src="@drawable/ic_fast_forward_black_48dp" tint="{{alternative_color}}"/>
                        <img layout_weight="1" gravity="center" layout_gravity="center|right" w="30" h="30" src="@drawable/ic_skip_next_black_48dp" tint="{{alternative_color}}"/>
                        </horizontal>
                </frame>
                <frame>
                    <horizontal>
                        <img id="img_minus_20" layout_weight="1" gravity="center" layout_gravity="center|left" w="30" h="30" src="@drawable/ic_skip_next_black_48dp" rotation="180" tint="{{accent_color}}"/>
                        <img id="img_minus_5" layout_weight="1" gravity="center" layout_gravity="center|left" w="30" h="30" src="@drawable/ic_fast_forward_black_48dp" rotation="180" tint="{{accent_color}}"/>
                        <img id="img_minus_1" layout_weight="1" gravity="center" layout_gravity="center|left" w="30" h="30" src="@drawable/ic_play_arrow_black_48dp" rotation="180" tint="{{accent_color}}"/>
                        <text id="text_infinity_times" layout_weight="2"text="无限" textColor="{{accent_color}}" textStyle="bold" textSize="16sp" layout_gravity="center" w="50" h="30" gravity="center" visibility="invisible"/>
                        <img id="img_add_1" layout_weight="1" gravity="center" layout_gravity="center|right" w="30" h="30" src="@drawable/ic_play_arrow_black_48dp" tint="{{accent_color}}"/>
                        <img id="img_add_5" layout_weight="1" gravity="center" layout_gravity="center|right" w="30" h="30" src="@drawable/ic_fast_forward_black_48dp" tint="{{accent_color}}"/>
                        <img id="img_add_20" layout_weight="1" gravity="center" layout_gravity="center|right" w="30" h="30" src="@drawable/ic_skip_next_black_48dp" tint="{{accent_color}}"/>
                        </horizontal>
                </frame>
            </frame>
            <frame w="*" >
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_local_pharmacy_black_48dp" tint="{{accent_color}}"/>
                </frame>
                <frame marginRight="20" w="auto" layout_gravity="right">
                    <checkbox id="checkbox_auto_medicament" checked="" layout_weight="1" margin="10 0" layout_gravity="center|right" gravity="center|right"/>
                </frame>
                <button id="button_auto_medicament" text="自动嗑药" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*" >
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_lens_black_48dp" tint="{{accent_color}}"/>
                </frame>
                <frame marginLeft="23" w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="20" h="20" src="@drawable/ic_fullscreen_black_48dp" rotation="45" tint="#FFFFFF"/>
                </frame>
                <frame marginRight="20" w="auto" layout_gravity="right">
                    <checkbox id="checkbox_auto_stone" checked="" layout_weight="1" margin="10 0"  layout_gravity="center|right" gravity="center|right"/>
                </frame>
                <button id="button_auto_stone" text="自动碎石" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*" >
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_lock_black_48dp" tint="{{accent_color}}"/>
                </frame>
                <frame marginRight="20" w="auto" layout_gravity="right">
                    <checkbox id="checkbox_auto_lock_screen" checked="" layout_weight="1" margin="10 0" layout_gravity="center|right" gravity="center|right"/>
                </frame>
                <frame w="auto">
                    <button id="button_auto_lock_screen" text="自动锁屏[ROOT]" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
                    <text id="text_auto_lock_screen" text="自动锁屏（没有Root权限）" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" textColor="#BDBDBD" textSize="16sp" typeface="normal" />
                </frame>
            </frame>
        </vertical>
    );
    let LocalData = storages.create("AutoNightsBilibiliLocal");

    var repeat_times = LocalData.get("RepeatTimes");
    var auto_medicament = LocalData.get("AutoMedicament");
    var auto_stone = LocalData.get("AutoStone");
    var auto_lock_screen = LocalData.get("AutoLockScreen");

    if(LocalData.get("IsRooted")){
        menu.checkbox_auto_lock_screen.setChecked(auto_lock_screen);
        menu.button_auto_lock_screen.setVisibility(0);
        menu.text_auto_lock_screen.setVisibility(4);
        menu.checkbox_auto_lock_screen.setVisibility(0);
    }else{
        menu.checkbox_auto_lock_screen.setChecked(false);
        menu.button_auto_lock_screen.setVisibility(4);
        menu.text_auto_lock_screen.setVisibility(0);
        menu.checkbox_auto_lock_screen.setVisibility(4);
    }
    //  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
    if(repeat_times == 0){
        var infinity_times = true;
        menu.button_minus_20.setVisibility(4);
        menu.img_minus_20.setVisibility(4);
        menu.button_minus_5.setVisibility(4);
        menu.img_minus_5.setVisibility(4);
        menu.button_minus_1.setVisibility(4);
        menu.img_minus_1.setVisibility(4);
        menu.button_add_20.setVisibility(4);
        menu.img_add_20.setVisibility(4);
        menu.button_add_5.setVisibility(4);
        menu.img_add_5.setVisibility(4);
        menu.button_add_1.setVisibility(4);
        menu.img_add_1.setVisibility(4);
        menu.input_repeat_times.setVisibility(4);
        menu.text_infinity_times.setVisibility(0);
    }else if(repeat_times == 1){
        var infinity_times = false;
        menu.button_minus_20.setVisibility(4);
        menu.img_minus_20.setVisibility(4);
        menu.button_minus_5.setVisibility(4);
        menu.img_minus_5.setVisibility(4);
        menu.button_minus_1.setVisibility(4);
        menu.img_minus_1.setVisibility(4);
    }else{
        var infinity_times = false;
    }
    menu.checkbox_infinity_times.setChecked(infinity_times);
    menu.checkbox_auto_medicament.setChecked(auto_medicament);
    menu.checkbox_auto_stone.setChecked(auto_stone);
    menu.input_repeat_times.setText(String(repeat_times));

    menu.button_minus_20.on("click", () => {
        if(Number(menu.input_repeat_times.getText()) <= 21){
            menu.input_repeat_times.setText("1");
            menu.button_minus_20.setVisibility(4);
            menu.img_minus_20.setVisibility(4);
            menu.button_minus_5.setVisibility(4);
            menu.img_minus_5.setVisibility(4);
            menu.button_minus_1.setVisibility(4);
            menu.img_minus_1.setVisibility(4);
        }else{
            menu.input_repeat_times.setText(String(Number(menu.input_repeat_times.getText())-20));
        }
    });
    menu.button_minus_20.on("long_click", () => {
        menu.input_repeat_times.setText("1");
        menu.button_minus_20.setVisibility(4);
        menu.img_minus_20.setVisibility(4);
        menu.button_minus_5.setVisibility(4);
        menu.img_minus_5.setVisibility(4);
        menu.button_minus_1.setVisibility(4);
        menu.img_minus_1.setVisibility(4);
    });
    menu.button_minus_5.on("click", () => {
        if(Number(menu.input_repeat_times.getText()) <=6){
            menu.input_repeat_times.setText("1");
            menu.button_minus_20.setVisibility(4);
            menu.img_minus_20.setVisibility(4);
            menu.button_minus_5.setVisibility(4);
            menu.img_minus_5.setVisibility(4);
            menu.button_minus_1.setVisibility(4);
            menu.img_minus_1.setVisibility(4);
        }else{
            menu.input_repeat_times.setText(String(Number(menu.input_repeat_times.getText())-5));
        }
    });
    menu.button_minus_1.on("click", () => {
        if(Number(menu.input_repeat_times.getText()) <=2){
            menu.input_repeat_times.setText("1");
            menu.button_minus_20.setVisibility(4);
            menu.img_minus_20.setVisibility(4);
            menu.button_minus_5.setVisibility(4);
            menu.img_minus_5.setVisibility(4);
            menu.button_minus_1.setVisibility(4);
            menu.img_minus_1.setVisibility(4);
        }else{
            menu.input_repeat_times.setText(String(Number(menu.input_repeat_times.getText())-1));
        }
    });
    menu.button_add_1.on("click", () => {
        if(Number(menu.input_repeat_times.getText()) == 1){
            menu.button_minus_20.setVisibility(0);
            menu.img_minus_20.setVisibility(0);
            menu.button_minus_5.setVisibility(0);
            menu.img_minus_5.setVisibility(0);
            menu.button_minus_1.setVisibility(0);
            menu.img_minus_1.setVisibility(0);
        }
        menu.input_repeat_times.setText(String(Number(menu.input_repeat_times.getText())+1));
    });
    menu.button_add_5.on("click", () => {
        if(Number(menu.input_repeat_times.getText()) == 1){
            menu.button_minus_20.setVisibility(0);
            menu.img_minus_20.setVisibility(0);
            menu.button_minus_5.setVisibility(0);
            menu.img_minus_5.setVisibility(0);
            menu.button_minus_1.setVisibility(0);
            menu.img_minus_1.setVisibility(0);
        }
        menu.input_repeat_times.setText(String(Number(menu.input_repeat_times.getText())+5));
    });
    menu.button_add_20.on("click", () => {
        if(Number(menu.input_repeat_times.getText()) == 1){
            menu.button_minus_20.setVisibility(0);
            menu.img_minus_20.setVisibility(0);
            menu.button_minus_5.setVisibility(0);
            menu.img_minus_5.setVisibility(0);
            menu.button_minus_1.setVisibility(0);
            menu.img_minus_1.setVisibility(0);
        }
        menu.input_repeat_times.setText(String(Number(menu.input_repeat_times.getText())+20));
    });
    menu.button_infinity_times.on("click", () => {
        menu.checkbox_infinity_times.setChecked(!menu.checkbox_infinity_times.isChecked());
        if(menu.checkbox_infinity_times.isChecked()){
            menu.button_minus_20.setVisibility(4);
            menu.img_minus_20.setVisibility(4);
            menu.button_minus_5.setVisibility(4);
            menu.img_minus_5.setVisibility(4);
            menu.button_minus_1.setVisibility(4);
            menu.img_minus_1.setVisibility(4);
            menu.button_add_20.setVisibility(4);
            menu.img_add_20.setVisibility(4);
            menu.button_add_5.setVisibility(4);
            menu.img_add_5.setVisibility(4);
            menu.button_add_1.setVisibility(4);
            menu.img_add_1.setVisibility(4);
            menu.input_repeat_times.setVisibility(4);
            menu.text_infinity_times.setVisibility(0);
        }else{
            menu.input_repeat_times.setText("1");
            menu.button_add_20.setVisibility(0);
            menu.img_add_20.setVisibility(0);
            menu.button_add_5.setVisibility(0);
            menu.img_add_5.setVisibility(0);
            menu.button_add_1.setVisibility(0);
            menu.img_add_1.setVisibility(0);
            menu.input_repeat_times.setVisibility(0);
            menu.text_infinity_times.setVisibility(4);
        }
    });
    menu.button_auto_medicament.on("click", () => {
        menu.checkbox_auto_medicament.setChecked(!menu.checkbox_auto_medicament.isChecked());
    });
    menu.button_auto_stone.on("click", () => {
        menu.checkbox_auto_stone.setChecked(!menu.checkbox_auto_stone.isChecked());
    });
    menu.button_auto_lock_screen.on("click", () => {
        var is_rooted = shell("ls /system/bin",true).result.toString()
        if(is_rooted.length>50){
            menu.checkbox_auto_lock_screen.setChecked(!menu.checkbox_auto_lock_screen.isChecked());
        }else{
          toast("没有Root权限！无法使用自动锁屏功能！");
          menu.checkbox_auto_lock_screen.setChecked(false);
        }
    });

    // 显示对话框
    dialogs.build({
        customView: menu,
        positive: "保存",
        negative: "返回",
        // view高度超过对话框时是否可滑动
        wrapInScrollView: true,
        // 按下按钮时是否自动结束对话框
        autoDismiss: false,
        // 点击对话框范围外时是否结束对话框
        canceledOnTouchOutside:false
    }).on("positive", (dialog) => {
        toast("设置已保存！");
        if(menu.checkbox_infinity_times.isChecked()){
            LocalData.put("RepeatTimes",0);
        }else{
            LocalData.put("RepeatTimes",Number(menu.input_repeat_times.getText()));
        }
        LocalData.put("AutoMedicament",menu.checkbox_auto_medicament.isChecked());
        LocalData.put("AutoStone",menu.checkbox_auto_stone.isChecked());
        LocalData.put("AutoLockScreen",menu.checkbox_auto_lock_screen.isChecked());
        dialog.dismiss();
        settingsMenu();
    }).on("negative", (dialog) => {
        dialog.dismiss();
        settingsMenu();
    }).show();
}
function otherSettings(){
    let menu = ui.inflate(
        <vertical>
            <text id="title" text="其他设置" textColor="black" textStyle="bold" textSize="22sp" padding="0 10" gravity="center|left" layout_gravity="center|left"/>
            <frame w="*" >
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_color_lens_black_48dp" tint="{{accent_color}}"/>
                </frame>
                <text id="text_accent_color" text="主题色" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" textColor="#000000" textSize="16sp" typeface="normal" />
                <frame marginRight="10" w="auto" h="60" layout_gravity="right">
                    <spinner id="spinner_color_choices" entries="绅士黑|少女粉|灵梦红|咸蛋黄|早苗绿|胖次蓝|基佬紫|夕阳橙|薄荷青"  gravity="center|right" layout_gravity="center|right" textColor="{{accent_color}}"/>
                </frame>
            </frame>
        </vertical>
    );
    switch(LocalData.get("AccentColor")){
        case "#2D2D2D" :
            menu.spinner_color_choices.setSelection(0);
        break;
        case "#FB7299" :
            menu.spinner_color_choices.setSelection(1);
        break;
        case "#F44336" :
            menu.spinner_color_choices.setSelection(2);
        break;
        case "#FFC107" :
            menu.spinner_color_choices.setSelection(3);
        break;
        case "#8BC34A" :
            menu.spinner_color_choices.setSelection(4);
        break;
        case "#2196F3" :
            menu.spinner_color_choices.setSelection(5);
        break;
        case "#9C27B0" :
            menu.spinner_color_choices.setSelection(6);
        break;
        case "#FB8C00" :
            menu.spinner_color_choices.setSelection(7);
        break;
        case "#80DEEA" :
            menu.spinner_color_choices.setSelection(8);
        break;
        default:
            console.error("Exception: Can't set spinner color properly.");
            stop();
        break;
    }
    // 显示对话框//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
    dialogs.build({
        customView: menu,
        positive: "保存",
        negative: "返回",
        // view高度超过对话框时是否可滑动
        wrapInScrollView: true,
        // 按下按钮时是否自动结束对话框
        autoDismiss: false,
        // 点击对话框范围外时是否结束对话框
        canceledOnTouchOutside:false
    }).on("positive", (dialog) => {
        toast("设置已保存！");
        switch(menu.spinner_color_choices.getSelectedItemPosition()){
            case 0 :
                accent_color = "#2D2D2D"
                LocalData.put("AccentColor", accent_color);
            break;
            case 1 :
                accent_color = "#FB7299"
                LocalData.put("AccentColor", accent_color);
            break;
            case 2 :
                accent_color = "#F44336"
                LocalData.put("AccentColor", accent_color);
            break;
            case 3 :
                accent_color = "#FFC107"
                LocalData.put("AccentColor", accent_color);
            break;
            case 4 :
                accent_color = "#8BC34A"
                LocalData.put("AccentColor", accent_color);
            break;
            case 5 :
                accent_color = "#2196F3"
                LocalData.put("AccentColor", accent_color);
            break;
            case 6 :
                accent_color = "#9C27B0"
                LocalData.put("AccentColor", accent_color);
            break;
            case 7 :
                accent_color = "#FB8C00"
                LocalData.put("AccentColor", accent_color);
            break;
            case 8 :
                accent_color = "#80DEEA"
                LocalData.put("AccentColor", accent_color);
            break;
            default:
                toast("ERROR!");
            break;
        }
        dialog.dismiss();
        otherSettings();
    }).on("negative", (dialog) => {
        dialog.dismiss();
        settingsMenu();
    }).show();
}
function accentColorSettings(){
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
}
function miscMenu(){    //“更多”菜单
    var ValidateData = storages.create("AutoNightsBilibiliValidate");
    var cash_avalible = ValidateData.get("CashAvalible");
    let menu = ui.inflate(
        <vertical margin="0">
            <text id="seekbar_value" text="更多" textColor="black" textStyle="bold" textSize="22sp" padding="0 10" gravity="center|left" layout_gravity="center|left"/>
            <frame w="*" >
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_accessible_black_48dp" tint="{{accent_color}}" />
                </frame>
                <button id="accessibility" text="无障碍服务设置" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*">
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_home_black_48dp" tint="{{accent_color}}" />
                </frame>
                <button id="mainpage" text="打开主页面[未完成]" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*">
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_help_outline_black_48dp" tint="{{accent_color}}" />
                </frame>
                <button id="help" text="使用指南" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*">
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_info_outline_black_48dp" tint="{{accent_color}}"/>
                </frame>
                <button id="about" text="关于" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
            <frame w="*">
                <frame w="auto">
                    <img gravity="center|center_vertical" layout_gravity="center" w="26" h="26" src="@drawable/ic_exit_to_app_black_48dp" tint="{{accent_color}}" />
                </frame>
                <button id="exit" text="退出自动方舟B服版" paddingLeft="60" gravity="left|center_vertical" layout_gravity="center" w="*" h="60" style="Widget.AppCompat.Button.Borderless" textColor="#000000" textSize="16sp" typeface="normal" />
            </frame>
        </vertical>
    );
    var menu_dialog = dialogs.build({
        customView: menu,
        wrapInScrollView: true,    //view高度超过对话框时是否可滑动
        autoDismiss: false,    //按下按钮时是否自动结束对话框
        canceledOnTouchOutside:true    //点击对话框范围外时是否结束对话框
    }).show();

    menu.accessibility.on("click", () => {
        menu_dialog.dismiss();
        app.startActivity({
            action: "android.settings.ACCESSIBILITY_SETTINGS"
        });
    })
    menu.mainpage.on("click", () => {
        //menu_dialog.dismiss();
        /*
        app.startActivity({
            action: "android.intent.action.VIEW", //此处可为其他值
            packageName: "org.autojs.autojs",
            className: "org.autojs.autojs.ui.splash.SplashActivity"
            //此处可以加入其他内容，如data、extras
        });
        */
       toast("此选项尚未完善！");
    })
    menu.help.on("click", () => {
        menu_dialog.dismiss();
        help_dialog();
    })
    menu.about.on("click", () => {
        menu_dialog.dismiss();
        about_dialog();
    })
    menu.exit.on("click", () => {
        menu_dialog.dismiss();
        if((cash_avalible)&&(Math.floor(Math.random()*10)>=7)){
            cashing_request();
        }else{
            toast("自动方舟B服版已关闭！欢迎下次使用！");
            stop();
        }
    })
}
function cashing_request(){
    var ValidateData = storages.create("AutoNightsBilibiliValidate");

    dialogs.build({
        title: "喜欢自动方舟B服版吗？",
        content: "喜欢的话可以给作者打赏一杯奶茶的钱\n你们的支持是我继续前进的动力！",
        checkBoxPrompt: "不再弹出",
        positive:"支付宝",
        negative:"微信",
        neutral:"退出",
        wrapInScrollView: true,    //view高度超过对话框时是否可滑动
        autoDismiss: false,    //按下按钮时是否自动结束对话框
        canceledOnTouchOutside:false    //点击对话框范围外时是否结束对话框
    }).on("positive", (dialog) => {
        dialog.dismiss();
        alipay_dialog();
    }).on("negative", (dialog) => {
        dialog.dismiss();
        micromessege_dialog();
    }).on("neutral", (dialog) => {
        dialog.dismiss();
        toast("自动方舟B服版已关闭！欢迎再次使用！");
        stop();
    }).on("check", (checked)=>{
        ValidateData.put("CashAvalible",!checked);
    }).show();
}
function alipay_dialog(){
    let menu = ui.inflate(
        <vertical margin="0">
            <text id="seekbar_value" text="收款码（截图即可）" textColor="black" textStyle="bold" textSize="22sp" padding="0 10" gravity="center|left" layout_gravity="center|left"/>
            <frame w="*" >
                <img gravity="center|center_vertical" layout_gravity="center" w="auto" h="auto" src="https://t1.picb.cc/uploads/2019/08/11/gvo6OJ.png"/>
            </frame>
        </vertical>
    );
    dialogs.build({
        customView: menu,
        positive:"打开支付宝转账",
        neutral:"打开支付宝扫一扫",
        wrapInScrollView: true,    //view高度超过对话框时是否可滑动
        autoDismiss: false,    //按下按钮时是否自动结束对话框
        canceledOnTouchOutside:false    //点击对话框范围外时是否结束对话框
    }).on("positive", (dialog) => {
        dialog.dismiss();
        setClip("gzy1135989508@outlook.com");
        toast("账户名已经复制到剪贴板,点击粘贴即可。感谢您支持自动方舟B服版！");
        app.startActivity({
            packageName: "com.eg.android.AlipayGphone",
            className:"com.alipay.mobile.transferapp.ui.TFToAccountInputActivity_"
        });
        stop();
    }).on("neutral", (dialog) => {
        dialog.dismiss();
        files.copy("./res/qr_code.png", "/storage/emulated/0/Pictures/qr_code.png");
        app.startActivity({
            packageName: "com.eg.android.AlipayGphone",
            className:"com.alipay.mobile.scan.as.main.MainCaptureActivity"
        });
        toast("感谢您支持自动方舟B服版！欢迎再次使用");
        stop();
    }).show();
}
function micromessege_dialog(){
    let menu = ui.inflate(
        <vertical margin="0">
            <text id="seekbar_value" text="赞赏码（截图即可）" textColor="black" textStyle="bold" textSize="22sp" padding="0 10" gravity="center|left" layout_gravity="center|left"/>
            <frame w="*" h="auto" >
                <img gravity="center|center_vertical" layout_gravity="center" w="auto" h="auto" src="https://t1.picb.cc/uploads/2019/08/11/gvoIP0.png" border="0" />"/>
            </frame>
        </vertical>
    );
    dialogs.build({
        customView: menu,
        positive:"打开微信扫一扫",
        wrapInScrollView: true,    //view高度超过对话框时是否可滑动
        autoDismiss: false,    //按下按钮时是否自动结束对话框
        canceledOnTouchOutside:false    //点击对话框范围外时是否结束对话框
    }).on("positive", (dialog) => {
        dialog.dismiss();
        files.copy("./res/appreciation_code.png", "/storage/emulated/0/Pictures/appreciation_code.png");
        app.startActivity({
            packageName: "com.tencent.mm",
            className:"com.tencent.mm.plugin.scanner.ui.BaseScanUI"
        });
        toast("感谢您支持自动方舟B服版！欢迎再次使用");
        stop();
    }).show();
}
function help_dialog(){    //“帮助”对话框
    dialogs.build({
        title: "使用指南",
        content: "1.设置好刷本字数后，点击刷本，在选关界面点击关卡就会开始刷\n2.如果重复次数是无限，可能需要手动点击停止刷本按钮\n3.刷本操作进行时手机不会自动锁屏，等刷本完成后会自动回复正常锁屏时间\n4、退出本应用需要按“脚本菜单”按钮在选单中点击“退出脚本”\n5.重复次数为无限时，若设置为“自动恰源石”，那么你就会穷爆\n6.当情况无法控制时，记得按下音量上键结束整个脚本\n7.自动恰源石只会吃你现有的源石，并不会帮你自动购买\n8、大部分窗口点击窗口外部就可以关闭，包括主选单",
        positive: "返回",
        neutral: "还有问题？点击观看演示视频",
        wrapInScrollView: true,    //view高度超过对话框时是否可滑动
        autoDismiss: true,    //按下按钮时是否自动结束对话框
        canceledOnTouchOutside:false    //点击对话框范围外时是否结束对话框
    }).on("positive", ()=>{
        miscMenu();
    }).on("neutral", ()=>{
        app.openUrl("https://b23.tv/av61367241");
    }).show();
}
function about_dialog(){    //“关于”对话框
    dialogs.build({
        title: "关于", //  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
        content: "本软件由Auto.js Pro打包制成\n\nAuto.js Pro内核版本号：7.0.4-1\n软件版本号：" + app.versionName + "\n\n作者：Particle_G\n联系方式：QQ：1135989508",
        positive: "返回",
        negative: "加入QQ交流群",
        neutral:"打赏作者",
        wrapInScrollView: true,    //view高度超过对话框时是否可滑动
        autoDismiss: true,    //按下按钮时是否自动结束对话框
        canceledOnTouchOutside:false    //点击对话框范围外时是否结束对话框
    }).on("positive", ()=>{
        miscMenu();
    }).on("negative", ()=>{
        app.openUrl("https://jq.qq.com/?_wv=1027&k=5PX7Evs");
    }).on("neutral", ()=>{
        cashing_request();
    }).show();
}
function initializer(){    //运行初始化验证
    authorityCheck();
    var ValidateData = storages.create("AutoNightsBilibiliValidate");
    running_action = null;
    if(device.width != 1080){
        toast("本应用只适用于横向分辨率为1080的设备！请下载相应分辨率的版本");
        stop();
    }
    if (!ValidateData.contains("ValidatedToken")){
        validateToken();
    }else{
        validateExisted();
    }
}
function authorityCheck(){    //首次运行、权限及配置数据完整性判断
    var LocalData = storages.create("AutoNightsBilibiliLocal");
    //确认应用权限是否被授予
    if (!LocalData.contains("VersionCode")){
        toast("请在接下来的页面里开启本应用的权限");
        console.show();
        console.hide();
        events.observeKey();
        var b = device.getBrightness();
        device.setBrightness(b);
        LocalData.put("VersionCode", app.versionCode);
        //stop();
    }else if(LocalData.get("VersionCode") != app.versionCode){
        toast("检测到数据库版本不匹配！已经重置数据库文件夹，请重新运行自动方舟B服版！");
        LocalData.clear();
        stop();
    }
    requestScreenCapture(true);
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
    if(isRooted()){
        LocalData.put("IsRooted", true);
    }else{
        LocalData.put("IsRooted", false);
    }

    //确认重复次数配置数据是否存在，不存在则默认设置为0（无限）次
    if (!LocalData.contains("RepeatTimes")){
        LocalData.put("RepeatTimes", 0);
    }
    //确认自动碎石配置数据是否存在，不存在则默认设置为“false”
    if (!LocalData.contains("AutoStone")){
        LocalData.put("AutoStone", false);
    }
    //确认自动嗑药配置数据是否存在，不存在则默认设置为“true”
    if (!LocalData.contains("AutoMedicament")){
        LocalData.put("AutoMedicament", true);
    }
    //确认自动锁屏配置数据是否存在，不存在则默认设置为“false”
    if (!LocalData.contains("AutoLockScreen")){
        LocalData.put("AutoLockScreen", false);
    }
    //确认主题色配置数据是否存在，不存在则默认设置为“false”
    if (!LocalData.contains("AccentColor")){
        LocalData.put("AccentColor", "#2D2D2D");
    }

    function isRooted(){
        var is_rooted=shell("ls /system/bin",true).result.toString()
        if(is_rooted.length>50){
          return true
        }else{
            return false
        }
    }
}
function validateExisted(){    //验证存储中的Token
    var ValidateData = storages.create("AutoNightsBilibiliValidate");

    var token_input = ValidateData.get("ValidatedToken");
    var qq_number = ValidateData.get("ValidatedQQNumber");
    var machine_code = ValidateData.get("MachineCode");

    var token_generated = generateToken(qq_number,machine_code);
    if (token_input != token_generated){
        toast("机器或系统变更！Token失效！");
        ValidateData.remove("ValidatedToken");
        ValidateData.remove("ValidatedQQNumber");
        ValidateData.remove("MachineCode");
        stop();
    }
}
function validateToken(){    //验证新Token
    var ValidateData = storages.create("AutoNightsBilibiliValidate");
    ValidateData.put("CashAvalible",true);
    var machine_code = generateMachineCode();
    ValidateData.put("MachineCode",machine_code);

    let view = ui.inflate(
        <vertical padding="16 0">
            <text>这是本机第一次使用自动方舟B服版，请填写你申请时的QQ号和Token</text>
            <text>QQ号</text>
            <input id="QQNumber" />
            <text>Token</text>
            <input id="Token"/>
        </vertical>
    , null, false);
    //  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
    do{
        var wrong_token = true;
        var validate_thread = threads.start(function(){
            dialogs.build({
                customView: view,
                title: "用户验证",
                positive: "确定",
                neutral: "没有Token?",
                negative:"退出",
                wrapInScrollView: true,// view高度超过对话框时是否可滑动
                autoDismiss: false// 按下按钮时是否自动结束对话框
            }).on("positive", (dialog) => {
                let qq_number = String(view.QQNumber.getText())
                let token_input = String(view.Token.getText())
                var token_generated = generateToken(qq_number,machine_code);

                if (token_input != token_generated){
                    view.Token.setError("Token不正确");
                }else{
                    dialog.dismiss();
                    toast("验证成功！");
                    ValidateData.put("ValidatedToken", token_input);
                    ValidateData.put("ValidatedQQNumber",qq_number);
                    wrong_token = false;
                }
            }).on("neutral", (dialog) => {
                dialog.dismiss();
                alert("你的机器码已经复制到剪贴板\n请联系交流群的管理员或群主申请使用Token");
                setClip(machine_code);
                app.openUrl("https://jq.qq.com/?_wv=1027&k=5PX7Evs");
                stop();
            }).on("negative", (dialog) => {
                dialog.dismiss();
                toast("自动方舟B服版已关闭，欢迎下次使用！");
                stop();
            }).show();
        });
        validate_thread.join();
    }while(wrong_token);
}
function generateMachineCode(){    //生成机器码
    var imei_number = device.getIMEI();
    var android_id = device.getAndroidId();

    var md5_imei = md5(imei_number);
    var md5_android_id = md5(android_id);

    var n_md5_imei = md5_imei.split("");
    var n_md5_android_id = md5_android_id.split("");

    var string = "";

    for(var i=0;i<32;i++){
	    var temp = n_md5_imei[i] + n_md5_android_id[32-i];
	    string += temp;
    }

    var machine_code = md5(string);
    return machine_code;
}
function generateToken(qq_number,machine_code){    //生成Token
    var md5_qq = md5(qq_number);
    var md5_machine_code = md5(machine_code);

    var n_md5_qq = md5_qq.split("");
    var n_md5_machine_code = md5_machine_code.split("");

    var original_string = "";

    for(var i=0;i<32;i++){
	    var temp = n_md5_qq[i] + n_md5_machine_code[31-i];
	    original_string += temp;
    }

    var encrypted_string = md5(original_string);
    var double_encrypted = md5(encrypted_string);
    var triple_encrypted = md5(double_encrypted);

    var token = "";
    for(var j=0;j<32;j+=2){
	    var temp = triple_encrypted[j];
	    token += temp.toUpperCase();
	    if(j == 6 || j == 14 || j == 22){
		    token += "-";
	    }
    }
    return token;
}
function md5(string){    //MD5算法
    function md5_RotateLeft(lValue, iShiftBits){
        return (lValue << iShiftBits) | (lValue >>> (32 - iShiftBits));
    }
    function md5_AddUnsigned(lX, lY) {
        var lX4, lY4, lX8, lY8, lResult;
        lX8 = (lX & 0x80000000);
        lY8 = (lY & 0x80000000);
        lX4 = (lX & 0x40000000);
        lY4 = (lY & 0x40000000);
        lResult = (lX & 0x3FFFFFFF) + (lY & 0x3FFFFFFF);
        if (lX4 & lY4) {
            return (lResult ^ 0x80000000 ^ lX8 ^ lY8);
        }
        if (lX4 | lY4) {
            if (lResult & 0x40000000) {
          return (lResult ^ 0xC0000000 ^ lX8 ^ lY8);
        } else {
          return (lResult ^ 0x40000000 ^ lX8 ^ lY8);
        }
      } else {
        return (lResult ^ lX8 ^ lY8);
      }
    }
    function md5_F(x, y, z) {
      return (x & y) | ((~x) & z);
    }
    function md5_G(x, y, z) {
      return (x & z) | (y & (~z));
    }
    function md5_H(x, y, z) {
      return (x ^ y ^ z);
    }
    function md5_I(x, y, z) {
      return (y ^ (x | (~z)));
    }
    function md5_FF(a, b, c, d, x, s, ac) {
      a = md5_AddUnsigned(a, md5_AddUnsigned(md5_AddUnsigned(md5_F(b, c, d), x), ac));
      return md5_AddUnsigned(md5_RotateLeft(a, s), b);
    };
    function md5_GG(a, b, c, d, x, s, ac) {
      a = md5_AddUnsigned(a, md5_AddUnsigned(md5_AddUnsigned(md5_G(b, c, d), x), ac));
      return md5_AddUnsigned(md5_RotateLeft(a, s), b);
    };
    function md5_HH(a, b, c, d, x, s, ac) {
      a = md5_AddUnsigned(a, md5_AddUnsigned(md5_AddUnsigned(md5_H(b, c, d), x), ac));
      return md5_AddUnsigned(md5_RotateLeft(a, s), b);
    };
    function md5_II(a, b, c, d, x, s, ac) {
      a = md5_AddUnsigned(a, md5_AddUnsigned(md5_AddUnsigned(md5_I(b, c, d), x), ac));
      return md5_AddUnsigned(md5_RotateLeft(a, s), b);
    };
    function md5_ConvertToWordArray(string) {
      var lWordCount;
      var lMessageLength = string.length;
      var lNumberOfWords_temp1 = lMessageLength + 8;
      var lNumberOfWords_temp2 = (lNumberOfWords_temp1 - (lNumberOfWords_temp1 % 64)) / 64;
      var lNumberOfWords = (lNumberOfWords_temp2 + 1) * 16;
      var lWordArray = Array(lNumberOfWords - 1);
      var lBytePosition = 0;
      var lByteCount = 0;
      while (lByteCount < lMessageLength) {
        lWordCount = (lByteCount - (lByteCount % 4)) / 4;
        lBytePosition = (lByteCount % 4) * 8;
        lWordArray[lWordCount] = (lWordArray[lWordCount] | (string.charCodeAt(lByteCount) << lBytePosition));
        lByteCount++;
      }
      lWordCount = (lByteCount - (lByteCount % 4)) / 4;
      lBytePosition = (lByteCount % 4) * 8;
      lWordArray[lWordCount] = lWordArray[lWordCount] | (0x80 << lBytePosition);
      lWordArray[lNumberOfWords - 2] = lMessageLength << 3;
      lWordArray[lNumberOfWords - 1] = lMessageLength >>> 29;
      return lWordArray;
    };
    function md5_WordToHex(lValue) {
      var WordToHexValue = "", WordToHexValue_temp = "", lByte, lCount;
      for (lCount = 0; lCount <= 3; lCount++) {
        lByte = (lValue >>> (lCount * 8)) & 255;
        WordToHexValue_temp = "0" + lByte.toString(16);
        WordToHexValue = WordToHexValue + WordToHexValue_temp.substr(WordToHexValue_temp.length - 2, 2);
      }
      return WordToHexValue;
    };
    function md5_Utf8Encode(string) {
      string = string.replace(/\r\n/g, "\n");
      var utftext = "";
      for (var n = 0; n < string.length; n++) {
        var c = string.charCodeAt(n);
        if (c < 128) {
          utftext += String.fromCharCode(c);
        } else if ((c > 127) && (c < 2048)) {
          utftext += String.fromCharCode((c >> 6) | 192);
          utftext += String.fromCharCode((c & 63) | 128);
        } else {
          utftext += String.fromCharCode((c >> 12) | 224);
          utftext += String.fromCharCode(((c >> 6) & 63) | 128);
          utftext += String.fromCharCode((c & 63) | 128);
        }
      }
      return utftext;
    };
    var x = Array();
    var k, AA, BB, CC, DD, a, b, c, d;
    var S11 = 7, S12 = 12, S13 = 17, S14 = 22;
    var S21 = 5, S22 = 9, S23 = 14, S24 = 20;
    var S31 = 4, S32 = 11, S33 = 16, S34 = 23;
    var S41 = 6, S42 = 10, S43 = 15, S44 = 21;
    string = md5_Utf8Encode(string);
    x = md5_ConvertToWordArray(string);
    a = 0x67452301; b = 0xEFCDAB89; c = 0x98BADCFE; d = 0x10325476;
    for (k = 0; k < x.length; k += 16) {
      AA = a; BB = b; CC = c; DD = d;
      a = md5_FF(a, b, c, d, x[k + 0], S11, 0xD76AA478);
      d = md5_FF(d, a, b, c, x[k + 1], S12, 0xE8C7B756);
      c = md5_FF(c, d, a, b, x[k + 2], S13, 0x242070DB);
      b = md5_FF(b, c, d, a, x[k + 3], S14, 0xC1BDCEEE);
      a = md5_FF(a, b, c, d, x[k + 4], S11, 0xF57C0FAF);
      d = md5_FF(d, a, b, c, x[k + 5], S12, 0x4787C62A);
      c = md5_FF(c, d, a, b, x[k + 6], S13, 0xA8304613);
      b = md5_FF(b, c, d, a, x[k + 7], S14, 0xFD469501);
      a = md5_FF(a, b, c, d, x[k + 8], S11, 0x698098D8);
      d = md5_FF(d, a, b, c, x[k + 9], S12, 0x8B44F7AF);
      c = md5_FF(c, d, a, b, x[k + 10], S13, 0xFFFF5BB1);
      b = md5_FF(b, c, d, a, x[k + 11], S14, 0x895CD7BE);
      a = md5_FF(a, b, c, d, x[k + 12], S11, 0x6B901122);
      d = md5_FF(d, a, b, c, x[k + 13], S12, 0xFD987193);
      c = md5_FF(c, d, a, b, x[k + 14], S13, 0xA679438E);
      b = md5_FF(b, c, d, a, x[k + 15], S14, 0x49B40821);
      a = md5_GG(a, b, c, d, x[k + 1], S21, 0xF61E2562);
      d = md5_GG(d, a, b, c, x[k + 6], S22, 0xC040B340);
      c = md5_GG(c, d, a, b, x[k + 11], S23, 0x265E5A51);
      b = md5_GG(b, c, d, a, x[k + 0], S24, 0xE9B6C7AA);
      a = md5_GG(a, b, c, d, x[k + 5], S21, 0xD62F105D);
      d = md5_GG(d, a, b, c, x[k + 10], S22, 0x2441453);
      c = md5_GG(c, d, a, b, x[k + 15], S23, 0xD8A1E681);
      b = md5_GG(b, c, d, a, x[k + 4], S24, 0xE7D3FBC8);
      a = md5_GG(a, b, c, d, x[k + 9], S21, 0x21E1CDE6);
      d = md5_GG(d, a, b, c, x[k + 14], S22, 0xC33707D6);
      c = md5_GG(c, d, a, b, x[k + 3], S23, 0xF4D50D87);
      b = md5_GG(b, c, d, a, x[k + 8], S24, 0x455A14ED);
      a = md5_GG(a, b, c, d, x[k + 13], S21, 0xA9E3E905);
      d = md5_GG(d, a, b, c, x[k + 2], S22, 0xFCEFA3F8);
      c = md5_GG(c, d, a, b, x[k + 7], S23, 0x676F02D9);
      b = md5_GG(b, c, d, a, x[k + 12], S24, 0x8D2A4C8A);
      a = md5_HH(a, b, c, d, x[k + 5], S31, 0xFFFA3942);
      d = md5_HH(d, a, b, c, x[k + 8], S32, 0x8771F681);
      c = md5_HH(c, d, a, b, x[k + 11], S33, 0x6D9D6122);
      b = md5_HH(b, c, d, a, x[k + 14], S34, 0xFDE5380C);
      a = md5_HH(a, b, c, d, x[k + 1], S31, 0xA4BEEA44);
      d = md5_HH(d, a, b, c, x[k + 4], S32, 0x4BDECFA9);
      c = md5_HH(c, d, a, b, x[k + 7], S33, 0xF6BB4B60);
      b = md5_HH(b, c, d, a, x[k + 10], S34, 0xBEBFBC70);
      a = md5_HH(a, b, c, d, x[k + 13], S31, 0x289B7EC6);
      d = md5_HH(d, a, b, c, x[k + 0], S32, 0xEAA127FA);
      c = md5_HH(c, d, a, b, x[k + 3], S33, 0xD4EF3085);
      b = md5_HH(b, c, d, a, x[k + 6], S34, 0x4881D05);
      a = md5_HH(a, b, c, d, x[k + 9], S31, 0xD9D4D039);
      d = md5_HH(d, a, b, c, x[k + 12], S32, 0xE6DB99E5);
      c = md5_HH(c, d, a, b, x[k + 15], S33, 0x1FA27CF8);
      b = md5_HH(b, c, d, a, x[k + 2], S34, 0xC4AC5665);
      a = md5_II(a, b, c, d, x[k + 0], S41, 0xF4292244);
      d = md5_II(d, a, b, c, x[k + 7], S42, 0x432AFF97);
      c = md5_II(c, d, a, b, x[k + 14], S43, 0xAB9423A7);
      b = md5_II(b, c, d, a, x[k + 5], S44, 0xFC93A039);
      a = md5_II(a, b, c, d, x[k + 12], S41, 0x655B59C3);
      d = md5_II(d, a, b, c, x[k + 3], S42, 0x8F0CCC92);
      c = md5_II(c, d, a, b, x[k + 10], S43, 0xFFEFF47D);
      b = md5_II(b, c, d, a, x[k + 1], S44, 0x85845DD1);
      a = md5_II(a, b, c, d, x[k + 8], S41, 0x6FA87E4F);
      d = md5_II(d, a, b, c, x[k + 15], S42, 0xFE2CE6E0);
      c = md5_II(c, d, a, b, x[k + 6], S43, 0xA3014314);
      b = md5_II(b, c, d, a, x[k + 13], S44, 0x4E0811A1);
      a = md5_II(a, b, c, d, x[k + 4], S41, 0xF7537E82);
      d = md5_II(d, a, b, c, x[k + 11], S42, 0xBD3AF235);
      c = md5_II(c, d, a, b, x[k + 2], S43, 0x2AD7D2BB);
      b = md5_II(b, c, d, a, x[k + 9], S44, 0xEB86D391);
      a = md5_AddUnsigned(a, AA);
      b = md5_AddUnsigned(b, BB);
      c = md5_AddUnsigned(c, CC);
      d = md5_AddUnsigned(d, DD);
    }
    return (md5_WordToHex(a) + md5_WordToHex(b) + md5_WordToHex(c) + md5_WordToHex(d)).toLowerCase();
}
function img_down() {
    win_1.logo.attr("alpha", "0.4");
    logo_switch = false;
    animationCreator();
}
function animationCreator(){    //补间动画生成
    var anX = [], anY = [], slX = [], slY = []
    if (logo_switch) {
        for (let i = 0; i < XY.length; i++) {
            anX[i] = ObjectAnimator.ofFloat(XY[i][0], "translationX", parseInt(XY[i][1]), 0);
            anY[i] = ObjectAnimator.ofFloat(XY[i][0], "translationY", parseInt(XY[i][2]), 0);
            slX[i] = ObjectAnimator.ofFloat(XY[i][0], "scaleX", 0, 1)
            slY[i] = ObjectAnimator.ofFloat(XY[i][0], "scaleY", 0, 1)
        }
    } else {
        for (let i = 0; i < XY.length; i++) {
            anX[i] = ObjectAnimator.ofFloat(XY[i][0], "translationX", 0, parseInt(XY[i][1]));
            anY[i] = ObjectAnimator.ofFloat(XY[i][0], "translationY", 0, parseInt(XY[i][2]));
            slX[i] = ObjectAnimator.ofFloat(XY[i][0], "scaleX", 1, 0)
            slY[i] = ObjectAnimator.ofFloat(XY[i][0], "scaleY", 1, 0)
        }
    }
    set = new AnimatorSet();
    set.playTogether(
        anX[0], anX[1], anX[2], anX[3], anX[4],
        anY[0], anY[1], anY[2], anY[3], anY[4],
        slX[0], slX[1], slX[2], slX[3], slX[4],
        slY[0], slY[1], slY[2], slY[3], slY[4]);
    set.setDuration(logo_ms);
    threads.start(function () {//动画的结束事件一直没有明白 只能拿线程代替了
        logo_buys = true
        if (logo_switch) {
            //log("开启")
            events.broadcast.emit("悬浮开关", true)
            sleep(logo_ms)
        } else {
            //log("关闭")
            sleep(logo_ms + 100)
            events.broadcast.emit("悬浮开关", false)
        }
        logo_buys = false
    });
    set.start();

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
}

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
