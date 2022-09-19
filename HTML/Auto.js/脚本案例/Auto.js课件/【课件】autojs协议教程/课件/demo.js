"ui";
var myAPP = {};
myAPP.characteristic = "zanzan"   //存储标识
myAPP.delayMin = "1"   //随机延时最小值，秒
myAPP.delayMax = "2"   //随机延时最大值，秒
myAPP.findTimeout = 60 //寻找节点超时时间
myAPP.taskNum = 0   //任务计数
myAPP.RandomValues = (random(100, 500))  //随机图片数量
myAPP.zanzanConcernsSelectBox = true //攒攒关注
myAPP.zanzanSaveSelectBox = true //攒攒点攒
myAPP.zanzanSpecialOfferSelectBox = true  //攒攒特价任务
myAPP.zanzanAccount = "" //攒攒帐号
myAPP.zanzanPassword = "" //攒攒密码
myAPP.obj = ""  //攒攒返回的数据
myAPP.type = ""  //攒攒任务类型
myAPP.url = ""  //数据请求的地址
myAPP.username = ""  //数据提交的帐号
myAPP.password = ""  //数据提效的密码
myAPP.res = "" //要提交的数据表
myAPP.point = ""
myAPP.color = ""
myAPP.res = ""  //要提交的数据
myAPP.time = ""
var pigName=""  //图片名称
var ZanzanArray = [];  //获取任务数组
var ZanzanSubmitted = []; //攒攒完成任务数组
var x = ""
var y = ""
var imgPath="";    //调用图片
//界面选择项配置开始--------------------------------------------------------------------------------------------
ui.layout(
    <ScrollView>
        <vertical>
            <appbar>
                <toolbar id="toolbar" title="自媒自赚" />
            </appbar>

            <card w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                <vertical padding="18 8" h="auto">
                    <linear>
                        <Switch id="autoService" text="无障碍服务:" checked="{{auto.service != null}}" w="auto" textStyle="bold" />
                    </linear>
                </vertical>
                <View bg="#ffffff" h="*" w="5" />
            </card>

            <card w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                <vertical padding="18 8" h="auto">
                    <linear>
                        <checkbox id="zanzanConcernsSelectBox" checked="{{myAPP.zanzanConcernsSelectBox}}" text="攒攒关注" />
                        <checkbox id="zanzanSaveSelectBox" checked="{{myAPP.zanzanSaveSelectBox}}" text="攒攒点攒" marginLeft="10" />
                    </linear>
                    <linear>
                        <checkbox id="zanzanSpecialOfferSelectBox" checked="{{myAPP.zanzanSpecialOfferSelectBox}}" text="攒攒特价任务" />
                    </linear>
                    <linear>
                        <text text="攒攒帐号：" textColor="black" w="auto" />
                        <input id="zanzanAccount" color="black" inputType="text" w="150" />
                    </linear>
                    <linear>
                        <text text="攒攒密码：" textColor="black" w="auto" />
                        <input id="zanzanPassword" color="black" inputType="numberPassword" w="150" />
                    </linear>
                    <linear>
                        <text text="任务最大数：" textColor="black" w="auto" />
                        <seekbar id="DYseekbar" max="50" layout_weight="1" />
                        <text gravity="center" id="DYlimit" />
                    </linear>
                </vertical>
                <View bg="#ffffff" h="*" w="5" />
            </card>

            <button style="Widget.AppCompat.Button.Colored" margin="10" id="start">启动脚本</button>
        </vertical>
    </ScrollView>
);
//--------------------------------------------------------------------------------------------
getData(true);

//请求载图开始--------------------------------------------------------------------------------------------
threads.start(function () {
    //在新线程执行的代码
    //请求截图
    if (!requestScreenCapture()) {
        log("请求截图失败");
        exit();
    }
});
//--------------------------------------------------------------------------------------------

//无障碍服务开始--------------------------------------------------------------------------------------------
//开关的单击事件
ui.autoService.on("check", function (checked) {
    // 用户勾选无障碍服务的选项时，跳转到页面让用户去开启
    if (checked && auto.service == null) {
        app.startActivity({
            action: "android.settings.ACCESSIBILITY_SETTINGS"
        });
    }
    if (!checked && auto.service != null) {
        auto.service.disableSelf();
    }
});
// 当用户回到本界面时，resume事件会被触发
ui.emitter.on("resume", function () {
    // 此时根据无障碍服务的开启情况，同步开关的状态
    ui.autoService.checked = auto.service != null;
});
//--------------------------------------------------------------------------------------------

//保存界面配置开始--------------------------------------------------------------------------------------------
function saveData() {
    setStorageData(myAPP.characteristic, "zanzanConcernsSelectBox", ui.zanzanConcernsSelectBox.checked) //攒攒关注
    setStorageData(myAPP.characteristic, "zanzanSaveSelectBox", ui.zanzanSaveSelectBox.checked) //攒攒点攒
    setStorageData(myAPP.characteristic, "zanzanAccount", ui.zanzanAccount.text()) //攒攒帐号
    setStorageData(myAPP.characteristic, "zanzanPassword", ui.zanzanPassword.text()) //攒攒密码
}

// 读取界面配置
// isSetVlue：是否设置ui组件的值。逻辑型参数
function getData(isSetVlue) {
    // 判断本地是否存储了选择框的索引值。
    if (getStorageData(myAPP.characteristic, "zanzanConcernsSelectBox") != undefined) {
        // 重新定义选择框索引
        myAPP.zanzanConcernsSelectBox = getStorageData(myAPP.characteristic, "zanzanConcernsSelectBox")
        // 设置选择框选中的项目
    };
    isSetVlue && ui.zanzanConcernsSelectBox.setChecked(myAPP.zanzanConcernsSelectBox); //攒攒关注

    if (getStorageData(myAPP.characteristic, "zanzanSaveSelectBox") != undefined) {
        myAPP.zanzanSaveSelectBox = getStorageData(myAPP.characteristic, "zanzanSaveSelectBox")

    };
    isSetVlue && ui.zanzanSaveSelectBox.setChecked(myAPP.zanzanSaveSelectBox); //攒攒点攒
    if (getStorageData(myAPP.characteristic, "zanzanAccount") != undefined) {
        myAPP.zanzanAccount = getStorageData(myAPP.characteristic, "zanzanAccount")
    };
    isSetVlue && ui.zanzanAccount.setText(myAPP.zanzanAccount); //攒攒帐号

    if (getStorageData(myAPP.characteristic, "zanzanPassword") != undefined) {
        myAPP.zanzanPassword = getStorageData(myAPP.characteristic, "zanzanPassword")
    };
    isSetVlue && ui.zanzanPassword.setText(myAPP.zanzanPassword); //攒攒密码
};


//保存本地数据
function setStorageData(name, key, value) {
    const storage = storages.create(name);  //创建storage对象
    storage.put(key, value);
};

//读取本地数据
function getStorageData(name, key) {
    const storage = storages.create(name);  //创建storage对象
    if (storage.contains(key)) {
        return storage.get(key, "");
    };
    //默认返回undefined
};

//删除本地数据
function delStorageData(name, key) {
    const storage = storages.create(name);  //创建storage对象
    if (storage.contains(key)) {
        storage.remove(key);
    };
};
//今天日期时间 
var sss = new Date();
var Variables = {
    //时间日期函数
    FullYear: sss.getFullYear(),
    Month: sss.getMonth(),
    Days: sss.getDate(),
    Hours: sss.getHours(),
    Minutes: sss.getMinutes(),
    Seconds: sss.getSeconds(),
    Time: sss.getTime().toString(),
    //自定义期函数
};
//--------------------------------------------------------------------------------------------
//攒攒登陆-------------------------------------------------------------------------------------
function zanzanLanding() {
    url = "http://zcore.zqzan.com/app/account/raw/login";
    username = myAPP.zanzanAccount;
    password = myAPP.zanzanPassword;
    res = http.post(url, {
        "username": username,
        "loginpw": password,
    });
    if (res.statusCode == 200) {
        log("登录成功");
        obj = (res.body.json())
        var token = (obj.data.token);
        zanzanSelectDy(token);  //攒攒选中抖音任务
    } else {
        log("帐号或密码不正确");
    }
}
//--------------------------------------------------------------------------------------------

//读取数据-------------------------------------------------------------------------------------
function ReadData(token) {
    res = http.get("http://zcore.zqzan.com/app/cash/wallet", {
        headers: {
            "Token": token,
        }
    });

    if (res.statusCode == 200) {
        log("当前攒攒金币数量为：" + res.body.json().data.wallet_earn);
        sleep(500)
        zanzanSelectDy(token);  //选中抖音任务
    }
}
//--------------------------------------------------------------------------------------------

//攒攒选中抖音任务---------------------------------------------------------------------------------
function zanzanSelectDy(token) {
    url = "http://zcore.zqzan.com/app/douyin/mine/my/info"
    token = token
    res = http.post(url, {}, {
        headers: {
            "Token": token
        }
    })
    if (res.statusCode == 200) {
        //.............
        zanzanSelectDy2(token)
    } else {
        log("数据异常请检查数据");
        return;
    }
}

function zanzanSelectDy2(token) {
    url = "http://zcore.zqzan.com/app/oss/sign_img"
    res = http.post(url, {}, {
        headers: {
            "Token": token
        }
    })
    if (res.statusCode == 200) {
        log("进入DY任务")
        zanzanCollectionDy(token)
    } else {
        log("数据异常请检查数据")
        return;
    }
}
//--------------------------------------------------------------------------------------------
//攒攒领取抖音任务---------------------------------------------------------------------------------
function zanzanCollectionDy(token) {
    var access
    var b_discount
    if (ui.zanzanConcernsSelectBox.isChecked() && ui.zanzanSaveSelectBox.isChecked()) {
        log("关注，点攒")
        access = 3
    } else if (ui.zanzanConcernsSelectBox.isChecked()) {
        log("关注")
        access = 2
    } else if (ui.zanzanSaveSelectBox.isChecked()) {
        log("点攒")
        access = 1
    } else {
        log("请选择任务")
    }
    if (ui.zanzanSpecialOfferSelectBox.isChecked()) {
        b_discount = true
        log("特价任务")
    } else {
        b_discount = false
    }
    ZanzanSubmitted.push(b_discount, access)
    url = "http://zcore.zqzan.com/app/douyin/pull/one"
    res = http.post(url, {
        "b_discount": b_discount,
        "access": access,
        "exam_status": 0
    }, {
        headers: {
            "Token": token
        }
    })

    if (res.statusCode == 200) {
        obj = (res.body.json());
        log(obj)
        type = (obj.data.type);
        var id = (obj.data.id)
        var aweme_id = obj.data.aweme_id;  //点攒
        var anchor_id = obj.data.anchor_id; //关注
        ZanzanSubmitted.push(id)
        ZanzanArray.push(type, aweme_id, anchor_id)
        zanzanCollectionDy2(token)
    }

}

function zanzanCollectionDy2(token) {
    url = "http://zcore.zqzan.com/app/oss/shot_img"
    res = http.post(url, {}, {
        headers: {
            "Token": token
        }
    })

    if (res.statusCode == 200) {
        log("邻取抖音任务")
        obj = (res.body.json())
        var host = obj.data.host;
        var key = obj.data.dir + "/" + obj.data.prefix + obj.data.expire + ".png"
        var format = obj.data.format
        var OSSAccessKeyId = obj.data.accessid
        var signature = obj.data.signature;
        var imgName = ".ss.android.ugc.aweme.png"
        var policy = obj.data.policy;
        ZanzanSubmitted.push(key, format)
        ZanzanArray.push(OSSAccessKeyId, signature, imgName, policy, host, key)
        home()
        sleep(3000)
        click("Auto.js",0)
        sleep(3000)
        log(ZanzanArray)
        zanzanVideoPages(token)
        
    }
}
//--------------------------------------------------------------------------------------------

//攒攒打开DY视频做任务---------------------------------------------------------------------------------
//点攒页面
function zanzanVideoPages(token) {
    //ZanzanArray.push(type, aweme_id, anchor_id,OSSAccessKeyId, signature, imgName, policy, host, key)
    var RandomNumber = random(5, 10)
    if (RandomNumber <= 5) {
        var xx = x + random(10, 38)
    } else {
        xx = x - random(10, 44)
    }
    sleep(3000)
    if (ZanzanArray[0] == 1) {    //type
        log("点攒")
        app.startActivity({
            action: "android.intent.action.VIEW",
            data: "snssdk1128://aweme/detail/" + ZanzanArray[1],  //aweme_id
            packageName: "com.ss.android.ugc.aweme",
        });
        sleep(2000)  //保征视频页面正常打开延迟
        var DyPage = waitForActivity("com.ss.android.ugc.aweme.detail.ui.DetailActivity")
        if (!DyPage) {
            sleep(2000)
            captureScreen();//载图
            color = images.pixel(captureScreen(), x - 50, y);
            //显示该颜色值
            log(colors.toString(color));
            while (true) {
                captureScreen();//载图
                //获取在点(x, y)的颜色值
                color = images.pixel(captureScreen(), x - 50, y);
                point = findColor(captureScreen(), color, {
                    region: [x, y, 10, 10],
                    threshold: 4,
                });
                if (point) {
                    log("视频打开中")
                } else {
                    log("视频以打开")
                    break;
                }
                sleep(1000)
            }
            log("开始观看视频")
            sleep(random(parseInt(8000), parseInt(1500)));  //随机延时
        } else {
            return;  //退出函数
        }
        if (!DyPage) {
            captureScreen();//载图
            //获取在点(x, y)的颜色值
            color = images.pixel(captureScreen(), x, y);
            //显示该颜色值
            log(colors.toString(color));
            while (true) {
                point = findColor(captureScreen(), color, {
                    region: [x, y, 10, 10],
                    threshold: 4,
                });
                if (point) {
                    log("找到")
                    click(xx, y - random(30, 70));
                    sleep(5000);
                } else {
                    log("截图完成开始读取上传图片");
                    console.hide();
                    sleep(1000)
                    imgPath = "/sdcard/DCIM/Screenshots/"+Variables.Timke+".ss.android.ugc.aweme.png"
                    captureScreen(imgPath);//载图imgName
                    zanzanUpload(token)
                    break;
                }
                sleep(1000)
            }
        }
    } else if (ZanzanArray[0] == 2) {
        log("关注")
        zanzanVideoPages(token)
        sleep(500)
    }
}

//关注页面
function zanzanVideoPages2(token) {
    //Array.push(type,aweme_id,anchor_id)
    app.startActivity({
        action: "android.intent.action.VIEW",
        data: "snssdk1128://user/profile/" + ZanzanArray[2], //anchor_id
        packageName: "com.ss.android.ugc.aweme",
    });
}
//--------------------------------------------------------------------------------------------

//上传图片到服务器--------------------------------------------------------------------------------------------
function zanzanUpload(token) {
    //ZanzanArray.push(type, aweme_id, anchor_id,OSSAccessKeyId, signature, imgName, policy, host, key)
    console.show();
    url = ZanzanArray[7]; //host
    res = http.postMultipart(url, {
        key: ZanzanArray[8], //key,
        policy: ZanzanArray[6], //policy
        OSSAccessKeyId: ZanzanArray[3], //OSSAccessKeyId
        signature: ZanzanArray[4], //signature
        success_action_status: "200",
        file: open(imgPath) //imgName
    });
    if (res.statusCode == 200) {
        log("上传成功")
        log(res)
        sleep(1000)
        SubmissionOfScreenshots(token)
    }
}
//--------------------------------------------------------------------------------------------

//攒攒提交截图---------------------------------------------------------------------------------
function SubmissionOfScreenshots(token) {
    //ZanzanSubmitted(b_discount,access,id,key,format)
    url = "http://zcore.zqzan.com/app/douyin/submit/task";
    res = http.post(url, {
        "doit_id": ZanzanSubmitted[2], //id
        "shot_img": ZanzanSubmitted[3] + ZanzanSubmitted[2], //key+format
    }, {
        headers: {
            "Token": token
        }
    })
    if (res.statusCode == 200) {
        log("操作成功");
        obj = (res.body.json())
        log(obj)
        SubmissionOfScreenshots2(token)
    }
}

function SubmissionOfScreenshots2(token) {
    //ZanzanSubmitted(b_discount,access,id,key,format)
    url = "http://zcore.zqzan.com/app/douyin/pull/one";
    res = http.post(url, {
        //b_discount=true&access=59&exam_status=0
        "b_discount": ZanzanSubmitted[0], //b_discount
        "access": ZanzanSubmitted[1], //access
        "exam_status": 0
    }, {
        headers: {
            "Token": token
        }
    })
    if (res.statusCode == 200) {
        log("操作成功");
        log(res.body.json())
    }
}
//--------------------------------------------------------------------------------------------

//调用函数-------------------------------------------------------------------------------------
function main() {
    files.removeDir("/sdcard/DCIM/Screenshots")  //删除文件截图文件夹
    files.create("/sdcard/DCIM/Screenshots/");  //创建截图文件夹
    log("清理后台")
    home()   //按下回车
    sleep(3000)
    recents()  //按下清除后台
    sleep(3000)
    id("clearAnimView").findOne().click()  //清除后台控件
    sleep(3000)
    click("Auto.js",0)
    launch("com.ss.android.ugc.aweme");
    while (true) {
        var weight = descStartsWith("未选中").findOne(50000)
        if (weight != null) {
            log("获取点攒坐标")
            x = weight.bounds().centerX()
            y = weight.bounds().centerY()
            log(x)
            log(y)
            break
        } else {
            log("找不到控件从新启动")
            home()
            sleep(3000)
            recents()
            sleep(3000)
            id("clearAnimView").findOne().click()  //清除后台控件
            sleep(3000)
            launch("com.ss.android.ugc.aweme");
        }
        sleep(1000)
    }
    zanzanLanding()
}
//--------------------------------------------------------------------------------------------

//运行开始--------------------------------------------------------------------------------------------
// 按钮单击事件
ui.start.on("click", () => {
    if (ui.start.text() == "启动脚本") {
        // 保存界面配置
        saveData();
        // 读取界面配置,false表示不读取界面配置的值   
        getData(false);
        //程序开始运行之前判断无障碍服务
        if (auto.service == null) {
            toastLog("请先开启无障碍服务！");
            return;  //返回。不再往下执行
        };
        //帐号输入框是否为空
        var textAccount = ui.zanzanAccount.text();
        var textPassword = ui.zanzanPassword.text();
        if (textAccount.length == 0) {
            ui.zanzanAccount.setError("输入不能为空");
            return;
        }
        ui.zanzanAccount.setError(null);
        //密吗输入框是否为空
        if (textPassword.length == 0) {
            ui.zanzanPassword.setError("输入不能为空");
            return;
        }
        ui.zanzanPassword.setError(null);
        //在新线程执行的代码
        threads.start(function () {
            console.show()  //显示控制台
            main()  //执行调用函数
            //zanzanLanding()
        });
    } else if (ui.start.text() == "结束脚本") {
        confirm("是否要停止脚本")
            .then(clear => {
                if (clear) {
                    ui.start.text("启动脚本")
                    exit();
                }
            });

    }
});
//--------------------------------------------------------------------------------------------
//log(currentActivity())  //读取包名