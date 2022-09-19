
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui"; //更多精彩内容请联系群主加入精英群，微信shenlong6898 或zxkj6898 


//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
var storage = storages.create("配置表");
var name = storage.get("name");
var pass = storage.get("pass");
var xname = storage.get("xname");
var xpass = storage.get("xpass");
var dymp = storage.get("dymp");
var kmyz = storage.get("kmyz");
var dzsx = storage.get("dzsx");
var yxlxpt = storage.get("yxlxpt");
if (storage.get("yxzzpt") != undefined) {
    var 运行攢攢平台 = storage.get("yxzzpt");
} else {
    var 运行攢攢平台 = false
}
if (storage.get("yxlxpt") != undefined) {
    var 运行龙虾平台 = storage.get("yxlxpt");
} else {
    var 运行龙虾平台 = false
}
if (storage.get("yxjkbpt") != undefined) {
    var 运行集卡帮平台 = storage.get("yxjkbpt");
} else {
    var 运行集卡帮平台 = false
}
if (storage.get("qhbclj") != undefined) {
    var 切换保存路径 = storage.get("qhbclj");
} else {
    var 截图路径 = files.getSdcardPath() + "/zzrw.png"
    var 切换保存路径 = false
}
if (storage.get("yhpz") != undefined) {
    var 养号 = storage.get("yhpz");
} else {
    var 养号 = false
}
if (storage.get("xhjc") != undefined) {
    var 喜欢检测 = storage.get("xhjc");
} else {
    var 喜欢检测 = false
}
if (storage.get("dlyh") != undefined) {
    var 独立养号 = storage.get("dlyh");
} else {
    var 独立养号 = false
}
if (storage.get("kzt") != undefined) {
    var 控制台 = storage.get("kzt");
} else {
    var 控制台 = false
}
ui.layout(
    <drawer id="drawer">
        <vertical>
            <appbar>
            <toolbar id="toolbar" bg="#FF3300"  title="       🎺🎶奏国歌   升国旗🇨🇳   刷任务🚀"/>
            </appbar>
            <frame >
                <scroll>
                    <vertical id="zt" padding="10" bg ="#FFFFE0"  >b
                    <button   id="lxpt"textColor="red"textSize="25sp"  text="👆哔哩哔哩📺"  layout_gravity="center_horizontal"/>
                    <Switch id="lx" text="小龙虾平台"    marginTop="8"  padding="3 0" textColor="red" checked="{{运行龙虾平台==1}}" textSize="20sp"/>
                        <horizontal>
                       
                        <text textSize="20sp" textColor="black"    text="龙虾平台账号"/>
                            <input id="xname" text="" w="200"textSize="15sp"/>
                        </horizontal>
                        <horizontal>
                            <text  textSize="20sp" textColor="black" text="龙虾平台密码"/>
                            <input id="xpass"password="true"    w="200" text="" textSize="15sp" />
                        </horizontal>
                        <button   id="zzpt"textColor="red"textSize="25sp"   text="👉虎牙直播🖥" layout_gravity="center_horizontal"/>
                        <Switch id="zz" text="攒攒平台"   marginTop="8"  padding="3 0" textColor="red" checked="{{运行攢攢平台==1}}" textSize="20sp"/>
                        <horizontal>
                                       
                            <text textSize="20sp" textColor="black" text="攢攢平台账号"/>
                            <input id="name" text=""  w="200"textSize="20sp"/>
                        </horizontal>
                        <horizontal>
                            <text  textSize="20sp"  textColor="black" text="攢攢平台密码"/>
                            <input id="pass"password="true"   w="200" text="" textSize="15sp" />
                        </horizontal>
                        <horizontal>
                            
                            <text  textSize="20sp" textColor="black" text="抖音名片地址"/>
                            <input id="dymp"  inputType="textLongMessage"  hint="在抖音，记录美好生活！ https://v.douyin.com/Gr8oPt/"  w="200" text="" textSize="13sp" />
                        </horizontal>
                        <button   id="zxbb"textColor="red"textSize="25sp"text="免VIP全网影视超前点播📺"  layout_gravity="right"/>
                         
                        
                        
                        
                        
                        <Switch id="jkb" text="集卡帮平台"    marginTop="8"  padding="3 0" textColor="red" checked="{{运行集卡帮平台==1}}" textSize="20sp"/>
                        <Switch id="xhjc" text="喜欢数量检测" padding="3 0"    marginTop="8" textColor="black" checked="{{喜欢检测}}" textSize="20sp"/>
                        
                        
                        <Switch id="sdk" text="切换截图保存路径  点赞后不截屏开启!"   marginTop="8" padding="3 0" textColor="black" checked="{{切换保存路径==1}}" textSize="18sp"/>
                        
                        <Switch id="yh" text="养号模式" padding="3 0"   marginTop="8"  textColor="black" checked="{{养号}}" textSize="20sp"/>
                        
                        <Switch id="yhms" text="养号不做任务" padding="3 0"   marginTop="8"textColor="black" checked="{{独立养号}}" textSize="20sp"/>
                        <button   id="zzgk"textColor="red"textSize="25sp" text="聆听网易云音乐📻🎶" marginBottom="10" />
                        <Switch id="cw" text="控制台最大化"    padding="3 0"    marginTop="8"textColor="black" checked="{{控制台}}" textSize="20sp"/>
                        <Switch   id="wza"text="开启无障碍服务"textSize="20sp"  checked= "{{auto.service != null}}" padding="3 0" marginTop="5"/>
                        <horizontal  marginTop="6">
                            <text  textColor="black"   textSize="20sp"text="设置点多少个👍 停止:"   />
                            <input id="dzsx"text="0"w="100" inputType="number"  textSize="14sp"  />
                        </horizontal>
                        
                        <linear   padding="10">
                           
                            
                           
                        </linear>
                  <button id="zxbb"textColor="black"textSize="20sp"text="     更多功能后续更新使用
                          作者by:angel"  layout_gravity="right"/>
                        <text textSize="30sp"h="80" textColor="black" textColor="red" text="更多脚本资源进779413822"     />
                        <input id="kmyz"passsword="false" text="" textSize="14sp"/>
                        
                        
                       
                        
                        
                    </vertical>
                </scroll>
                <button   id="ok"     h="60" textSize="25sp"layout_gravity="right|bottom"style="Widget.AppCompat.Button.Colored"  bg="#FF0033" text="🔱 神谕启动令"/>
                
            </frame>
            
        </vertical>
    </drawer>
);
if (name != null) {
    ui.name.setText(name);
}
if (pass != null) {
    ui.pass.setText(pass);
}
if (kmyz != null) {
    ui.kmyz.setText(kmyz);
}
if (dymp != null) {
    ui.dymp.setText(dymp);
}
if (dzsx != null) {
    ui.dzsx.setText(dzsx);
}
if (xname != null) {
    ui.xname.setText(xname);
}
if (xpass != null) {
    ui.xpass.setText(xpass);
    
     
}

var 登录 = "http://zcore.zqzan.com/app/account/login";
var 当前任务量 = "http://zcore.zqzan.com/app/platform/query/ing/count"
var 当前金豆 = "http://zcore.zqzan.com/app/douyin/my/info"
var 领取任务 = "http://zcore.zqzan.com/app/douyin/pull/one"
var 上传地址 = "http://zcore.zqzan.com/app/oss/shot_img"
/*  协议↑↑↑↑↑↑*******/
var token, 图片路径, key, 时间, 任务id, 任务, 上传参数, 图片地址, 任务价格, 任务类型, 作品id
var Cookie, 养号模式, 滑动视频 = 0
var 卡密 = ui.kmyz.getText();
var 登录返回值, 项目公告
var 完成数量 = 0;
var 自检周期 = 30;
var 失败率 = 50;
var 养号时长 = 60 * 60;
var 智能养号 = false;
var rws = 0;
var 点赞位置x = device.width / 2
var 点赞位置y = device.height / 2
var 点赞上限 = 0
var 截图路径 = files.cwd() + "/zzrw.png";
var 喜欢数量;
var 上次数量 = 0;
var 点赞判断;
var 失败总计 = 0;
var 失败数量 = 0;
var 放弃数量 = 0;
var 试用时长 = 60 *99999999999999999
var syDate = new Date();
var 试用计时 = syDate.getTime(); 
var 试用功能 = false
var xyjg = 0
var 名片地址
//养号提示
var 刷新时间 = 0
var dzs = ""
ui.yh.on("check", (checked) => {
    if (checked) {
        toast("开启养号");
        养号 = true
    } else {
        toast("关闭养号");
        养号 = false
    }
});

ui.xhjc.on("check", (checked) => {
    if (checked) {
        toast("开启喜欢检测");
        喜欢检测 = true
    } else {
        toast("关闭喜欢检测");
        喜欢检测 = false
    }
});

ui.yhms.on("check", (checked) => {
    if (checked) {
        toast("开启独立养号");
        独立养号 = true
    } else {
        toast("关闭独立养号");
        独立养号 = false
    }
});
ui.cw.on("check", (checked) => {
    if (checked) {
        toast("开启放大控制台");
        控制台 = true
    } else {
        toast("关闭放大控制台");
        控制台 = false
    }
});
ui.lx.on("check", (checked) => {
    if (checked) {
        toast("龙虾平台");
        运行龙虾平台 = true
    } else {
        运行龙虾平台 = false
    }
});
ui.zz.on("check", (checked) => {
    if (checked) {
        toast("攢攢平台");
        运行攢攢平台 = true
    } else {
        运行攢攢平台 = false
    }
});
ui.jkb.on("check", (checked) => {
    if (checked) {
        toast("集卡帮平台");
        运行集卡帮平台 = true
    } else {
        运行集卡帮平台 = false
    }
});
ui.sdk.on("check", (checked) => {
    if (checked) {
        var 截图路径 = files.cwd() + "/zzrw.png"
        切换保存路径 = true
        toast("图片保存到" + 截图路径)
    } else {
        var 截图路径 = files.getSdcardPath() + "/zzrw.png"
        toast("图片保存到" + 截图路径)
        切换保存路径 = false
    }
});

if (切换保存路径) {
    var 截图路径 = files.cwd() + "/zzrw.png"
} else {
    var 截图路径 = files.getSdcardPath() + "/zzrw.png"
}

ui.emitter.on("resume", function() {
    ui.wza.checked = auto.service != null;
});

ui.wza.on('check', function(checked) {
    if (checked && auto.service == null) {
        app.startActivity({
            action: "android.settings.ACCESSIBILITY_SETTINGS"
        });
    }
    if (!checked && auto.service != null) {
        auto.service.disableSelf();
        toast("无障碍服务关闭成功");
    }
});
//指定启动按钮点击时要执行的动作
ui.ok.click(function() {
    device.vibrate(300);
    //通过getText()获取登录数据 
    storage.put("name", ui.name.text());
    storage.put("xname", ui.xname.text());
    storage.put("pass", ui.pass.text());
    storage.put("xpass", ui.xpass.text());
    storage.put("kmyz", ui.kmyz.text());
    storage.put("dzsx", ui.dzsx.text());
    storage.put("dymp", ui.dymp.text());
    storage.put("yxzzpt", 运行攢攢平台);
    storage.put("yxlxpt", 运行龙虾平台);
    storage.put("yxjkbpt", 运行集卡帮平台);
    storage.put("yhpz", 养号);
    storage.put("xhjc", 喜欢检测);
    storage.put("dlyh", 独立养号);
    storage.put("kzt", 控制台);
    var name = ui.name.getText();
    var pass = ui.pass.getText();
    var kmyz = ui.kmyz.getText();

    toast("正在连接");
    // toast("正在连接服务器  请不要连续启动");


    threads.start(
        function 操作中心() {
            console.clear()
            device.keepScreenOn();
            auto.waitFor();
            //请求截图 
            if (!requestScreenCapture()) {
                toast("请求截图权限失败");
                exit();
            }
            launch("com.ss.android.ugc.aweme");
            console.show()
            sleep(200);
            //log(控制台)
            if (控制台) {
                console.setSize(device.width, device.height);
            }

            点赞上限 = ui.dzsx.getText();
         
            if (卡密 == "") {
               
                sleep(3000);
                试用功能 = true
            } else if (卡密 == "admin901123") {
                toastLog(时间() + "管理员登录")
                sleep(1000);
                试用功能 = true
                试用时长 = 60 * 555555555
            } else {
                试用功能 = false

                try {
                    易游验证();
                } catch (err) {
                    log("连接验证服务器失败")
                    exit();
                }

            }

            log("安卓版本 " + device.release + " 屏幕分辨率 " + device.width + "," + device.height);
            // log("拉起 抖音APP  点赞次数设置 " + 点赞上限);

            if (ui.dymp.getText() == "" && 喜欢检测) {
                toastLog("喜欢检测打开了，名片地址不能空的")
                sleep(3000);
                exit();
            }
            if (独立养号) {
                养号时长 = 24 * 60 * 60;
                device.keepScreenOn();
                auto.waitFor();
                //requestScreenCapture()
                console.show()
                sleep(200);
                //log(控制台)
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
                点赞上限 = ui.dzsx.getText();

                log(时间() + "启用独立养号模式")
                log(时间() + "拉起 抖音APP  点赞上限 " + 点赞上限);
                sleep(6000);
                智能养号模式();
                log(时间() + "养号结束")
                exit();
            }
            if (喜欢检测) {
                // log(ui.dymp.text().length)
                if (ui.dymp.text().length > 38 && ui.dymp.text().length < 42) {
                    名片地址 = ui.dymp.text()
                    名片地址 = 名片地址.slice(12, 名片地址.length);
                    //log(名片地址)

                } else {
                    log("名片地址错误  绑定抖音号失败  复制主页名片链接全放进去");
                    exit();
                }

                获取点赞数据();
                if (!dzs) {
                    log(时间() + "抖音名片地址不正确");
                    exit();
                } else {
                    log(时间() + "当前抖音号 点赞数量 " + dzs);
                }
            }
            if (!运行攢攢平台 && !运行龙虾平台 && !运行集卡帮平台) {
                toast("请先选择运行平台");
            } else {
                if (运行攢攢平台 && 运行龙虾平台 && 运行集卡帮平台) {
                    //  log(时间() + "多平台模式  刷新时间减半")
                    刷新时间 = 刷新时间 / 3
                }else if(运行攢攢平台 && 运行龙虾平台){
                     刷新时间 = 刷新时间 / 2
                     }
                多平台();
            }

        }
    );
    threads.start(
        function 心跳校验() {
            do {
                xyjg++;
                sleep(1000)
                //   log(xyjg);
                if (xyjg == 300) {
                    log(时间() + "检查用户状态")
                    获取用户状态();
                    xyjg = 0;
                }
            } while (试用功能 == false);
        }

    );


});

function 多平台() {


    点赞上限 = ui.dzsx.getText();
    try {
        var 项目公告地址 = "http://w.eydata.net/d68bb5d8a0bf3d"
        var res = http.post(项目公告地址, {});
        if (res.statusCode == 200) {
            项目公告 = res.body.string()
            console.info(项目公告);
            点赞上限 = ui.dzsx.getText();
            log("设备型号:" + device.model + "  屏幕分辨率:  " + device.width + "," + device.height);
           
        }
        if (运行攢攢平台) {

            登录账号();

        }
        if (运行龙虾平台) {
            xlx登录();
        }
        while (true) {

            if (运行攢攢平台) {
                获取任务();
            }
            if (运行龙虾平台) {
                xlx获取任务();
                if (任务id) {
                    xlx任务判断();
                }
            }
            if (运行集卡帮平台) {
                jkb获取任务()
            }
        }
    } catch (err) {
        log("网络中断 3秒后 重新连接")
        sleep(3000)
        多平台();
    }
}

function 放弃任务() {
    // log(任务id)
    do {

        var res = http.post("http://zcore.zqzan.com/app/douyin/giveup/task", {
            "doit_id": 任务id,
        }, {
            headers: {
                token: token
            }
        })
        sleep(random(3000, 4000));

    }
    while (res.statusCode != 200);
    放弃数量++;
    log(时间() + "放弃任务成功  放弃总数 " + 放弃数量);
}

function 上传文件() {
    log(时间() + "开始上传图片");



    do {
        var res = http.post("http://zcore.zqzan.com/app/oss/shot_img", {}, {
            headers: {
                token: token
            }
        })
        sleep(3000, 4000);
    }
    while (res.statusCode != 200)
    var 返回数据 = res.body.json();
    if (返回数据.code == 0) {
        var sctp = 0
        if (sctp > 0) {
            log(时间() + "上传照片失败了  重新提交 ！");
        }
        key = 返回数据.data.dir + "/" + 返回数据.data.prefix + (new Date).getTime() + Math.floor(150 * Math.random()) + ".png"
        图片地址 = 返回数据.data.host + "/" + key + 返回数据.data.format
        var res = http.postMultipart(返回数据.data.host, {
            key: key,
            policy: 返回数据.data.policy,
            OSSAccessKeyId: 返回数据.data.accessid,
            signature: 返回数据.data.signature,
            success_action_status: '200',
            file: open(截图路径)
        })
    }
    sleep(random(3000, 4000));


    log(时间() + "上传图片完成");
}

function 提交任务() {

    sleep(random(1000, 1500));
    var res = http.post("http://zcore.zqzan.com/app/douyin/submit/task", {
        "doit_id": 任务id,
        "shot_img": 图片地址
    }, {
        headers: {
            token: token
        }
    })
    if (res.statusCode == 200) {

        var 返回数据 = res.body.json()
        if (返回数据.code == 0) {
            // log(返回数据);
            log(时间() + "提交任务完成");
        } else {
            log(时间() + "提交任务失败");
        }
    }
    sleep(random(3000, 4000));
    files.remove(截图路径);
    sleep(1000);
    if (files.isFile(截图路径) == false) {
        log(时间() + "截屏图片删除成功")
    } else {
        var tt = confirm("删除图片失败  更换存放路径试试")
        if (tt) {
            exit();
        }
        exit();
    }
    //java.lang.System.gc(); //回收内存

    if (养号 == true) {
        log(时间() + "返回主页养号");
        sleep(1000);
        do {

            if (currentPackage() != "com.ss.android.ugc.aweme") {
                launch("com.ss.android.ugc.aweme");
                sleep(5000);
            }
            if (className("android.widget.TextView").text("关注").exists() == false) {
                back();
                sleep(1500)
            }
        }
        while (className("android.widget.TextView").text("关注").exists() == false)
        //swipe(500, device.height / 4 * 3, 500, 0, 300)
        var 关注位置 = className("android.widget.TextView").text("消息").findOne();
        if (关注位置) {
            var 关注X = 50;
            var 关注Y = 关注位置.bounds().centerY();
            console.hide();
            sleep(200)
            click(关注X, 关注Y);
            console.show()
            sleep(200);
            if (控制台) {
                console.setSize(device.width, device.height);
            }
            sleep(1000);
        }
        休息();
        养号模式 = true

    }

}

function 模拟操作() {
    if (任务类型 == 1) {
        作品任务();
        //log(时间() + "等待抖音界面加载");
        do {
            sleep(1000);
        }
        while (currentPackage() != "com.ss.android.ugc.aweme")

        log(时间() + "抖音加载成功")
        if (喜欢检测) {
            获取点赞数据();
            上次数量 = dzs
        }
        var 缓冲时间 = (parseInt(1000 * random()) + 4000)
        log(时间() + "缓冲 " + 缓冲时间 + " ms ");
        if (files.isFile(截图路径)) {
            files.remove(截图路径);
            sleep(600);
        }
        sleep(缓冲时间);
        console.hide()
        /*
        sleep(100);
        var a = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y - 50));
        sleep(100);
        var b = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y + 100));
        sleep(100);
        var c = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y + 50));
        sleep(100);
        if (a != "#ff000000" || b != "#ff000000" || c != "#ff000000") {
            */
          if(true){  
            完成数量++;
            toastLog(时间() + "执行点赞  点赞数 " + 完成数量 + " pcs");

            for (var i = 0; i < random(5, 9); i++) {
                click(random(device.width / 2 - 80, device.width / 2 + 80), random(device.height / 2, device.height / 2 + 150));
                sleep(random(60, 70));
            }
            sleep(500);

            toastLog(时间() + "开始截屏")
            sleep(3000);
            var img = captureScreen(截图路径);
            sleep(1000);
            if (files.isFile(截图路径)) {
                toastLog(时间() + "截屏成功");
                // log(时间() + "把图片保存到" + 截图路径);
                if (喜欢检测) {
                    检测点赞是否成功();
                    if (点赞判断) {
                        上传文件();
                        提交任务();
                    } else {
                        放弃任务();
                    }
                } else {
                    if (控制台) {
                        console.show()
                        sleep(200);
                        console.setSize(device.width, device.height);
                    }
                    上传文件();
                    提交任务();
                }
                if (完成数量 == 点赞上限) {
                    log(时间() + "到达设定次数")
                    var jxrw = confirm("到达设定的" + 点赞上限 + "次拉!  还要继续吗?");
                    if (jxrw) {
                        完成数量 = 0
                        toastLog(时间() + "重置点赞数")
                    } else {
                        toastLog(时间() + "停止运行")
                        exit();
                    }
                }
                if (智能养号) {
                    智能养号模式();
                }
            } else {
                if (控制台) {
                    console.show()
                    sleep(200);
                    console.setSize(device.width, device.height);
                }
                toastLog(时间() + "截屏失败 准备放弃任务")
                放弃任务();
                back();
                sleep(random(1000, 2600));
            }
        } else {
            if (控制台) {
                console.show()
                sleep(200);
                console.setSize(device.width, device.height);
            }
            log(时间() + "黑屏任务 准备放弃任务")
            放弃任务();
            back();
            sleep(random(1000, 2600));
        }
    } else {
        if (控制台) {
            console.show()
            sleep(200);
            console.setSize(device.width, device.height);
        }
        log(时间() + " 没有签到 授权 ！！！ 签到后重新启动  ")
        exit();
    }
}

function 登录账号() {


    var 密码 = String(ui.pass.getText()) + 'Uk&s23^ruk@';
    密码 = java.math.BigInteger(1, java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(密码).getBytes())).toString(16);
    var username = ui.name.getText();
    var password = 密码;
    //自用a7170275f4a3d9951184ed51e2eefc7bo
    /*md5加密******↑↑*/
    do {
        var res = http.post(登录, {
            "username": username,
            "loginpw": password
        });

        if (res.statusCode != 200) {
            log(时间() + "连接失败 尝试重新连接!");
            sleep(random(3000, 4000));
        }
    }
    while (res.statusCode != 200)
    返回数据 = res.body.json()
    // log(返回数据.code)
    if (返回数据.code == 0 || 返回数据.code == 1003) {
        token = 返回数据.data.token
        if (返回数据.msg == "操作成功") {
            log(时间() + "攢攢平台登录成功");
        } else {
            log("攢攢平台 " + 返回数据.msg + "  脚本已停止");
            exit();
        }
    }
    sleep(random(300, 400));
    log(时间() + "检查签到状态")
    do {
        var r = http.get("http://zcore.zqzan.com/app/douyin/my/info", {
            headers: {
                'token': token
            }
        });
        sleep(random(500, 1000));
    }
    while (r.statusCode != 200);
    var 返回数据 = r.body.json()
    if (返回数据.code == 0) {
        var 签到 = 返回数据.data.is_signed
        if (签到 == false) {
            app.launchPackage("com.zanqzan.app")
            sleep(5000);
            confirm("你没签到玩个蛇皮吗？  我先停止了  帮你把攢攢打开! ")
            exit();
        } else {
            log(时间() + "已经签到过  开始做任务吧 ！ ")
            sleep(random(300, 400));
        }
    }



}

function 获取任务() {
    if (试用功能) {
        var syss = new Date();
        var sydsq = parseInt((syss.getTime() - 试用计时) / 1000);
        if ((试用时长 - sydsq) < 0) {
            do {
                log(时间() + "试用 结束  按音量＋ 停止脚本 ");
                sleep(1000);
            }
            while (true)
            exit();
        }
    }
    if (刷新时间 < 1000) {
        刷新时间 = 3000;
    }
    var 刷新间隔 = parseInt(random(1, 1000) + 刷新时间);
    log(时间() + 刷新间隔 + " ms  攢攢刷新任务 ");
    var res = http.post("http://zcore.zqzan.com/app/douyin/pull/one?_=" + Date.now(), {
        "b_discount": true,
        "access": 1,
        "exam_status": 0,
    }, {
        headers: {
            'token': token
        }
    })
    //   log(res.statusCode)

    sleep(刷新间隔);


    if (res.statusCode == 200) {
        任务 = res.body.json();
        if (任务.code == 0) {
            // log(任务);
            //log(时间() + "获取任务 " + 任务.msg);
            任务id = 任务.data.id
            作品id = 任务.data.aweme_id
            任务价格 = 任务.data.earning
            任务类型 = 任务.data.type
            if (任务类型 == 1) {
                log(时间() + 任务.msg);
                if (任务价格 < 20) {
                    log(时间() + "特价点赞 单价:" + 任务价格)
                } else if (任务价格 > 20) {
                    log(时间() + "点赞 单价:" + 任务价格)
                }
                模拟操作();
                if (random(1, 100) > 70) {
                    do {
                        var r = http.get("http://zcore.zqzan.com/app/douyin/my/info", {
                            headers: {
                                'token': token
                            }
                        });
                        sleep(random(3000, 4000));
                    }
                    while (r.statusCode != 200)
                    var 返回数据 = r.body.json();
                    //log(返回数据);
                    if (返回数据.code == 0) {
                        var 返回数据 = 返回数据.data
                        log(时间() + "任务账号: " + 返回数据.oauth_nickname + " 余额: " + (返回数据.wallet / 1000) + " 今日已做: " + 返回数据.today_count);

                    }
                }
            } else if (任务.msg == "请授权官方账号") {
                log(时间() + "可能没有授权  去攢攢瞅瞅 ! 帮你打开攢攢 ! 🙏");
                app.launchPackage("com.zanqzan.app")
                sleep(5000);
                exit();
            } else if (任务.msg == "暂无任务,请稍后再试") {
                if (养号) {
                    if (random(1, 100) > 75) {

                        do {

                            if (currentPackage() != "com.ss.android.ugc.aweme") {
                                launch("com.ss.android.ugc.aweme");
                                sleep(5000);
                            }
                            if (className("android.widget.TextView").text("关注").exists() == false) {
                                back();
                                sleep(1500)
                            }
                        }
                        while (className("android.widget.TextView").text("关注").exists() == false)

                        var 关注位置 = className("android.widget.TextView").text("消息").findOne();
                        if (关注位置) {
                            var 关注X = 50;
                            var 关注Y = 关注位置.bounds().centerY();
                            console.hide();
                            sleep(500)
                            click(关注X, 关注Y);
                            sleep(1000)
                            swipe(500, device.height / 4 * 3, 500, 0, 300)
                            sleep(500)
                        }
                        if (控制台) {
                            sleep(500);
                            log(时间() + "养号模式  随机刷新主页")
                            console.show()
                            sleep(500);
                            console.setSize(device.width, device.height);
                        }

                    }
                }
            }
        }
    }

}

function 作品任务() {
    app.startActivity({
        action: "android.intent.action.VIEW",
        data: "snssdk1128://aweme/detail/" + 作品id,
        packageName: "com.ss.android.ugc.aweme",
    })
}

function 时间() {
    var d = new Date();
    var 小时 = /^\d$/.test(d.getHours()) ? '0' + d.getHours() : d.getHours();
    var 分钟 = /^\d$/.test(d.getMinutes()) ? '0' + d.getMinutes() : d.getMinutes();
    var 秒钟 = /^\d$/.test(d.getSeconds()) ? '0' + d.getSeconds() : d.getSeconds();
    return "["+小时 + ":" + 分钟 + ":" + 秒钟+"] " ;
}
//********小龙虾部分**************
function xlx登录() {
    do {
        var username = ui.xname.getText();
        var password = ui.xpass.getText();
        var res = http.post("http://tg.cst2020.cn/tg/Login/in", {
            "username": username,
            "password": password
        });
        if (res.statusCode != 200) {

            log("连接失败  稍后尝试重新连接");
            sleep(random(3000, 4000));
        }

    }
    while (res.statusCode != 200)
    var 返回数据 = res.body.json();

    if (返回数据.code == 0) {
        var 登录判断 = 返回数据.msg

        if (登录判断 != "未注册或密码错误") {
            var n = res.headers["Set-Cookie"].split(";");
            Cookie = n[0]
            log(时间() + "小龙虾平台登录成功")
            // log(Cookie)
            sleep(500);
        } else {
            log(登录判断)
            log("脚本停止")
            exit();
        }
    } else {
        log("小龙虾平台 未注册或密码错误 " + 返回数据.code);
        exit();
    }
}

function xlx获取任务() {

    if (试用功能) {
        var syss = new Date();
        var sydsq = parseInt((syss.getTime() - 试用计时) / 1000);
        if ((试用时长 - sydsq) < 0) {
            do {
                log(时间() + "试用 结束  按音量＋ 停止脚本 ");
                sleep(1000);
            }
            while (true)
            exit();
        }
    }
    if (刷新时间 < 1000) {
        刷新时间 = 2000;
    }
    do {
        var 刷新间隔 = parseInt(random(1, 1000) + 刷新时间);
        var 获取任务 = "http://tg.cst2020.cn/tg/DouYin/taskList?tp=2"
        log(时间() + 刷新间隔 + " ms  小龙虾刷新任务  ");
        sleep(刷新间隔);
        var r = http.get(获取任务, {
            headers: {
                'Cookie': Cookie
            }
        });

    }
    while (r.statusCode != 200)
    var 返回数据 = r.body.json();
    if (返回数据.code == 0) {
        var 返回数据 = 返回数据.result.dataList
        if (返回数据 == undefined || 返回数据.length == 0) {
            任务id = false
            if (养号) {
                if (random(1, 100) > 75) {

                    do {
                        if (className("android.widget.TextView").text("关注").exists() == false) {
                            back();
                            sleep(1500)
                        }
                        if (currentPackage() != "com.ss.android.ugc.aweme") {
                            launch("com.ss.android.ugc.aweme");
                            sleep(5000);
                        }
                    }
                    while (className("android.widget.TextView").text("关注").exists() == false)

                    var 关注位置 = className("android.widget.TextView").text("消息").findOne();
                    if (关注位置) {
                        var 关注X = 50;
                        var 关注Y = 关注位置.bounds().centerY();
                        console.hide();
                        sleep(200)
                        click(关注X, 关注Y);
                        swipe(500, device.height / 4 * 3, 500, 0, 300)
                        sleep(300)
                    }
                    if (控制台) {
                        sleep(200);
                        log(时间() + "养号模式  随机刷新主页")
                        console.show()
                        sleep(200);
                        console.setSize(device.width, device.height);
                    }

                }
            }

        } else {
            任务id = 返回数据[0].id
            log(时间() + 返回数据[0].nickname + "  " + 返回数据[0].tps + "  " + 返回数据[0].vtitle);
        }

    }
}

function xlx视频数据() {
    do {
        var 任务地址 = "http://tg.cst2020.cn/tg/DouYin/getTaskData?id=" + 任务id
        var r = http.get(任务地址, {
            headers: {
                'Cookie': Cookie
            }
        });

        if (r.statusCode != 200) {
            log("视频参数 请求失败  " + r.statusCode);
            sleep(random(3000, 4000));
        }
    }
    while (r.statusCode != 200);
    var 返回数据 = r.body.json();
    if (返回数据.code == 0) {
        返回数据 = 返回数据.result.copytxt.split("/");
        作品id = 返回数据[5];
    }
}

function xlx任务判断() {
    do {
        var 接受任务 = "http://tg.cst2020.cn/tg/DouYin/copyTaskData?id=" + 任务id
        var r = http.get(接受任务, {
            headers: {
                'Cookie': Cookie
            }
        });

        if (r.statusCode != 200) {
            log("抢任务 请求失败  " + r.statusCode);
            sleep(random(2000, 3000));
        }
    }
    while (r.statusCode != 200);
    返回数据 = r.body.json();
    if (返回数据.code == 0) {
        var 任务判断 = 返回数据.result.leftTime
        if (任务判断 == 30) {
            log(时间() + "接受任务成功");
            xlx视频数据();
            作品任务();
            xlx模拟操作();
        } else {
            log(时间() + "手慢了 ！没抢到任务")
        }
    }
}

function xlx模拟操作() {
    //log(时间() + "等待抖音界面加载");
    do {
        sleep(1000);
    }
    while (currentPackage() != "com.ss.android.ugc.aweme")

    log(时间() + "抖音加载成功")
    if (喜欢检测) {
        获取点赞数据();
        上次数量 = dzs
    }
    var 缓冲时间 = (parseInt(1000 * random()) + 3000)
    log(时间() + "缓冲 " + 缓冲时间 + " ms ");
    //log(时间() +"❤❤ 取屏幕中心");
    sleep(缓冲时间);
    console.hide()
    /*
    sleep(100);
    var a = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y + 100));
    sleep(100);
    var b = colors.toString(images.pixel(captureScreen(), 点赞位置x - 100, 点赞位置y));
    sleep(100);
    var c = colors.toString(images.pixel(captureScreen(), 点赞位置x + 100, 点赞位置y));
    sleep(100);

    if (a != "#ff000000" || b != "#ff000000" || c != "#ff000000") {
    */
    if(true){
        for (var i = 0; i < random(5, 9); i++) {
            click(random(device.width / 2 - 80, device.width / 2 + 80), random(device.height / 2, device.height / 2 + 150));
            sleep(random(60, 70));
        }
        sleep(1000);
        完成数量++;
        log(时间() + "执行点赞  点赞数 " + 完成数量 + " pcs");

        if (喜欢检测) {
            检测点赞是否成功();
        }
        if (完成数量 == 点赞上限) {
            log(时间() + "到达设定次数")
            var jxrw = confirm("到达设定的" + 点赞上限 + "次拉!  还要继续吗?");
            if (jxrw) {
                完成数量 = 0
                toastLog(时间() + "重置点赞数")
            } else {
                toastLog(时间() + "停止运行")
                exit();
            }
        }
    } else {
        log(时间() + "无效黑屏任务")
        back();
        sleep(random(1000, 2600));
    }
    rws++;

    // log(时间() + "自检周期 " + 自检周期 + "  距离平台自检  " + (自检周期 - rws));
    console.show();

    if (控制台) {
        sleep(200);
        console.setSize(device.width, device.height);
    }
    /*
    if ((自检周期 - rws) == 0) {

        任务审核();
    }
    */
    sleep(200);
    //  back();
    //java.lang.System.gc(); //回收内存

    if (random(1, 100) > 70) {
        余额();
    }
    if (智能养号) {
        智能养号模式();
    }
    if (养号) {
        log(时间() + "返回主页养号");
        sleep(1500)
        do {

            if (currentPackage() != "com.ss.android.ugc.aweme") {
                launch("com.ss.android.ugc.aweme");
                sleep(5000)
            }
            if (className("android.widget.TextView").text("关注").exists() == false) {
                back();
                sleep(1500)
            }
        }
        while (className("android.widget.TextView").text("关注").exists() == false)

        var 关注位置 = className("android.widget.TextView").text("消息").findOne();
        if (关注位置) {
            var 关注X = 50;
            var 关注Y = 关注位置.bounds().centerY();
            console.hide();
            sleep(100)
            click(关注X, 关注Y);
            sleep(2000);
            console.show()
            sleep(200);
            if (控制台) {
                console.setSize(device.width, device.height);
            }
            sleep(1000);
        }
        休息();
        养号模式 = true
    }
}

function jkb获取任务() {
    if (试用功能) {
        var syss = new Date();
        var sydsq = parseInt((syss.getTime() - 试用计时) / 1000);
        if ((试用时长 - sydsq) < 0) {
            do {
                log(时间() + "试用 结束  按音量＋ 停止脚本 ");
                sleep(1000);
            }
            while (true)
            exit();
        }
    }
    if (刷新时间 < 1000) {
        刷新时间 = 2000;
    }
    if (currentPackage() != "com.roc.dy") {
        log(时间() + "打开集卡帮");
        launch("com.roc.dy")
    }
    setClip("")
    sleep(6000);
    var jkqd = textContains("确定").findOne(1000) || descContains("确定").findOne(1000)
    if (jkqd) {
        sleep(700);
        jkqd.click();
    }
    var jkdz = textContains("点赞任务").findOne(5000) || descContains("点赞任务").findOne(5000);
    if (jkdz) {
        jkdz.click();
        sleep(6000);
        var dzlr = getClip();
        // log(dzlr);
        if (dzlr != "") {
            log(时间() + "集卡帮 获取任务成功")
            作品id = dzlr.slice(41, 60);
            // log(作品id);
            if (作品id) {
                作品任务();
                jk模拟操作();

            }
        } else {
            var 刷新间隔 = parseInt(random(1, 1000) + 刷新时间);
            log(时间() + 刷新间隔 + " ms  集卡帮刷新任务  ");

            var jkqd = textContains("确定").findOne(4000) || descContains("确定").findOne(4000)
            if (jkqd) {
                sleep(700);
                jkqd.click();

            }
            sleep(刷新间隔);
        }
    } else {
        log(时间() + "未找到集卡帮获取任务按钮");
    }
}


function jk模拟操作() {
    //log(时间() + "等待抖音界面加载");
    do {
        sleep(1000);
    }
    while (currentPackage() != "com.ss.android.ugc.aweme")

    log(时间() + "抖音加载成功")
    if (喜欢检测) {
        获取点赞数据();
        上次数量 = dzs
    }
    var 缓冲时间 = (parseInt(1000 * random()) + 3000)
    log(时间() + "缓冲 " + 缓冲时间 + " ms ");
    //log(时间() +"❤❤ 取屏幕中心");
    sleep(缓冲时间);
    console.hide()
    /*
    sleep(100);
    var a = colors.toString(images.pixel(captureScreen(), 点赞位置x, 点赞位置y + 100));
    sleep(100);
    var b = colors.toString(images.pixel(captureScreen(), 点赞位置x - 100, 点赞位置y));
    sleep(100);
    var c = colors.toString(images.pixel(captureScreen(), 点赞位置x + 100, 点赞位置y));
    sleep(100);

    if (a != "#ff000000" || b != "#ff000000" || c != "#ff000000") {
    */
    if(true){
        for (var i = 0; i < random(5, 9); i++) {
            click(random(device.width / 2 - 80, device.width / 2 + 80), random(device.height / 2, device.height / 2 + 150));
            sleep(random(60, 70));
        }
        sleep(1000);
        完成数量++;
        log(时间() + "视频有效  执行点赞  点赞数 " + 完成数量 + " pcs");

        if (喜欢检测) {
            检测点赞是否成功();
            if (点赞判断) {
                log(时间() + "点赞成功  返回集卡帮提交任务")
                launch("com.roc.dy")
                sleep(5000);
                var jktj = textContains("点赞提交").findOne(3000) || descContains("点赞提交").findOne(3000)
                if (jktj) {
                    jktj.click()
                    sleep(1000);
                    var jkqd = textContains("确定").findOne(3000) || descContains("确定").findOne(3000)
                    if (jkqd) {
                        sleep(700);
                        jkqd.click();
                        log(时间() + "集卡帮提交任务完成")
                    }
                }
            } else {
                log(时间() + "点赞失败  任务不提交");
            }
        } else {
            launch("com.roc.dy")
            sleep(5000);
            var jktj = textContains("点赞提交").findOne(3000) || descContains("点赞提交").findOne(3000)
            if (jktj) {
                jktj.click()
                sleep(1000);
                var jkqd = textContains("确定").findOne(3000) || descContains("确定").findOne(3000)
                if (jkqd) {
                    sleep(700);
                    jkqd.click();
                    log(时间() + "集卡帮提交任务完成")
                }
            }



        }
        if (完成数量 == 点赞上限) {
            log(时间() + "到达设定次数")
            var jxrw = confirm("到达设定的" + 点赞上限 + "次拉!  还要继续吗?");
            if (jxrw) {
                完成数量 = 0
                toastLog(时间() + "重置点赞数")
            } else {
                toastLog(时间() + "停止运行")
                exit();
            }
        }
    } else {
        log(时间() + "无效黑屏任务")
        back();
        sleep(random(1000, 2600));
    }
    rws++;
    console.show();
    if (控制台) {
        sleep(200);
        console.setSize(device.width, device.height);
    }
    java.lang.System.gc(); //回收内存
    if (智能养号) {
        智能养号模式();
    }
    if (养号) {
        log(时间() + "返回主页养号");
        sleep(1500)
        do {

            if (currentPackage() != "com.ss.android.ugc.aweme") {
                launch("com.ss.android.ugc.aweme");
                sleep(5000)
            }
            if (className("android.widget.TextView").text("关注").exists() == false) {
                back();
                sleep(1500)
            }
        }
        while (className("android.widget.TextView").text("关注").exists() == false)

        var 关注位置 = className("android.widget.TextView").text("消息").findOne();
        if (关注位置) {
            var 关注X = 50;
            var 关注Y = 关注位置.bounds().centerY();
            console.hide();
            sleep(100)
            click(关注X, 关注Y);
            sleep(2000);
            console.show()
            sleep(200);
            if (控制台) {
                console.setSize(device.width, device.height);
            }
            sleep(1000);
        }
        休息();
        养号模式 = true
    }
}

function 获取点赞数据() {
    
            dzs = ""
            var r = http.get(名片地址);
            if (r.statusCode == 200) {
                var fh = r.body.string();
                if (fh.length > 5000) {
                    var k = fh.indexOf("喜欢");
                    var j = fh.indexOf("加载中");
                    var sj = fh.slice(k, j);
                    var cd = sj.length
                    //解码
                    do {
                        var pcs = sj.indexOf("#xe");
                        if (pcs > 1) {
                            sl = sj.slice(pcs + 3, pcs + 6);
                            pcs = pcs + 6
                            sj = sj.slice(pcs, cd);
                            if (sl == "603" || sl == "60d" || sl == "616") {
                                sl = "0"
                            } else if (sl == "602" || sl == "618" || sl == "60e") {
                                sl = "1"
                            } else if (sl == "610" || sl == "617" || sl == "605") {
                                sl = "2"
                            } else if (sl == "604" || sl == "611" || sl == "61a") {
                                sl = "3"
                            } else if (sl == "606" || sl == "60c" || sl == "619") {
                                sl = "4"
                            } else if (sl == "607" || sl == "61b" || sl == "60f") {
                                sl = "5"
                            } else if (sl == "608" || sl == "61f" || sl == "612") {
                                sl = "6"
                            } else if (sl == "60a" || sl == "613" || sl == "61c") {
                                sl = "7"
                            } else if (sl == "614" || sl == "61d" || sl == "60b") {
                                sl = "8"
                            } else if (sl == "609" || sl == "615" || sl == "61e") {
                                sl = "9"
                            }
                            dzs = dzs + sl
                        }
                    }
                    while (pcs > 1)
                   // log(时间() + "获取当前点赞数 " + parseInt(dzs))

                }
            } 
                
            
        
    

}

function 检测点赞是否成功() {
    /*
    console.clear()
    toastLog(时间() + "清空日志  返回主页检测喜欢数量")
    do {

        if (className("android.widget.TextView").text("关注").exists() == false) {
            back();
            sleep(1500)
        }
        if (currentPackage() != "com.ss.android.ugc.aweme") {
            launch("com.ss.android.ugc.aweme");
            sleep(5000)
        }
    }
    while (className("android.widget.TextView").text("关注").exists() == false);
    var 关注位置 = className("android.widget.TextView").text("消息").findOne();
    if (关注位置) {
        var 关注X = 50;
        var 关注Y = 关注位置.bounds().centerY();
        sleep(500)
       // log(关注X+"/"+ 关注Y);
        click(关注X, 关注Y);
        sleep(500)
        click(关注X, 关注Y);
        var 取消通讯录 = text("取消").findOne(3000);
        if (取消通讯录) {
            log("发现取消按钮")
            取消.click();
            sleep(1000);
        }
    }
    var 我 = className("android.widget.TextView").text("我").findOne();
    if (我) {
        var 我X = 我.bounds().centerX();
        var 我Y = 我.bounds().centerY();
        click(我X, 我Y);
        sleep(1500);
        
    }
   toastLog(时间()+"读取中...")
var 喜欢 = textStartsWith("喜欢 ").visibleToUser().findOne();
 if (喜欢) {
     喜欢数量 = parseInt(喜欢.text().replace("喜欢", "").trim());
        console.show();
        if (控制台) {
            sleep(200);
            console.setSize(device.width, device.height);
            sleep(1000);
        }
        
        */
    console.show();
    if (控制台) {
        sleep(200);
        console.setSize(device.width, device.height);
        sleep(1000);
    }
    获取点赞数据()
    if (dzs) {

        喜欢数量 = dzs
        log(时间() + "当前数量 " + 喜欢数量 + " 点赞前数量 " + 上次数量);
        sleep(200);

        if (喜欢数量 == 上次数量) {
            失败数量++;
            失败总计++;
            log(时间() + "点赞连续失败数量  " + 失败数量);
            点赞判断 = false
        } else {

            sleep(200);
            log(时间() + "检测总数 " + 完成数量 + " 失败总数 " + 失败总计 + " 失败率 " + (parseInt(失败总计 / 完成数量 * 100)) + "\n连续失败8次 或者 做50个任务之后失败率大于25%  脚本会提示 ！!")
            sleep(200);
            失败数量 = 0
            点赞判断 = true
        }
        if (失败数量 == 5) {
            log(时间() + "连续失败5次  休息20分钟")
            log(时间() + "返回主页 养号 " + (1200 / 60) + " 分钟");
            sleep(1500)
            do {

                if (currentPackage() != "com.ss.android.ugc.aweme") {
                    launch("com.ss.android.ugc.aweme");
                    sleep(5000);
                }
                if (className("android.widget.TextView").text("关注").exists() == false) {
                    back();
                    sleep(1500)
                }
            }
            while (className("android.widget.TextView").text("关注").exists() == false)

            var 关注位置 = className("android.widget.TextView").text("消息").findOne();

            if (关注位置) {
                var 关注X = 50;
                var 关注Y = 关注位置.bounds().centerY();

                console.hide();
                sleep(100)
                click(关注X, 关注Y);
                console.show()
                sleep(500);
                if (控制台) {
                    console.setSize(device.width, device.height);
                }
                sleep(1000);
            }

            var 取消通讯录 = text("取消").findOne(3000);
            if (取消通讯录) {
                log("发现取消按钮")
                取消.click();
                sleep(3000);
            }
            var 直播按钮 = id("cb3").findOne(1000);
            if (直播按钮) {
                if (random(1, 3) > 2) {
                    log(时间() + "刷直播视频")
                    直播按钮.click()
                    sleep(random(3000, 5000));
                } else {
                    log(时间() + "刷推荐视频")
                }
            }
            var myDate = new Date();
            var 开始计时 = myDate.getTime(); 
            do {
                休息();
                myDate = new Date();
                var dsq = parseInt((myDate.getTime() - 开始计时) / 1000);
                log(时间() + "连续失败 养号剩余  时间 " + (1200 - dsq) + "  S");
                if (试用功能) {
                    var syss = new Date();
                    var sydsq = parseInt((syss.getTime() - 试用计时) / 1000);
                    if ((试用时长 - sydsq) < 0) {
                        do {
                            log(时间() + "试用 结束  按音量＋ 停止脚本 ");
                            sleep(1000);
                        }
                        while (true)
                        exit();
                    }
                } else {
                    if (试用功能 == false) {

                        xyjg++;
                        if (xyjg == 100) {
                            //   获取用户状态();
                            xyjg = 0;
                        }
                    }
                }
            }
            while (dsq < 1200)
        } else if (失败数量 == 8) {
            log("连续点赞失败8次  脚本暂停   还要继续吗?   点击确定进入只养号不做任务模式 ");
            sleep(200);
            var jxrw = confirm("连续点赞失败8次  脚本暂停   还要继续吗?   点击确定进入只养号不做任务模式  ");
            if (jxrw) {
                失败数量 = 0
                toastLog(时间() + "重置失败数  开启养号不做任务模式")
                sleep(200);
                智能养号 = true
            } else {
                toastLog(时间() + "停止运行")
                exit();
            }
        } else if (完成数量 > 50 && (parseInt(失败总计 / 完成数量 * 100)) > 25) {
            log("失败率大于 25% 脚本暂停   还要继续吗?   点击确定进入只养号不做任务模式 ");
            sleep(100);
            var jxrw = confirm("失败率大于 25%  脚本暂停   还要继续吗?   点击确定进入只养号不做任务模式  ");
            if (jxrw) {
                失败数量 = 0
                toastLog(时间() + "重置失败数  开启养号不做任务模式")
                智能养号 = true
            } else {
                toastLog(时间() + "停止运行")
                exit();
            }
        }
        back();
        sleep(200);
    }

}

function 智能养号模式() {
    log(时间() + "返回主页 养号 " + (养号时长 / 60) + " 分钟");
    sleep(1500)
    do {
        if (currentPackage() != "com.ss.android.ugc.aweme") {
            launch("com.ss.android.ugc.aweme");
            sleep(5000);
        }
        if (className("android.widget.TextView").text("关注").exists() == false) {
            back();
            sleep(1500)
        }
    }
    while (className("android.widget.TextView").text("关注").exists() == false)

    var 关注位置 = className("android.widget.TextView").text("消息").findOne();

    if (关注位置) {
        var 关注X = 50;
        var 关注Y = 关注位置.bounds().centerY();

        console.hide();
        sleep(100)
        click(关注X, 关注Y);
        console.show()
        sleep(500);
        if (控制台) {
            console.setSize(device.width, device.height);
        }
        sleep(1000);
    }

    var 取消通讯录 = text("取消").findOne(3000);
    if (取消通讯录) {
        log("发现取消按钮")
        取消.click();
        sleep(3000);
    }
    var 直播按钮 = id("cb3").findOne(1000);
    if (直播按钮) {
        if (random(1, 3) > 2) {
            log(时间() + "刷直播视频")
            直播按钮.click()
            sleep(random(3000, 5000));
        } else {
            log(时间() + "刷推荐视频")
        }
    }
    var myDate = new Date();
    var 开始计时 = myDate.getTime(); 
    do {
        休息();
        myDate = new Date();
        var dsq = parseInt((myDate.getTime() - 开始计时) / 1000);
        toastLog(时间() + "养号剩余  时间 " + (养号时长 - dsq) + "  S");
        if (试用功能) {
            var syss = new Date();
            var sydsq = parseInt((syss.getTime() - 试用计时) / 1000);
            if ((试用时长 - sydsq) < 0) {
                do {
                    log(时间() + "试用 结束  按音量＋ 停止脚本 ");
                    sleep(1000);
                }
                while (true)
                exit();
            }
        } else {
            if (试用功能 == false) {

                xyjg++;
                if (xyjg == 150) {
                    获取用户状态();
                    xyjg = 0;
                }
            }
        }
    }
    while (dsq < 养号时长)
    智能养号 = false
}

function 余额() {
    try {
        do {
            var r = http.get("http://tg.cst2020.cn/tg/Home/tx", {
                headers: {
                    'Cookie': Cookie
                }
            });
            sleep(random(3000, 4000));
            if (r.statusCode != 200) {
                toastLog(时间() + "获取余额失败 ！尝试重新获取 !");
            }
        }

        while (r.statusCode != 200)
        返回数据 = r.body.string()

        if (返回数据.length > 5000) {
            var n = 返回数据.indexOf("余额", 2700);
            var 余额 = 返回数据.slice(n + 64, n + 70);
            log(时间() + "当前余额: " + 余额 )
        }
    } catch (err) {
        log("获取余额失败  错误编号 " + r.statusCode)
    }


}

function 休息() {
    var 随机延迟 = (parseInt(random(2, 5)))
    sleep(1000);

    var 播放时长 = random(8000, 10000)
    console.hide();
    sleep(200);
    swipe(device.width / 2, device.height / 2 + 150, device.width / 2, 100, 300);
    toastLog(时间() + "养号模式  刷视频   " + "播放时长" + 播放时长 / 1000 + "秒")
    if (控制台) {
        console.show()
        sleep(200);
        console.setSize(device.width, device.height);

    }
    sleep(播放时长);
}

function  countChar(str, char) {     //str为字符串，char为字符         
    var  count = 0;    
    for (var  i = 0; i < str.length; i++) {        
        if (str.charAt(i)  ==  char) {            
            count++;        
        }    
    }    
    return  count;
}

function 任务审核() {
    log(时间() + "正在获取任务记录.....")
    do {
        var 查看审核 = "http://tg.cst2020.cn/tg/DouYin/taskRecordList?tp=0&lastId=0"
        var r = http.get(查看审核, {
            headers: {
                'Cookie': Cookie
            }
        });
        sleep(random(3000, 4000));
    }
    while (r.statusCode != 200);

    返回数据 = r.body.string()
    var 待审核 = countChar(返回数据, "核")
    var 审失败 = countChar(返回数据, "败")
    var 已结算 = countChar(返回数据, "算")
    var 任务记录 = 待审核 + 已结算 + 审失败
    if (任务记录 != 0) {
        log(时间() + "获取任务记录 " + 任务记录 + " 个 审失败 " + 审失败 + " 个  已结算 " + 已结算 + " 个  待审核 " + 待审核 + " 个 失败率: " + parseInt((审失败 / 任务记录) * 100))
        rws = 0;
        if (parseInt((审失败 / 任务记录) * 100) > 失败率) {
            log(时间() + "当前失败率 " + (parseInt((审失败 / 任务记录) * 100)) + "%  大于" + 失败率 + "% 启用智能养号");

            智能养号 = true;
        }
    } else {
        log(时间() + "获取任务记录失败 ");
        sleep(random(3600, 4500));
    }
}

//  自用数据 。。。。。。****
ui.lxpt.on("click", () => {
    var 哔哩哔哩 = "https://m.bilibili.com/index.html"
    toast("打开哔哩哔哩");
    app.openUrl(哔哩哔哩);
});
ui.zzpt.on("click", () => {
    var 虎牙直播 = "https://m.huya.com/"
    toast("打开虎牙直播");
    app.openUrl(虎牙直播);

});
ui.zzgk.on("click", () => {
    var 新地址 = "https://music.163.com/m/"
    toast("打开网易云");
    app.openUrl(新地址);

});

ui.zxbb.on("click", () => {
    var 新地址 = "http://www.zhihetv.com/"
    toast("打开最新地址");
    app.openUrl(新地址);

});

function 获取用户状态() {
    try {
        var 检查地址 = "http://w.eydata.net/1fdca2234c3749a6"
        var res = http.post(检查地址, {
            "StatusCode": 登录返回值,
            "UserName": 卡密
        });
        if (res.statusCode == 200) {

            var 用户状态 = res.body.string();
            // log(时间()+用户状态)
            if (用户状态 == "-112") {
                log("校验失败 编号 " + 用户状态);
                var xy = confirm("卡密重复登录");
                if (xy) {
                    exit();
                } else {
                    exit();
                }
            } else if (用户状态 == "1") {
                // log(时间()+"心跳 校验成功");
            }
        }
    } catch (err) {}
}

function 易游验证() {
    var 验证地址 = "http://w.eydata.net/a6c5cee0f9914d6d"
    var 到期时间地址 = "http://w.eydata.net/0cdddd02fc7c0b34"
    var 机器码 = device.getIMEI() + device.brand + device.model
    var 版本号 = "1.3"
    var res = http.post(验证地址, {
        "SingleCode": 卡密,
        "Ver": 版本号,
        "Mac": 机器码
    });
    if (res.statusCode == 200) {
        //log("连接成功");
        登录返回值 = res.body.string()
        if (登录返回值.length == 32) {

            console.verbose("卡密 验证成功")
            //sleep(2000);
            var res = http.post(到期时间地址, {
                "UserName": 卡密,
            });
            var 到期时间 = res.body.string()
            console.verbose("卡密到期时间: " + 到期时间);
            toast("卡密到期时间: " + 到期时间);
            sleep(1500);
        } else {
            if (登录返回值 == "-401") {

                toastLog("登录失败 卡密错误");
                sleep(2500);
            } else if (登录返回值 == "-402") {

                toastLog("登录失败 机器码错误");
                sleep(2500);
            } else if (登录返回值 == "-410") {

                toastLog("登录失败 卡密已经过期");
                sleep(2500);
            } else if (登录返回值 == "-405") {

                toastLog("登录失败 卡密已经冻结");
                sleep(2500);
            } else if (登录返回值 == "-207") {
                toastLog("登录失败 当前版本已停用");

                sleep(2500);
            }
            toastLog("错误编号:" + 登录返回值);

            sleep(5000);

            exit();
        }
    }


    //版本验证********
    var 最新版本 = "http://w.eydata.net/800c1deccb8953e7"
    var 版本标记 = "1.0.6"
    var res = http.post(最新版本, {
        "StatusCode": 登录返回值,
        "UserName": 卡密,
        "VariableId": "25941",
        "VariableName": "bj",
    });
    if (res.statusCode == 200) {
        var 最新标记 = res.body.string()
        //log(最新标记);
        if (版本标记 != 最新标记) {
            var handsome = confirm("有新版本呦 需要下载嘛!");
            if (handsome) {
                var res = http.post(最新版本, {
                    "StatusCode": 登录返回值,
                    "UserName": 卡密,
                    "VariableId": "25940",
                    "VariableName": "ddxz",
                });
                var 最新地址 = res.body.string()
                //log(最新地址);
                toast("打开下载地址")
                app.openUrl(最新地址)
                exit();
            } else {
                toast("取消更新");
                exit();
            }
        }

    }
    var 项目公告地址 = "http://w.eydata.net/800c1deccb8953e7"
    var res = http.post(最新版本, {
        "StatusCode": 登录返回值,
        "UserName": 卡密,
        "VariableId": "26063",
        "VariableName": "gg",
    });

    if (res.statusCode == 200) {
        //   log(时间()+"获取公告成功")
        项目公告 = res.body.string()
        console.info(项目公告);
    } else {
        console.info(时间() + "获取公告失败")
    }


    var 刷新 = "http://w.eydata.net/800c1deccb8953e7"
    var res = http.post(最新版本, {
        "StatusCode": 登录返回值,
        "UserName": 卡密,
        "VariableId": "26066",
        "VariableName": "sxsj",
    });
    if (res.statusCode == 200) {
        //   log(时间()+"获取变量成功")
        刷新时间 = parseInt(res.body.string())
        // console.info("刷新间隔: "+刷新时间);
    } else {
        toastLog(时间() + "获取云端变量失败  重启一下")
        sleep(5000);
        exit();
    }

}


/*
//圈子工作室数据
ui.lxpt.on("click", () => {
    var 龙虾注册地址 = "http://tg.cst2020.cn/tg/Reg/i/c/516418"
    app.openUrl(龙虾注册地址);
});
ui.zzpt.on("click", () => {
    var 攢攢注册 = "http://reg.zqzan.com/?sid=me5ab1bhspsss99i"
    app.openUrl(攢攢注册);
    aptureScreen
});
ui.zxbb.on("click", () => {
    var 新地址 = "https://www.lanzous.com/b00z82hib"
    toast("打开最新地址");
    app.openUrl(新地址);

});

function 获取用户状态() {
    var 检查地址 = "http://w.eydata.net/1ac00eac0d75f083"
    var res = http.post(检查地址, {
        "StatusCode": 登录返回值,
        "UserName": 卡密
    });
    if (res.statusCode == 200) {
        var 用户状态 = res.body.string()
        //   log("用户状态 "+用户状态)   
        if (用户状态 != 1) {
            log("校验失败 编号 " + 用户状态);
            var xy = confirm("校验失败 编号 " + 用户状态);
            if (xy) {
                exit();
            } else {
                exit();
            }
        }
    }
}



function 易游验证() {
    var 验证地址 = "http://w.eydata.net/a0af9d7790977c4d"
    var 到期时间地址 = "http://w.eydata.net/083dffc172d2a4b8"
    var 机器码 = device.getIMEI() + device.brand + device.model
    var 版本号 = "1.3"
    
   var res = http.post("http://w.eydata.net/6f6d9f5b38e6c183", {});
if (res.statusCode == 200) {
    var not = res.body.string()
    if (not=="true") {
    } else {
        toastLog("项目已关闭");
        sleep(3000);
        exit();
    }
}
    
    var res = http.post(验证地址, {
        "SingleCode": 卡密,
        "Ver": 版本号,
        "Mac": 机器码
    });

    if (res.statusCode == 200) {
        登录返回值 = res.body.string()

        if (登录返回值.length == 32) {

            console.verbose("授权码 验证成功")
            var res = http.post(到期时间地址, {
                "UserName": 卡密,
            });
            var 到期时间 = res.body.string()
            console.verbose("授权码到期时间: " + 到期时间);
            toast("授权码到期时间: " + 到期时间);
            sleep(2500);
        } else {
            if (登录返回值 == "-401") {

                toastLog("登录失败 卡密错误");
                sleep(2500);
            } else if (登录返回值 == "-402") {

                toastLog("登录失败 卡密机器码错误");
                sleep(2500);
            } else if (登录返回值 == "-410") {

                toastLog("登录失败 卡密已经过期");
                sleep(2500);
            } else if (登录返回值 == "-405") {

                toastLog("登录失败 卡密已经冻结");
                sleep(2500);
            } else if (登录返回值 == "-207") {

                toastLog("登录失败 当前版本已停用");
                sleep(2500);
            }
            log("错误编号:" + 登录返回值);
            toastLog("错误编号 " + 登录返回值);
            sleep(5000);
            exit();
        }
    } else {
        toast("服务器连接失败");
        exit();
        }
        //版本验证********
        var 最新版本 = "http://w.eydata.net/b5444cdcfeee5936"
        var 版本标记 = "1.0.4"
        var res = http.post(最新版本, {
            "StatusCode": 登录返回值,
            "UserName": 卡密,
            "VariableId": "25962",
            "VariableName": "bj",
        });
        if (res.statusCode == 200) {
            var 最新标记 = res.body.string()
            //log(最新标记);
            if (版本标记 != 最新标记) {
                var handsome = confirm("有新版本呦 需要下载嘛!");
                if (handsome) {
                    var res = http.post(最新版本, {
                        "StatusCode": 登录返回值,
                        "UserName": 卡密,
                        "VariableId": "25963",
                        "VariableName": "ddxz",
                    });
                    var 最新地址 = res.body.string()
                    //log(最新地址);
                    toast("打开下载地址")
                    app.openUrl(最新地址)
                    exit();
                } else {
                    toast("取消更新");
                    exit();
                }
            }
        }
        var 项目公告地址 = "http://w.eydata.net/d68bb5d8a0bf3d"
        var res = http.post(项目公告地址, {});
        if (res.statusCode == 200) {
            项目公告 = res.body.string()
            console.info(项目公告);
            点赞上限 = ui.dzsx.getText();
            log("设备型号:" + device.model + "  屏幕分辨率:  " + device.width + "," + device.height);
            log("拉起 抖音APP  点赞上限 " + 点赞上限);
        }
    }
    */
   
   //autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
   ////autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
   /////autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
   ///
   /////autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
