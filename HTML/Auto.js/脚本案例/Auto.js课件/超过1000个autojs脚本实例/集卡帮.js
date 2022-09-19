
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
importClass(android.animation.ObjectAnimator)
importClass(android.animation.AnimatorSet)
importClass(android.view.animation.BounceInterpolator)
//importClass(android.content.BroadcastReceiver);
importClass(android.content.ContextWrapper);
importClass(android.content.IntentFilter);

if (!requestScreenCapture(false)) { toast("请求截图失败"); exit(); }
var storage = storages.create("JKB");
/**************可修改参数 */
//按钮大小
const but_w_h = 42;
//图标大小
const but_w = 30;
//按钮停靠时X值 增量 感觉按钮停靠两边太靠外面则减小该值 
const port_x = 4;
//菜单展开圆的半径
const menu_r = 230
//菜单展开动画播放时间 可自行修改
const animation_time = 200
//按钮停靠动画播放时间 可自行修改
const animation_time_1 = 300
var links = null;
var links2 = null;
//模式
var models
//激活码
var key
//次数
var numbers
//集卡帮帐号
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

var userNames
//集卡帮密码
var userPass
//支付宝姓名
var payName
//支付宝帐号
var payUser
//红圈坐标XX,YY
var redCircleX, redCircleY;
//红心坐标XX,YY
var redHeartX
var redHeartY;
//关注坐标XX,YY
var redStripX
var redStripY;

//menu菜单数据可自行修改
//添加方法在but_data里面先写好对应内容,然后在menu悬浮窗里面添加一个按钮布局并填写信息
//也可以不需要下面数据 直接在悬浮窗手动输入信息
const but_data = {
    'logo': {
        name: "logo",//不可修改
        src: "https://pro.autojs.org/images/logo.png",
    },
    'menu_1': {
        name: "菜单1",
        src: "@drawable/ic_perm_identity_black_48dp",
        bg: "#009687"
    },
    'menu_2': {
        name: "菜单2",
        src: "@drawable/ic_assignment_black_48dp",
        bg: "#ee534f"
    },
    'menu_3': {
        name: "菜单3",
        src: "@drawable/ic_play_arrow_black_48dp",
        bg: "#40a5f3"
    },
    'menu_4': {
        name: "菜单4",
        src: "@drawable/ic_clear_black_48dp",
        bg: "#fbd834"
    },
    'menu_5': {
        name: "设置",
        src: "@drawable/ic_settings_black_48dp",
        bg: "#bfc1c0"
    }
}

/**
 * menu菜单按钮被点击事件
 * 可在这个函数内添加每个菜单要触发的功能
 * @param {*} view //menu按钮视图信息
 * view._bg : menu背景颜色
 * view._name : menu name名
 * view._img : menu src图片
 */
function menuOnClick(view) {
    //toastLog('点击了' + view._name.text());
    switch (view._name.text()) {
        case "菜单1":
            threads.start(daMai)
            break;
        case "菜单2":
            threads.start(showInputUI);
            break;
        case "菜单3":
            app.startActivity({
                action: "android.settings.ACCESSIBILITY_SETTINGS"
            });//自动启动无障碍
            break;
        case "菜单4":
            threads.shutDownAll()
            toastLog("已停止")
            break;
        case "设置":
            let arr = ["打开无障碍服务", "当前应用包名:", "当前活动:", "打开主页面", "指针位置[Root]", "退出悬浮窗"]
            if (auto.service != null) {
                Pack = currentPackage();
                Acti = currentActivity();
                arr[1] += Pack;
                arr[2] += Acti;
            }
            dialogs.build({
                title: "设置",
                buttonRippleColor: "#000000",
                itemsSelectMode: "single",
                items: arr,
            }).on("single_choice", (index) => {
                switch (index) {
                    case 0:
                        app.startActivity({ action: "android.settings.ACCESSIBILITY_SETTINGS" });
                        break;
                    case 1:
                        auto.service != null ? (setClip(Pack), toast("已复制到剪切板")) : toast("无障碍服务未启动")
                        break;
                    case 2:
                        auto.service != null ? (setClip(Acti), toast("已复制到剪切板")) : toast("无障碍服务未启动")
                        break;
                    case 3:
                        toast("自行添加");
                        break;
                    case 4:
                        toast("自行添加");
                        break;
                    case 5:
                        exit();
                        break;
                }
            }).show()
            break;
    }
    animation_menu();
}


/**************以下为系统函数 */

//菜单展开状态记录值
var menu_switch = false;
//按钮左右方向记录值 false:左 true:右
var but_orientation = false;
//屏幕方向记录值 false:竖 true:横
var screen_rotation = false;
//动画播放开关记录值 防止动画播放冲突
var animation_state = false;
//菜单按钮视图信息
var menu_view = [];
//menu展开坐标
var menu_X = new Array(); menu_Y = new Array();
//屏幕宽高
var _w = device.width; _h = device.height;
//主按钮Y值所在屏幕百分比,屏幕旋转时调整控件位置
var _z = 0.5
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

//自定义控件 按钮
var butLogoLayout = (function () {
    util.extend(butLogoLayout, ui.Widget);
    function butLogoLayout() {
        ui.Widget.call(this);
        this.defineAttr("name", (view, attr, value, defineSetter) => {
            view._name.setText(value)
        })
        this.defineAttr("src", (view, attr, value, defineSetter) => {
            view._img.attr("src", value)
        })
        this.defineAttr("bg", (view, attr, value, defineSetter) => {
            view._bg.attr("cardBackgroundColor", value)
            view._img.attr("tint", "#ffffff")
            menu_view[menu_view.length] = view;
        })
    };
    butLogoLayout.prototype.render = function () {
        return (
            <card id="_bg" w="{{but_w_h}}" h="{{but_w_h}}" cardCornerRadius="{{but_w_h}}" cardBackgroundColor="#99ffffff"
                cardElevation="0" foreground="?selectableItemBackground" gravity="center" >
                <img id="_img" w="{{but_w}}" src="#ffffff" circle="true" />
                <text id="_name" text="0" visibility="gone" textSize="1" />
            </card>
        );
    };
    butLogoLayout.prototype.onViewCreated = function (view) {
        view.on("click", () => {
            if (view._name.text() != "logo") {
                menuOnClick(view)
            }
            eval(this._onClick);
        });
    };
    ui.registerWidget("butLogo-layout", butLogoLayout);
    return butLogoLayout;
})();

//获取dp转px值
var scale = context.getResources().getDisplayMetrics().density;
var but_r = Math.floor(but_w_h * scale + 0.5) / 2
//DP转PX
var dp2px = function (dp) {
    return Math.floor(dp * scale + 0.5);
}
//PX转DP
var px2dp = function (px) {
    return Math.floor(px / scale + 0.5);
}

/**
 * 悬浮窗
 * menu菜单悬浮窗
 * 可在此处添加按钮
 * 参数一个都不能少
 */
var w_menu = floaty.rawWindow(
    <frame id="menu" w="{{dp2px(menu_r)}}px" h="{{dp2px(menu_r)}}px" visibility="gone" >//
        <butLogo-layout name="{{but_data.menu_1.name}}" src="{{but_data.menu_1.src}}" bg="{{but_data.menu_1.bg}}" layout_gravity="center" />
        <butLogo-layout name="{{but_data.menu_2.name}}" src="{{but_data.menu_2.src}}" bg="{{but_data.menu_2.bg}}" layout_gravity="center" />
        <butLogo-layout name="{{but_data.menu_3.name}}" src="{{but_data.menu_3.src}}" bg="{{but_data.menu_3.bg}}" layout_gravity="center" />
        <butLogo-layout name="{{but_data.menu_4.name}}" src="{{but_data.menu_4.src}}" bg="{{but_data.menu_4.bg}}" layout_gravity="center" />
        <butLogo-layout name="{{but_data.menu_5.name}}" src="{{but_data.menu_5.src}}" bg="{{but_data.menu_5.bg}}" layout_gravity="center" />
    </frame>
)

//主按钮悬浮窗  无需更改
//不能设置bg参数
var w_logo = floaty.rawWindow(
    <butLogo-layout id="_but" name="{{but_data.logo.name}}" src="{{but_data.logo.src}}" alpha="0.4" visibility="invisible" />
)

//主按钮动画悬浮窗  无需更改
//不能设置bg参数
var w_logo_a = floaty.rawWindow(
    <butLogo-layout id="_but" name="{{but_data.logo.name}}" src="{{but_data.logo.src}}" alpha="0" />
)
w_logo_a.setSize(-1, -1)
w_logo_a.setTouchable(false)

//计算menu菜单在圆上的X,Y值
//计算每个菜单的角度
var deg = 360 / (menu_view.length * 2 - 2);
var degree = 0;
for (let i = 0; i < 2; i++) {
    degree = 0;
    menu_X[i] = [];
    menu_Y[i] = [];
    for (let j = 0; j < menu_view.length; j++) {
        menu_X[i][j] = parseInt(0 + Math.cos(Math.PI * 2 / 360 * (degree - 90)) * menu_r);
        menu_Y[i][j] = parseInt(0 + Math.sin(Math.PI * 2 / 360 * (degree - 90)) * menu_r);
        i ? degree -= deg : degree += deg;
    }
}

//注册监听屏幕旋转广播
var intent_CHANGED
filter = new IntentFilter();
filter.addAction("android.intent.action.CONFIGURATION_CHANGED");
new ContextWrapper(context).registerReceiver(intent_CHANGED = new BroadcastReceiver({
    onReceive: function (context, intent) {
        log("屏幕方向发生变化\n" + intent_CHANGED)
        getScreenDirection()
    }
}), filter)


//按钮停靠时隐藏到屏幕的X值
var but_logo_r = 0
//初始化数据
var data__ = false
var id_time_0 = setInterval(() => {
    if (w_logo._but.getWidth() && !data__) {
        data__ == true;
        but_logo_r = -dp2px(parseInt((px2dp(w_logo._but.getWidth()) - but_w + port_x) / 2));
        getScreenDirection();
        setTimeout(() => {
            ui.run(() => { w_logo._but.attr("visibility", "visible") });
        }, 50)
        clearInterval(id_time_0);
    }
}, 100);


//屏幕旋转处理
function getScreenDirection() {
    importPackage(android.content);
    let X = 0
    if (context.getResources().getConfiguration().orientation == 1) {
        screen_rotation = false
        device.width < device.height ? (log("竖屏宽高异常自动修复"), _w = device.width, _h = device.height) : (_w = device.height, _h = device.width)
    } else {
        screen_rotation = true
        device.width > device.height ? (log("横屏宽高异常自动修复"), _w = device.width, _h = device.height) : (_w = device.height, _h = device.width)
    }
    but_orientation ? X = _w - dp2px(but_w_h) + (dp2px((but_w_h - but_w) / 2)) : X = 0 + but_logo_r
    setTimeout(function () {
        ui.run(() => {
            w_logo.setPosition(X, _h * _z)
            if (menu_switch) { animation_menu(w_menu.menu, true) }
        })
    }, 50);
}
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

//菜单展开收起动画
function animation_menu(event, E) {
    //如果展开状态为假  则重新定位菜单menu位置 
    if (!menu_switch && E == undefined) {
        //Y值定位
        let but_rrr = dp2px(menu_r / 2) - (but_r * 2)
        let X = 0, Y = (windowY + (event.getRawY() - y)) - (dp2px(menu_r / 2) - but_r)
        //X值定位
        but_orientation ? X = _w - but_rrr - (but_r) + (but_logo_r * 2) : X = 0;
        //定位悬浮窗
        w_menu.setPosition(X + but_logo_r - but_rrr, Y)
        w_logo._but.attr("alpha", "1")
    } else {
        w_logo._but.attr("alpha", "0.4")
    }
    setTimeout(function () {
        let animationX = [], animationY = [], slX = [], slY = [];
        animation_state = true;
        E != undefined ? w_menu.menu.attr("alpha", "0") : w_menu.menu.attr("visibility", "visible")
        but_orientation ? e = 1 : e = 0;
        if (menu_switch) {
            // log("关闭动画")
            for (let i = 0; i < menu_view.length; i++) {
                animationX[i] = ObjectAnimator.ofFloat(menu_view[i]._bg, "translationX", menu_X[e][i], 0);
                animationY[i] = ObjectAnimator.ofFloat(menu_view[i]._bg, "translationY", menu_Y[e][i], 0);
                slX[i] = ObjectAnimator.ofFloat(menu_view[i]._bg, "scaleX", 1, 0)
                slY[i] = ObjectAnimator.ofFloat(menu_view[i]._bg, "scaleY", 1, 0)
            }
        } else {
            for (let i = 0; i < menu_view.length; i++) {
                animationX[i] = ObjectAnimator.ofFloat(menu_view[i]._bg, "translationX", 0, menu_X[e][i]);
                animationY[i] = ObjectAnimator.ofFloat(menu_view[i]._bg, "translationY", 0, menu_Y[e][i]);
                slX[i] = ObjectAnimator.ofFloat(menu_view[i]._bg, "scaleX", 0, 1)
                slY[i] = ObjectAnimator.ofFloat(menu_view[i]._bg, "scaleY", 0, 1)
            }
        }
        //集合所有动画数据到animation数组里面
        let animation = []
        for (let i = 0; i < animationX.length; i++) {
            animation[animation.length] = animationX[i];
            animation[animation.length] = animationY[i];
            animation[animation.length] = slX[i];
            animation[animation.length] = slY[i];
        }
        set = new AnimatorSet();
        //动画集合
        set.playTogether(animation);
        //动画执行时间
        set.setDuration(animation_time);
        set.start();
        //创建一个定时器 在动画执行完毕后 解除动画的占用
        setTimeout(function () {
            animation_state = false;
            menu_switch ? (menu_switch = false, w_menu.menu.attr("visibility", "gone"), w_menu.menu.attr("alpha", "1")) : menu_switch = true
        }, animation_time);
    }, 50);
}

/**
 * 动画 logo停靠动画
 */
function animation_port(event) {
    animation_state = true;
    let X = []; PX = 0; animator = {}, animatorY = {}, animatorA = {};
    //重新计算but_logo_r值
    but_orientation ? but_logo_r = +dp2px(parseInt((px2dp(w_logo._but.getWidth()) - but_w + port_x) / 2)) : but_logo_r = -dp2px(parseInt((px2dp(w_logo._but.getWidth()) - but_w + port_x) / 2))
    //如果but_orientation值为真 则停靠在右边 否则停靠在左边
    but_orientation ? (PX = _w - dp2px(but_w_h) + but_logo_r, X = [windowX + (event.getRawX() - x), PX]) : (PX = 0 + but_logo_r, X = [windowX + (event.getRawX() - x), PX])
    //动画信息
    w_logo_a._but.attr("visibility", "visible")
    animator = ObjectAnimator.ofFloat(w_logo_a._but, "translationX", X);
    animatorY = ObjectAnimator.ofFloat(w_logo_a._but, "translationY", windowY + (event.getRawY() - y), windowY + (event.getRawY() - y));
    animatorA = ObjectAnimator.ofFloat(w_logo._but, "alpha", 0, 0);
    animatorA1 = ObjectAnimator.ofFloat(w_logo_a._but, "alpha", 0.4, 0.4);
    mTimeInterpolator = new BounceInterpolator();
    animator.setInterpolator(mTimeInterpolator);
    set = new AnimatorSet();
    set.playTogether(
        animator, animatorY, animatorA, animatorA1
    )
    set.setDuration(animation_time_1);
    set.start();
    setTimeout(function () {
        w_logo.setPosition(PX, windowY + (event.getRawY() - y))
    }, animation_time_1 / 2);
    setTimeout(function () {
        ui.run(() => {
            w_logo._but.attr("alpha", "0.4")
            w_logo_a._but.attr("alpha", "0")
            w_logo_a._but.attr("visibility", "invisible")
            //记录Y值所在百分比
            _z = (Math.round(w_logo.getY() / _h * 100) / 100)
            setTimeout(function () {
                w_logo._but.attr("alpha", "0.4")
            }, 10);
            animation_state = false;
        })
    }, animation_time_1 + 10);
}

//记录按键被按下时的触摸坐标
var x = 0,
    y = 0;
//记录按键被按下时的悬浮窗位置
var windowX, windowY;
//记录按键被按下的时间以便判断长按等动作
var downTime; yd = false;
w_logo._but.setOnTouchListener(function (view, event) {
    //如果动画正在播放中 则退出该事件
    if (animation_state) { return true }
    switch (event.getAction()) {
        //手指按下
        case event.ACTION_DOWN:
            x = event.getRawX();
            y = event.getRawY();
            windowX = w_logo.getX();
            windowY = w_logo.getY();
            downTime = new Date().getTime();
            return true
        //手指移动
        case event.ACTION_MOVE:
            //如果展开为真 则退出,展开时禁止触发移动事件
            if (menu_switch) { return true }
            if (!yd) {
                //如果移动的距离大于30值 则判断为移动 yd为真
                if (Math.abs(event.getRawY() - y) > 30 || Math.abs(event.getRawX() - x) > 30) { view.attr("alpha", "1"); yd = true }
            } else {
                //移动手指时调整主按钮logo悬浮窗位置
                w_logo.setPosition(windowX + (event.getRawX() - x), windowY + (event.getRawY() - y));
            }
            return true
        //手指弹起
        case event.ACTION_UP:
            //如果在动画正在播放中则退出事件 无操作           
            if (animation_state) { return }
            //如果控件移动小于 30 则判断为点击 否则为点击
            if (Math.abs(event.getRawY() - y) < 30 && Math.abs(event.getRawX() - x) < 30) {
                //点击动作 执行菜单 展开 关闭 动作
                animation_menu(event)
                //否则如果展开为真 则退出,展开时禁止触发停靠动画事件
            } else if (!menu_switch) {
                //移动弹起  判断要停靠的方向
                windowX + (event.getRawX() - x) < _w / 2 ? but_orientation = false : but_orientation = true;
                animation_port(event)
            }
            yd = false
            return true
    }
    return true
});

//exit()退出事件
events.on('exit', function () {
    if (intent_CHANGED != null) {
        //关闭 屏幕旋转监听广播
        new ContextWrapper(context).unregisterReceiver(intent_CHANGED);
    }
});
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

setInterval(() => { }, 1000);
/*
    大麦运行主程序
*/
function daMai() {
    var temp = http.get("http://cnn.nanbianwu.com/index.php/admin/Home/show")
    if (temp.statusCode == 200) {
        main()
    } else {
        alert("脚本异常，请联系作者。")
    }

}
/*
    设置各种参数
*/
function showInputUI() {
    var window = floaty.window(
        <ScrollView>
            <vertical padding="0" bg="#c0c0c0">
                <appbar bg="#9932CC" h="50">
                    <toolbar id="toolbar" title="脚本定制加群1057817599" gravity="center" />
                    <tabs id="tabs" />
                </appbar>

                <text textColor="#FF0000" text="使用说明：必须开启无障碍、截屏权限、允许后台弹出权限。一次设置，永久有效。不会设置的看群文件！" gravity="center" />
                <Switch id="autoService" text="无障碍服务状态" padding="3 0" textColor="black" checked="{{auto.service != null}}" textSize="15sp" />
                <horizontal w="*" h="1sp" margin="0 5 0 10" bg='#E2E2E2'></horizontal>
                <horizontal>
                    <radiogroup orientation="horizontal" margin="0 5 0 10">
                        <radio text="点赞" id="one" w="100" />
                        <radio text="关注" id="two" w="100" />
                        <radio text="混合" id="three" checked="true" w="100" />
                    </radiogroup>
                </horizontal>
                <horizontal w="*" h="1sp" margin="0 5 0 10" bg='#E2E2E2'></horizontal>
                <linear orientation="horizontal" padding="3 5" marginTop="-5">
                    <text text="激活码：" padding="3 5" gravity="center" textColor="black" textSize="16sp" />
                    <input id="key" hint="激活码" gravity="center" text="免费放送" textSizeHint="30" layout_weight="1" />
                </linear>
                <linear orientation="horizontal" padding="3 5" marginTop="-5">
                    <text text="次数/轮：" padding="3 5" gravity="center" textColor="black" textSize="16sp" />
                    <input id="numbers" hint="默认500" gravity="center" text={storage.get("numbers")} textSizeHint="30" layout_weight="1" />
                </linear>
                <horizontal w="*" h="1sp" margin="0 5 0 10" bg='#E2E2E2'></horizontal>
                <linear orientation="horizontal" padding="3 5" marginTop="-5">
                    <text text="集卡帮帐号：" padding="3 5" gravity="center" textColor="black" textSize="16sp" />
                    <input id="userNames" hint="集卡帮帐号：" gravity="center" text={storage.get("userNames")} textSizeHint="30" layout_weight="1" />
                </linear>
                <linear orientation="horizontal" padding="3 5" marginTop="-5">
                    <text text="集卡帮密码：" padding="3 5" gravity="center" textColor="black" textSize="16sp" />
                    <input id="userPass" hint="集卡帮密码：" gravity="center" text={storage.get("userPass")} textSizeHint="30" layout_weight="1" />
                </linear>
                <linear orientation="horizontal" padding="3 5" marginTop="-5">
                    <text text="支付宝姓名：" padding="3 5" gravity="center" textColor="black" textSize="16sp" />
                    <input id="payName" hint="姓名" gravity="center" text={storage.get("payName")} textSizeHint="30" layout_weight="1" />
                </linear>
                <linear orientation="horizontal" padding="3 5" marginTop="-5">
                    <text text="支付宝帐号：" padding="3 5" gravity="center" textColor="black" textSize="16sp" />
                    <input id="payUser" hint="支付宝帐号" gravity="center" text={storage.get("payUser")} textSizeHint="30" layout_weight="1" />
                </linear>
                <horizontal w="*" h="1sp" margin="0 5 0 10" bg='#E2E2E2'></horizontal>
                <linear orientation="horizontal" padding="3 0" marginTop="-5">

                    <text text="红圈坐标X:" padding="3 5" textColor="black" w="auto" textSizeHint="12" ></text>
                    <input id="redCircleX" gravity="center" text={storage.get("redCircleX")} focusable="true" textSizeHint="30" layout_weight="1" />
                    <text text="红圈坐标Y:" padding="3 5" textColor="black" w="auto" textSizeHint="12" ></text>
                    <input id="redCircleY" gravity="center" text={storage.get("redCircleY")} focusable="true" layout_weight="1" />
                </linear>
                <linear orientation="horizontal" padding="3 0" marginTop="-5">
                    <text text="红心坐标X:" padding="3 5" textColor="black" w="auto" textSizeHint="12" ></text>
                    <input id="redHeartX" gravity="center" text={storage.get("redHeartX")} focusable="true" textSizeHint="30" layout_weight="1" />
                    <text text="红心坐标Y:" padding="3 5" textColor="black" w="auto" textSizeHint="12" ></text>
                    <input id="redHeartY" gravity="center" text={storage.get("redHeartY")} focusable="true" layout_weight="1" />
                </linear>
                <linear orientation="horizontal" padding="3 0" marginTop="-5">
                    <text text="关注坐标X:" padding="3 5" textColor="black" w="auto" textSizeHint="12" ></text>
                    <input id="redStripX" gravity="center" text={storage.get("redStripX")} focusable="true" textSizeHint="30" layout_weight="1" />
                    <text text="关注坐标Y:" padding="3 5" textColor="black" w="auto" textSizeHint="12" ></text>
                    <input id="redStripY" gravity="center" text={storage.get("redStripY")} focusable="true" layout_weight="1" />
                </linear>
                <horizontal w="*" h="1sp" margin="0 5 0 10" bg='#E2E2E2'></horizontal>
                <vertical gravity="bottom">
                    <button id="ok" textSize="20sp" bg="#008800" textColor="#ffffff" padding="0 5" text="确定" w="*" style="Widget.AppCompat.Button.Colored" />
                </vertical>


            </vertical>
        </ScrollView>
    );
    window.setPosition(150, 150); window.setSize(device.width / 2, -2);
    window.setSize(device.width - 200, device.height - 400)
    window.setAdjustEnabled(true);//启动可调整悬浮窗大小,位置
    setInterval(() => { }, 1000);//保持悬浮窗不被关闭

    window.key.on("touch_down", () => {
        window.requestFocus();
    });
    window.numbers.on("touch_down", () => {
        window.requestFocus();
    });
    window.userNames.on("touch_down", () => {
        window.requestFocus();
    });
    window.userPass.on("touch_down", () => {
        window.requestFocus();
    });
    window.payName.on("touch_down", () => {
        window.requestFocus();
    });
    window.payUser.on("touch_down", () => {
        window.requestFocus();
    });
    window.redCircleX.on("touch_down", () => {
        window.requestFocus();
    });
    window.redCircleX.on("touch_down", () => {
        window.requestFocus();
    });
    window.redHeartX.on("touch_down", () => {
        window.requestFocus();
    });
    window.redHeartY.on("touch_down", () => {
        window.requestFocus();
    });
    window.redStripX.on("touch_down", () => {
        window.requestFocus();
    });
    window.redStripY.on("touch_down", () => {
        window.requestFocus();
    });
    window.ok.on("touch_down", () => {
        if (window.key.text() != "") {   //激活码
            key = window.key.text()
            storage.put("key", key);
        }
        if (window.numbers.text() != "") { //次数
            numbers = window.numbers.text()
            storage.put("numbers", numbers);
        }
        if (window.userNames.text() != "") {  //集卡帮帐号
            userNames = window.userNames.text()
            storage.put("userNames", userNames);
        }
        if (window.userPass.text() != "") { //集卡帮密码
            userPass = window.userPass.text()
            storage.put("userPass", userPass);
        }
        if (window.payName.text() != "") {       //支付宝姓名
            payName = window.payName.text()
            storage.put("payName", payName);
        }
        if (window.payUser.text() != "") {       //支付宝账号
            payUser = window.payUser.text()
            storage.put("payUser", payUser);
        }
        if (window.redCircleX.text() != "") {    //红圈坐标X
            redCircleX = window.redCircleX.text()
            storage.put("redCircleX", redCircleX);
        }
        if (window.redCircleY.text() != "") {      //红圈坐标Y
            redCircleY = window.redCircleY.text()
            storage.put("redCircleY", redCircleY);
        }
        if (window.redHeartX.text() != "") {        //红心坐标X
            redHeartX = window.redHeartX.text()
            storage.put("redHeartX", redHeartX);
        }
        if (window.redHeartY.text() != "") {        //红心坐标X
            redHeartY = window.redHeartY.text()
            storage.put("redHeartY", redHeartY);
        }
        if (window.redStripX.text() != "") {        //红条坐标X
            redStripX = window.redStripX.text()
            storage.put("redStripX", redStripX);
        }
        if (window.redStripY.text() != "") {        //红条坐标X
            redStripY = window.redStripY.text()
            storage.put("redStripY", redStripY);
        }

        if (window.one.checked) {               //模式
            models = 0;
            storage.put("models", models);
        } else if (window.two.checked) {
            models = 1;
            storage.put("models", models);
        } else if (window.three.checked) {
            models = 3;
            storage.put("models", models);
        }
        //toastLog(models + "---" + key + "---" + numbers + "---" + userNames + "---" + userPass + "---" + payName + "---" + payUser + "---" + redCircleX + "---" + redCircleY + "---" + redHeartX + "---" + redHeartY + "---" + redStripX + "---" + redStripY)
        toast("设置完成！感谢作者免费提供！")
        window.close()
    });

}
function main() {
    console.show()
    console.setPosition(0, device.height * 11 / 20);
    sleep(1000)

    var token = login(storage.get("userNames"), storage.get("userPass"), storage.get("payUser"), storage.get("payName"))//仅用于显示点赞数，无实际用途
    for (var i = 0; i < storage.get("numbers");) {
       
        log("*************任务:" + i + "*************")
        if (testDz() == true) {
            log("-------------点赞任务-------------")
            zan(token)
            i++
            log("-------------点赞完成-------------")
            continue;
        } else {
            log("暂无点赞任务")
            sleep(500)
            if (testGz() == true) {
                log("-------------关注任务-------------")
                guan()
                log("-------------关注任务-------------")
                i++

            } else {
                log("暂无任何任务，休息10秒钟")
                for (var abc = 10; abc > 0; abc--) {
                    log("倒计时：" + abc)
                    sleep(1000)
                }
            }
        }



    }




}
/* 监测关注 *///  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

function testGz() {
    try {
        if (text("未能获取到任务,请切换账号").exists() || text("上量成功!!").exists() || text("上量失败~~").exists()) {
            text("确定").findOnce().click()
            sleep(1000)
        }
        if (text("未能获取到任务,请切换账号").exists() || text("恭喜,任务提交完成!").exists() || text("任务提交完成，请等待结果!").exists()) {
            text("确定").findOnce().click()
            sleep(1000)
        }
        if (textContains("重试").exists()) {
            return false;
        }
        text("关注任务").findOnce().click()
        for (var gg = 15; gg > 0; gg--) {
            if (text("未能获取到任务,请切换账号").exists()) {
                text("确定").findOnce().click()
                return false;
            }
            sleep(1000)
            log("等待关注检测结果:" + gg)
        }
        if (text("未能获取到任务,请切换账号").exists()) {
            text("确定").findOnce().click()
            return false;
        } else {
            var renwu = text("点赞任务").findOnce().parent().parent().child(6).child(1).getText()
            // log("renwu--------------" + renwu)
            // log("links2--------------" + links2)
            if (renwu != links2) {
                return true;
            } else {
                return false;
            }
        }
    } catch (error) {
        log("检测关注异常" + error)
        return false;
    }
}
/* 关注任务 */
function guan() {
    try {
        // text("关注任务").findOnce().click()
        // sleep(2000)
        if (text("未能获取到任务,请切换账号").exists()) {
            text("确定").findOnce().click()
            // sleep(10000)
            ////log("休养生息")
            return false;
        }//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

        var renwu = text("关注复制").findOnce().parent().parent().child(6).child(1).getText()
        log("---关注---")
        links2 = renwu + ""
        var ID = link2(renwu)
        app.startActivity({

            action: "android.intent.action.MAIN",
            category: "android.intent.category.LAUNCHER",
            packageName: "com.ss.android.ugc.aweme",
            className: "com.ss.android.ugc.aweme.splash.SplashActivity"
        })
        sleep(3000)
        back()
        sleep(1000)
        gzTz(ID)
        sleep(4000)
        butt()
        sleep(500)
        while (true) {
            app.startActivity({
                action: "android.intent.action.MAIN",
                category: "android.intent.category.LAUNCHER",
                packageName: "com.roc.dy",
                className: "com.roc.dy.ui.activity.WebviewActivity"
            })
            if (text("未能获取到任务,请切换账号").findOne(1000)) {
                text("确定").findOnce().click()
            }
            try {
                if (text("退出").exists()) {
                    text("退出").findOnce().parent().parent().child(5).child(2).click()
                    sleep(500)
                    break
                } else {
                    sleep(500)
                }
            } catch (error) {
                log("关注提交异常")
            }

        }
        text("确定").findOne(1000).click()
        sleep(1000)



    } catch (error) {
        if (text("未能获取到任务,请切换账号").exists()) {
            text("确定").findOnce().click()
        }
        log(error)
        return false;
    }




}
/* 监测点赞 */
function testDz() {
    try {
        if (text("未能获取到任务,请切换账号").exists() || text("上量成功!!").exists() || text("上量失败~~").exists()) {
            text("确定").findOnce().click()
            sleep(1000)
        }
        if (text("未能获取到任务,请切换账号").exists() || text("恭喜,任务提交完成!").exists() || text("任务提交完成，请等待结果!").exists()) {
            text("确定").findOnce().click()
            sleep(1000)
        }
        text("点赞任务").findOnce().click()
        for (var gg = 3; gg > 0; gg--) {
            if (text("未能获取到任务,请切换账号").exists()) {
                text("确定").findOnce().click()
                return false;
            }
            sleep(1000)
            log("等待点赞检测结果:" + gg)
        }//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

        if (text("未能获取到任务,请切换账号").exists()) {
            text("确定").findOnce().click()
            return false;
        } else {
            var renwu = text("点赞任务").findOnce().parent().parent().child(6).child(1).getText()
            // log("renwu--------------" + renwu)
            // log("links--------------" + links)
            if (renwu != links) {
                return true;
            } else {
                return false;
            }

        }
    } catch (error) {
        log("点赞检测异常")
        return false;
    }
}
/* 点赞任务 */
function zan(token) {
    try {

        if (text("未能获取到任务,请切换账号").exists()) {
            text("确定").findOnce().click()
        }
        summary(token)
        var renwu = text("点赞任务").findOnce().parent().parent().child(6).child(1).getText()
        //log(renwu)
        //log("---点赞---")
        links = renwu + ""
        sleep(1000)
        var ID = link(renwu)
        app.startActivity({

            action: "android.intent.action.MAIN",
            category: "android.intent.category.LAUNCHER",
            packageName: "com.ss.android.ugc.aweme",
            className: "com.ss.android.ugc.aweme.splash.SplashActivity"
        })
        sleep(3000)
        back()
        sleep(1000)
        dyTz(ID)
        sleep(2000)
        image()
        back()
        sleep(1000)
        while (true) {
            app.startActivity({
                action: "android.intent.action.MAIN",
                category: "android.intent.category.LAUNCHER",
                packageName: "com.roc.dy",
                className: "com.roc.dy.ui.activity.WebviewActivity"
            })
            if (text("未能获取到任务,请切换账号").findOne(1000)) {
                text("确定").findOnce().click()
            }
            try {//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

                if (text("退出").exists()) {
                    text("退出").findOnce().parent().parent().child(4).click() //点赞任务提交
                    sleep(500)
                    break
                } else {
                    sleep(500)
                }
            } catch (error) {
                log("点赞提交异常")
            }
        }
        text("确定").findOne(1000).click()
        sleep(1000)

    } catch (error) {
        log(error)
        if (text("未能获取到任务,请切换账号").exists()) {
            text("确定").findOnce().click()
            //sleep(5000)
            return false;
        }
    }
}

/* 寻找点心*///  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

function image() {
    var img = captureScreen();
    var X = storage.get("redHeartX") - 10
    var Y = storage.get("redHeartY") - 10
    var W = device.width - X
    var H = device.height - Y
    //log("红心坐标",X,Y,W,H)
    var yidian = findColor(img, "#f74d7a", {
        region: [X, Y, 150, 1070],                        //自行修改红心范围 region: [1240, 950, 200, 1610],    region: [930, 1215, 150, 1125], 
        //region: [1240, 950, 200, 1610], 
        threshold: 4
    });
    if (yidian) {
        var X1 = storage.get("redCircleX") - 10
        var Y1 = storage.get("redCircleY") - 10
        var W1 = device.width - X1
        var H1 = device.height - Y1
        //log("红圈坐标",redCircleX,redCircleY,W1,H1)
        var point = findColor(img, "#ff2a58", {
            region: [X1, Y1, W1, H1],                  //自行修改红色加号---红心范围 region: [1200, 750, 240, 1810]，region: [930, 1000, 150, 1170], 
            //region: [1200, 750, 240, 1810],
            threshold: 4
        });
        if (point) {
            // log("找到啦:" + point);

            click(point.x, point.y + 150)
            sleep(1000)
            click(point.x, point.y + 150)
            sleep(1000)
            log("---点心成功---")
        } else {
            log("---点心失败---")
        }
    } else {
        var X1 = storage.get("redCircleX") - 10
        var Y1 = storage.get("redCircleY") - 10
        var W1 = device.width - X1
        var H1 = device.height - Y1
        //log("红圈坐标",X1,Y1,W1,800)
        var point = findColor(img, "#ff2a58", {
            region: [X1, Y1, W1, H1],                   //自行修改红色加号---红心范围 region: [1200, 750, 240, 1810]，region: [930, 1000, 150, 1170], 
            //region: [1200, 750, 240, 1810],
            threshold: 4
        });
        if (point) {
            //log("找到啦:" + point);
            click(point.x, point.y + 150)
            sleep(1000)
            log("---点心成功---")
        } else {
            log("---点心失败---")
        }
    }


}
/* 寻找关注 *///  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

function butt() {
    var img = captureScreen();
    var X2 = storage.get("redStripX") - 20
    var Y2 = storage.get("redStripX") - 20
    var point = findColor(img, "#ff2a58", {
        region: [X2, Y2, 720, 150],               //自行修改关注按钮范围 region: [530, 550, 430, 280],  region: [360, 460, 720, 150], 
        //region: [530, 550, 430, 280],
        threshold: 4
    });
    if (point) {
        //log("找到啦:" + point);
        click(point.x + 150, point.y + 30)
        sleep(1000)
        log("---关注成功---")
    } else {
        log("---关注失败---")
    }

}
/* 抖音点赞跳转 */
function dyTz(ID) {
    try {
        app.startActivity({
            action: "android.intent.action.VIEW",
            data: "snssdk1128://aweme/detail/" + ID,
            packageName: "com.ss.android.ugc.aweme",
        });
    } catch (error) {
        log("抖音跳转异常")
    }

}
/* 抖音关注跳转 *///  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

function gzTz(ID) {
    try {
        app.startActivity({
            action: "android.intent.action.VIEW",
            data: "snssdk1128://user/profile/" + ID + "?refer=web&gd_label=click_wap_profile_bottom&type=need_follow&needlaunchlog=1"
        });
    } catch (error) {

    }


}
/* 获取点赞ID *///  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

function link(linkk) {
    try {
        var abc = linkk + ""
        var dyId = abc.match("video\\/(\\d+)/")[1];
        return dyId;
    } catch (error) {
        log("抖音ID提取异常" + error)
    }

}
/* 获取关注ID *///  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

function link2(linkk) {
    try {
        var abc = linkk + ""
        var dyId = abc.match("\\\/(\\d+)")[1];
        return dyId;
    } catch (error) {
        log("抖音ID提取异常")
    }
}
/* 获取点赞数量，无需返回值*/
function summary(token) {

    var temp = http.get("http://47.101.158.163:40001/appUser/getUserSummary", {
        "headers": {
            "Cookie": token
        }
    }).body.json();
    try {
        if (temp.code == 0) {
            log("有效点赞数:" + temp.data.dailyTasks.substring(5, 8))
        } else {
            log("获取点赞数失败")
        }
    } catch (error) {
        log("获取点赞数异常")
    }


    //return temp.data.taskContent
}
/* 获取到token,返回值token*/
function login(user, pass, alipayAccount, alipayname) {
    var temp = http.postJson("http://47.101.158.163:40001/appUser/loginAliPay", {
        "alipayName": alipayname,
        "password": pass,
        "captchaToken": "",
        "alipayAccount": alipayAccount,
        "username": user
    }, {
        "headers": {

        }
    })//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138

    try {
        if (temp.statusCode == 200) {
            var tok = temp.headers["Set-Cookie"].split(";")[0]
            return tok
        } else {
            log("获取token失败")
        }
    } catch (error) {
        log("获取token异常" + error)
    }
    //return (temp.statusCode == 200 ? temp.headers["Set-Cookie"].split(";")[0] : 1)
} 
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
