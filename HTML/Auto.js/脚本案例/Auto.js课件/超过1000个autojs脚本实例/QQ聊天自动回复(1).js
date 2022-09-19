
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"auto";
console.show();
/**
*作者QQ: 1811588980
*完成时间: 2019年1月24日 下午5:20:30
*测试机型: meizu_M5 Note
 *Auto.js版本: 4.1.0 Alpha5
 *屏幕: 1080*1920
 *API: 24
*备注: 暂无备注
**/
//定义悬浮窗控制模块，命名为(悬块)。
var 悬块 = function(window, view) {
    //判断是否缺少构造参数。
    if (!window || !view) {
        //缺少构造参数，抛出错误。
        throw "缺参数";
    };
    //记录按键被按下时的触摸坐标
    this.x = 0, this.y = 0;
    //记录按键被按下时的悬浮窗位置
    this.windowX, this.windowY;
    //按下时长超过此值则执行长按等动作
    this.downTime = 500;
    //记录定时执行器的返回id
    this.Timeout = 0;
    //创建点击长按事件
    this.Click = function() {};
    this.LongClick = function() {};
    //可修改点击长按事件
    this.setClick = function(fun) {
        //判断参数类型是否为函数？
        if (typeof fun == "function") {
            this.Click = fun;
        };
    };
    this.setLongClick = function(fun, ji) {
        //判断参数类型是否为函数？
        if (typeof fun == "function") {
            this.LongClick = fun;
            //判断参数是否可为设置数字？
            if (parseInt(ji) <= 1000) {
                this.downTime = parseInt(ji);
            };
        };
    };

    view.setOnTouchListener(new android.view.View.OnTouchListener((view, event) => {
        //判断当前触控事件，以便执行操作。
        switch (event.getAction()) {
            //按下事件。
            case event.ACTION_DOWN:
                //按下记录各种坐标数据。
                this.x = event.getRawX();
                this.y = event.getRawY();
                this.windowX = window.getX();
                this.windowY = window.getY();
                //创建一个定时器用来定时执行长按操作。
                this.Timeout = setTimeout(() => {
                    this.LongClick();
                    this.Timeout = 0;
                }, this.downTime);
                return true;
                //移动事件。
            case event.ACTION_MOVE:
                //移动距离过大则判断为移动状态
                if (Math.abs(event.getRawY() - this.y) > 5 && Math.abs(event.getRawX() - this.x) > 5) {
                    //移动状态清除定时器
                    if (this.Timeout) {
                        //定时器存在则清除定时器。
                        clearTimeout(this.Timeout);
                        this.Timeout = 0;
                    };
                    //移动手指时调整悬浮窗位置
                    window.setPosition(this.windowX + (event.getRawX() - this.x), this.windowY + (event.getRawY() - this.y));
                };
                return true;
                //抬起事件。
            case event.ACTION_UP:
                if (this.Timeout) {
                    //手指抬起时，定时器存在，说明没有移动和按下时间小于长按时间。
                    //清除定时器。
                    clearTimeout(this.Timeout);
                    this.Timeout = 0;
                    //执行点击事件。
                    this.Click();
                };
                return true;
        };
        //控件的触控事件函数必须要返回true。否则报错。
        return true;
    }));
};





//创建并生成一个悬浮窗。
var window = floaty.window(
    //创建一个按钮，并设置其id宽高文字等属性。
    <button  id="but" w="200px" h="200px" text="开始"/>
);
//输出提示信息。
toastLog("长按悬浮窗关闭本脚本");
//空运行定时器保持脚本运行中,这是悬浮窗脚本所必需的。
setInterval(() => {}, 500);
//声明一个变量用来控制线程。
var thread = null;
//创建一个新的悬浮控制模块 ad 并带入参数(所要控制的悬浮窗和用来控制悬浮窗移动的控件)。
var ad = new 悬块(window, window.but);
//设置长按事件。
ad.setLongClick(function() {
    //输出气泡信息。
    toast("脚本已关闭");
    //脚本停止代码。
    exit();
});
//设置点击事件。
ad.setClick(function() {
    //变量值为空则代表线程没有开启。变量值不为空，则判断线程是不是正在运行。
    if (thread ? !thread.isAlive() : true) { //线程没有运行。
        ui.run(() => {
            window.but.setText("停止");
        });
        //新建一个线程，赋值给变量thread
        thread = threads.start(main);
    } else {
        thread.interrupt();
        ui.run(() => {
            window.but.setText("开始");
        });
    };
});

launchApp("QQ");
sleep(1000);

Text = "";
function main(){
while (true) {
    try {
        var UiObject = className("android.widget.AbsListView").findOne();
        var UiObject = UiObject.child(UiObject.childCount() - 1);
        var end=isEnd(UiObject);
        if ( end&& end!= Text) {
            Text = end;
            log(Text);
            if(end!="unkown"){
            var txt = TuringRobot(Text);
            sleep(txt.length*100);
            input(txt);
            while (!click("发送"));
            };
        };
    } catch (e) {};
};
};

function isEnd(UiObject) {
    try {
        var sum = UiObject.childCount();
        if (UiObject.child(sum - 1).className() == "android.widget.TextView") {
            return UiObject.child(sum - 1).text();
        } else if (UiObject.child(sum - 1).className() == "android.widget.RelativeLayout") {
            return "unkown";
        } else if (UiObject.child(sum - 1).className() == "android.widget.LinearLayout") {
            var UiObject = UiObject.child(sum - 1);
            var sum = UiObject.childCount();
            if (UiObject.child(sum - 1).className() == "android.widget.TextView") {
                return UiObject.child(sum - 1).text();
            };
        };
    } catch (e) {};
};

function TuringRobot(message, id) {
    if(message=="unkown"){return "没有听清楚您说什么，请再说一遍"};
    var url = "http://www.tuling123.com/openapi/api";
    var res = http.postJson(url, {
        key: "1c2514d9c9884931985b5bef1232fa24",
        info: message,
        userid: "1"
    });
    var txt = res.body.json().text;
    return txt;
};
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
