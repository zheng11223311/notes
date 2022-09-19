
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui"; 


//源码提取,加密打包,代码解密,还原.微信:zxkj6898 或zx033245 或QQ168196007
let installService = false;


钥匙=0


//=========================================================================================================================
//==========================识别号=================================
识别号=device.getAndroidId()
function hexToDec(hex) {
    var result = 0, digitValue;
    hex = hex.toLowerCase();
    for (var i = 0; i < hex.length; i++) {
        digitValue = '0123456789abcdefgh'.indexOf(hex[i]);
        result = result * 16 + digitValue;
    }
    return result;
}
卡号=hexToDec(识别号)
数1=卡号%4;数2=卡号%6;数3=卡号%7;数4=卡号%2;数5=卡号%5;数6=卡号%3;数7=卡号%8;数8=卡号%9
设备号原=(数1+1)*10000000+(数2+2)*1000000+(数3+3)*100000+(数4+4)*10000+(数5+5)*1000+(数6+6)*100+(数7+7)*10+数8+8
密码原=(设备号原*2)-12345678

设备号 = JSON.stringify(卡号)
设备号 = 设备号.substring(0,设备号.length=9);
密码=(设备号*13)-1651669686
密码 = JSON.stringify(密码)
密码=密码.substring(0,密码.length=9);



var color = "#009688";

ui.layout(
    <drawer id="drawer">
        <vertical>
            <appbar>
                <toolbar id="toolbar" title="全享通"/>
                <tabs id="tabs"/>
            </appbar>
            <vertical bg="#FFEFD5">
            <horizontal  gravity="center_vertical">
                    <text marginLeft="15dp" textSize="20dp" textStyle="bold">识别码：</text>
                    <text marginLeft="10dp" textSize="20dp" textStyle="bold" marginRight="15dp" layout_weight="2">{设备号}</text>
                    <button id="djfz" textColor="black" layout_weight="1" marginRight="15dp" w="105dp" textStyle="bold" text="点击复制编码" />
                </horizontal >
                <horizontal  gravity="center_vertical">
                    <text marginLeft="15dp" textSize="20dp" textStyle="bold">激活码：</text>
                    <input id="mm" hint="请输入激活码" password="true" textColor="black" marginRight="15dp" layout_weight="2" />
                    <button id="qr" textColor="black" layout_weight="1" marginRight="15dp" w="105dp" style="Widget.AppCompat.Button.Colored" textStyle="bold" text="激活全部功能" />
                </horizontal >
                <horizontal w="auto" h="auto"   >
                <Switch w="auto" h="auto" id="autoService" checked="{{auto.service != null}}"></Switch>
                <text textStyle="bold">无障碍</text>
                <TextView id="tv_text" marginLeft="10dp" marginRight="10dp" singleLine="true"  ellipsize="marquee" focusable="true" text="    温馨提示：无障碍和本应用所有权限都要开！  没激活也可以运行测试部分脚本，欢迎进行体验~  按声音上键可以停止脚本" textColor="#D65253"/>
                </horizontal>
                <horizontal h="5dp" ></horizontal>
                </vertical>
            <viewpager id="viewpager">
                <frame>
                <ScrollView>
                <vertical >
                <horizontal gravity="center_vertical">
                            <text textSize="18sp" textStyle="bold" marginLeft="15dp" marginRight="128dp">项目1：攒攒</text>
                            <button  marginLeft="15dp" id="zzzc" textStyle="bold" layout_weight="1" marginRight="15sp">注册下载</button>
                        </horizontal>
                        <button marginLeft="15dp" marginRight="15dp" w="*" id="zzxy" style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行  攒攒协议（推荐）</button>
                        <button  marginLeft="15dp" marginRight="15dp" id="zzyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行  攒攒脚本（适用模拟器）</button>
                        <horizontal h="5dp" bg="#ffffff"></horizontal>
                        //攒攒
                        <horizontal gravity="center_vertical">
                            <text textSize="18sp" textStyle="bold" marginLeft="15dp" marginRight="110dp">项目2：小龙虾</text>
                            <button marginLeft="15dp" id="xlxzc" textStyle="bold"  layout_weight="1" marginRight="15sp" >注册下载</button>
                        </horizontal>
                        <linear>
                            <text w="80dp" gravity="center" marginLeft="15dp" color="#111111" size="16">账号：</text>
                            <input id="setName" w="*" textSize="15dp" marginRight="15dp" h="40dp" hint="请输入小龙虾账号"/>
                        </linear>
                        <linear>
                            <text w="80dp" gravity="center" marginLeft="15dp" color="#111111" size="16" >密码：</text>
                            <input id="setPassword" w="*" h="40dp"  marginRight="15dp"  textSize="15dp"  password="true" hint="请输入小龙虾密码"/>
                        </linear>
                        <linear gravity="center">
                            <button marginLeft="15dp" marginRight="15dp" w="*" id="join2" style="Widget.AppCompat.Button.Colored"  textStyle="bold" >单独运行  小龙虾协议（推荐）</button>
                        </linear>
                        <button  marginLeft="15dp" marginRight="15dp" id="xlxyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行  小龙虾脚本（适用模拟器）</button>
                        <horizontal h="5dp" bg="#ffffff"></horizontal>
                        //小龙虾
                        <horizontal gravity="center_vertical">
                            <text textSize="18sp" textStyle="bold" marginLeft="15dp" marginRight="110dp">项目3：截图宝</text>
                            <button  marginLeft="15dp" id="jtbzz" textStyle="bold" layout_weight="1" marginRight="15sp">注册下载</button>
                        </horizontal>
                        <button  marginLeft="15dp" marginRight="15dp" id="jtbyd"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行  截图宝脚本（用最新版抖音）</button>
                        <horizontal h="5dp" bg="#ffffff"></horizontal>
                        //截图宝
                        <horizontal gravity="center_vertical">
                            <text textSize="18sp" textStyle="bold" marginLeft="15dp" marginRight="110dp">项目4：蛙蛙赚</text>
                            <button  marginLeft="15dp" id="wwzzc" textStyle="bold" layout_weight="1" marginRight="15sp">注册下载</button>
                        </horizontal>
                        <button  marginLeft="15dp" marginRight="15dp" id="wwzyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行  蛙蛙赚脚本</button>
                        <horizontal h="5dp" bg="#ffffff"></horizontal>
                        //蛙蛙赚   
                        </vertical>
                </ScrollView>
                </frame>
                <frame>
                <ScrollView>
                <vertical >
                <horizontal gravity="center_vertical">
                        <text textSize="18sp" textStyle="bold" marginLeft="15dp" marginRight="56dp">项目1：牛角免费小说</text>
                        <button  marginLeft="15dp" id="njzc" textStyle="bold" layout_weight="1" marginRight="15sp">注册下载</button>
                        </horizontal>
                        <horizontal w="auto" h="auto" marginLeft="15dp">
                        <text  marginRight="5dp">运行时长：</text>
                        <input size="20" text="0" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                        </horizontal>
                        <button  marginLeft="15dp" marginRight="15dp" id="njyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行 牛角免费小说脚本（未root）</button>
                        <button  marginLeft="15dp" marginRight="15dp" id="njyxroot"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行 牛角免费小说脚本（已root）</button>
                        <horizontal h="5dp" bg="#ffffff"></horizontal>
                        //牛角免费小说
                        <horizontal gravity="center_vertical">
                        <text textSize="18sp" textStyle="bold" marginLeft="15dp" marginRight="56dp">项目2：攒攒微信阅读</text>
                        <button  marginLeft="15dp" id="zzydzc" textStyle="bold" layout_weight="1" marginRight="15sp">注册下载</button>
                        </horizontal>
                        <horizontal w="auto" h="auto" marginLeft="15dp">
                        <text  marginRight="5dp">运行时长：</text>
                        <input size="20" text="0" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                        </horizontal>
                        <button  marginLeft="15dp" marginRight="15dp" id="zzyd"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行 攒攒微信阅读脚本</button>
                        <horizontal h="5dp" bg="#ffffff"></horizontal>
                        //攒攒阅读
                        <horizontal gravity="center_vertical">
                        <text textSize="18sp" textStyle="bold" marginLeft="15dp" marginRight="128dp">项目3：魔视</text>
                        <button  marginLeft="15dp" id="mszc" textStyle="bold" layout_weight="1" marginRight="15sp">注册下载</button>
                        </horizontal>
                        <horizontal w="auto" h="auto" marginLeft="15dp">
                        <text  marginRight="5dp">运行时长：</text>
                        <input size="20" text="0" id="msfz" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                        </horizontal>
                        <button  marginLeft="15dp" marginRight="15dp" id="msyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行 魔视脚本</button>
                        <horizontal h="5dp" bg="#ffffff"></horizontal>
                        //魔视
                        <horizontal gravity="center_vertical">
                        <text textSize="18sp" textStyle="bold" marginLeft="15dp" marginRight="74dp">项目4：长豆短视频</text>
                        <button  marginLeft="15dp" id="cdzc" layout_weight="1" textStyle="bold" marginRight="15sp">注册下载</button>
                        </horizontal>
                        <horizontal w="auto" h="auto" marginLeft="15dp">
                        <text  marginRight="5dp">运行时长：</text>
                        <input size="20" text="0" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                        </horizontal>
                        <button  marginLeft="15dp" marginRight="15dp" id="cdyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行 长豆短视频脚本</button>
                        <horizontal h="5dp" bg="#ffffff"></horizontal>
                        //长豆短视频
                </vertical>
                </ScrollView>
                </frame>
                <frame>
                <ScrollView>
                <vertical >
                <horizontal gravity="center_vertical">
                    <text textSize="18sp" textStyle="bold" marginLeft="15dp" marginRight="128dp">项目1：映客</text>
                    <button  marginLeft="15dp" id="ykzc" layout_weight="1" textStyle="bold" marginRight="15sp">注册下载</button>
                    </horizontal>
                    <text marginRight="15dp" marginLeft="15dp">1、小号脚本挂机抢红包，大号开直播送改大号</text>
                    <text marginRight="15dp" marginLeft="15dp">2、千万别搞什么邀请拉新的相关东西</text>
                    <text marginRight="15dp" marginLeft="15dp">3、抢红包之前需要完成主播认证，也就是实名，要不大陆身份证扫脸实名，要不港澳台身份证正反面实名</text>
                    <text marginRight="15dp" marginLeft="15dp">4、映客手机号注册要求：目前暂未发现限制号段，但是最好用稳一点的号段，毕竟号要实名</text>
                    <text marginRight="15dp" marginLeft="15dp">5、抢到的是钻石，不会过期</text>
                    <text marginRight="15dp" marginLeft="15dp">6、目前一个IP不要超过3台机器</text>
                    <button  marginLeft="15dp" marginRight="15dp" id="ykyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行 映客脚本</button>
                    <horizontal h="5dp" bg="#ffffff"></horizontal>
                    //映客
                    <horizontal gravity="center_vertical">
                    <text textSize="18sp" textStyle="bold" marginLeft="15dp" marginRight="128dp">项目2：火山</text>
                    <button  marginLeft="15dp" id="hszc" layout_weight="1" textStyle="bold" marginRight="15sp">注册下载</button>
                    </horizontal>
                    <text marginRight="15dp" marginLeft="15dp">1、火山手机号注册要求：正规手机号号段最稳，注册卡某些号段也可以</text>
                    <text marginRight="15dp" marginLeft="15dp">2、注册完全部个人资料改一遍，上传一些作品</text>
                    <text marginRight="15dp" marginLeft="15dp">3、小号跑脚本抢礼物，抢到的礼物送给大号，大号提现就ok</text>
                    <text marginRight="15dp" marginLeft="15dp">4、礼物24小时有效期</text>
                    <text marginRight="15dp" marginLeft="15dp">5、一个IP不要超过3台机器</text>
                    <text marginRight="15dp" marginLeft="15dp">6、千万别搞什么拉新邀请的东西</text>
                    <button  marginLeft="15dp" marginRight="15dp" id="hsyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行 火山脚本</button>
                    <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical>
                </ScrollView>
                </frame>
                <frame>
                <ScrollView>
                <vertical >
                <horizontal gravity="center_vertical">
                <text textSize="18sp" textStyle="bold" marginLeft="15dp" marginRight="30dp">免费项目1：秘乐</text>
                <button    id="mljs" marginLeft="15dp"  layout_weight="1">项目介绍</button>
                <button   id="mlzc" layout_weight="0" marginRight="15sp">注册下载</button>
                </horizontal>
                <horizontal w="auto" h="auto" marginLeft="15dp">
                <text  marginRight="5dp">运行时长：</text>
                <input size="20" text="5" id="mlfz" textSize="15sp" inputType="number"/><text  marginRight="5dp">分钟（每天只要看五分钟）</text>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="mlyx" style="Widget.AppCompat.Button.Colored" textStyle="bold" >单独运行 秘乐短视频脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                //秘乐短视频
                <horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="dyyh" style="Widget.AppCompat.Button.Colored"  w="*" textStyle="bold" >单独运行  抖音养号脚本</button>
                </horizontal>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                <horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="xzxgz" style="Widget.AppCompat.Button.Colored"  w="*" textStyle="bold" >单独运行  抖音消赞消关注脚本</button>
                </horizontal>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                <horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="lyg" style="Widget.AppCompat.Button.Colored"  w="*" textStyle="bold" >零元购</button>
                </horizontal>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                <horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="dyls" style="Widget.AppCompat.Button.Colored"  w="*" textStyle="bold" >抖音历史版本</button>
                </horizontal>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                <frame w="*" h="*">
                <text textSize="15sp" textColor="blue" id="guangao" gravity="center|bottom" text="此界面功能免费开放"/>
                </frame>
                </vertical>
                </ScrollView>
                </frame>
            </viewpager>
        </vertical>
        <vertical layout_gravity="left" bg="#ffffff" w="280">
            <img w="280" h="200" scaleType="fitXY" src="http://images.shejidaren.com/wp-content/uploads/2020/01/34735.jpg"/>
            <list id="menu">
                <horizontal bg="?selectableItemBackground" w="*">
                    <img w="50" h="50" padding="16" src="{{this.icon}}" tint="{{color}}"/>
                    <text textColor="black" textSize="15sp" text="{{this.title}}" layout_gravity="center"/>
                </horizontal>
            </list>
        </vertical>
    </drawer>
);


storage = storages.create("qxtdldata");
content=storage.get("mm");
if(content){
    ui["mm"].setText(content);
}
content1=storage.get("setName");
if(content1){
    ui["setName"].setText(content1);
}
content2=storage.get("setPassword");
if(content2){
    ui["setPassword"].setText(content2);
}


ui.tv_text.setSelected(true);

ui.djfz.click(function(){
    dialogs.build({
        title: "本机识别码",
        content: "唯一标识【"+设备号+"】\n点击复制发送给客服获取激活码",
        negative: "取消",
        neutral: "复制",
    }).on("neutral", ()=>{
        //监听中性键
        setClip(设备号);
        toast("复制成功"+设备号);
    }).show();
});


    // 注册下载地址

    ui.mljs.click(function(){
        app.openUrl("http://note.youdao.com/noteshare?id=81ad6e7973bbdd2e137599df3c21d22d")
    });
    
    ui.mlzc.click(function(){
        app.openUrl("https://mile-download.mlmfcn.com/?inviteNum=13408384")
    });

    ui.xlxzc.click(function(){
        app.openUrl("http://tg.cst2020.cn/tg/Reg/i/c/475153")
    });
    ui.wwzzc.click(function(){
        app.openUrl("http://share.libra086.com?invite=vJhpMR8qL5jw&channel=master")
    });
    ui.njzc.click(function(){
        app.openUrl("https://a.app.qq.com/o/simple.jsp?pkgname=com.yincheng.njread&from=singlemessage")
    });
    ui.cdzc.click(function(){
        app.openUrl("https://a.app.qq.com/o/simple.jsp?pkgname=com.zf.shuashua&from=singlemessage")
    });
    ui.zzzc.click(function(){
        app.openUrl("http://reg.zqzan.com/?sid=mch4lyvdmtxetk17")
    });
    ui.mszc.click(function(){
        app.openUrl("http://manage.z2olh.cn/moshi-activity/photoWall/Ihucdqlpk?pudl=bgyqgxl&mz=gzegXe")
    });
    ui.ykzc.click(function(){
        app.openUrl("http://www.inke.cn")
    });
    ui.hszc.click(function(){
        app.openUrl("https://www.huoshanzhibo.com/")
    });
    ui.lyg.click(function(){
        app.openUrl("https://jq.qq.com/?_wv=1027&k=5D3T1Qz")
    });

    ui.dyls.click(function(){
        app.openUrl("https://www.lanzous.com/b073k9ulg")
    });
    ui.zzydzc.click(function(){
        app.openUrl("https://note.youdao.com/yws/public/resource/ed060bc74ada31e6a545f7daa0fff14e/xmlnote/WEBRESOURCE427fc4e12911073eb169b7306b92e45b/970")
    });

    
//======================================================================================================================
//=============================截图宝===================================================================================

ui.jtbzz.click(function(){
    app.openUrl("http://cocte.32yowl.cn/invite/ssb?mid=1049606&from=singlemessage")
});



ui.jtbyd.click(function(){
    if(钥匙==1){
        threads.start(截图宝脚本);
        toast("你已激活，欢迎使用！");
    }else{
        toast("你未激活，5秒后进入体验！");
        threads.start(截图宝脚本测试);
    }

});


function 截图宝脚本(){
    F=0
    var w=device.width,h=device.height;
    sleep(2000)
        toastLog("请同意截图权限")
    sleep(1000)
    if(!requestScreenCapture())
    {
    toast("请求截图失败");
    }
    
    if(F == 0){
        launchApp("截图宝")
        确定 =text("确定").findOne(5000)
        while(确定!=null){
            zb=确定.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            确定 =text("确定").findOnce()
        }
        抖音任务 =text("看抖抖视频").findOne(1000)
        while(抖音任务!=null){
            zb=抖音任务.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            抖音任务 =text("看抖抖视频").findOnce()
        }
        sleep (1000)
        授权并登录 =text("授权并登录").findOnce()
        if(授权并登录!=null){
            zb=授权并登录.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (1000)
        }
        // if(F==3){
        //     launchApp("全享通");
        //     alert("提示", "测试结束，欢迎进行购买使用");
        //     exit();
        // }
    }
    while(true){
        领取任务 =text("领取任务").findOne(1000)
        while(领取任务!=null){
            zb=领取任务.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            领取任务 =text("领取任务").findOnce()
        }
        sleep (1000)
        弹窗 = text("我知道了").findOnce()
        if(弹窗!=null){
            zb=弹窗.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
        }
    
    
        点赞任务 = text("任务类型: ").findOnce().parent().findOne(textContains("点赞"))
        关注任务 = text("任务类型: ").findOnce().parent().findOne(textContains("关注"))
        评论任务 = text("任务类型: ").findOnce().parent().findOne(textContains("评论"))
        if(点赞任务!=null){
            toastLog("识别为：点赞任务")
            点赞123();
        }
        if(关注任务!=null){
            toastLog("识别为：关注任务")
            关注123();
        }
        if(评论任务!=null){
            toastLog("不做评论任务！")
            back()
            确定 =text("确定").findOne(2000)
            while(确定!=null){
                zb=确定.bounds()
                click(zb.centerX(),zb.centerY())
                sleep (500)
                确定 =text("确定").findOnce()
            }
            sleep(1000)
        }
    
    
    }
    
    function 关注123(){
        做任务 =text("打开DY做任务").findOne(2000)
        while(做任务!=null){
            zb=做任务.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            做任务 =text("打开DY做任务").findOnce()
        }
        sleep (1000)
        确定 =text("确定").findOne(2000)
        while(确定!=null){
            zb=确定.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            确定 =text("确定").findOnce()
        }
        复制内容 = textContains("复制成功").findOne(3000)
        复制内容 = 复制内容.text()
        复制内容=复制内容.split("ID：")[1]
        复制内容=复制内容.split("】")[0]
        打开DY视频 =text("打开DY视频").findOne(2000)
        while(打开DY视频!=null){
            zb=打开DY视频.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            打开DY视频 =text("打开DY视频").findOnce()
        }
        搜索=className("android.widget.LinearLayout").depth(14).findOne(5000)
        while(搜索!=null){
        zb=搜索.bounds()
        click(device.width*0.95,zb.centerY())
        sleep (500)
        搜索 =className("android.widget.LinearLayout").depth(14).findOnce()
        }
        sleep (1000)
        setText(复制内容)
        sleep(1000)
        click(w*0.9,h*0.9)
        sleep(2000)
        关注=className("android.widget.RelativeLayout").depth(20).findOnce()
        if(关注==null){
            仍然搜索 = textContains("仍然搜索").findOnce()
            if(仍然搜索==null){
                用户 = text("用户").findOnce()
                zb=用户.bounds()
                click(zb.centerX(),zb.centerY())
                sleep (2000)
                关注=className("android.widget.RelativeLayout").depth("17").findOnce()
            }else{
                仍然搜索zb=仍然搜索.bounds()
                click(仍然搜索zb.centerX(),仍然搜索zb.centerY())
                sleep(2000)
            }
        }
        zb=关注.bounds()
        click(zb.centerX(),zb.centerY())
        截屏()
        sleep(4000)
        F++
        sleep(500)
        back()           
        sleep(500)
        back()   
        sleep(500)
        launchApp("截图宝")
        上传截图()
        sleep(2000)
        toastLog("》全享通已为您成功执行了"+F+"个任务《")
    }
    
    function 点赞123(){
        做任务 =text("打开DY做任务").findOne(2000)
        while(做任务!=null){
            zb=做任务.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            做任务 =text("打开DY做任务").findOnce()
        }
        sleep (1000)
        确定 =text("确定").findOne(2000)
        while(确定!=null){
            zb=确定.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            确定 =text("确定").findOnce()
        }
        sleep(2000);
        var x = device.width / 2
        var y = device.height / 2
        if (x > 10 && y > 10) {} else 
        {
            x = 500
            y = 500
        }
        toast("开始随机时间点赞")
        sleep(2000)
        for (var o = 1; o < random(2, 5); o++) {
            sleep(2000)
            toast("看视频" + o * 2 + "秒")
        }
        click(x, y)
        sleep(50)
        click(x, y)
        sleep(3000)
        toast("点赞结束");
        截屏()
        sleep(4000)
        F++
        sleep(1000)
        back()           
        sleep(1000)
        launchApp("截图宝")
        上传截图()
        sleep(2000)
        toastLog("》全享通已为您成功执行了"+F+"个任务《")
    }
    
    function 截屏(){
        toastLog("开始截图")
        files.ensureDir("/sdcard/QQ1651669686/AAAAA/")
        var im = captureScreen();
        var path = "/sdcard/QQ1651669686/AAAAA/jtb.png"
        im.saveTo(path);
        media.scanFile(path);
        sleep(1000)
        toastLog("截图完成");
    } 
    
    function 上传截图(){
        上传检测=text("您上传的截图").findOnce()
        log(上传检测)
        while(上传检测==null){
            sleep(1000)
            上传检测=text("您上传的截图").findOnce()
        }
        上传 = className("android.widget.RelativeLayout").depth("12").findOnce()
        zb=上传.bounds()
        click(zb.centerX(),zb.centerY())
        sleep(2000)
        直接上传=text("你可能要上传的截图").findOnce()
        if(直接上传!=null){
        确定 =text("确定").findOnce(5000)
        zb=确定.bounds()
        click(zb.centerX(),zb.centerY())
        sleep(1000)
        }else{
            选择相册=className("android.widget.RelativeLayout").depth("6").findOnce()
            zb=选择相册.bounds()
            click(zb.centerX(),zb.centerY()+50)
            sleep(1000)
            while(true){
                A相册 = text("AAAAA").findOnce()
                if(A相册 !=null){
                    sleep(1000)
                    break
                }
                swipe(w*0.2, h*0.4, w*0.2, h*0.2, 500);
                sleep(1000)
            }
            A相册zb= A相册.bounds()
            click(A相册zb.centerX(),A相册zb.centerY())
            sleep(1000)
            选中= className("android.widget.TextView").depth("8").findOnce()
            选中zb=选中.bounds()
            click(选中zb.centerX(),选中zb.centerY())
            sleep(1000)
            确定 =text("确定(1)").findOne(2000)
            while(确定!=null){
                zb=确定.bounds()
                click(zb.centerX(),zb.centerY())
                sleep (500)
                确定 =text("确定(1)").findOnce()
            }
            sleep(1000)
        }
        提交任务 =text("提交任务").findOne(5000)
        zb=提交任务.bounds()
        click(zb.centerX(),zb.centerY())
        sleep(1000)
        确定 =text("确定").findOne(5000)
        zb=确定.bounds()
        click(zb.centerX(),zb.centerY())
        sleep(1000)
    }}


function 截图宝脚本测试(){
    sleep(5000)
    徒弟=0
    F=0
    var w=device.width,h=device.height;
    toastLog("请同意截图权限")
    sleep(1000)
    if(!requestScreenCapture())
    {
    toast("请求截图失败");
    }

if(F == 0){
    toastLog("正在打开截图宝")
    launchApp("截图宝")
    确定 =text("确定").findOne(5000)
    while(确定!=null){
        zb=确定.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        确定 =text("确定").findOnce()
    }
    toastLog("师徒检测")
    sleep(1000)
    个人中心检测 =textContains("师傅ID").findOnce()
    
    师傅ID=个人中心检测.text()
    
    if(师傅ID=="师傅ID: 1049606"){
        toastLog("确认为徒弟，开始正式版！")
        徒弟=1
    }else{
        toastLog("不是徒弟，体验测试版！")
    }
    抖音任务 =text("看抖抖视频").findOne(1000)
    while(抖音任务!=null){
        zb=抖音任务.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        抖音任务 =text("看抖抖视频").findOnce()
    }
    sleep (1000)
    授权并登录 =text("授权并登录").findOnce()
    if(授权并登录!=null){
        zb=授权并登录.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (1000)
    }
}
while(true){
    领取任务 =text("领取任务").findOne(1000)
    while(领取任务!=null){
        zb=领取任务.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        领取任务 =text("领取任务").findOnce()
    }
    sleep (1000)
    弹窗 = text("我知道了").findOnce()
    if(弹窗!=null){
        zb=弹窗.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
    }


    点赞任务 = text("任务类型: ").findOnce().parent().findOne(textContains("点赞"))
    关注任务 = text("任务类型: ").findOnce().parent().findOne(textContains("关注"))
    评论任务 = text("任务类型: ").findOnce().parent().findOne(textContains("评论"))
    if(点赞任务!=null){
        toastLog("识别为：点赞任务")
        点赞123();
    }
    if(关注任务!=null){
        toastLog("识别为：关注任务")
        关注123();
    }
    if(评论任务!=null){
        toastLog("不做评论任务！")
        back()
        确定 =text("确定").findOne(2000)
        while(确定!=null){
            zb=确定.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            确定 =text("确定").findOnce()
        }
        sleep(1000)
    }
    if(徒弟==0){
        if(F==3){
            launchApp("全享通");
            alert("提示", "测试结束，欢迎进行购买使用");
            exit();
        }
    }

}

function 关注123(){
    做任务 =text("打开DY做任务").findOne(2000)
    while(做任务!=null){
        zb=做任务.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        做任务 =text("打开DY做任务").findOnce()
    }
    sleep (1000)
    确定 =text("确定").findOne(2000)
    while(确定!=null){
        zb=确定.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        确定 =text("确定").findOnce()
    }
    复制内容 = textContains("复制成功").findOne(3000)
    复制内容 = 复制内容.text()
    复制内容=复制内容.split("ID：")[1]
    复制内容=复制内容.split("】")[0]
    打开DY视频 =text("打开DY视频").findOne(2000)
    while(打开DY视频!=null){
        zb=打开DY视频.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        打开DY视频 =text("打开DY视频").findOnce()
    }
    搜索=className("android.widget.LinearLayout").depth(14).findOne(5000)
    while(搜索!=null){
    zb=搜索.bounds()
    click(device.width*0.95,zb.centerY())
    sleep (500)
    搜索 =className("android.widget.LinearLayout").depth(14).findOnce()
    }
    sleep (1000)
    setText(复制内容)
    sleep(1000)
    click(w*0.9,h*0.9)
    sleep(2000)
    关注=className("android.widget.RelativeLayout").depth(20).findOnce()
    if(关注==null){
        仍然搜索 = textContains("仍然搜索").findOnce()
        if(仍然搜索==null){
            用户 = text("用户").findOnce()
            zb=用户.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (2000)
            关注=className("android.widget.RelativeLayout").depth("17").findOnce()
        }else{
            仍然搜索zb=仍然搜索.bounds()
            click(仍然搜索zb.centerX(),仍然搜索zb.centerY())
            sleep(2000)
        }
    }
    zb=关注.bounds()
    click(zb.centerX(),zb.centerY())
    截屏()
    sleep(4000)
    F++
    sleep(500)
    back()           
    sleep(500)
    back()   
    sleep(500)
    launchApp("截图宝")
    上传截图()
    sleep(2000)
    toastLog("》全享通已为您成功执行了"+F+"个任务《")
}

function 点赞123(){
    做任务 =text("打开DY做任务").findOne(2000)
    while(做任务!=null){
        zb=做任务.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        做任务 =text("打开DY做任务").findOnce()
    }
    sleep (1000)
    确定 =text("确定").findOne(2000)
    while(确定!=null){
        zb=确定.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        确定 =text("确定").findOnce()
    }
    sleep(2000);
    var x = device.width / 2
    var y = device.height / 2
    if (x > 10 && y > 10) {} else 
    {
        x = 500
        y = 500
    }
    toast("开始随机时间点赞")
    sleep(2000)
    for (var o = 1; o < random(2, 5); o++) {
        sleep(2000)
        toast("看视频" + o * 2 + "秒")
    }
    click(x, y)
    sleep(50)
    click(x, y)
    sleep(3000)
    toast("点赞结束");
    截屏()
    sleep(4000)
    F++
    sleep(1000)
    back()           
    sleep(1000)
    launchApp("截图宝")
    上传截图()
    sleep(2000)
    toastLog("》全享通已为您成功执行了"+F+"个任务《")
}

function 截屏(){
    toastLog("开始截图")
    files.ensureDir("/sdcard/QQ1651669686/AAAAA/")
    var im = captureScreen();
    var path = "/sdcard/QQ1651669686/AAAAA/jtb.png"
    im.saveTo(path);
    media.scanFile(path);
    sleep(1000)
    toastLog("截图完成");
} 

function 上传截图(){
    上传检测=text("您上传的截图").findOnce()
    log(上传检测)
    while(上传检测==null){
        sleep(1000)
        上传检测=text("您上传的截图").findOnce()
    }
    上传 = className("android.widget.RelativeLayout").depth("12").findOnce()
    zb=上传.bounds()
    click(zb.centerX(),zb.centerY())
    sleep(2000)
    直接上传=text("你可能要上传的截图").findOnce()
    if(直接上传!=null){
    确定 =text("确定").findOnce(5000)
    zb=确定.bounds()
    click(zb.centerX(),zb.centerY())
    sleep(1000)
    }else{
        选择相册=className("android.widget.RelativeLayout").depth("6").findOnce()
        zb=选择相册.bounds()
        click(zb.centerX(),zb.centerY()+50)
        sleep(1000)
        while(true){
            A相册 = text("AAAAA").findOnce()
            if(A相册 !=null){
                sleep(1000)
                break
            }
            swipe(w*0.2, h*0.4, w*0.2, h*0.2, 500);
            sleep(1000)
        }
        A相册zb= A相册.bounds()
        click(A相册zb.centerX(),A相册zb.centerY())
        sleep(1000)
        选中= className("android.widget.TextView").depth("8").findOnce()
        选中zb=选中.bounds()
        click(选中zb.centerX(),选中zb.centerY())
        sleep(1000)
        确定 =text("确定(1)").findOne(2000)
        while(确定!=null){
            zb=确定.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            确定 =text("确定(1)").findOnce()
        }
        sleep(1000)
    }
    提交任务 =text("提交任务").findOne(5000)
    zb=提交任务.bounds()
    click(zb.centerX(),zb.centerY())
    sleep(1000)
    确定 =text("确定").findOne(5000)
    zb=确定.bounds()
    click(zb.centerX(),zb.centerY())
    sleep(1000)
}
}

//=====================================================================================================================
//=============================养号====================================================================================
ui.dyyh.click(function(){
    threads.start(抖音养号);
});


function 抖音养号(){
    
    var window = floaty.window(
        <vertical>
            <horizontal>
            <button id="ok" text="开始"/>
            <button id="ok2" text="停止"/>
            </horizontal>
        </vertical>
    );
    window.exitOnClose();
    window.setPosition(1, 400)
    
    window.ok.on("click", ()=>{
        window.ok.text("启动中")
        threads.start(抖音养号脚本)
    });
    
    window.ok2.on("click", ()=>{
        exit()
    });
    setInterval(()=>{}, 1000);

}
function 抖音养号脚本(){
    console.show();
    sleep(1000);
    console.setSize(450, 450);
    log("正在打开--->抖音短视频");
    app.launchApp("抖音短视频")
    sleep(2000);
    log("请手动进入首页");
    toast("请手动进入首页");
    sleep(4000);
    var w=device.width,h=device.height;
    var i=1;
    log("获取屏幕宽度---->"+w);
    sleep(1000);
    log("获取屏幕高度---->"+h);
    sleep(1000);
    log("开始养号");
    while (1)
    {
        for(var j=0;j<4;j++){
            swipe(w/2, h*0.8, w/2, h*0.2, 300); //滑动
            sleep(15000);
        }
        if((i%5)==0){
            log("已养号"+i+"分钟,进入用户主页");
            swipe(w*0.9, h/2, w*0.1, h/2, 300); //滑动
            sleep(5000);
            log("停留一分钟");
            for(var j=0;j<10;j++){
                swipe(w/2, h*0.8, w/2, h*0.5, 300); //滑动
                sleep(5000);
            }
            log("返回主页");
            swipe(w*0.1, h/2, w*0.9, h/2, 300); //滑动
            sleep(5000);
            i++;
            log("已养号"+i+"分钟");
        }else{
            log("已养号"+i+"分钟");
            i++;
        }
}
}


//==========================================================================================================================
//==================================消赞消关注==============================================================================
ui.xzxgz.click(function(){
        消赞消关注();
})

function 消赞消关注(){
    "ui"; //更多精彩内容请联系群主加入精英群，微信shenlong6898 或zxkj6898
ui.layout(

    <vertical paddingLeft="20" paddingRight="20">
        <linear w="*" h="auto" gravity="center|top">
            <text textSize="20sp" textColor="blue"  text="抖音消赞消关注脚本设置" marginBottom="20"marginTop="20"/>
        </linear>
         

        <input id="cancle_like_number"  hint="请输入取消点赞数量"  />
        <input id="cancle_comment_number" hint="请输入取消关注数量" />

        <text textSize="16sp" textColor="black" padding="10" text="抖音消赞设置"/>
        
        <radiogroup>
        <radio id="way1" textSize="15sp" checked="true" layout_weight="1" text="正常模式(推荐)"/>
        <radio id="way2" textSize="15sp" checked="false" layout_weight="1" text="极速模式"/>
        </radiogroup>

        <text textSize="16sp" textColor="black" padding="10" text="抖音消关注设置"/>
        
        <radiogroup>
        <radio id="way11" textSize="15sp" checked="true" layout_weight="1" text="正常模式(推荐)"/>
        <radio id="way22" textSize="15sp" checked="false" layout_weight="1" text="极速模式"/>
        </radiogroup>

        <button id="ok" text="开始运行" padding="15"  style="Widget.AppCompat.Button.Colored"marginBottom="20"marginTop="20"/>

        <frame w="*" h="*">
            <text textSize="15sp" textColor="blue" id="guangao" gravity="center|bottom" text="本软件仅用于交流学习，如作他用所受的法律责任一概与作者无关"/>
        </frame>

    </vertical>

);

ui.ok.click(function(){

    if(isNaN(Number(ui.cancle_like_number.text()))==true||isNaN(Number(ui.cancle_comment_number.text()))==true||Number(ui.cancle_like_number.text())==0||Number(ui.cancle_comment_number.text())==0)
    {
        toastLog("输入错误")
    }
    else
    {

    threads.start(function(){

;var encode_version = 'sojson.v5', prszw = '__0x6db71',  __0x6db71=['d8K7G3A+wq3Csgpq','ccK6FWY3wqrDshk7'];(function(_0x259ee8,_0x48d828){var _0x26660a=function(_0x4ebbdb){while(--_0x4ebbdb){_0x259ee8['push'](_0x259ee8['shift']());}};_0x26660a(++_0x48d828);}(__0x6db71,0x16a));var _0x1df4=function(_0x1f2c2f,_0x4142c3){_0x1f2c2f=_0x1f2c2f-0x0;var _0x48bb18=__0x6db71[_0x1f2c2f];if(_0x1df4['initialized']===undefined){(function(){var _0x409102=typeof window!=='undefined'?window:typeof process==='object'&&typeof require==='function'&&typeof global==='object'?global:this;var _0x304322='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x409102['atob']||(_0x409102['atob']=function(_0x5e91e4){var _0x713c49=String(_0x5e91e4)['replace'](/=+$/,'');for(var _0x5d72bf=0x0,_0x5b4cf6,_0x5ec31d,_0x13496c=0x0,_0x7a7e28='';_0x5ec31d=_0x713c49['charAt'](_0x13496c++);~_0x5ec31d&&(_0x5b4cf6=_0x5d72bf%0x4?_0x5b4cf6*0x40+_0x5ec31d:_0x5ec31d,_0x5d72bf++%0x4)?_0x7a7e28+=String['fromCharCode'](0xff&_0x5b4cf6>>(-0x2*_0x5d72bf&0x6)):0x0){_0x5ec31d=_0x304322['indexOf'](_0x5ec31d);}return _0x7a7e28;});}());var _0x57ab20=function(_0x420e58,_0x567dfe){var _0x50020d=[],_0x3b2ec2=0x0,_0x2ea550,_0x295979='',_0x3a1756='';_0x420e58=atob(_0x420e58);for(var _0x2eeefc=0x0,_0x4ca15b=_0x420e58['length'];_0x2eeefc<_0x4ca15b;_0x2eeefc++){_0x3a1756+='%'+('00'+_0x420e58['charCodeAt'](_0x2eeefc)['toString'](0x10))['slice'](-0x2);}_0x420e58=decodeURIComponent(_0x3a1756);for(var _0x4b6ae8=0x0;_0x4b6ae8<0x100;_0x4b6ae8++){_0x50020d[_0x4b6ae8]=_0x4b6ae8;}for(_0x4b6ae8=0x0;_0x4b6ae8<0x100;_0x4b6ae8++){_0x3b2ec2=(_0x3b2ec2+_0x50020d[_0x4b6ae8]+_0x567dfe['charCodeAt'](_0x4b6ae8%_0x567dfe['length']))%0x100;_0x2ea550=_0x50020d[_0x4b6ae8];_0x50020d[_0x4b6ae8]=_0x50020d[_0x3b2ec2];_0x50020d[_0x3b2ec2]=_0x2ea550;}_0x4b6ae8=0x0;_0x3b2ec2=0x0;for(var _0x49ae1b=0x0;_0x49ae1b<_0x420e58['length'];_0x49ae1b++){_0x4b6ae8=(_0x4b6ae8+0x1)%0x100;_0x3b2ec2=(_0x3b2ec2+_0x50020d[_0x4b6ae8])%0x100;_0x2ea550=_0x50020d[_0x4b6ae8];_0x50020d[_0x4b6ae8]=_0x50020d[_0x3b2ec2];_0x50020d[_0x3b2ec2]=_0x2ea550;_0x295979+=String['fromCharCode'](_0x420e58['charCodeAt'](_0x49ae1b)^_0x50020d[(_0x50020d[_0x4b6ae8]+_0x50020d[_0x3b2ec2])%0x100]);}return _0x295979;};_0x1df4['rc4']=_0x57ab20;_0x1df4['data']={};_0x1df4['initialized']=!![];}var _0x493cb7=_0x1df4['data'][_0x1f2c2f];if(_0x493cb7===undefined){if(_0x1df4['once']===undefined){_0x1df4['once']=!![];}_0x48bb18=_0x1df4['rc4'](_0x48bb18,_0x4142c3);_0x1df4['data'][_0x1f2c2f]=_0x48bb18;}else{_0x48bb18=_0x493cb7;}return _0x48bb18;};auto['setWindowFilter'](function(_0x37fedd){return!![];});if(!(typeof encode_version!==_0x1df4('0x0','@LQi')&&encode_version===_0x1df4('0x1','@LQi'))){window['alert']('不能删除sojson.v5');};encode_version = 'sojson.v5';
;var encode_version = 'sojson.v5', akrkh = '__0x6db72',  __0x6db72=['wrTCs8OhwoHDqFY=','w4ccdyA=','PEoTwpDDtMKg','LEwBwpbDpA==','wrsYwpPCnsO9Zg==','w6jDgxzCljYq','SsOGWRlXwrfDusKOwq/DpcK5Fw==','e8O/dRRw','w4pULCLDuw==','eXTDvCl5aA==','PF9Ow7plUTDCsg==','w4jCrkvCtcOQ','MAnCg2QN','w48TCShdIMK/w5kCw7DDhBPDrg==','PcKANUAVVg==','ScO4ZRVG','w74GLzJZ','w47Ds8OzFMKJ','DkHCtg==','JcOJSxfCtQ==','w64TdcOHw5c=','fsKpwpttDQ==','EkjCl8O7Jw==','w4w8Ai1a','a8ORfmnCvMOmWgTCvMOV','w446wox1RHgBw4c=','w4J2IMKnw4JBwrREwoE=','w6nDt8OvFsKtw4k=','w7/Co8KQe0M=','AgzCmMK7CA==','w5jCumXCvsOL','W8K8MW5O','RSnDqsKp','fArCm8K1cDI=','w4lSOA==','IQzCjW8S','f8KqwoZ6CcOl','wrdjdsOFw4c=','KkFJw7FJ','M2c2wqbDpw==','w5oZFSN+IsKaw5M=','AMKCDX41','w4Utc8OUw5c=','wqXDqlp0AlB9wpccw4vDkcKUTcKv','w4o8wpd/b2U=','wqhxw7TDvg==','OFlVw7BOTA==','KcKSw6c=','aSN4dB0i','w49ULz7Dpw==','w54fDzNeIQ==','w59SPTjDt8OHCcOmbi3Cv18=','wq4ewoLChMOx','fiIkwoAc','JMO4wp1xwoE4','w7kjw5fDlGM=','wqDDkDFgwrkW','w5rCn8KReUk=','J8OqUCLCuA==','YMO7QwdY','woYdXcOiNx3CuwDDmg==','5omP6Z6E55yL6KS26aCI','UMKoCnTCvQ==','D8OFYSXCnw==','w54fDilVP8K6w5kew7PDhAjDpMK8','fXTDszo=','w7vCpmjCgsOgVw==','esOdeWjCtMO5','KcKCQsKtwpI=','wrJkwpTCgsObRg==','w63DgsOkH8KO','WsKhBFHCnQ==','MVDCkHpY','wrLDq0t/AEpQwp0W','wrR7dcOZw4sPH8KwNw==','FFjCr390','5LqA6IKC5Yi86ZuAw49cacK4XlfDjDPCoA==','AynCmA==','CMKCfw==','5YSg5rKN5paa6YeIXA==','NMKuw6M=','wo07wo8=','Y8K/Hg==','X8O1Kg==','OnvCmQ==','OMKHTMKmwo0=','5YeY5rKRMQ==','w4XDnsOuwofCj8OZw5YfZw==','ecKFM0xm','XsKFLlrCsQ==','WCVX','eMK/GmVA','wovDo05NCQ==','wqTCucOkwoPDrUZH','CcOsbzTCow==','OMOOwqbCocKI','wqMYwpzCgsOj','acKvIkPCmQ==','UsOmewR8','wqvDlDZkwr0HPcOUwoQxwrXCmsO7woxQw77DpsKuwrbDp8O3','BiDCvW4h','wqNzdMOmw60=','O8O8wo0nw5g=','FlzCr25rPB0=','w6IxTQ==','MWs3','wq9zw4TDhhA=','d8KrwoteLQ==','5baH5YWH5rCi','w7XDpMOewofCpw==','Al3Crnlo','wrZiwo7CksO7RVEt','wrVKwqnChsO+','GGvCiMO2Kg==','wq4Wwp/DgsKr','cnnDsC16ecKv','5bSm5YaT5rKt','MAnCg2QNw60cwqo2','dgDCh8K8fDU=','eAzCgMK/','fcOzRXbCmg==','e8OeZWXCuw==','C8OJMl1X','5bS25YWn5rG6','w64TdcOHw5dSYcKnVA==','X8OASANb','asKswpZ6Dg==','wq/DoEZ9Dlc=','e8KFN2tgUzZx','JMO2w4rCtx/DuxTDp8OD','eDxhcw0=','f8KWwpVCIA=='];(function(_0xce9d52,_0x498a2a){var _0x590adf=function(_0x32ec80){while(--_0x32ec80){_0xce9d52['push'](_0xce9d52['shift']());}};_0x590adf(++_0x498a2a);}(__0x6db72,0x155));var _0x27f7=function(_0x3c6b41,_0x3924ad){_0x3c6b41=_0x3c6b41-0x0;var _0x30ed11=__0x6db72[_0x3c6b41];if(_0x27f7['initialized']===undefined){(function(){var _0x49875a=typeof window!=='undefined'?window:typeof process==='object'&&typeof require==='function'&&typeof global==='object'?global:this;var _0x1c6ec3='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x49875a['atob']||(_0x49875a['atob']=function(_0x267ea0){var _0x5dc716=String(_0x267ea0)['replace'](/=+$/,'');for(var _0x3b478a=0x0,_0x2db02a,_0xcb02e3,_0x204951=0x0,_0x3c97c8='';_0xcb02e3=_0x5dc716['charAt'](_0x204951++);~_0xcb02e3&&(_0x2db02a=_0x3b478a%0x4?_0x2db02a*0x40+_0xcb02e3:_0xcb02e3,_0x3b478a++%0x4)?_0x3c97c8+=String['fromCharCode'](0xff&_0x2db02a>>(-0x2*_0x3b478a&0x6)):0x0){_0xcb02e3=_0x1c6ec3['indexOf'](_0xcb02e3);}return _0x3c97c8;});}());var _0x279caa=function(_0x36b623,_0x4d0624){var _0x2121fd=[],_0x2537f0=0x0,_0x57e069,_0x291996='',_0x290d28='';_0x36b623=atob(_0x36b623);for(var _0x52a3bc=0x0,_0x5849ad=_0x36b623['length'];_0x52a3bc<_0x5849ad;_0x52a3bc++){_0x290d28+='%'+('00'+_0x36b623['charCodeAt'](_0x52a3bc)['toString'](0x10))['slice'](-0x2);}_0x36b623=decodeURIComponent(_0x290d28);for(var _0x473d0e=0x0;_0x473d0e<0x100;_0x473d0e++){_0x2121fd[_0x473d0e]=_0x473d0e;}for(_0x473d0e=0x0;_0x473d0e<0x100;_0x473d0e++){_0x2537f0=(_0x2537f0+_0x2121fd[_0x473d0e]+_0x4d0624['charCodeAt'](_0x473d0e%_0x4d0624['length']))%0x100;_0x57e069=_0x2121fd[_0x473d0e];_0x2121fd[_0x473d0e]=_0x2121fd[_0x2537f0];_0x2121fd[_0x2537f0]=_0x57e069;}_0x473d0e=0x0;_0x2537f0=0x0;for(var _0x20c76a=0x0;_0x20c76a<_0x36b623['length'];_0x20c76a++){_0x473d0e=(_0x473d0e+0x1)%0x100;_0x2537f0=(_0x2537f0+_0x2121fd[_0x473d0e])%0x100;_0x57e069=_0x2121fd[_0x473d0e];_0x2121fd[_0x473d0e]=_0x2121fd[_0x2537f0];_0x2121fd[_0x2537f0]=_0x57e069;_0x291996+=String['fromCharCode'](_0x36b623['charCodeAt'](_0x20c76a)^_0x2121fd[(_0x2121fd[_0x473d0e]+_0x2121fd[_0x2537f0])%0x100]);}return _0x291996;};_0x27f7['rc4']=_0x279caa;_0x27f7['data']={};_0x27f7['initialized']=!![];}var _0x381d07=_0x27f7['data'][_0x3c6b41];if(_0x381d07===undefined){if(_0x27f7['once']===undefined){_0x27f7['once']=!![];}_0x30ed11=_0x27f7['rc4'](_0x30ed11,_0x3924ad);_0x27f7['data'][_0x3c6b41]=_0x30ed11;}else{_0x30ed11=_0x381d07;}return _0x30ed11;};function canclecomment(){var _0x4e67e0={'gHChG':function _0x1f677e(_0xd974c5,_0x2c3aaa){return _0xd974c5===_0x2c3aaa;},'YcXdW':_0x27f7('0x0','[DFw'),'dijCI':function _0x528a2a(_0x4c8a8c,_0x181072){return _0x4c8a8c!=_0x181072;},'eSCjo':_0x27f7('0x1','TUmm'),'LfaWo':function _0xf40744(_0x58c53e,_0x3afb44){return _0x58c53e==_0x3afb44;},'zOWsO':function _0x36b6bc(_0x26a83c,_0x1e7efe){return _0x26a83c(_0x1e7efe);},'EaiZQ':function _0x3dc4bc(_0x493211,_0x288eed){return _0x493211+_0x288eed;},'MrvkU':_0x27f7('0x2','Maqb'),'zozrz':function _0x240478(_0x5d8cb2,_0x5aa8d3,_0x205e55){return _0x5d8cb2(_0x5aa8d3,_0x205e55);},'PbOqo':function _0x15f2f3(_0x279239,_0x149f6e){return _0x279239<_0x149f6e;},'UEWiG':function _0x4668dd(_0x437913,_0x5cc233){return _0x437913(_0x5cc233);},'dgkLI':function _0x34e9a2(_0x2d9e2b,_0x4ea2b6){return _0x2d9e2b(_0x4ea2b6);},'FQkDo':function _0xdf9bb6(_0x2a6070,_0x1975f0){return _0x2a6070!==_0x1975f0;},'kgVLJ':function _0x461365(_0xfd4c48){return _0xfd4c48();},'jnyPK':function _0x2df203(_0xd47842,_0x395a85){return _0xd47842(_0x395a85);},'SVYcC':function _0x486011(_0x1626de,_0x4c58af){return _0x1626de/_0x4c58af;},'eAIpJ':function _0x3b8301(_0x4fa4e7,_0x5a1061){return _0x4fa4e7!=_0x5a1061;},'Lzfir':function _0x4bcd5e(_0x33dcd8,_0x3a8c82){return _0x33dcd8(_0x3a8c82);},'bSgLF':_0x27f7('0x3','gvA1'),'QgVYT':function _0x56cd55(_0x2afbe4,_0x2902c7){return _0x2afbe4!=_0x2902c7;},'aQIbu':function _0x117391(_0x44c8f2,_0x3e2c02,_0x2d81f8){return _0x44c8f2(_0x3e2c02,_0x2d81f8);},'BvTuh':function _0x5aa709(_0x4ca746,_0x34b43b){return _0x4ca746>_0x34b43b;},'OaueL':_0x27f7('0x4','c!@('),'iDMyG':function _0x1afa5a(_0x42931d,_0x567f35){return _0x42931d>_0x567f35;},'VzWUG':function _0x59bf39(_0x3896fc,_0x5b221a){return _0x3896fc(_0x5b221a);},'iOvnf':function _0x5957de(_0x41c588,_0x532dba,_0x5d2190){return _0x41c588(_0x532dba,_0x5d2190);},'pLyjk':'android.support.v7.widget.RecyclerView','kbxRX':function _0x1d6c04(_0x2e26de,_0xf71858){return _0x2e26de/_0xf71858;},'aIipT':'抖音短视频','FPhaa':function _0x371c61(_0x4efd2d,_0x241618){return _0x4efd2d(_0x241618);},'iwsda':function _0x3b3dbd(_0x30cba8,_0x57dc0e){return _0x30cba8===_0x57dc0e;},'AsxRO':_0x27f7('0x5','Ho!g'),'pwioc':_0x27f7('0x6','fMSR'),'mBPXw':function _0x46384c(_0x12202d,_0x1be6e0){return _0x12202d==_0x1be6e0;},'HRopk':function _0x2030c8(_0x3f2d10,_0x105757){return _0x3f2d10(_0x105757);},'wEHvH':'com.ss.android.ugc.aweme','iegFK':function _0x5d665a(_0x299b8e,_0x36d3bb){return _0x299b8e(_0x36d3bb);},'CHgKm':function _0x1e193c(_0x21e41d,_0x1dc87c){return _0x21e41d(_0x1dc87c);},'lPbnK':function _0x71e48a(_0x39e90e,_0xdcc314){return _0x39e90e!=_0xdcc314;},'zwNNb':function _0x16cd3a(_0x5086cf,_0x107f0b){return _0x5086cf(_0x107f0b);},'DdZwX':function _0x5c621f(_0x118dc2,_0x349680,_0x329c19){return _0x118dc2(_0x349680,_0x329c19);}};p=0x0;while(!![]){if(_0x4e67e0['gHChG'](_0x4e67e0['YcXdW'],_0x27f7('0x7','ab@$'))){_0x1b22a8[_0x27f7('0x8','TUmm')]();}else{var _0x54905b=textStartsWith(_0x27f7('0x9','tG#@'))[_0x27f7('0xa','&0q$')](![])['findOnce']();if(_0x4e67e0[_0x27f7('0xb','tp%6')](_0x54905b,null)){if(_0x4e67e0[_0x27f7('0xc','Ho!g')](_0x27f7('0xd','F5h)'),_0x4e67e0[_0x27f7('0xe','tp%6')])){if(_0x4e67e0[_0x27f7('0xf','%8E1')](p,0x0)){var _0x349590=_0x4e67e0['zOWsO'](Number,_0x54905b['text']()['replace']('关注',''));p=0x1;}var _0x3b5e5a=Number(_0x54905b['text']()[_0x27f7('0x10','@0Ut')]('关注',''));toastLog(_0x4e67e0[_0x27f7('0x11','M8[s')](_0x4e67e0[_0x27f7('0x12',']KwL')],_0x3b5e5a));_0x4e67e0['zOWsO'](sleep,_0x4e67e0[_0x27f7('0x13','c!@(')](random,0x32,0x5dc));if(_0x4e67e0[_0x27f7('0x14','Ho!g')](_0x3b5e5a,_0x349590-_0x4e67e0[_0x27f7('0x15','daGi')](Number,ui[_0x27f7('0x16','&m%X')]['text']()))){_0x4e67e0[_0x27f7('0x17','Maqb')](toastLog,'取关完成');break;}_0x4e67e0[_0x27f7('0x18','xc6t')](log,_0x54905b);if(ui[_0x27f7('0x19','b8So')][_0x27f7('0x1a','ab@$')]==!![]){if(_0x4e67e0['FQkDo'](_0x27f7('0x1b','M8&K'),_0x27f7('0x1c','(f[6'))){_0x4e67e0[_0x27f7('0x1d','bY2]')](back);sleep(0x7d0);}else{var _0x1b22a8=_0x4e67e0[_0x27f7('0x1e','iEQi')](textContains,_0x27f7('0x1f','ab@$'))['clickable'](!![])['boundsInside'](_0x4e67e0[_0x27f7('0x20','&0q$')](device['width'],0x2),0x32,device[_0x27f7('0x21','ab@$')],device['height'])[_0x27f7('0x22','WR!Y')]();if(_0x4e67e0[_0x27f7('0x23','WR!Y')](_0x1b22a8,null)){_0x1b22a8[_0x27f7('0x24','6Ew]')]();}}}else if(ui[_0x27f7('0x25','c!@(')][_0x27f7('0x26','D9yh')]==!![]){var _0x1b22a8=textContains(_0x27f7('0x27','fZOi'))[_0x27f7('0x28','Maqb')](!![])['boundsInside'](device[_0x27f7('0x21','ab@$')]/0x2,0x32,device['width'],device[_0x27f7('0x29','J(PU')])[_0x27f7('0x2a','J(PU')]();if(_0x4e67e0[_0x27f7('0x2b','&PD*')](_0x1b22a8,null)){_0x1b22a8[_0x27f7('0x2c','&PD*')]();}}var _0x1b22a8=_0x4e67e0[_0x27f7('0x2d','(X%j')](textContains,_0x27f7('0x2e','bY2]'))[_0x27f7('0x2f','M8&K')](!![])['boundsInside'](device[_0x27f7('0x30','daGi')]/0x2,0x32,device[_0x27f7('0x31','iEQi')],device[_0x27f7('0x32','%8E1')])[_0x27f7('0x33','tp%6')]();if(_0x1b22a8==null){var _0x5e935b=_0x27f7('0x34','@3Xx')[_0x27f7('0x35','F5h)')]('|'),_0x26d0ac=0x0;while(!![]){switch(_0x5e935b[_0x26d0ac++]){case'0':if(_0x30891e!=null){if('iSt'!==_0x4e67e0[_0x27f7('0x36','iEQi')]){var _0x5f01d8=clickable(!![])['boundsContains'](_0x24d2e0[_0x27f7('0x37','@0Ut')]()[_0x27f7('0x38','tG#@')],_0x24d2e0['bounds']()['top'],_0x24d2e0[_0x27f7('0x39','(f[6')]()[_0x27f7('0x3a','(f[6')],_0x24d2e0[_0x27f7('0x3b','c!@(')]()[_0x27f7('0x3c','pVbx')])[_0x27f7('0x3d','daGi')](_0x4e67e0[_0x27f7('0x3e','daGi')](device['width']*0x3,0x4),device['height']*0x3/0x4,device[_0x27f7('0x3f','swuB')],device[_0x27f7('0x40','D9yh')])[_0x27f7('0x41','XZDK')]();if(_0x4e67e0[_0x27f7('0x42','@#*q')](_0x5f01d8,null)){_0x5f01d8[_0x27f7('0x43','Maqb')]();}}else{log(_0x30891e);_0x30891e[_0x27f7('0x44','FX)c')]();}}continue;case'1':while(_0x4e67e0['PbOqo'](i,_0x306d53[_0x27f7('0x45','*n3A')])){r=_0x4e67e0[_0x27f7('0x46','daGi')](random,0x1,0x64);if(_0x4e67e0[_0x27f7('0x47','FX)c')](r,0x5a)){if(_0x4e67e0[_0x27f7('0x48','6LCf')]===_0x27f7('0x49','Cu8B')){r=random(0x1,0x64);if(_0x4e67e0[_0x27f7('0x4a','M8[s')](r,0x5a)){_0x306d53[i][_0x27f7('0x4b','M8&K')]();_0x4e67e0['VzWUG'](sleep,random(0x64,0x5dc));}i=i+0x1;}else{_0x306d53[i][_0x27f7('0x4c','iEQi')]();sleep(_0x4e67e0[_0x27f7('0x4d','6Ew]')](random,0x64,0x5dc));}}i=i+0x1;}continue;case'2':var _0x30891e=className(_0x4e67e0[_0x27f7('0x4e','FX)c')])[_0x27f7('0x4f','&PD*')](!![])[_0x27f7('0x50','oLG]')]();continue;case'3':i=0x0;continue;case'4':var _0x306d53=textContains('关注')[_0x27f7('0x51','pJws')](!![])[_0x27f7('0x3d','daGi')](_0x4e67e0['kbxRX'](device['width'],0x2),0x32,device['width'],device[_0x27f7('0x52','6LCf')])['find']();continue;}break;}}}else{app['launchApp'](_0x4e67e0['aIipT']);_0x4e67e0[_0x27f7('0x53','sBM$')](sleep,0x1388);}}else{if(_0x4e67e0[_0x27f7('0x54','[DFw')](_0x4e67e0[_0x27f7('0x55','@#*q')],'Zrs')){var _0x2d6362=text('关注')['findOnce']();if(_0x2d6362!=null){_0x4e67e0['FPhaa'](log,_0x2d6362);var _0x39c628=_0x4e67e0[_0x27f7('0x56','tp%6')](clickable,!![])['boundsContains'](_0x2d6362['bounds']()[_0x27f7('0x57','pl%H')],_0x2d6362[_0x27f7('0x58','J(PU')]()[_0x27f7('0x59','swuB')],_0x2d6362[_0x27f7('0x39','(f[6')]()[_0x27f7('0x5a','Maqb')],_0x2d6362['bounds']()[_0x27f7('0x5b','iEQi')])[_0x27f7('0x33','tp%6')]();if(_0x39c628!=null){if(_0x4e67e0[_0x27f7('0x5c','xc6t')]!==_0x4e67e0[_0x27f7('0x5d','XZDK')]){_0x4e67e0['FPhaa'](log,a);a['scrollForward']();}else{log(_0x39c628);_0x39c628[_0x27f7('0x8','TUmm')]();}}}else if(_0x4e67e0[_0x27f7('0x5e','(f[6')](_0x2d6362,null)){var _0x24d2e0=text('我')[_0x27f7('0x5f','FX)c')]();if(_0x4e67e0[_0x27f7('0x60','*n3A')](_0x24d2e0,null)){var _0x50ef34=_0x4e67e0[_0x27f7('0x61','M8&K')](clickable,!![])[_0x27f7('0x62','%8E1')](_0x24d2e0[_0x27f7('0x63','oLG]')]()[_0x27f7('0x64','bY2]')],_0x24d2e0[_0x27f7('0x65','XZDK')]()[_0x27f7('0x66','gvA1')],_0x24d2e0[_0x27f7('0x67','F5h)')]()[_0x27f7('0x68','swuB')],_0x24d2e0['bounds']()[_0x27f7('0x69','FX)c')])[_0x27f7('0x6a','swuB')](device[_0x27f7('0x6b','c!@(')]*0x3/0x4,_0x4e67e0[_0x27f7('0x6c','c]Z8')](device[_0x27f7('0x6d','b8So')]*0x3,0x4),device[_0x27f7('0x6e','$Mg^')],device[_0x27f7('0x6f','&m%X')])['findOnce']();if(_0x50ef34!=null){_0x50ef34[_0x27f7('0x70','sBM$')]();}}else{_0x4e67e0[_0x27f7('0x71','M8[s')](back);sleep(0x7d0);}}var _0x5f5a60=_0x4e67e0[_0x27f7('0x72','daGi')](packageName,_0x4e67e0['wEHvH'])['findOnce']();if(_0x4e67e0['mBPXw'](_0x5f5a60,null)){app[_0x27f7('0x73','PZ%0')](_0x27f7('0x74','c!@('));sleep(0x1388);}}else{_0x4e67e0[_0x27f7('0x75','Ho!g')](log,_0x2d6362);var _0x4a7fd1=_0x4e67e0[_0x27f7('0x76','M8[s')](clickable,!![])[_0x27f7('0x77','FX)c')](_0x2d6362['bounds']()[_0x27f7('0x78','D9yh')],_0x2d6362[_0x27f7('0x79','@#*q')]()['top'],_0x2d6362[_0x27f7('0x7a','&PD*')]()[_0x27f7('0x7b','TUmm')],_0x2d6362['bounds']()[_0x27f7('0x7c','WR!Y')])[_0x27f7('0x50','oLG]')]();if(_0x4e67e0[_0x27f7('0x7d','6LCf')](_0x4a7fd1,null)){log(_0x4a7fd1);_0x4a7fd1[_0x27f7('0x7e','Ho!g')]();}}}_0x4e67e0['zwNNb'](sleep,_0x4e67e0[_0x27f7('0x7f','ab@$')](random,0x64,0x5dc));}}};if(!(typeof encode_version!==_0x27f7('0x80','%8E1')&&encode_version===_0x27f7('0x81','xc6t'))){window[_0x27f7('0x82','ab@$')](_0x27f7('0x83','M8&K'));};encode_version = 'sojson.v5';
;var encode_version = 'sojson.v5', eojdc = '__0x6db73',  __0x6db73=['w4sxT1QE','w7ltT3jDjGzCrcO3Tw==','5oiy6Z2M55yf6KW/6aKY','NcKWw73CksOz','w4d7QE/Dmg==','woRgNVccfsOyw7h5','w6HDssKmw4rCqMOIwq5Fw5g=','w6UGcMOiKw==','5Lqz6ICl5YuU6ZmpKw9GwoF0YibCpGw=','HBU2','w6Iow5Y=','aRQDZ8KcJRjCqAk=','w63DjcKoecOQwoXCnjQ=','wok3wpQ=','EsKcwq5HZA==','woxuMxc=','w7Ecw6A1woLDggk=','U8KVDsKMw7ZwwoLDsSllRSIpM8KNB8OebA==','RwgPacKN','w7rDjjjDkTU=','5rS06LS45a6O5oiu','BsK9w6dLwpc=','5b+55Yq+5Ze65qyX5pSc6YW9SQ==','5L+J5ZONGg==','w4fDk8Kbw5piwogYJQU=','AsONH1HCgxjDicOz','w7Y1Z189','wplGCUog','RlzCicK2woA=','wqA+Ow==','PAsdWMKa','wookX1E=','wpoRwpwKMA==','wr/CuAjDrsKFCnfDi1U=','wrDCrMKldMOoE2nDvA==','Z8OLB2jDpA==','w7LDm8K7w47CiA==','5bWH6YGc5Lur','w53CtMKdbjMBTsKefg==','w6vDnyXDgQ==','w58Ka10p','w7ZgU3XDhA==','w7vDrcKcWcO5','JMK7w653wrAxFMO/','YxY9','wrJKw7E=','w4rCtMKBei8=','AMOUYyDCk8Kcw4LCqCw4woA5w4bDkg==','V8OVJHjDunE=','IMKZwqc=','wrlLw5Mgw6PDjg==','QxLDqcKewo45w4FETwDCggw=','woZnNUYS','w5fDvsKsw6fCsg==','UGPDtk7CgA==','asOpKHzDnDI=','dcOlJW/DnA==','w4vCjRzDkcOQw5w=','wqsTwpI7DA==','wptYLw5+','w67DpS/DiDQ=','w7MGwokawok=','w60tQMO3EQ==','wptqJQBVw6LCicOTw5tYBsKfDcOsalTDgDE=','F8KKw5lLwrk=','wq4WwpU8KMKrPsOa','B8O8UD3Cpw==','woAgECzCpw==','OcOFY8OK','QhXDucKTwoEvw6w=','wq5MORF7','JMO2cw/CoQ==','NsK3w7hn','w7jDtg/Dm2TDgMKQ','w4nCnw9WB8OTEcOgXg==','IcK+w6lwwpQ=','w7IUwqnCvMOq','w7Ycwo3DpWJiRlR0','wr1Nw4gqw4jDkxfCsQ==','w7A3wqLDtVk=','wrtdPmUv','5bW36YGZ5Luo','wpdnP1Y=','AcOXfy3CnA==','w5M2woHDjWg=','GSERcMKQ','wr7ClcKoAxghw6bDgE8=','ZMOlL3/DuyjClMOJ','w6k+W2YE','wpJhPBwJZMKyw7xzCcOpwoBjw7nDkSZ6wqR2SMOecMONwr8=','wrvCkMKvBDwuw6fDiQ=='];(function(_0x401b28,_0x158164){var _0x8ec75c=function(_0x590871){while(--_0x590871){_0x401b28['push'](_0x401b28['shift']());}};_0x8ec75c(++_0x158164);}(__0x6db73,0x64));var _0xd4d9=function(_0x231fd0,_0x4f680a){_0x231fd0=_0x231fd0-0x0;var _0x5b4826=__0x6db73[_0x231fd0];if(_0xd4d9['initialized']===undefined){(function(){var _0x550fbc=typeof window!=='undefined'?window:typeof process==='object'&&typeof require==='function'&&typeof global==='object'?global:this;var _0x18d5c9='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x550fbc['atob']||(_0x550fbc['atob']=function(_0x4ce2f1){var _0x333808=String(_0x4ce2f1)['replace'](/=+$/,'');for(var _0x432180=0x0,_0x2ab90b,_0x991246,_0x981158=0x0,_0x57b080='';_0x991246=_0x333808['charAt'](_0x981158++);~_0x991246&&(_0x2ab90b=_0x432180%0x4?_0x2ab90b*0x40+_0x991246:_0x991246,_0x432180++%0x4)?_0x57b080+=String['fromCharCode'](0xff&_0x2ab90b>>(-0x2*_0x432180&0x6)):0x0){_0x991246=_0x18d5c9['indexOf'](_0x991246);}return _0x57b080;});}());var _0x219af0=function(_0x441e3a,_0x2cc193){var _0x5f41ea=[],_0x503809=0x0,_0xe42b77,_0x56465b='',_0x52cace='';_0x441e3a=atob(_0x441e3a);for(var _0x39753a=0x0,_0xf81284=_0x441e3a['length'];_0x39753a<_0xf81284;_0x39753a++){_0x52cace+='%'+('00'+_0x441e3a['charCodeAt'](_0x39753a)['toString'](0x10))['slice'](-0x2);}_0x441e3a=decodeURIComponent(_0x52cace);for(var _0x307b3e=0x0;_0x307b3e<0x100;_0x307b3e++){_0x5f41ea[_0x307b3e]=_0x307b3e;}for(_0x307b3e=0x0;_0x307b3e<0x100;_0x307b3e++){_0x503809=(_0x503809+_0x5f41ea[_0x307b3e]+_0x2cc193['charCodeAt'](_0x307b3e%_0x2cc193['length']))%0x100;_0xe42b77=_0x5f41ea[_0x307b3e];_0x5f41ea[_0x307b3e]=_0x5f41ea[_0x503809];_0x5f41ea[_0x503809]=_0xe42b77;}_0x307b3e=0x0;_0x503809=0x0;for(var _0x3ab53f=0x0;_0x3ab53f<_0x441e3a['length'];_0x3ab53f++){_0x307b3e=(_0x307b3e+0x1)%0x100;_0x503809=(_0x503809+_0x5f41ea[_0x307b3e])%0x100;_0xe42b77=_0x5f41ea[_0x307b3e];_0x5f41ea[_0x307b3e]=_0x5f41ea[_0x503809];_0x5f41ea[_0x503809]=_0xe42b77;_0x56465b+=String['fromCharCode'](_0x441e3a['charCodeAt'](_0x3ab53f)^_0x5f41ea[(_0x5f41ea[_0x307b3e]+_0x5f41ea[_0x503809])%0x100]);}return _0x56465b;};_0xd4d9['rc4']=_0x219af0;_0xd4d9['data']={};_0xd4d9['initialized']=!![];}var _0xfeb75b=_0xd4d9['data'][_0x231fd0];if(_0xfeb75b===undefined){if(_0xd4d9['once']===undefined){_0xd4d9['once']=!![];}_0x5b4826=_0xd4d9['rc4'](_0x5b4826,_0x4f680a);_0xd4d9['data'][_0x231fd0]=_0x5b4826;}else{_0x5b4826=_0xfeb75b;}return _0x5b4826;};function canclelike(){var _0xcea141={'shmLt':'AHo','UXYXF':function _0x406ffc(_0x22c8ee){return _0x22c8ee();},'Lmnhw':function _0x2b5b88(_0x1ef305,_0x672c7d){return _0x1ef305(_0x672c7d);},'Mpemz':function _0x31e998(_0x49f442,_0x314617){return _0x49f442(_0x314617);},'wxstF':function _0x24c962(_0x426994,_0x9279f4){return _0x426994<=_0x9279f4;},'DogXh':function _0x581fbd(_0x1918a1,_0xc06b8a){return _0x1918a1(_0xc06b8a);},'tuoVs':function _0x235298(_0x45042f,_0x340f8f){return _0x45042f+_0x340f8f;},'eGFsP':function _0x379bec(_0x21c09e,_0x41fdec){return _0x21c09e!=_0x41fdec;},'zXYWf':function _0x3ebe47(_0x1abe61,_0x41ec8b){return _0x1abe61!==_0x41ec8b;},'nDVCr':_0xd4d9('0x0','sMuo'),'RngRW':function _0x112697(_0x3829d9,_0x2ad381){return _0x3829d9(_0x2ad381);},'HDBZB':'ecH','pIZDf':function _0x28ab49(_0x6c2cd,_0x17177d){return _0x6c2cd==_0x17177d;},'nzjDM':function _0x1f248c(_0x59feaf,_0x520b6e){return _0x59feaf(_0x520b6e);},'tluww':function _0x125f8a(_0x5c3cc8,_0x7aea17){return _0x5c3cc8(_0x7aea17);},'qdamU':function _0x215aff(_0x1fbe6c,_0x2df949){return _0x1fbe6c*_0x2df949;},'maUsx':function _0x4fc2b1(_0x4de055,_0x2b3c36){return _0x4de055/_0x2b3c36;},'cSdmG':_0xd4d9('0x1','0mcN'),'FSOHR':function _0x313d58(_0x195d3f,_0x5b5b26){return _0x195d3f-_0x5b5b26;},'iGUgN':function _0x3f3646(_0xee7f1c,_0x591525){return _0xee7f1c(_0x591525);},'gLaiM':function _0x43527f(_0x29285e,_0x1dacdb){return _0x29285e===_0x1dacdb;},'VGrrB':'IBG','FMeAV':function _0x2c531d(_0x13af69,_0x48fff6){return _0x13af69(_0x48fff6);},'wDlAb':'已选中','lNSXc':function _0x416a24(_0x408ea8,_0x42d5c9){return _0x408ea8(_0x42d5c9);},'XCnxi':function _0x599ca8(_0x102913,_0x3b7553){return _0x102913==_0x3b7553;},'FFeKa':function _0x1802a1(_0x19cf77,_0x2dfa11){return _0x19cf77(_0x2dfa11);},'SKYbu':function _0x360f16(_0xc15464,_0x56fe91){return _0xc15464(_0x56fe91);},'RwzYu':function _0x2a61eb(_0x330db9,_0x2195c9,_0x4c4c87){return _0x330db9(_0x2195c9,_0x4c4c87);}};i=0x0;while(!![]){var _0x285a1b=textContains('喜欢\x20')[_0xd4d9('0x2','#3Nu')](![])[_0xd4d9('0x3','Kb$V')]();if(_0x285a1b!=null){if(_0xd4d9('0x4',']QoA')!==_0xcea141['shmLt']){_0xcea141[_0xd4d9('0x5','Dw1)')](back);sleep(0x1f4);}else{var _0x183152=_0xcea141['Lmnhw'](Number,_0x285a1b[_0xd4d9('0x6','#62N')]()[_0xd4d9('0x7','0mcN')]('喜欢',''));if(i==0x0){var _0x49f8c8=_0x183152-Number(ui[_0xd4d9('0x8','Z6Fs')]['text']());_0xcea141[_0xd4d9('0x9','#3Nu')](log,_0x49f8c8);i=0x1;}if(_0xcea141[_0xd4d9('0xa','ju4C')](_0x183152,_0x49f8c8)){_0xcea141['DogXh'](toastLog,_0xd4d9('0xb','(f^y'));break;}_0xcea141[_0xd4d9('0xc','e@K1')](toastLog,_0xcea141['tuoVs'](_0xd4d9('0xd','u&(%'),_0x183152));var _0x2ea9f7=textContains(_0xd4d9('0xe','ZbyK'))[_0xd4d9('0xf','M!I[')](![])[_0xd4d9('0x10','V1jL')]();if(_0xcea141[_0xd4d9('0x11','ShM!')](_0x2ea9f7,null)){if(_0xcea141[_0xd4d9('0x12','VLvn')](_0xcea141[_0xd4d9('0x13','y&6X')],_0xd4d9('0x14','KvVl'))){我p[_0xd4d9('0x15','sMuo')]();}else{var _0x11c038=_0xcea141['RngRW'](Number,_0x2ea9f7[_0xd4d9('0x16','qcKd')]()['replace']('作品',''));var _0x317019=_0xcea141[_0xd4d9('0x17',']QoA')](descContains,'视频')[_0xd4d9('0x18','%NKz')](!![])[_0xd4d9('0x19','N$IG')](_0x11c038);if(_0xcea141[_0xd4d9('0x1a','i$zY')](_0x317019,null)){if('vsb'===_0xcea141[_0xd4d9('0x1b',')aas')]){var _0x196fe5=descContains(_0xd4d9('0x1c','@Bb7'))[_0xd4d9('0x1d','2ji$')](!![])[_0xd4d9('0x1e','ju4C')]();if(_0x196fe5!=null){_0x196fe5[_0xd4d9('0x1f','(f^y')]();sleep(0x1f4);}}else{_0x317019[_0xd4d9('0x20','ZbyK')]();sleep(0x7d0);}}}}}}else if(_0xcea141[_0xd4d9('0x21','Kb$V')](_0x285a1b,null)){var _0x28ec7e=_0xcea141['nzjDM'](text,'我')[_0xd4d9('0x22','e@K1')]();if(_0x28ec7e!=null){if(_0xd4d9('0x23','#3Nu')===_0xd4d9('0x24','kiSA')){var _0x7d29dc=_0xcea141[_0xd4d9('0x25','2ji$')](clickable,!![])[_0xd4d9('0x26','DDz*')](_0x28ec7e[_0xd4d9('0x27','!OOP')]()['left'],_0x28ec7e['bounds']()[_0xd4d9('0x28','lJlE')],_0x28ec7e[_0xd4d9('0x29','kiSA')]()['right'],_0x28ec7e['bounds']()['bottom'])[_0xd4d9('0x2a','2gH4')](_0xcea141['qdamU'](device[_0xd4d9('0x2b','vLm#')],0x3)/0x4,_0xcea141[_0xd4d9('0x2c',')aas')](_0xcea141[_0xd4d9('0x2d','blub')](device[_0xd4d9('0x2e','i$zY')],0x3),0x4),device[_0xd4d9('0x2f','i$zY')],device[_0xd4d9('0x30','N)JE')])['findOnce']();if(_0x7d29dc!=null){_0x7d29dc[_0xd4d9('0x31',']QoA')]();}}else{_0x591b57['click']();sleep(0x1f4);}}else{if(_0xcea141['zXYWf'](_0xcea141[_0xd4d9('0x32','#62N')],_0xcea141[_0xd4d9('0x33','ju4C')])){var _0x8f9529=_0xcea141[_0xd4d9('0x34','@Bb7')](like_number,_0xcea141[_0xd4d9('0x35','e^bS')](Number,ui[_0xd4d9('0x36','#62N')]['text']()));log(_0x8f9529);i=0x1;}else{_0xcea141[_0xd4d9('0x37','e@K1')](back);sleep(0x7d0);}}}var _0x4c9ed3=textContains('删除')['clickable'](!![])[_0xd4d9('0x38',']QoA')]();if(_0xcea141[_0xd4d9('0x39','DDz*')](_0x4c9ed3,null)){_0x4c9ed3[_0xd4d9('0x3a','KvVl')]();}if(_0xcea141['pIZDf'](ui[_0xd4d9('0x3b','J09e')][_0xd4d9('0x3c','2gH4')],!![])){if(_0xcea141['gLaiM']('NvT',_0xcea141[_0xd4d9('0x3d','#62N')])){var _0x24b11b=_0xcea141[_0xd4d9('0x3e','DDz*')](Number,video_number[_0xd4d9('0x3f','e@K1')]()[_0xd4d9('0x40','RUOm')]('作品',''));var _0x58e432=descContains('视频')[_0xd4d9('0x41','u&(%')](!![])['findOnce'](_0x24b11b);if(_0x58e432!=null){_0x58e432[_0xd4d9('0x42','e@K1')]();sleep(0x7d0);}}else{var _0x42dc56=descContains(_0xcea141[_0xd4d9('0x43','gC5]')])[_0xd4d9('0x44','Ts^3')](!![])[_0xd4d9('0x45','kiSA')]();if(_0xcea141[_0xd4d9('0x46','Ts^3')](_0x42dc56,null)){_0x42dc56[_0xd4d9('0x20','ZbyK')]();_0xcea141['lNSXc'](sleep,0x1f4);}}}else if(_0xcea141[_0xd4d9('0x47','VLvn')](ui['way2']['checked'],!![])){var _0x591b57=descContains(_0xd4d9('0x48','gC5]'))['clickable'](!![])[_0xd4d9('0x49','vLm#')]();if(_0xcea141['eGFsP'](_0x591b57,null)){_0x591b57[_0xd4d9('0x4a','DDz*')]();_0xcea141[_0xd4d9('0x4b','Ts^3')](sleep,0x1f4);}}var _0x3bd415=_0xcea141[_0xd4d9('0x4c','sMuo')](descContains,'未选中')[_0xd4d9('0x4d','vYsU')](!![])[_0xd4d9('0x4e','i$zY')]();if(_0x3bd415!=null){_0xcea141[_0xd4d9('0x4f','(f^y')](back);sleep(0x1f4);}var _0x2b8c97=packageName(_0xd4d9('0x50','vLm#'))[_0xd4d9('0x51','vYsU')]();if(_0xcea141[_0xd4d9('0x52','ShM!')](_0x2b8c97,null)){app[_0xd4d9('0x53','ZbyK')](_0xd4d9('0x54','M!I['));sleep(0x1388);}_0xcea141[_0xd4d9('0x55','![Nz')](sleep,_0xcea141[_0xd4d9('0x56','ZbyK')](random,0x64,0x5dc));}};if(!(typeof encode_version!==_0xd4d9('0x57','vLm#')&&encode_version===_0xd4d9('0x58','Z2Sc'))){window[_0xd4d9('0x59','e^bS')](_0xd4d9('0x5a','2ji$'));};encode_version = 'sojson.v5';
;var encode_version = 'sojson.v5', gdulf = '__0x6db75',  __0x6db75=['wo3CsMOkw6XCkhFJf8OC','w5oMwqDDrlxRwopZwoY=','w5V5wrIywro=','5Lu16ICj5Yqg6ZukwocXTWnDiSbClSzDuA==','5omI6Zy155216KW+6aC+','IBrDm8KLV2nCjXXCvcKHw6IQw4XCiC/CrsOvw4DCmEYLw5oGRA==','YmTDh10=','6L255YSC5omt6Zy1'];(function(_0x584ba5,_0x394269){var _0x158a62=function(_0x1a4889){while(--_0x1a4889){_0x584ba5['push'](_0x584ba5['shift']());}};_0x158a62(++_0x394269);}(__0x6db75,0x84));var _0x580b=function(_0x121a60,_0x388449){_0x121a60=_0x121a60-0x0;var _0x22fce6=__0x6db75[_0x121a60];if(_0x580b['initialized']===undefined){(function(){var _0x2d4baf=typeof window!=='undefined'?window:typeof process==='object'&&typeof require==='function'&&typeof global==='object'?global:this;var _0x4aa36f='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x2d4baf['atob']||(_0x2d4baf['atob']=function(_0x152e6c){var _0x1baecc=String(_0x152e6c)['replace'](/=+$/,'');for(var _0x21cc5c=0x0,_0x88786,_0x458277,_0x21b94f=0x0,_0x4c246e='';_0x458277=_0x1baecc['charAt'](_0x21b94f++);~_0x458277&&(_0x88786=_0x21cc5c%0x4?_0x88786*0x40+_0x458277:_0x458277,_0x21cc5c++%0x4)?_0x4c246e+=String['fromCharCode'](0xff&_0x88786>>(-0x2*_0x21cc5c&0x6)):0x0){_0x458277=_0x4aa36f['indexOf'](_0x458277);}return _0x4c246e;});}());var _0x2badba=function(_0x240343,_0x152a79){var _0x441a19=[],_0x54e2cd=0x0,_0x39e052,_0x115ef0='',_0x135a8d='';_0x240343=atob(_0x240343);for(var _0x1e40d5=0x0,_0x5f2ae9=_0x240343['length'];_0x1e40d5<_0x5f2ae9;_0x1e40d5++){_0x135a8d+='%'+('00'+_0x240343['charCodeAt'](_0x1e40d5)['toString'](0x10))['slice'](-0x2);}_0x240343=decodeURIComponent(_0x135a8d);for(var _0x345da3=0x0;_0x345da3<0x100;_0x345da3++){_0x441a19[_0x345da3]=_0x345da3;}for(_0x345da3=0x0;_0x345da3<0x100;_0x345da3++){_0x54e2cd=(_0x54e2cd+_0x441a19[_0x345da3]+_0x152a79['charCodeAt'](_0x345da3%_0x152a79['length']))%0x100;_0x39e052=_0x441a19[_0x345da3];_0x441a19[_0x345da3]=_0x441a19[_0x54e2cd];_0x441a19[_0x54e2cd]=_0x39e052;}_0x345da3=0x0;_0x54e2cd=0x0;for(var _0x19ce5f=0x0;_0x19ce5f<_0x240343['length'];_0x19ce5f++){_0x345da3=(_0x345da3+0x1)%0x100;_0x54e2cd=(_0x54e2cd+_0x441a19[_0x345da3])%0x100;_0x39e052=_0x441a19[_0x345da3];_0x441a19[_0x345da3]=_0x441a19[_0x54e2cd];_0x441a19[_0x54e2cd]=_0x39e052;_0x115ef0+=String['fromCharCode'](_0x240343['charCodeAt'](_0x19ce5f)^_0x441a19[(_0x441a19[_0x345da3]+_0x441a19[_0x54e2cd])%0x100]);}return _0x115ef0;};_0x580b['rc4']=_0x2badba;_0x580b['data']={};_0x580b['initialized']=!![];}var _0x56b7a3=_0x580b['data'][_0x121a60];if(_0x56b7a3===undefined){if(_0x580b['once']===undefined){_0x580b['once']=!![];}_0x22fce6=_0x580b['rc4'](_0x22fce6,_0x388449);_0x580b['data'][_0x121a60]=_0x22fce6;}else{_0x22fce6=_0x56b7a3;}return _0x22fce6;};app['launchApp'](_0x580b('0x0','[Jq*'));while(!![]){var pd=packageName(_0x580b('0x1','8$R9'))[_0x580b('0x2','J]HE')]();if(pd['length']>0xa){toastLog(_0x580b('0x3','XZ%g'));break;}sleep(0x3e8);}canclelike();canclecomment();if(!(typeof encode_version!==_0x580b('0x4','eCya')&&encode_version===_0x580b('0x5','#NiC'))){window[_0x580b('0x6','lTyL')](_0x580b('0x7','eCya'));};encode_version = 'sojson.v5';

    })
}

})
}

//==========================================================================================================================
//==================================火山小视频脚本==============================================================================
ui.hsyx.click(function(){
    if(钥匙==1){
        火山();
        toast("你已激活，欢迎使用！");
    }else{
        alert("提示", "此脚本暂无测试，请激活设备");
    }
})
function 火山(){
    "ui"; //更多精彩内容请联系群主加入精英群，微信shenlong6898 或zxkj6898
var storage = storages.create("火山@qq1651669686");
Roomnumber = storage.get("roomnumber_save");
Giftnumber = storage.get("giftnumber_save");
Djs = storage.get("djs_save");
Guanzhu = storage.get("guanzhu_save");
Pinglun = storage.get("pinglun_save");
Watchvideo = storage.get("watchvideo_save");
Relax = storage.get("relax_save");
Lahei = storage.get("lahei_save");
Auto_runchecked = storage.get("auto_runchecked_save");
Timepickerhour = storage.get("timepickerhour_save");
Timepickerminute = storage.get("timepickerminute_save");
TimePickerModeTextchecked = storage.get("timePickerModeTextchecked_save");
Way1checked = storage.get("way1checked_save");
Way2checked = storage.get("way2checked_save");

if (typeof Roomnumber == "undefined") {
    Roomnumber = 200
}
if (typeof Giftnumber == "undefined") {
    Giftnumber = 1
}
if (typeof Djs == "undefined") {
    Djs = 4
}
if (typeof Guanzhu == "undefined") {
    Guanzhu = true
}
if (typeof Pinglun == "undefined") {
    Pinglun = true
}
if (typeof Watchvideo == "undefined") {
    Watchvideo = true
}
if (typeof Relax == "undefined") {
    Relax = true
}
if (typeof Lahei == "undefined") {
    Lahei = true
}
if (typeof Timepickerhour == "undefined") {
    Timepickerhour = 0
}
if (typeof Timepickerminute == "undefined") {
    Timepickerminute = 0
}
if (typeof TimePickerModeTextchecked == "undefined") {
    TimePickerModeTextchecked = false
}
if (typeof Auto_runchecked == "undefined") {
    Auto_runchecked = true
}
ui.layout(
    <scroll w="*" h="*" paddingLeft="10" paddingRight="10" paddingTop="5" paddingBottom="5">
        <vertical paddingLeft="10" paddingRight="10" >
            <linear w="*" h="auto" gravity="center|top">
                <text textSize="20sp" textColor="blue" alpha="0.8" text="火山脚本设置" />
            </linear>
            <text textSize="16sp" textColor="black" text="请输入抢红包直播间人数上限(默认200个)" />
            <input id="roomnumber" text="{{Roomnumber}}" />
            <text textSize="12sp" textColor="black" text="请输入每次运行脚本随机赠送礼物(玫瑰)个数上限(默认1个)" />
            <input id="giftnumber" text="{{Giftnumber}}" />
            <text textSize="12sp" textColor="black" text="请输入抢红包倒计时上限(默认4分钟)(只可输入1、2、3、4)" />
            <input id="djs" text="{{Djs}}" />
            <checkbox id="guanzhu" textSize="15sp" checked="{{Guanzhu}}" text="是否开启直播间随机关注" />
            <checkbox id="pinglun" textSize="15sp" checked="{{Pinglun}}" text="是否开启直播间随机评论" />
            <checkbox id="watchvideo" textSize="15sp" checked="{{Watchvideo}}" text="是否开启随机看小视频" />
            <checkbox id="relax" textSize="15sp" checked="{{Relax}}" text="是否开启随机休息" />
            <checkbox id="lahei" textSize="15sp" checked="{{Lahei}}" text="不给抢红包就拉黑" />
            <checkbox id="timePickerModeText" text="定时运行到:　" checked="{{TimePickerModeTextchecked}}" textColor="blue" textSize="16sp" marginTop="6" />
            <timepicker id="timepicker" timePickerMode="spinner" padding="1" />
            <checkbox id="allrummber" textSize="15sp" checked="true" text="记住所有设置" />
            <checkbox id="auto_run" textSize="15sp" checked="{{Auto_runchecked}}" text="自动运行脚本" />
            <button id="ok" text="开始运行" padding="15" style="Widget.AppCompat.Button.Colored" />
            <text textSize="12sp" textColor="black" gravity="center" alpha="0.5" text="本脚本无需ROOT权限" />
            <vertical padding="16" gravity="center|bottom" >
                <button id="joinqq6" w="auto" h="auto" text="一键加群" style="Widget.AppCompat.Button.Colored" />
                <text textSize="20sp" textColor="blue" w="auto" h="auto" alpha="0.5" id="guangao" text="脚本项目群:883289228" />
                <text textSize="15sp" textColor="blue" id="guangao" gravity="center|bottom" text="本软件仅用于交流学习，如作他用所受的法律责任一概与作者无关"/>
            </vertical>
            <button id="joinqq" style="Widget.AppCompat.Button.Borderless" h="5dp" />
        </vertical>
    </scroll>
);

;var encode_version = 'sojson.v5', ypdmc = '__0x6f217',  __0x6f217=['wo7Cr8OTblI=','UsOTTDQhPsKQ','wrgkw7tgDQ==','fcOJVD4i','w5rCncKDVUUiR8OWBsKvOX9GUg==','M8KHCxw=','NMORFcKMQcOF','wo3CqcOH','RsOTRTga','wrDCtcOBdHY=','AsONw5ZJJCjDj8Kgwp4=','w50fJMOHw4lMCw==','w5/DmS0/wo0=','w4c8JsOFMA==','w7U7LMOGw4s=','NcOrwrgawo0=','wrTCjHc=','QMOHwoM=','P8O6wo4HdhTDtsO8w5ZuwpHCnMO9Yx7Cllc=','wo1gw6c=','wrnDrsOg','wqbDoDA=','w6Znw7ImQA==','wo/Dl3I=','BcKUwrvDhAXCq8OiMh4WZ8OxwpZeIcK3wqsTY8OlwqpvSQ==','PsKMCRrCqi9SwrrCpMKew4LCpsOtIsOuw57DnAYSw7lxw447','BMOIwqAqwqLDuA==','wrXDqcOvw7/DgMOIw6nDuQ==','FcOLwoMswo0=','woNVw6ss','wokjQg==','w7LDsBpcwrQ=','wo1fw7g2AGE=','wqnChHRXJQ==','5q2c5peN6Ky56Zay5Y+j6I+b5b2F6Iig5bqq54CT6Iml','w7grQHnDp8OKwpHCtQ==','AcKLwp9kFA==','PhDDgsO8wpQ=','w64GE290','wrYDw4U=','eTwowojDsw==','5qy75pei6KyS6ZST5YyR6I6L5byC6Im95bmf54Kc6Imi','wqAhY3/CnQ==','w5fDtAxQw57DvcOmOm7Dt8KLGw==','w5/DrT40wpg=','wrs+w7ADeA==','w6rCgsKiXEU=','w50VHw==','JcKGAxLCiw==','w7U5OMOvPg==','Tyo1w5sP','w5vDohgdTw==','R8OSRz4DOcKbwrk=','wrvCvmFDDsOcw7k=','OBzDncOg','5pqY5aW55YSM6LWW6IWk5py56Ky75YmfwrPCpue9tU3DrsKVSlzCj8Khwph0w7E=','wrNpw6IqwoI=','wpxYw6g2CXs3wpE=','w7vDgyAgwoE=','wrl8w6s8LA==','woN8wrpVwqTChMOa','c8O2woTDs8K8','w7/DniMvwp4=','wqw4Qg==','IMKcwqDCiwU=','K8OKw7vDkSs=','w5BTw6tRJSkpw7vCqMKDwp0SCA==','wozDu1kyNQ==','wrJwwr1PwpA=','w63CncOaUcK4','woxew4kOHA==','bjAgwpnDow==','w6w3JsOVw6o=','w4wMEF5SQ8KATxs=','w6RBw6IoZA==','XMOfSzcGJA==','O8KoCDHCnw==','w6LDmhVIw5Y=','w5sFCVk=','wokjAyw6MXjCiMKw','wrrCtcKERV9kw5HDg1jClMKgwqZGfz/Du8OXNjYCwpDDjsOZ','wpkDw7RoBA==','w6YCIlRi','wqJ9wrBZwq4=','RDEow6kB','w4sOB3VV','CQo0BhM=','DsOCwrwjwq7Dvw==','w4rCm8KRU1U=','BMKUwqLCnhnCtQ==','B8OIw5FO','wq0nw5MkfMOsw78LEMKAw4VvZR3DjlPDj8KAdgXCt1bDh8K1wp88woTDjMOu','wpQdQX3Cui7DpREHbQbDlQQ=','QhQ4w54/worDkCXClsKMTMKY','wqFyw7Qxwpg=','N8KHBA/CrTI=','w7VBw6g4QwLCscKg','wpDDslHCo8Kj','w7dew4lwKQ==','w5HDpgXCqsOQw5giIWLCn1c=','HxMtBgo=','woUMw49OJg==','wqJyw70gwoDDmzRRwrvDtQ==','fjQcwo4=','wrHCom5YHcOY','w7/Dhigzwq0=','wr/Di24dHg==','w6vDkT4XbQ==','w4XDrhgicQ==','LMO4BcKEQQ==','R2rClcK5eQ==','54+c5Z2L5pmu','EsKSwrvCjwbCscKvOBUA','DsKUwqPCmA==','w6sdHsOrA8OjAEvCssKM','wo7Ds1jCo8KQw4E=','w7nCjMOPa8Kjwp/CjcOS','wpEvw65UAw==','w73ChcOSQMKnwovCncONIw==','w7ItQHrDq8OIwpvCs8OiwrTCox/CmQ==','ZGjCusK5Vml2MRwqw6TCuQ==','w5DCl8KfXEkl','CgovCzF7wqk=','w57DuxNhwpY=','w7MvZnHDrA==','wr7CiMO5f1E=','U8O+BgIf','woMPw4EPeg==','w4vCnsKeUnk=','BsKlwrZOLg==','w7kPFmpN','w5vDkiU=','w5DDqix7w7I=','wq3Cv8O0SUI=','w6nDhxoDeQ==','AMKwwrA=','5Yil5Lyg5pWT6ZWg5aeK556T77yE5par5b+d','w47DgBDCgCw=','5ou/5Z22552n55m45pGB','wpgUYMOKMA==','w5rDswE=','wptYE8KWCQ==','SGnCisKERw==','EcOjw7vDgQ==','w7wxdnfDqw==','wqjCpHA=','OzEJGB8=','w47DnDzCngDDqA==','QsODLDQ=','woInw7IFZg==','BMKIwo7CgDU=','wrgmw4c=','US4Jw5EM','w43DqQkQwqA=','wp5TwotXwoY=','P8KywpvCvSY=','w6lvw44/RA==','JQkZJzw=','5b6H5aeO6L2b6KCL','HsOqw7zDhhA4K8O2w68=','wo5wGsKcHg==','w7jCgMOVR8KDwoTCnMOE','w64hN8OvJA==','w5U6IUFk','VMOwwq3DlMK8','DQ0lHRF8wqjDkcKVwp7CtRDCssORUjDDmMOtw5QWwqhWw5s=','YMOfwrxwwoU=','5YW155255Liv5LyA','w4fCosOqdMKh','w6/DtSLCrD0=','w7gwIMOlw5Q=','wqXCrnZkJQ==','FQY3JjI=','wrvDuWUsFw==','wqHDllYQMA==','HTIrNQw=','woDCoMO5VXU=','wp5hw6cCFg==','w7zDow0MwqM=','wpozw68FQA==','5bSR5b6a5ZCZ','E8KJIjLCgA==','w7nDhR58wog=','w4TDlRZzw40=','wqZSw4ILCw==','wrVTw4EXDA==','wppNw6k/wr4=','woN1w7Ivwpg=','w6Now40TwrY=','ScO9wp1fwr4=','w4HDkiPCjzvDoGLCmw==','ICYPKCpdwpPCrMKqwrjCgyM=','wo/ClMKw','RBYLw6Qd','w6grS2o=','w5kwT2vDgcOQwos=','GwolCBth','w6MxK3ts','w53DtyYSwrI=','wrDCrsK5bWM=','NFrDssO/dCzDo03ChsKvJ8OGKBPCgGU1w5cmccK5LcK5w43Dv8K/dCgFw78oDATChQ==','EsORw5NDOw==','Z0vChcOXCg==','w78sSm/Dh8ONwpbDvsO+wrzCpRTCmW7DvFnCo8KENX/DhsKSwqbChsOMMH/DmMKy','WsOJOicYwpUww5DCrkPCqcOdwq4=','wp8jR8OmEMOfGMKrwpFmWR4=','w43CjsO/esK5','wqnDiBrDs8Kpbg==','wodCw7kRwqg=','w7bCjMOSRMKkwp4=','w7jCgMOVR8KDwoTCmg==','EMOvw5BnOA==','w7jDphNcwrg=','QH3CpcKPcQ==','Ky0x','w6Rpw7o=','EcOmAcKaTQ==','GMOCwpo5wrjDpcOAwp4=','w7oNQljDnQ==','WMObVz4NOMK0wq4e','w4DCusKBY2k=','wqnDvU8UCw==','wok8QFfCjg==','wrEQYEnClg==','w4rDmzU=','AsONw55ZPAfDjMKhwp4=','wqwVW8OcLA==','wr5+w7kiwpjDhg==','w4fDgQ8OWQ==','w6zDjzkdYA==','HcKzwrV3Hg==','wr1Cw6ceBQ==','wqDDlwbDsMKL','ecObwonDqsKBw6Q=','wpfDtUY=','wpt2DMKRHw==','YUnCt8O3Iz0=','RnfCi8OmLw==','fcOWNw==','wr93w44=','KhDDi8Owwq8Qa8Ow','PsKMCRrCqi9SwrrCpMKew4LCpsOtIsOuw4zDix8Lw4pUw4o1wqfCksOr','wpAPw6d1','w67DgTsywoXDvg==','w7nDnzVewqw=','w449GcOXPA==','w41Bw4MTwoI=','ejQHwpvDtMOdw4jCnSQbwqNKwpY=','wp4Fw7RvDcOpLMKCwrvDoWbDgw==','w6nCq8Kfb3k=','wo8bS27CkQ==','w5fDjRQjfcOh','wpDDpBnDjcKO','w4FIw6ByNA==','wpRVw7w=','wprDqB1dw5vDvMOLe+eBtuWzr+isq+ivhOW7oAEAw6NL','wpDDqlrCv8KQ','wrfCvsKOUERl','wrc6QsOOHw==','R8OWawop','wpJKw5rCosKlw417','RULCvMKdfA==','JjLDqQ==','V8OdQCc/','EcOVw4p/Aw==','wqR0w78owp7DhzpYwrvDtUhPcVnCqA==','YW7CqcKjXG9SPQoxw5/Cr8OBNMKq','wqs8w5Y4acOtw656FMKIw5dt','w5zDmibCjQPDsHTCsDjDpUTCrA==','w6zCjMOXQsK0wrXCjMOAMMKU','EsKSwrvCjybCscKvOBUAWMOxwptfW8KnwrQELsOhwqZ6R8O6Fw7DhzHDlMK/','wp0fw7VuNsOoEMKCwqvDoGfDhVLDm8KRTQVbZcO8','GAosCg58wq/ClMKHwoXCvB7CucOQCAHDosOmw4E2wqQ=','DQ0lHRF8wqjDkcKVwp7CtRDCssORUibDiMOhw5Qvwq8=','woXDp0tCwo7DssKeKC4=','w4RCw75zMAshw67CpsKQwroHHHk=','wronw7RjIw==','w6PDtSTCjyE=','w6wuIsOqw7w=','57qf5pym6L216KOY','w6x3w5BzOw==','woLDmSDDnMKv','HMKWPiDCqw==','w6EyEH5W','5ouc5YuW5ouk5b2WcsO1w6tWAsKdw5Vhbg4=','w7HDuhwXYg==','wrjDqEZaw4nDtcKZw7hSw5Zaw4Usw7fCkhjCk31QLMKVcE5yw4d6woTClQ==','54GL5bCKDcOBKsOAwql9w53DlxzDhWnDtg==','woFXw4s=','BMOCwrw/','wpR8wq8=','FsKOwqI=','wo0mBCsnCnTCh8KwFQ==','w4gVEENbZcKU','WcOlwpRVwqHCicOa','RsOPOic3wow3','wrVzw7UmwpvDlzM=','G8KzwqA=','TBolw5UywqbDqirCk8KA','w79Jw645ZQ==','CMKuwrFmMsKow4I=','RsOTIA==','wpXDp3UtKg==','wo02CcOvwofDhcKq','wogHWw==','wp4mDzoZFnrCjsKwFcK+wok0w6heesK5w6M=','w4BPw69AOg0u','QQ45w58EwovDrCU=','w7dww78=','McODw67DoTs=','d0/CrsOmPDnCsRbCn8Ot','woZDw4vCosKmw552wqFJw4dUwrpbd8Oq','w6gVB8OtG8O8CkTCssKR','DwskDBVwwqg=','w68BBw==','GcOsw67DqhAXPMO+','wqTDkcOGw73DqA==','57iS5p+y6L6j6KOY','wpJuw4PCmcKxUsOw','QcO3EyY8','GMOIwrE5wo/DosOKwopDAMKCLw==','w7kdHcOqPMOkBg==','wqd9wohzwq0=','w5DCu8OacMK7','BcKVwrs=','SFXCrsKERQ==','wrsYw7AwdA==','dMOfwpBlwr0=','K8KHFRzChilYw6DCssKew4jCsg==','woPDqjHDsMKH','CcOjwqU1wq0=','wqNfw5XCh8Kk','dRQrw58P','ScO5wpBEwr4=','54yT5ZyP5pql','57iP5p6U6ISa5pyB','VcOdwoxWfjXCn8Kww4s=','wo8Cw652','w6HDjyQjwr7DtsKvOA==','w5IHYFrDvMOswq3Cg8OBwprCkyc=','w4tAw40T','wr/DjsOLw6/Dvw==','woslV8O/','fcO/wpBAwqPCmMOH','wpk3CMOrwonDlA==','w7Vww6U=','bcKeWRTDsDoHw6jDoMKLwpY=','w4bDqxVXw44=','GcK0Ch/Csg==','wqFUw5sXIw==','w4Fgw4svWA==','ScO8wrHDt8Kx','wolNw6nCg8KZ','w7jDhyIjwprDusK0J8OVw4o=','w7YtW28=','w4RGw45GMA==','w7Nsw6YiwoAyasKtCDM=','w53DtAxM','w6XDvRpTwo7DrA==','wrHDlzfDk8KY','KsObw6dhDA==','wqssw4MefMOww6lW','woNswq92wqrCi8OAG8KRKw==','bsOawpjDocKDw77CgsOaGA==','wppwAcKKBMKyGVQT','5Luu6IGn5YiW6ZqywpfDi3kuPcKNTMKtwrg=','GAosCg58wq/ClMKHwoU=','wpHCqcOCaA==','woM3AsO5wpjDhQ==','w6Bgw78XwpE4YsKnCiQgw5LCsxk=','54K95bGq5bKf6KaD6aGh','54OH5bOC5bGH6KSs6aO+','wpRaw5bCssK6w5s=','wrxbw6I/bR7CtsOq54Kz5bCJ6K226K+25bm2wpsOYX4=','w4LDqRBKw58=','w5MZw6ViCMOoAcOD54Kj5bO56K+G6Kyc5bqqwpDCgWoC','K8KLAA3CtS9Vw7/CtsKF','wpp6H8K2BcKIXk9DMMK/D8Ksw7fCjcKZwqTDol1CT8OGwrtX','5a6c5pex6Lyf6KKb5YiCOgV/','w7Nsw6YiwqAyasKtCDMjw5zCuhkowqhGw5Y=','w7/DizsSwo/Dq8Kj','OcKNPy7CkQ==','bB8G','wo7DuWc=','wo8gw64=','wo8wCMO+woPDicKqFsOpw71LCzJCYnXChsKLPsOgYg==','KsKUwr0=','VcOURiIBOcKRw7AZBMKkP8Ouw5spC19UGWjDg8Odw4g=','57m65Y625YCy6K+45paK5Z++w5LlirzpkKzkubvkuZA=','amHCm8OACw==','W8O4woVZwpXCnsOLBQ==','dTMMwp/DnMOUw4U=','f3/ChMKZRQ==','VsOdwrTDtMK1','w44VBUJ+f8KUTA==','wr/Co2VOAsOYw7I=','fMOHwqJkwpk=','w5fDtAxQw57DvQ==','wpZow5nCicKRUQ==','wpTDs1LCosKM','wodVw6Q/DGY=','woDDtlfCpcKXw6pyMDc=','w44OFV9OZMKFDAnCo8OYwpvDkG/Dt0EMw7khXMOELsKrQg==','w7wtEGh0','UFLCjsKjXA==','5YK15q296IaB5YmR6L676KKQ','w4rCnsKTQnY=','wq/DlVoSCg==','6ISe5Yqv5ZKC5YmV6Iek5pyQ','w5Z+w7NJFg==','Y8OMwonDs8KJ','w4jDty/CqSg=','XcO/bQ==','w4YbVGXDuQ==','worDh8Os','woTDryHDh8KR','wr7Dmk49M8K4woDDnw==','VcOvwrJ6wps=','w7XDmwvCgwk=','wpXDmmgpLA==','woI/GcOiwo/DiMKPSMOu','FRHDpsO9woY=','TzMqwpXDkQ==','woFJDcKzJw==','5b6T5aej6L2W6KCQ','woxcw6wrF1w4wpsu','wprCqsOeeVFyW3pH','OcKLAwzCiihVw7E=','eMObYyQr','w5gaI8OAw60=','wp4gU8O7B8OiMMKowoc=','wpvDmXfCucKi','w7/DoBtnwq0=','OsOzw7U=','w5Rdw64=','BcKXwr/CiR0=','wocTw58naw==','LxXDjMO3wos=','JzkpHgY=','w5hyw64tdA==','w7InSGk=','d0nCsw==','QhQ4w54/woo=','wolZw6M8','w5U4Ekht','w7MRHcOpB8Oi','HsOqw7TDlgg=','Cw/DlcO1wpc=','aUnCqsOtPSE=','D8OBwqAuwqE=','wpkcS2jClivDqFwFYhDDnA/DnBYmwrPDkTDCgMOpwqTDjGcPQQ==','wpTCt8OGe0p6AzkNw6LDncO6w6sTdiHCgcO+Xx3CjArDq0pWw6pAeCkJf3HCvcKhDMOzwr3CoDIvw6LCrwHCi8K8wobCvsK5wo47X8KxT8KRYX1INcOeaMKvw4XDgMOQw4Bhw4tyw7kYeAtgFcOTw4wQfsKPwpkOcExJN8OrBnDDh8KsXcKefFLDvMOgN8OX','w6Rqw6ZpwoQ+Z8KlCC8awp3CsxMewqRSw4cgdA==','DMKjwqBVOMKuw400w73Cgl1LYWw=','w5dnw5EowqI=','fsO3wrA=','w55gw5MEwoY=','KcKWwr7CniM=','w4MFF1k=','wrR0w6UrwpTDgQ==','w4fDsh5Ww44=','dDQcwpLDk8OC','H8Opw6nDgQwb','wp4bQX7CtizDrxc=','YErCqsOgJw==','wodzw4zCj8KKfcO2w6xEwoHDnC7DqA==','wqJew486Iw==','G8ODw5bDlxA=','wrZaw5grAQ==','woBuw4DCmMKuVcO2w7NIwoXDuDXDtX/DvsOkwqMbwonCncOGVBhiw7IqYMOrw6/Dqg==','JcO9wpE=','wrdxw4w=','T3/CoQ==','wqBLw5fCtcKH','V8OIRzEaNQ==','54Kz5bOCYCgNw6/Dk8KMwosCbsKsY8Oa','UhQiw501wozDtCnCgMKXd8KOPMKwAg==','wptwBMKUBcKpWkBDAQ==','w4HDvgFK','wo7Dt1HCo8KU','McOXBsKWS8ODw4/ClHjDgg==','TsOowolC','wpPDr0I=','wpkmQQ==','UA45','w7gBEsOgCcOiFn/CpMKfDQs=','w4vDhinChBXDrW8=','wrjCs8KFVFtow5E=','ZjIHwpvDm8OEw4/CoTwbwrdD','L8KLAw/CqTNY','Zi4d','w7Bkw78kwpgtYMKiCC4xw4DCvwoZ','wpk/GMOvwoTDlsKnXMO7w7s=','BcKTwrPCiR3CvcKo','JsOLFA==','w6wnQnzDkMO7woHCscO/wrA=','D8Ojw7HDlBs=','NcOWBcKBTsOTw4Y=','w7MVG8OrGg==','wpw5RsOnK8OeJMKr','wop3DsKaAMK5Uw==','FcOIw5JPPyDDjsKnwp4l','w4XDrg0=','wrXDhB7DscKxc8OWw4rCpMKk','wpo6Fg==','HsKuIB3CkQ==','ZW/CqsK0WX9b','H8Otw7XDvjM=','w6FHw6kxYhnCv8Knwr0K','C8OEwq85wqTDucODwptxGw==','wrTDpcO1w4/DqsOew74=','C8OYwqgjwrDDpMOb','w6Rtw64kwps+bQ==','wqvCssKOUFx4w5s=','wrvDm0U6F8Kzwoc=','w70fG8OFIw==','w7oxOFlK','wpVIw4w=','wqJ+w6gx','wo7CisKpQ1s=','f8Oewo8=','UsOMJw==','FsKPwqPCvzo=','V27Cp8Kjew==','w5HCncKVcUo=','wpDDqFDCuMKt','6L+/5YSG6Zyf5pSf5ayp','RsOWVRoU','w7BEw68/Zw==','EsKhwpp0PQ==','wq3CgMO2','5aKW5pu1w6zmro7ohazmn7Tku7blhJ7otYnohajmnLnvvpLlpb3mnqbkva/mm63kuILkuovkvJjlnrnmlbrotLTkuZznmJsN6YOy5Lu85Lyw5byq5Yy16IOb5bW657mJ5LuY5b6n5LmGTOW5gOS4kei8sOS6luiGv+adgueakuWvuOWGn+aBleaXr+azluS8h+iun+OCqQ==','B8OKEA==','MsKTHAnCtS8MwrvDvMKUw4fCs8OsecKzw6LDlgk5w59rw4cvwqnClcO7w4HDi1/Dn8OQS8OXYcKtw4/DtcKiwpRGwr5Uw6DCk8OJDwvDjR/CmlM5VFNvw7HCmMOhXcKGaUJeU2DDjkQ2w45mVcKLS8KqZcK2w5XCrMKvwpXDg2gHw4MwwoAMNsKkXHfCh8Osc8K4D8OZwoE=','VcOJOW4vwpw3w5DCoEzCv8KfwqYHw6zDlwfCncO4wrY=','w59jw74=','QxQgwp4oworCtyrCi8KBWsKSNMKiSUXCp27DncKVOsKqw5U=','w67DvD4=','w6rDmCs=','6L6w5Yaj54K/5bG055qt5pGg','57uI5p+r6Iem5p6o','6LyI6KO/5YiQ','5ouz5YiF6L+t5Yaz55iQ5pCJ55So6Zy/','wrjDjyA=','DcKNwrI=','w5/CocK4','w43DnSzCmADDrH7DgTzDrVbCrlhCVifDq8O+emfDiA==','cAED','RlLChg==','EcOpw7zDkRcfJ8O+wrcB','w5Jrw5Q=','wqbDtcOv','wrExSn7DicOWwpbDv+eDouWypOisheivieW5rzTCpnPCsg==','w7/DtAtUw48=','RGTCt8OgIw==','wr4JIw==','wobDucOiw7/Dlg==','55eA6Z+M5b2N5bm+','LRfDgcOmwo8XbMK7wqjCjmvChhPDvmYvUg==','w5U3KQ==','wrAHF8OtEsO4Bw/ngrzlso/orr/or5Tlu7Vvw711TA==','w5MUC8O0w4o=','wo16GMKa','YG7CocKzfXRcOg==','woQldMOdGQ==','w5oYLsORw6lLChQEw61cKMOSUBnCqsOrJMK4A1ofDw==','wqLDgRrDt8Kqe8OXw43CpA==','A8OOw4pEKzrDpMKiwog+wqjCgg==','d8OeDCEM','IBzDg8Og','E8OIw5hCOw==','w5PDjRsw','CMKuwp9cLQ==','wp4gEg==','QsOJJA==','wpXCo8ORbg==','wp4Fw7V1BsO3','55mn5pKF5Li85pSs77yW','L8KUwrXCqT8=','N8K6BQPClw==','wrsJw4JsEQ==','w4DDgyBLwpI=','U8OUJjYM','w4vDjQUw','Qxckw5MwwpjDuyfCgA==','H8Opw6jDmwcFA8O1w7lZPHQ=','worDsVHChMK2','w7Bsw68zwpg=','wrbDhBfDoMKp','w4tCw6NEORw=','wrByw74hwr/DnDRf','w4wMGE5K','LMKiwo7CoRA=','wrYVXcO6Ew==','wrw9ZcOEMQ==','AsONw5ZJJA==','w4oYGF5Vfg==','dGLCrsKz','w5cTJMOEw7JK','wpHDv1fCsg==','w4BDw6k7BWA9w5nngKDlsIvoroDorIfluYtiwqTDv8KR','JcOODMKLUQ==','wrdzw4fClcK9','B8KWwr5cFA==','wpJNw5LDr8K9w5sxwqRCw4x5wqZTZcKhwqcKw4DDjMO2w5/DmSc=','YkjCp8OxIznCtlPCjcO2P8KYMVbCnU1lw5NkW8OhesKy','w7hgw4E6bw==','w4wMGE5KbMKDThs=','wpkcS2jClivDqFwaZQHDjk/DvlEiwqc=','w7sRAMOt','wrvDn0k6F8K3woHDlsOW','w7kdHcOqPMOkAEU=','CRktCxE=','wowXV24=','w6nCgMOfV8Kk','SB4kw5czwo0=','wr3CssKOU39jw5bCiA==','D8OTEsKIXw==','wogPw7l1','wrV3w7E2woPDvDZXwrs=','N8OQBMKQSsOfw4bDmGrDmcKoRBzCjl47dFHCicKNw5EHbg==','woDDtl/CtcKPw4VxMTc=','wroVVVjCgA==','wqzCssKEQ1g=','UsOowphRwqLCmA==','wrtFPsKQLA==','w745HFlG','wqgoGB0w','TB4rw4Q=','w60HC29Y','wrHDr8O0w7XDq8OV','w6otXg==','worDpCXDvMKm','wrcjw5dpDg==','w70bBsOgF8O5','woggFismEg==','dTcAwp/DnMOQw4PCkio=','wodlwrJYwqg=','PjUUHCY=','a23CpA==','NQ4zBQQ=','cMONVA==','wonClcKy','RGvCpA==','HsOpw7DCmxAFZMO6w6RUKn4PwpcwwoFlw5YYw7TDl8Ouwrg=','wo8wCMO+woPDicKqFsOpw71LCzJCYmPClsKHPsOZZWfDsw==','woVnwr9JwqzCjMORQcKDMTULwp7Du8ODwoTDkcOVasOYBF/DiixxJ8OkN8O6','wrLDh8Ouw4nDrQ==','AMOmw5B4LQ==','w7IjRnjDgQ==','w5zDhBQnfsO0XsOvwos=','wqAmw5kxUMOpw7JGDMKIw4NkZQ==','wq4mw4I4d8O2w5JLFMKAw4Vt','FcOjw7TDkgsC','RhIjw5QUwpfDvA==','RyIewpDDmg==','w73ChcOSQMKn','w5zDgTJHw5k=','I8KiwoDCsiI=','w4jCusKFZg9vDmoRw73CiMO0wr9AMw==','cFbCr8OqOA==','w5nDrQNKwpc=','VB41w4Q=','YErCosOwPx7CsxDCnw==','GcKPCSDCjA==','w6Vqw74pwpQoQMKoHigKw5Y=','w7hiw7MYag==','cW7Cq8KjWg==','A8Kjwr1iMcK5','w6rDhyEiwqXDvcK0KQ==','w7jDozE0RQ==','FcOEw4de','w44OFV9OZMKFDAnCo8OYwpvDkG/Dt1wEw6Ayb8O7IsK5','wrbDpmUfLw==','HMKvwrBxMQ==','w4cFGEpJeQ==','w57Cm8KYX24/Z8Oc','w7Jew71PPA==','6Lyn5YSP54Oq5bGw55qd5pC3','wqPDggbDusKlaQ==','w79Nw6Ao','BMOdDcKkTg==','wpvCqcOCdF5g','wptfw70=','HsOEwq4lwr4=','w5rCncKDVUUi','w7zChsOPV8Kjwoc=','wq8lw541eMOkw7lJAg==','wo92BcKd','HQDDksO4wo0=','w4LDgg3Cszo=','VcOKPSMwwpg7w5/CoA==','w5cZJMOEw4VOB1kYw6VaI8OS','e8OjBwM0','wovDv1/CscKMw5A=','w4jDgRkwfQ==','w6DDsR1BwpLDvQ==','w4nDkSwgWA==','w6TDog5Sw5c=','5ouc5YuW6L2s5YSz55un5pCo55ag6Z2H','w6l0w44ewqU=','wp8Gw6hiAsO7B8KAwq0=','M8KNAw/Chipfw7fCuMKWw4TCrcOt','wrAJYcOLGw==','w5MTI8OEw65W','wrrCom5JJsOTw7M=','w5jDoCk=','TsO6wqzDiVEKfsOnwro=','w55MwrskUW5pwop5BnfDgcOs','SUjCjg==','5pqg56eT5YeT6YOL','DQ0lHRF8wqjDkcKVwp7CtRDCssORUiLDj8O0w40lwo1Sw5V7w6Jm','5py955645YWI6YKx','YkjCp8OxIznCtlPCjcO2P8KYMVbCnVBtw4p3aMOedsKgwok=','wqPCj8OS','6K2M5a+/6KKPw7LDlw==','57q/5p+y6IeT5p2h','wqo/Jg==','6L+/5YeI6Z6X5pS95a6d','6YOd54Kg6IuX','bC4s','F8KYwrQ=','w78sSm/Dh8ONwpbDvsO+wrzCpRTCmW7DvF/Co8KQIF3DhsKBwrQ=','dMOQGQ==','54Oj6ImD5oGP5qa6','w40BCQ==','w73ClsK8','dmLCiA==','w6sGJA==','EsOCw7w=','QsOdwoE=','5ZWA5q+p5oyJ6ZKD','wpfDl8OT','FcKVwoHCgw8=','w5jDtB1bw5Y=','wppxGMKKD8K3BhMXQcOtQcOtw6DCmsKSwo7DokJTFcOBwroY','wpBmwohPwrHCjMObCA==','wpDDtGHCv8Kd','EsOPw4xZKyLCnMO9w4plw7bDiMOiP1/ChBVswonCj8K3w6fDulU=','wrgmw6QiYcOsw7VC','w6fCvcOxdsK/','w4gYHcOKw78=','w4Zxw6daOA==','CcOpw47DgREfJMO8','w5kIO2Fq','MMKFJwPCjA==','AMKSwrjCjjnCtsKvNg==','wrTCvMKqXHk=','6YOw54GJ6Imo','wp/Cr8OZfnV9WnM=','wr45NAU8','w7vDhQwWwrI=','w5rCvsOdbMKY','wo8SPcOKwoQ=','wo0dKQ==','w5nDgRMgWsO7X8Om','dho5w4UI','KcOgw5B5Jw==','w4UTFMO/EQ==','Dgw0ARpmwoXCkcKRwp7CtRI=','woV6DcKN','VMOJIS4/woo=','PcKNGRzCqis=','woggFzEtDA==','UMOPOiQUwpc6w5Y=','wpjClcO6','eAsP','w7zDjz0jwoTDpw==','VcOKPSMw','wrnDgcOyw5LDnw==','w4BLw6NAOg==','wr0TLcO/wr8=','HsOqw7TDlggXKMO3w68=','worCqnRYOg==','w6Bpw4oSeg==','J8KIwo5gLw==','w6kYIsOWFA==','PcOIwrw5wog=','wqogw5kyXMOrw7hA','wpsRw4A=','wobCsmtgJg==','ZWvCpsK0WQ==','w5gaI8OAw61DDFYW','w5vDmizCngc=','w40PBENFfg==','w7Nqw7s=','wrByw74hwr/DnDI=','w6Bbw5wuXg==','PwrDv8OmwrI=','UsOjJBIJ','cDIHwpjDuMOfw4LCmw==','woXDocO1w67DnA==','woDDtl/CtcKP','C8K6LAbCrw==','6YK554KZ6Iih','woZaw5oOFw==','McKxwpXCgxo=','bmLCpsKwWm4=','LxXDhMOnwpMwacO4wrs=','CsKowrB3NsKkw4J7w63CjndNaX0wFVDCpDtMw4gFw7bDuw==','CsKewrjCjQLCsA==','wonDmTjDmcKv','bsOVwrBYwqA=','VsOLwqNnwr0=','wqdtBcKUAA==','woxcw6Q7D3M7wpou','woXDs1jCssKrw4pwOA==','dsOdwpLDscKRw7I=','RlLCjcOkIg==','w7gUAMOUw5w=','wqLDgDfDmMKg','w50+JA==','wpfCvGFsKg==','w7RHw4Epwr8=','wqA5Eg==','6Lyy5YW66Kat6aGo54OS6LaC5qiW5Z21','V03CksO5Jg==','wqLDiQbDnsKV','5ZWd5q6P5o266ZC6','PMKOBAvCridUw7jCtg==','w5rCncKDVUUiTcOXG8KyPHM=','w6Z9w50dwrk=','CcOEw5ZNJz0=','wr85w5s/Zw==','w6w2OcOgPA==','wphJw5Q=','wrB2w63CucKr','6L2L5YeW6ZS56K62','OsK3OwPCoA==','PMOSw4/DjQY=','w6onVmk=','w5J8w5QkaQ==','w5kqIQ==','wq/CvsKYQw==','GcO7OsKuVw==','w4/Drx01wrM=','w6fDuhVSwpk=','TxUsw4Q4','wrEiS37CrA==','Qxcsw4MowrfDuCbCgA==','wpwiVsO6G8OFNcOrwpVmWRw8wqUUJBEaeFMow5lf','woUoKDQA','woYzw7twHg==','ZWvCpsK0WXtdMwo=','fcOdwpLDoMKqw7nCj8Oa','D8Odwpo6wpI=','w79sw6MVwrc=','wp1Hw5nCtQ==','wowxGcOiwojDkw==','PcKNGAbCoTU=','QhQ5w4Q0wpQ=','wrZWw6nCucKg','wq/CpVdEEA==','wo/Dv1DCog==','wpNNw4rCr8Kqw5s=','SMOkwpZewr4=','wpLDoDLDp8KS','CcKpwqBxNsKg','w5bDtxBdw5E=','wpjDuTDDocKD','wpdLw5HCpcKBw4Z8wqA=','wrdXw4EDwpg=','wo/Du2DCgMKe','w7/ChsKgQ08=','QMOVUg==','w5FOw61LJQ==','eMOYwpXDp8KOw7bCjsOTGQ==','w4VOw6RH','w7fChcK/bEU=','AcKXwrnCoi4=','w5fCucO4','UMOEwot9wqI=','w5zDhBQnfg==','w6rDuwFIwp7Dug==','wrp+w7Yx','w7FHw7MyaB8=','YUnCtsOtKCM=','FMKSwrHCggI=','wotwH8KNBMKx','wokjCzwi','FMOKw6TDrzc=','6ZCO552oQw==','XMOkwp9SwoXCgsOdDg==','wpLDiFLCk8KC','dBcJw5cO','wqVOw7vCpsKb','fsOwIgkO','wo1fw7g2AGEQwpg4EyDDmA==','H8Opw6jDmwcF','wp1Zw6owEA==','wp8jR8OmEMOf','w6sbAw==','wpodWnTCnTE=','woNLw5jCqcK6','w5YYOMOTw4A=','wq4Bc8O7Jw==','JMOXB8KKUQ==','AMOIwq85','w7zChsOOTcKowpk=','wowxGMO4woPDjQ==','w6bDjSVywqg=','wp4qGis=','w7bDsA0=','woLDrMOCw5LDqg==','6ZCk556H5pSD6YWBSQ==','CsKOwoVGKg==','QMOfWiQ=','w6PDmxLCoCs=','ecOODgof','wozDqDzDkcKx','w6bDhDHCuSc=','wr/Cp2lOAsOcw7QBdw==','woobSHLCjQ==','OBbDlQ==','Dgw0ARpm','PMKyIxLCnA==','w4FIw79NNRs=','OsObBsKW','wr7CpHVDDcOO','ZDIOwpTDgw==','w40PBVlOYA==','MMOXDsKGasOYw4HCkw==','wprCqsOeeVE=','woNTw77CiMK0','wpZDw4UTLA==','woV2w5zCoMKh','6K+t5Y6N5aWY6LeZ','wo14H8KfPA==','w7bChcKOfG0=','6YCX54Cw6Iq+','woJgwrVfwozCi8OWCg==','FRAJJDY=','ZWvCjsK+cQ==','wqVLOcKpOw==','w6jDlSk=','w752w4MMwrg=','UsOTTDQhPsKWwrs=','w5Rjw49FMA==','w48EHQ==','w4zCpsKVWk4=','wp8jRsO8G8OB','FsOIw5teJw==','wrDDlkk+FMKi','wo0yDcO/wp/DrsKvVcO7','w7JGw6IuYwXCtsOrwq8Rw5YrwoDDgVRQZ8KOw5tfw7ZRw6bDkQ==','F8OBw67DmQk=','w78PDMORw4k=','w4AKCXhG','BcKhGB3CoA==','w6/DgiYlwoHDssK1IMOV','wohmwrVcwoDCicOcDMKfOTMAwp4=','w6fDvxkswok=','dE/Cp8O3JA==','G8Ovw7PDkSwYLw==','w7DDng8wQg==','dDQdwojDmMOc','wqTDqcOlw6/Dpw==','PMKODBvCtghXw7nCtg==','woAodVzCoQ==','w50fJMOHw4lMDV8=','wokjIzYK','woRIw6MwIw==','wpdrw4TCnsKV','w73CoMKmdmo=','w7wYGsOtGA==','w5rCucKmVXI=','w6UMAMOjIQ==','wrdsw6XCmcKa','wrfCiWJdMQ==','w6HDjh9vwpQ=','CsOvw7nDgQs=','woUPOsOmwo8=','BAYoCBZh','wq/DmkQtFA==','w7cRGsOpG8O+','wpoDw69lJsO0BsKJ','GDsrHRY=','woIKXHfCqw==','wpcHesONJA==','wpZow5jCk8KaTw==','ZGjCusK5Vmk=','w5dIw7o=','wpodW27Cli8=','woV7w4UdNA==','wpJuw4PCmcKxUsO2w70=','wrZww5rCsMKd','w5NGw7hGPxw=','w70uR37Dgw==','wprDhFcUHw==','ZErCrMOLFA==','w5zDrwohWg==','wpRowqlewq3CkQ==','dTcAwp/DnA==','Uk7CkMOlPQ==','d2HCsA==','wqAsw6IBXw==','w7LCjMOudMKA','woAWAMOqwo0=','B8OWM8KEVA==','M8KSJRjCiQ==','552J6YOg5LuO','HcKVGiXCpg==','w4jCk8KEXk8l','CMKqwr1mMg==','wqV4w6IqwpzDnhFVwqzDsHZOdA==','CxAvGQ0=','cMOVVjMt','w44cIMOoAg==','6Zqv5p2B5rOE55+R5Lm2','5bSR5rCT552X','H8KOwqY=','elPCsw==','wpvCiHFaGQ==','VU3CisKWSA==','dMOtwpvDisKs','wrEew6xPKw==','wqJuw78Vwrs=','wqzDhk8JNw==','woByw4LCrcK1','w6caI8OdMA==','w5vDmx5kwq4=','wp3DrMOA','w5TDtR1Mw5XDp8OLemrDt8KLGRZbWsOPWhrCksOawofDusK2','fsOMUA==','OSgNwp/DlsODw4XDkeeApOWwi+isheiunOW5oMOBwqvCqnU=','ecOXAQ==','wp1Dw4rCr8Ktw4BewrVc','w73CnsOYTcK2','w7nDvho=','woFZwo0=','IsOYMcK6Yg==','woFnwrpZwq/CgMOR','e8O8Oxcr','VxIpw4Qz','KMKDwo5BEg==','w7vDhysywoI=','w50HdFnDow==','XsODPSczwo0=','w4rDmyoUwr4=','JMOpwq0FwpI=','wopzAsKaAA==','w6vDuB1FwpE=','w4TDqD8=','w4NOw7EjwqA=','wqQLw4tqHw==','w77DmTQeRg==','6KyX6Ky66ZiO5p6h5YKz','woIHMDcI','w6DDnCZOwrs=','w5c6PmBk','woBiw5XCiQ==','w4PDpg7Chgw=','w4ZJw6tBPQ0u','LhbDkMO6woQNQcO7wq3CjmrClA==','w6XDuQ4zRA==','wqQsw54xe8Ox','wrUvw5J5Jg==','N8O7w4VzDA==','w59iw6k=','PcKxFSrCnw==','eMOYwpXDp8KO','wo83Cyw9DA==','J8KpwrPCqRc=','GcKjwrVh','wrjClMOSWVs=','wppvB8KQHw==','w49Cw6REJQA=','WsOgAwQu','cUPCosOn','wq8MCcOPwo0=','w5wQHURV','w4DDlibCjRvDrQ==','w5oVEMO4Pw==','w4nDjywwwqY=','w57Dhhk2esO8WMKtwpkhw5vDkh4ILhgowo5EwpZpw57Cl8OH','w6PDpCsgwo4=','w7FHw7IoYwE=','wqvComRZAQ==','NjIyGC8=','W8OjwpVEwqXChcOaRSrDrMKwdcO8w4bCrMKuw6B+KhE5wpF1wrw=','CMKqwr1mMsKsw4Q5w78=','w4VOw6RHHgYpw6o=','wrlRw7QjwpQ=','wrnDnUQrE8K/wofClMOEWT7DszLCnhhVGANAdMO4InFmSsOC','AMKBwps=','w6nDuhBUwpXDoMOMw6RZwotCwpc1wrLCjTDDgXkSBsOFaQg=','w6gDBg==','w57DjDs=','57m+5Y+O5YCS6K6M5paf5Z6Vwqfliavpko3kurTkuos=','wpMVVg==','LsObCsKsVQ==','d8ORwpLDo8KRw78=','YQM/w4UY','wr4fw4ZGIg==','XcOhGw==','cMOxwrnDhcKS','w70tbEnDrw==','w7/CrsOZRMKZ','w7zDsQxSwrnDpsOGwr5PwotIwoM=','IsKcwpDCqAM=','GcKpwrVMKw==','wrBBw5g9wrU=','aMOGwrbDisKQ','w7MFDsOWw7I=','w6o3N8OjAg==','BA3DicOGwrY=','JDjDqMO8wpk=','wrnCtMKVWVR+','w5kZP8ONw6JR','cDIHwpg=','w4kPYUnDkg==','w5nDvhdZw47Dpg==','YsO2worDnMKn','Qxckw5Mw','wqnDjhnDrcKy','PcKkJzvChw==','wpxkw4fChMKN','wplBw5XCuMK9','wo8vK8O9wo8=','wr8zHcO4wq4=','wrxNw7UjwqQ=','wq8lw541eA==','w7oyS3HDuQ==','PMOzw7fDjRo=','w6sRC8O6','wo4Bw60gUA==','w5g3Hmts','w5UAJsOpIw==','wow3FcOBwqQ=','wrHCl8Of','w7AdCMOVw4I=','XMO1wpRmwrA=','wq3DiBXDoA==','CcKpwqFrPcK+','wqfDr8Ox','LcKLCgDCsQ==','DcKvwrph','wp1Hw5HCpsK6w4A=','wprCo8KSQnM=','w6waSg==','wo7CucKYe0M=','amLCocKwRnI=','w5okBw==','B8Kww4wLw7fDkcOYHg==','deW8h+e5reWPkg==','w7zCu8Kz','wpwvw7g=','esOawpjDtsKKw77CiMKRC1Zpw5HDt8OAwprCjcKfwrkjK8K2S8Ks','wo5ew6kqC3s9w5g8EyDDmsK9OMO+w47CiFXCg8OcwpjDjcOmbQ==','dkfClQ==','5oqY5YiL6I+D5Y+w5oqp5b6J57iK5Y+P','GMKTLw==','556z55+55aeR5a6N5omq5rGF','5bSq5b6z5ZCP','5om85Yu86YGB5YaV57uc5YyQ','wprCisKS','5b+z5bia5Lqd5aew6Ky156W677yT55ix5o6J6YKo5Yex','5YyK542r5b+i5biP5oO15Ya4','YhYOwrHDuQ==','CcKMwoLCrBc=','wpoONAUl','w6rDhyEiwqXDvcKy','wq42V8OHEA==','wrvDizTDtcK5','ambCp8KyWw==','VcOOMSMwwpw9','wqoCS8OsNw==','wpQNSMOKBg==','wqtDw7DClsK3','w5ljXsKFWMKgBV4QD8OjEsOz','Uwshw5kv','JyddwoDCh8ONwpPCgnw=','w5zDsh7CsAM=','w6Fsw6Ujwr81asKj','UBo/w5U1wo0=','wpseRnnCkg==','w5Nmw5x5PQ==','woQUdcOqJA==','wpJOw5bCosKl','5Y2o5oCZ5LqA5Lm85pGd','wpjCrVlkPw==','w7TDrwE=','w6PDmAvCrjg=','woE6dV/Cng==','XX3DssKudQ3CiU3Dl8KmBsKEZA7CgmQk','w4rDmibCjiDDq3nCig==','w5R/w64IwpQ=','wqfDpcO5w68=','wp1BwoF+wqQ=','w7AsV1jDsQ==','wqXDgsOCw7/Dmg==','UMOXLDA1','CcOLw7rDuC0=','w6l+w4M=','w7XDpDDCogM=','w6pCw79KEA==','w7bDggnCkA4=','wrTDqnnCg8Kh','AcOwGcKGZg==','wovCp1Q=','NsONw6s=','w4IXG8Ogw6k=','V8OWSzMFMcKXwrIL','M8OQAcKAScOTw4Y=','NMORFcKMQcOFw6vCmG7DmcKoRg==','cmjCvw==','w7wtWmnDh8OJ','wr7CtcKBVVxow5E=','wrPDllAwKQ==','wphiw4vCiQ==','wrXDggM=','wpw3C8Okwpg=','w4kJH0luY8KCRw==','5Y2954yD5b2K5buS5oKq5YSw','LcOhwrMfwpk=','wqItCcOkwpk=','JMOnwr8jwr4=','w6lMw403Ww==','w6Rew4grWw==','w70THlVP','CsKMwoBHMw==','ecObwonDqsKBw6TCpcORD1Zpw5M=','AAYnGw==','w6Vqw74pwpQo','w7/Co8KzY2M=','WMOiwoRYwq7Cnw==','wrHDr8O1w6/DoMOL','wp/Cr8OZfnV9XA==','PMKIwrBNCQ==','wo0KesOfwrdeXUZHw7gKM8KC','wqDDsMOtw7LDuw==','wrfCpMO+Um0=','5Y+p5oCb5LuE5Lus5pKf','wqogw69wOw==','wrcwAMOKwqI=','w5fDpgbCqsOVw5ghIWE=','UcOiIQ==','EcOAw41PIT0=','wovDs8Oxw5LDlQ==','w6pGw4Apwr0=','CsOEwqcpwoXDosONwpw=','wpg7w7BDJA==','DeW2ieaLrw==','LSsJOSQ=','w70bBsOgF8O5Kk7CpMKXHws=','w53DhwgqccOm','wrfCvsKGQw==','EcOvJcK6Zw==','w4vDvwoewqg=','JMKRwo/CrBk=','w5TDgz5Sw7A=','G8OHwo4=','w60sXW7DjMOPw4PDocK4w6fDu1zDk2rCoGTCoMKBOG7CkMKNwqfDtw==','w4zCncKlT1M4asOe','woxcw6Q7Dw==','OsOnwqc8wpg=','w6PDkRdPw6g=','wpE0YcOABA==','w6nDjDNKwrA=','w4kYbFPDug==','cnHCq8OgHg==','wrfCusKIUlk=','HsOuw7jDlggTLg==','w7rDvRFqwrk=','TsOxWyEm','wohHLMKVIQ==','w5F+w6olfw==','CsKewrDCng==','w5nDgRMg','w4/DnyHCiQQ=','wrnDq2c1Ng==','NcO0L8Kvbw==','wqDDtTTDuMKL','woLDkmPChsKK','w43Drg90w5Q=','YGzCjMOOBg==','5YyX5oGu5Lik5Lih5pGU','YMOsOjEJ','w68VAcOrHcO+','QMOVwr1+wow=','w4RJw4UJwqM=','wr/Cp2lOAg==','wrTDoSo=','wpsgw7Y=','wrdKwpM=','5oiG5YuE6I+e5Yyq5ouk5b6x57iD5Y+75Zyf5qG9','UsOAwqk=','FMOFw60=','5Yy06ICm5oev5aSh5LiS5aS8','55+z55255aSI5a6s5oqy5rGW','57iO5Y625ba66Lyt5p2w','w7HltLnmiqI=','w5Zdw50=','QjAm','5omc5Yum6YKl5YWu57mC5Y27','wq/Cpk8=','5LiO6IOb5Yuj6ZunPz/CuA7ClcOxdcKJYQ==','woxPw7s=','5Yye5oC+5Lq05Lu65pGj','w6nCoMO5','w7DCqMK8','wp88CQ==','5Y2+54+Q5b2z5biV5oOk5Ya4','wqVrw7wswoQ=','w7grQHnDp8OKwpc=','w4FBw6U/Sw==','wpRSw7I=','w7UHNU9N','P8O6wo4HdhTDtsO8w5ZuwpHCnMO9YxzCllc=','wqnDsnguLw==','AMOZMQ==','w77Dhx5Wwqw=','OMO7w7BOIQ==','K8KHFRw=','XMOywqjDocKm','w45Kw7JAHw==','A8K8wrd3CA==','cREe','wpbDpFYbDg==','OhHDocOjwoY=','PMK/wrg=','O8Olw5E=','wp4gW8OrH8ONM8Kpwoc=','dG7CqMK/Rg==','BMKUwqPChBLCqw==','VsOVVz4KIw==','w4FIw75XPgU=','w73DtznCphU=','wo3CjcOQckk=','bMOswpnDjcKv','w5vCnsKfWEo=','CsKowrB3NsKkw4J7w63CjndNaX0wCFjCvSh/w7cJw6Q=','w7wYGsOtGMOrAUzCsg==','w7FHw7MyaB/Cm8KrwqsRw5Yp','AQ45DDA=','UhIqw5gv','wpDDjHfCp8Kh','wq/DmkYSPQ==','Dw8oDBV0wq7Ck8KH','woZmwq5VwqfClsO8AcKHMTUJ','w6gbd1nDoQ==','w4zCncKG','wo1fw7ksC38=','wrZqw4I8Cg==','eMODwrtUwqU=','wrhxw7gvNw==','F8Krwr/CsDw=','O8OMw6/DsRQ=','JCUGIxQ=','wqEqAcOgwrU=','wqgiw4EQRw==','wqMLCxMt','wrfDpRDDvMK0','w60dFMOmBw==','w53DhwkwesO4','wrV3w7kmwps=','cW7CqcKccw==','5LiU5aaX57u25Y2F','w4BLw6NAOgkow6PCpA==','w6oVBGhT','w73Ch8KDflM=','GAwx','wpvCqcODblV+','PMKOBAvCrg==','w7bChsOYTcKa','a0HCuMK8Qw==','CcO/wp4Hwpk=','CgovCzF7wq/Cmg==','6LSM6YKs57iQ5Lm25pGn','KsOrw49CFw==','wo92BcKdJMKyVEc=','wp1NA8KdKA==','wrrCom5JJsOTw7UI','wpJww7vCpMKd','QzgMw5Qi','w4FIw79NNRsDw6HCssKcwpAD','w4DDli7Cng==','w6rChsOL','woHDtUPCuMKAw5c=','QcORwonDvsKW','wrnDv0PCrMKX','wplvw6jCrMKN','w5zDqCQowqY=','w47CvMO6','w7Z6w7YMSg==','wpUhVsOsLg==','w7USP8O6w6o=','w6ZSw5E=','WcOhwphVwqE=','wpXCv8KVblw=','wro1Iw==','w4bDsAF/wpY=','D8Oxw4VKw7jCkMKOF2zDucOnbsKv','wqvDg0wwCA==','wqQrFwYl','esOeVwkC','CMK+wrPCpAE=','HMOpAcKzcQ==','w4HDhRLChA4=','wpEcw5tvCA==','wpxUw6XCr8Kv','wo7CqHg=','woHDo8O5','XQIkwpXDmA==','wp8tAcOrwrU=','wr8kw7g=','w6EfLMOlw60=','wogFw7E=','wpHDs1HCvsKQ','w5cXIsOGw68=','wpDDonfCt8KB','N8OSBcKQUQ==','SmbCo8KCVA==','wp4lw5sUdw==','DsKWwrLCjiw=','w4hkw4hWKQ==','w4Nkw6oqXw==','YMONdSI2','YsORAzID','w40PBENFfsKiTRDCvsOdwpXDm2g=','FcOOw48=','wrrDnFQtE8K7','w6HDrC5Mw6I=','wpIfaMOEDg==','HgIJJwk=','Dw8oDBU=','w6V1w6QTwqE=','RhIjw5QUwpfDui4=','B8OaZDxpwoVqw4/DsQ==','ByADGgY=','w6bDrxo=','wprCgWlPDw==','5YyN54275peg5ZOg5bu9','wopdw48SAg==','w5PCrMOWcsKq','w6Rpw6Ikwps=','ZMOCIhcV','wrXDhXo3HQ==','wqnCuGs=','McK1wrDCkDQ=','amLCqcKj','wrbDksOxw4vDiQ==','w4kfLcOLw7I=','wp4Fw7RvDcOp','wrZtwq1swo0=','wqZZJsKICQ==','5Y2f5oSW6LO5','w6QyQ23DjA==','woTDk8Ogw7jDow==','wp16E8KN','L8OQGcKVQw==','w7RCw7M=','L8KMwrs=','XsOLMCQB','K8O/wpgHwo4=','woQeR8OvPw==','wpphw73CtMK2','wqJWOMK9OQ==','Ky8N','UMKUw4MTM3zDkcO9wodjwrDDlsO5MxvCl0I3wpnDm8K7w7LCrBTDkinCrMO4w4jCvcK8wp/CrCXDlwIL','w4zDsyQ=','wqwIR8OyQ8O2UVzDpg==','5Y+G5oaZ6LK/','55id5pKy5baZ57iq5py0','wqRcw5w=','w4bDpz4=','YXXCpQ==','5pW/5ZK55bun','w5nDhAk=','56ih5Yy86LSC6YGe','w6lWw6kMwps=','wq0DLg==','I8OyJ8KsTA==','wrl4HsKBJw==','w4jDuyw1Ww==','woJSw5PCqMK6','CMO3w7HDthk=','w47Ck8OoWsKg','wonCp8OFf1Rn','5oqq556T6YCZ5Lil','wrHChUdJJA==','wppZw5gDwoc=','w7h8w48yag==','wpbCpG9AOQ==','wqsFw4QQcg==','wppMw6nCp8Km','bW3Ch8OZFA==','wo9AwrNKwrM=','AMKQwozCsDA=','wp4ZdUDCvw==','w4zDiw8recO5esOswpw/w57Dhx8=','wo0yBcOvwoc=','XDQGwpHDpw==','54CG5YWT5bCy5biR6YeY6K2A','w5vDkD1kw6I=','w40YFMOvJQ==','wq3DqXw=','FcK9wp3CvTE=','LxXDjMO3wosfasO5wrs=','woggFzEtDFDCi8KmDsKXwoM=','w4DDljvCuxo=','w5gJFVlJ','a0PCqsOkJCQ=','w7LChcKfaEM=','wpnDt8Oow4jDrQ==','w5UDGsOdEQ==','IMOyEsKSbw==','fMOGwpY=','wqDDhsOKw4zDiA==','w7fDvDRXw4A=','EsO9JsKJXQ==','cMODdBgb','BMOHw49AHw==','WB4swqvDkA==','LyHDgsO+wpg=','wprCnsOQcEI=','5Y2+54+Q5paR5ZOg5bq1','wrDDrMOow7jDpMOHw6jDsE4=','w5Bpw5JWKA==','UiI/wrTDgg==','wpseRnnCkiPDrh4J','wq1cLcKSEw==','IsKCwoDCogM=','wpjCslZlHA==','wqnCo8KZTWc=','QcOVFhQX','w7rDgTE=','aXfCqsK5H3tPLxwmw7TCqMOJLMKo','w5oYLsORw6lLChQaw6pMKsOZUBnCn8OtKMKlOl1ULl1uGA==','MMOXDsKLVsOewo/Ck3PDlA==','D8KRwrvCsDM=','w5TDgREodMOlTA==','w7AEFsOgMsO6E3PCssKKDwcIJg==','VVTCug==','YcOWwo7DhsK2','wpFRw6/Cm8Ka','wrnDnUQrE8K/wofClMOEWT7DszLCnhhaBwNKdMOiKm1+','wrHDr8O0w7XDq8OVw4PDslg9HsKf','wqDCv8O4XXE=','wphZw6ksDA==','wp52D8KNAw==','PsObCcKFTcOC','w4rChcO0YMKC','wrvCqGdABQ==','w5wVLcOOw6o=','wpgsEBQO','ZU/CrcOnAz7CsRg=','w6Blw4F2JQ==','QsOXwp9RwoI=','JcOCw7jDmiI=','57uz5pyk6L6d6KO8','wonCrcK0Vl0=','wpjCqMOTaFV6XThVw6jDmMOvw6pIKwvCm8O9dALCkQ==','EsKewq7CnjPCtsKoICcbYcO2','CsOEwqcpwoXDosOL','w4oyKMOxw48=','YlzCpMO3Fg==','w6kAHsOCw6s=','wr4EfnXCoQ==','DcODwq0/wqXDpcOKw5djAMKSIBDDkRh3w6t0AjLDiw==','wqfDpcO5w6/DjMOJw6TDqEo9FMKJ','wrrCk8KQdkE=','OsKbFSvCtg==','wrjCkMKQ','w5whJQ==','wrvDn0k6Fw==','w4gZH8OEMQ==','McKWwrrCoDQ=','w6DDvMK3w6fCu8Oawr/DoBsoSMKGwrDDjzo=','wr0/Kg==','6L+d5YWi5bOA6KSR6aKj','wqxaw5s=','5ou+5YuB6L635Yep5bOj6KWm6aGf','wrV0w71rwoPDgXlbwrDDo2VTeUvDoxdXw5UWwoh6UcOg','5q2j5pWW6K+36ZSE5Y6A6Iyy5b6N6IiK5bi554Ov6Iul','w441Kw==','w5otGA==','5Z+Q5LmJ6aGa6Z24w5Rv6ZiD5p2I552n54K16Kai6aCo','55ez6Z+K5b2/5bm8','w6YsAw==','DMOQw4XDvzo=','w71tw6cQwqA=','w5PDizoFdw==','55yU6YGx5ZeZ','w6/CgsK+','w6XDkA9ow4k=','wo/ChcOlU18=','w5HDojoPTQ==','ejguwr3DlQ==','AcK5wr3CkjU=','wqZNw70nwr4=','b8ORwoTDsMKgw7nCiMOMK1Z5w54=','wrpTw4MpEg==','wrbCj3psEA==','w5vCnsKfWEowZsOVDQ==','6K6f54G/5LiU5LmN','YErCqsOgJzHCsBHCnw==','wpslXMOsO8OCMsKg','bcO3wq7DjcKA','wpNOw7bCkcKY','wr8Aw5c=','w54MB8OBw68=','wrrDnFU3GMKl','LhbDkMO6woQN','wqzCpcO5a0w=','wpTDjj3DpcK3','wqvCt8KacEE=','B8KVwrLCmBnCscKofQcbccO5wppOIcKWwqkIOcOfwqp8Ww==','wrV3w7kmwpvDkzVWwrs=','HMOOI8KtZA==','w53DvhBZw5LDug==','wpQ2AMObwrw=','wr7Cn8OC','5Yet5rCB5LqA5pKO77+A5Lun6Zem6L2m5Lq95L6k5LiJ5q+O55iV5pOg','w6Fsw6Ujwr81bA==','wqrDmkcxCA==','w6Vqw78zwp82','wo0yBcOvwofDgcKsVMO7','w7oDP1xX','w47DnD3ChAvDtg==','woVfw4MoIg==','McOHFcK7RA==','OMKbGDHCpA==','w4vCisO1UsK6','wrp8w74ZEg==','w4zCl8KOTw==','dTcIwo/DhMO/w4DCkyo=','wr7CpHVDDcOOw58DYcKWw6VQ','woFfw6DCscKT','wog3AsOowqPDjsKtXQ==','wpcmSsOLJQ==','wpJOw57CssK9w6Z+wqhJ','wpvCqcOCdF5gcHhRw6jDmMOt','wpxHJsK1Bg==','wosDw6V1AQ==','wpAXRn3CkTY=','wowmDDsGEXrCgA==','wp5hwrdswpM=','w5fCucKRQ1I=','w67DhTcVcA==','wrfCglVmLA==','w7rCqMOucsK6','BcKKJQzCpg==','f8Ocwq/DpcKy','w4Fsw4Mvwr8=','w6kJOUVu','wqlZw4UwKw==','w4cOOGRA','aWLCucOCNQ==','w5PDshdaw7XDoMOMMQ==','w5LCgMOOVsKN','w4LCmsKabHE=','wpxpw6TCtMKf','wpxTw783CH44wpQnHw==','woTDmMO0w7XDtQ==','fcO2UA==','w7XCnsO9aMKG','wpksEDAlE1/CisKnEMKSwpQ0','wr/CtcKiW2k=','ZBMiw58q','wqpuwo5awro=','55+25aWT5Lq0','w5ADOMOEw5A=','w60ASw==','woxfw6B2F2F3wpclHjbDksKxKMO+w7LCglfDisOVwqfDksOm','HsKYAA==','wpxyw6g=','w5vCncKbFVIiKsOYBsK/KnlBRcOkwql0w7fCisK1wrnDvTg=','CcOjw6XDgQ==','dDQcwpLDk8OCw6jCkDwTwqVD','w7TCqMOqU8KK','w5bDtBQQw4nDvcKBNXPDusKdERpLWsOuWAHDiMOgwofDqcKk','w63DgCs0woXDusKzYsOHw5EYw5BbY8KlwprCkMOWK0Ubw7PDkA==','wrjCt8KJVFtsw5fCgUo=','wrnCtMKVWVR+w7zCg1zClMKgwqQ=','wqvDrCLDpMKH','w4DDmgLCoic=','w4fDpQY=','wp8Gw6hiAg==','wrXDkcOMw63DmA==','w7ccEsOLw44=','5Zm95YiX6aSc6aGW','wppxw4gtwrg=','wr04ag==','w63Co8OaZsK9','wr/DpcOnw68=','w67DgToowo7DoA==','w48ZOg==','w77Dhyguwp4=','Dgw1GxF4','wpslXMOs','wr/DpcOvw7zDu8OO','wqYlOjcB','w7bDlQLCoAc=','GsOUOMKKbQ==','JcKlwqN1Mw==','w4vDjQUwVsO6UsO3wo8hw5HDhg==','IMO3wp4uwp4=','V8OewqTDrMKt','ABPDvcO8wqg=','anDClA==','W8OjwpVEwqXChcOaRSrDrMKwdcO8w4bCrMKzw6hnOSIGwp1n','w5TDtR1Mw5XDp8OLemrDt8KLGRZbWsOdTQPCi8OpwqLDvsK4bMOQbQ==','wpBcw5Q=','bhA/','57qf5pym6Ia/5p64','wpM5ag==','wprCrlVgOA==','w60yQnTDnA==','wodgwr9Lwps=','LxDDgcOkwrg=','wog9KsO5wqU=','w40MOmVX','wpdrw4zCjsKNcsO0w7VI','bUzChcK8Sw==','YTINwojDnw==','w7TCkMKEQ1g=','wp/Ds8OGw5nDrA==','wq3DrF8=','w7BEw68/Zw3CsMKpwr0=','wpZow5jCk8KaT8Ocw7Zewp7DkT8=','A8OOw4pEKzo=','woIje0LCvA==','w6zCgMOcS8K4','w7wtW3PDjMOX','w7zDuwQ=','woFcw58LLA==','w43Dszd3wpU=','dTQEw5LDhMOCwo/CnyEewrNJwprCi8OxwqdmUyvDpsKrVgc=','wovDpMOD','wpXDqUw=','w74RCcOyw6k=','w4U2HldP','wpLCokM=','AhDDpg==','OsOfFcKMRsOew6PChm0=','JMOGw7x7IA==','57uD5Y6k5YKt6K6L5pa55Z2hwpzli4rpkaTkuJzlhYk=','B8KjwrJx','acOdwpvDrMKR','ChsKAAs=','wp7CvMKjZl8=','w6ZAw4lyPg==','w7jCmMOvWsKZ','ZiIQ','worDmHfCksK1','wqdSDcKcJg==','5p+R5Z2254GZ5YiT','wp9Ow63CksKG','wqfDhB3DsMKOdMOWw4Q=','w4rDpxYRwqk=','csO2wr3DgMK0','V8OWSzMF','5Y2956Wy5L6p','dcOAwr7DsMKH','w70uR37Dg8OFwpDCvMOs','w5B/w4BtEw==','w4wfLsOXw64=','wqJ0w6A=','FcOkw65QNg==','w61sw4cqwqk=','wqUnw4MzYcO3w65VEw==','wq/CiMOEVXE=','esO3RDUj','wokjCzwiHnvCicKw','GwolGxY='];(function(_0x585741,_0x2d1462){var _0x8dba70=function(_0xf7c352){while(--_0xf7c352){_0x585741['push'](_0x585741['shift']());}};_0x8dba70(++_0x2d1462);}(__0x6f217,0x16e));var _0x88fd=function(_0x4815dd,_0x421c17){_0x4815dd=_0x4815dd-0x0;var _0x108e45=__0x6f217[_0x4815dd];if(_0x88fd['initialized']===undefined){(function(){var _0x1ba9b9=typeof window!=='undefined'?window:typeof process==='object'&&typeof require==='function'&&typeof global==='object'?global:this;var _0x12988e='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x1ba9b9['atob']||(_0x1ba9b9['atob']=function(_0x32104a){var _0x508364=String(_0x32104a)['replace'](/=+$/,'');for(var _0x1ef481=0x0,_0x3287e6,_0x264b93,_0x47e489=0x0,_0x31c2f0='';_0x264b93=_0x508364['charAt'](_0x47e489++);~_0x264b93&&(_0x3287e6=_0x1ef481%0x4?_0x3287e6*0x40+_0x264b93:_0x264b93,_0x1ef481++%0x4)?_0x31c2f0+=String['fromCharCode'](0xff&_0x3287e6>>(-0x2*_0x1ef481&0x6)):0x0){_0x264b93=_0x12988e['indexOf'](_0x264b93);}return _0x31c2f0;});}());var _0x47e8c9=function(_0x1c1bd4,_0x5d8cf7){var _0x14b0d9=[],_0x4d540b=0x0,_0x4b54db,_0x147d06='',_0x2e51cd='';_0x1c1bd4=atob(_0x1c1bd4);for(var _0x58bd5e=0x0,_0x223448=_0x1c1bd4['length'];_0x58bd5e<_0x223448;_0x58bd5e++){_0x2e51cd+='%'+('00'+_0x1c1bd4['charCodeAt'](_0x58bd5e)['toString'](0x10))['slice'](-0x2);}_0x1c1bd4=decodeURIComponent(_0x2e51cd);for(var _0x48d903=0x0;_0x48d903<0x100;_0x48d903++){_0x14b0d9[_0x48d903]=_0x48d903;}for(_0x48d903=0x0;_0x48d903<0x100;_0x48d903++){_0x4d540b=(_0x4d540b+_0x14b0d9[_0x48d903]+_0x5d8cf7['charCodeAt'](_0x48d903%_0x5d8cf7['length']))%0x100;_0x4b54db=_0x14b0d9[_0x48d903];_0x14b0d9[_0x48d903]=_0x14b0d9[_0x4d540b];_0x14b0d9[_0x4d540b]=_0x4b54db;}_0x48d903=0x0;_0x4d540b=0x0;for(var _0x1ae18e=0x0;_0x1ae18e<_0x1c1bd4['length'];_0x1ae18e++){_0x48d903=(_0x48d903+0x1)%0x100;_0x4d540b=(_0x4d540b+_0x14b0d9[_0x48d903])%0x100;_0x4b54db=_0x14b0d9[_0x48d903];_0x14b0d9[_0x48d903]=_0x14b0d9[_0x4d540b];_0x14b0d9[_0x4d540b]=_0x4b54db;_0x147d06+=String['fromCharCode'](_0x1c1bd4['charCodeAt'](_0x1ae18e)^_0x14b0d9[(_0x14b0d9[_0x48d903]+_0x14b0d9[_0x4d540b])%0x100]);}return _0x147d06;};_0x88fd['rc4']=_0x47e8c9;_0x88fd['data']={};_0x88fd['initialized']=!![];}var _0x5c186f=_0x88fd['data'][_0x4815dd];if(_0x5c186f===undefined){if(_0x88fd['once']===undefined){_0x88fd['once']=!![];}_0x108e45=_0x88fd['rc4'](_0x108e45,_0x421c17);_0x88fd['data'][_0x4815dd]=_0x108e45;}else{_0x108e45=_0x5c186f;}return _0x108e45;};ui[_0x88fd('0x0','N$Nk')][_0x88fd('0x1','13Ld')]=Timepickerhour;ui['timepicker'][_0x88fd('0x2','e10Q')]=Timepickerminute;var a=app[_0x88fd('0x3','&3$f')](_0x88fd('0x4','c3bp'));if(a==null){APPNAME='抖音火山版';}else{APPNAME=_0x88fd('0x5','Po)x');}if(!files[_0x88fd('0x6','YGJI')](_0x88fd('0x7','SYIy'))){files[_0x88fd('0x8','w[@&')](_0x88fd('0x9','Vtv!'),'这个主播有点意思\x0a这个主播蛮有趣\x0a66666\x0a火山万岁\x0a火山为啥要和抖音合拼');}ui['timepicker']['setIs24HourView'](!![]);ui[_0x88fd('0xa','FFLW')][_0x88fd('0xb','^ju9')]({'onTimeChanged':function(_0x2efc86,_0x112f46,_0x25dd61){var _0x5d5c06={'fFAep':function _0x473827(_0x4d7c25,_0x53f05d){return _0x4d7c25+_0x53f05d;},'foRFT':_0x88fd('0xc','QvT7')};let _0x5a6246=_0x5d5c06['fFAep'](_0x112f46+':',_0x25dd61);ui[_0x88fd('0xd','&3$f')][_0x88fd('0xe','sYOl')](_0x5d5c06[_0x88fd('0xf','FFLW')]+_0x5a6246);}});autorun1=threads['start'](function(){var _0x384bbc={'iGXCG':function _0x3dc2dc(_0x1e24d9,_0x5c5a9e){return _0x1e24d9==_0x5c5a9e;},'yxKNw':_0x88fd('0x10','yf#V'),'MiHpP':function _0x1befb8(_0x20da96,_0x4a3aac){return _0x20da96==_0x4a3aac;},'FJSRS':_0x88fd('0x11','BQTg'),'Ozark':function _0x947628(_0x5e2712,_0x218e7a,_0x2f7e94,_0x7645ee,_0x5be950){return _0x5e2712(_0x218e7a,_0x2f7e94,_0x7645ee,_0x5be950);},'SMaEU':function _0x6426ee(_0x8e2c37,_0x33e132){return _0x8e2c37(_0x33e132);},'VUAtn':function _0x41cbb1(_0x230504,_0x3b6318){return _0x230504(_0x3b6318);},'rleyW':function _0x5ee043(_0x297ee5,_0x1e8255){return _0x297ee5+_0x1e8255;},'uYyjG':function _0x3806b7(_0x26144c,_0x2e6e0a){return _0x26144c(_0x2e6e0a);},'wfzKv':function _0x3b7d6a(_0x3fe1c1,_0x38fb7e){return _0x3fe1c1+_0x38fb7e;},'WQTCY':function _0x551b66(_0x13bf9c,_0x42669e){return _0x13bf9c-_0x42669e;},'xxuwl':function _0x557eb(_0x49399d,_0x398b30){return _0x49399d>=_0x398b30;},'dDgCG':function _0x300d7f(_0x27a588,_0x2fe52f){return _0x27a588!==_0x2fe52f;},'XYzxQ':_0x88fd('0x12','Vtv!'),'EBRSP':function _0x3ae264(_0x3effdc,_0x3d33da){return _0x3effdc(_0x3d33da);},'obCLQ':function _0x30d0f3(_0x29baae,_0x3a95ab){return _0x29baae!=_0x3a95ab;},'YhCif':function _0x2c6f46(_0x4a16d2,_0x1e0d2e){return _0x4a16d2(_0x1e0d2e);},'hVfJL':function _0x3367f0(_0x1784e4,_0x1e4ed0){return _0x1784e4(_0x1e4ed0);},'NQNUa':_0x88fd('0x13','e10Q'),'LaAtE':_0x88fd('0x14','&Y#L'),'xCAoF':_0x88fd('0x15','2vFb'),'wtoAW':function _0x5cc736(_0x2f4d8b,_0x1da9a5){return _0x2f4d8b!=_0x1da9a5;},'fGHVK':function _0x1a8831(_0x27f795,_0x300e66){return _0x27f795===_0x300e66;},'KZhqx':function _0x401e98(_0x41591,_0x1730db){return _0x41591(_0x1730db);},'PRcXm':_0x88fd('0x16','Nu&O'),'zychZ':function _0x2f9e55(_0x289293,_0x506de8){return _0x289293!=_0x506de8;},'zXceL':function _0x580bce(_0x3ec701,_0x5063c6){return _0x3ec701<_0x5063c6;},'hVlcv':function _0x254d32(_0x27f4ff,_0x1726f6){return _0x27f4ff+_0x1726f6;},'Gvpaw':function _0x32be15(_0x435e2c,_0x5123f6){return _0x435e2c(_0x5123f6);}};if(_0x384bbc[_0x88fd('0x17','v$Q3')](ui[_0x88fd('0x18','3gF[')][_0x88fd('0x19','yf#V')],!![])){xc=0x0;time=0x1e;while(!![]){if(_0x384bbc[_0x88fd('0x1a','QvT7')]==='zDo'){device['wakeUpIfNeeded']();if(_0x384bbc[_0x88fd('0x1b','HVrR')](ui[_0x88fd('0x1c','ROVF')][_0x88fd('0x1d','il(g')],![])){if('mcQ'!==_0x384bbc[_0x88fd('0x1e','3gF[')]){var _0x27ae18=_0x384bbc['Ozark'](boundsInside,0x0,送火苗[_0x88fd('0x1f','w[@&')]()[_0x88fd('0x20','!IVq')],device[_0x88fd('0x21','BQTg')],device[_0x88fd('0x22','eT!y')]*0x2)[_0x88fd('0x23','BQTg')](_0x88fd('0x24','ROVF'))['clickable'](!![])['findOnce']();if(_0x27ae18!=null){_0x384bbc[_0x88fd('0x25','ROVF')](log,_0x27ae18);_0x27ae18['click']();_0x384bbc[_0x88fd('0x26','QvT7')](sleep,0x7d0);}}else{_0x384bbc['VUAtn'](toastLog,_0x88fd('0x27','^ju9'));break;}}xc=_0x384bbc[_0x88fd('0x28','!6CW')](xc,0x3);_0x384bbc['uYyjG'](toastLog,_0x384bbc[_0x88fd('0x29','Nu&O')]('还有'+_0x384bbc['WQTCY'](time,xc)+'秒',_0x88fd('0x2a','!IVq')));_0x384bbc[_0x88fd('0x2b','oBvM')](sleep,0xbb8);if(_0x384bbc[_0x88fd('0x2c','HVrR')](xc,time)){if(_0x384bbc[_0x88fd('0x2d','Po)x')](_0x88fd('0x2e','2vFb'),_0x384bbc[_0x88fd('0x2f','mAL5')])){while(!![]){if('YGm'!==_0x88fd('0x30','rtMY')){var _0x9d4364=_0x384bbc[_0x88fd('0x31',')q$f')](packageName,'com.ss.android.ugc.live')[_0x88fd('0x32','Nu&O')]();log(_0x9d4364);if(_0x384bbc[_0x88fd('0x33','3gF[')](_0x9d4364,null)){back();_0x384bbc[_0x88fd('0x34','Po)x')](sleep,0x7d0);}else if(_0x384bbc[_0x88fd('0x35','Nu&O')](_0x9d4364,null)){app[_0x88fd('0x36','e10Q')](APPNAME);_0x384bbc[_0x88fd('0x37','JcCH')](sleep,0x1388);}}else{_0x384bbc[_0x88fd('0x38','yf#V')](toastLog,'启动');var _0x37cc1a=_0x384bbc[_0x88fd('0x39','^ju9')](text,_0x88fd('0x3a','SYIy'))[_0x88fd('0x3b','eT!y')](_0x384bbc['NQNUa'])[_0x88fd('0x3c','13Ld')](!![])[_0x88fd('0x3d','FFLW')]();if(_0x37cc1a!=null){if('ARi'===_0x384bbc[_0x88fd('0x3e','2vFb')]){_0x37cc1a[_0x88fd('0x3f','w4Fn')]();}else{an['click']();}}_0x384bbc['hVfJL'](sleep,0x7d0);var _0x3f11c0=textContains('确定')[_0x88fd('0x40','4IJ8')](_0x384bbc[_0x88fd('0x41','BQTg')])['clickable'](!![])['findOnce']();if(_0x384bbc[_0x88fd('0x42','G@)z')](_0x3f11c0,null)){if(_0x384bbc['fGHVK'](_0x88fd('0x43',']$FZ'),_0x88fd('0x44','SYIy'))){_0x3f11c0[_0x88fd('0x45',')o2e')]();sleep(0x3e8);}else{_0x384bbc[_0x88fd('0x46','%0od')](log,a);a[_0x88fd('0x47','JcCH')]();sleep(0x7d0);}}_0x384bbc[_0x88fd('0x48','N$Nk')](sleep,0x7d0);}}}else{fhz=0x2;_0x384bbc[_0x88fd('0x49','SYIy')](toastLog,_0x384bbc['PRcXm']);if(_0x384bbc['zychZ'](红包,null)){红包1=bounds(红包['bounds']()[_0x88fd('0x4a','mAL5')],红包['bounds']()[_0x88fd('0x4b','v$Q3')],红包[_0x88fd('0x4c','egRk')]()['right'],红包[_0x88fd('0x4c','egRk')]()['bottom'])[_0x88fd('0x4d','eT!y')]();i=0x0;while(_0x384bbc[_0x88fd('0x4e','ROVF')](i,红包1[_0x88fd('0x4f','2c0r')])){红包1[i][_0x88fd('0x50',']$FZ')]();i=_0x384bbc['hVlcv'](i,0x1);_0x384bbc['KZhqx'](sleep,0x64);}}}}}else{赠送['click']();_0x384bbc[_0x88fd('0x51','JcCH')](sleep,0x7d0);}}}});ui[_0x88fd('0x52','v$Q3')][_0x88fd('0x53','%FV[')](function(){var _0x3df356={'PbZoR':function _0x365154(_0x508686,_0x2dac87){return _0x508686!==_0x2dac87;},'YeXCv':function _0x2b46c3(_0x443b91,_0xc1f744){return _0x443b91(_0xc1f744);},'OmhtU':function _0x363d75(_0x5dfd6d,_0x417dfe,_0x2c89c6,_0x1093df,_0x3ef67f){return _0x5dfd6d(_0x417dfe,_0x2c89c6,_0x1093df,_0x3ef67f);},'MnBbG':_0x88fd('0x54','!wjm'),'fEKbs':_0x88fd('0x55','13Ld'),'YjUse':_0x88fd('0x56','&3$f')};var _0x3f740e=app[_0x88fd('0x57','&Y#L')]('QQ');if(_0x3f740e==null){if(_0x3df356[_0x88fd('0x58','&3$f')](_0x88fd('0x59','HVrR'),'oIP')){_0x3df356[_0x88fd('0x5a','&3$f')](toast,'请安装QQ');}else{var _0x2d65c9=_0x3df356[_0x88fd('0x5b',')o2e')](bounds,视频['bounds']()[_0x88fd('0x5c','ROVF')],视频[_0x88fd('0x5d','c3bp')]()['top'],视频['bounds']()[_0x88fd('0x5e','w[@&')],视频[_0x88fd('0x5f','yf#V')]()[_0x88fd('0x60',']$FZ')])['clickable'](!![])[_0x88fd('0x61','!wjm')]();if(_0x2d65c9!=null){_0x2d65c9[_0x88fd('0x62','v$Q3')]();}}}else{app[_0x88fd('0x63','!IVq')]({'action':_0x3df356[_0x88fd('0x64','eT!y')],'data':_0x3df356[_0x88fd('0x65',']$FZ')],'packageName':_0x3df356[_0x88fd('0x66','eT!y')]});}});ui['ok']['click'](function(){var _0x104ec7={'QihtI':function _0x390366(_0x2447e8,_0x37ad34){return _0x2447e8==_0x37ad34;},'mmgup':'giftnumber_save','iZEDE':'auto_runchecked_save','YVsPT':'timepickerhour_save','ALMuT':_0x88fd('0x67','!IVq'),'bkhKP':function _0x38d3ef(_0x5a3bbb,_0x1664a3){return _0x5a3bbb(_0x1664a3);},'UQItk':function _0x51afb4(_0xc42833,_0x1e49f9){return _0xc42833!=_0x1e49f9;},'rlwJz':function _0x99b108(_0x4ad189,_0x26fae9){return _0x4ad189(_0x26fae9);},'ptuUL':function _0x4eae91(_0x97356e){return _0x97356e();},'iocJk':_0x88fd('0x68','%FV['),'srfnI':_0x88fd('0x69','!IVq'),'WhkWT':function _0x390a4e(_0x55a388,_0x2357c4){return _0x55a388(_0x2357c4);},'ygNqd':function _0x3bd3d3(_0x51d695,_0x320508){return _0x51d695==_0x320508;},'CEsJN':function _0x8fdbc2(_0x3d25ee,_0x16ef9f){return _0x3d25ee===_0x16ef9f;},'cgbwQ':_0x88fd('0x6a','QvT7')};if(_0x104ec7[_0x88fd('0x6b','YGJI')](ui['allrummber']['checked'],!![])){var _0x447c44=storages[_0x88fd('0x6c','2vFb')](_0x88fd('0x6d','Nu&O'));_0x447c44['put'](_0x88fd('0x6e','egRk'),ui[_0x88fd('0x6f','^ju9')][_0x88fd('0x70','w[@&')]());_0x447c44['put'](_0x104ec7[_0x88fd('0x71','BQTg')],ui[_0x88fd('0x72','K&3h')][_0x88fd('0x73','3gF[')]());_0x447c44[_0x88fd('0x74','BQTg')]('djs_save',ui[_0x88fd('0x75','4IJ8')]['text']());_0x447c44[_0x88fd('0x76','egRk')](_0x88fd('0x77','2c0r'),ui[_0x88fd('0x78','Po)x')][_0x88fd('0x79','wtBl')]);_0x447c44['put'](_0x88fd('0x7a','yf#V'),ui[_0x88fd('0x7b','FFLW')]['checked']);_0x447c44[_0x88fd('0x7c','yf#V')](_0x88fd('0x7d','&3$f'),ui[_0x88fd('0x7e','e10Q')][_0x88fd('0x7f',')o2e')]);_0x447c44[_0x88fd('0x80','K&3h')](_0x88fd('0x81','mAL5'),ui[_0x88fd('0x82',']$FZ')][_0x88fd('0x83','K&3h')]);_0x447c44['put']('lahei_save',ui[_0x88fd('0x84','2c0r')]['checked']);_0x447c44['put'](_0x104ec7['iZEDE'],ui[_0x88fd('0x85','4IJ8')][_0x88fd('0x86','^ju9')]);_0x447c44['put'](_0x104ec7['YVsPT'],ui[_0x88fd('0x87','3@NL')]['hour']);_0x447c44[_0x88fd('0x88','w[@&')]('timepickerminute_save',ui[_0x88fd('0x89',')q$f')]['minute']);_0x447c44[_0x88fd('0x8a','zErZ')](_0x104ec7[_0x88fd('0x8b','FFLW')],ui['timePickerModeText'][_0x88fd('0x8c','QvT7')]);}var _0x2898c4=_0x104ec7[_0x88fd('0x8d',']$FZ')](Number,ui[_0x88fd('0x8e','SYIy')]['getText']());var _0x46237e=Number(ui[_0x88fd('0x8f','%FV[')][_0x88fd('0x90','rtMY')]());var _0x119be7=ui[_0x88fd('0x91','%FV[')][_0x88fd('0x92','&3$f')];var _0x3adb76=ui[_0x88fd('0x93','wtBl')][_0x88fd('0x94','Nu&O')];if(_0x104ec7[_0x88fd('0x95','2c0r')](Number,ui['djs']['text']())!=0x1&&_0x104ec7[_0x88fd('0x96','ROVF')](_0x104ec7[_0x88fd('0x95','2c0r')](Number,ui[_0x88fd('0x97','YGJI')][_0x88fd('0x98','c3bp')]()),0x2)&&_0x104ec7[_0x88fd('0x99','wtBl')](Number(ui[_0x88fd('0x9a','HVrR')]['text']()),0x3)&&Number(ui[_0x88fd('0x9b','K^AY')]['text']())!=0x4){_0x104ec7['rlwJz'](toastLog,'输入错误');_0x104ec7[_0x88fd('0x9c',')o2e')](exit);}if(_0x104ec7[_0x88fd('0x9d','QvT7')](isNaN(_0x104ec7['rlwJz'](Number,_0x2898c4)),!![])&&isNaN(Number(_0x46237e))==!![]){if(_0x104ec7[_0x88fd('0x9e','!6CW')]!==_0x104ec7[_0x88fd('0x9f','BQTg')]){toastLog(_0x88fd('0xa0','N$Nk'));}else{_0x104ec7[_0x88fd('0xa1','2vFb')](log,视频);视频[_0x88fd('0xa2','SYIy')]();_0x104ec7['WhkWT'](sleep,0x7d0);}}if(_0x104ec7[_0x88fd('0xa3','&Y#L')](isNaN(Number(_0x2898c4)),![])&&isNaN(Number(_0x46237e))==![]){A=threads['start'](function(){var _0x2a5310={'Jorju':function _0x1d6896(_0x347f16,_0xc26815){return _0x347f16!==_0xc26815;},'GBtco':_0x88fd('0xa4','13Ld'),'UycdY':function _0x34e818(_0x7c5042,_0x2edaf3){return _0x7c5042(_0x2edaf3);},'EHIuf':function _0x51728a(_0x3b5116,_0x22f37d){return _0x3b5116(_0x22f37d);},'dJeYZ':function _0x50ec5a(_0x3e51c0,_0x11798b){return _0x3e51c0(_0x11798b);},'wmofk':_0x88fd('0xa5',')o2e'),'VLfdH':'error','hBxwY':function _0x46bc0c(_0x4d599a,_0x3a594a){return _0x4d599a!=_0x3a594a;},'eXRBD':function _0x4364c0(_0x44712c,_0xa0c624){return _0x44712c===_0xa0c624;},'Fgvas':_0x88fd('0xa6','K&3h'),'THykI':'android.intent.action.VIEW','iUmTd':_0x88fd('0xa7','FFLW'),'VyftS':_0x88fd('0xa8','K^AY'),'TyCSx':function _0x2caf16(_0x439c08){return _0x439c08();},'xkIeT':_0x88fd('0xa9','SYIy'),'WAlvl':_0x88fd('0xaa','egRk'),'IbSyC':function _0x9025c4(_0x44ac52,_0x5a1a38){return _0x44ac52/_0x5a1a38;},'eiuim':function _0x370732(_0x247c4b,_0x359430){return _0x247c4b-_0x359430;},'Ftkbm':_0x88fd('0xab','Po)x'),'KyFRd':_0x88fd('0xac','jgsy'),'dnvXt':_0x88fd('0xad','&Y#L'),'knjZw':function _0x56de5c(_0x2cce1e,_0x4f3075){return _0x2cce1e!=_0x4f3075;},'xUXOB':function _0x4d46c2(_0x41263b,_0x35eaf2){return _0x41263b-_0x35eaf2;},'ZNRBD':function _0x10111c(_0x393d7e,_0x32b58e){return _0x393d7e!=_0x32b58e;},'shguG':function _0xdc68c5(_0x4655f0,_0x465a0a){return _0x4655f0(_0x465a0a);},'yfNOO':function _0x21e029(_0x269dd4,_0x1c0492){return _0x269dd4==_0x1c0492;},'gxNDb':_0x88fd('0xae','HVrR'),'zFefd':function _0x32effa(_0x2c5d99,_0x35e6ce){return _0x2c5d99+_0x35e6ce;},'AmZnK':function _0x2fcb50(_0x3df328,_0x40928f){return _0x3df328+_0x40928f;},'bsXjC':function _0x9a5952(_0x461e16,_0xd8245a){return _0x461e16+_0xd8245a;},'qoSZq':_0x88fd('0xaf','Nu&O'),'mEoUj':function _0x2e623c(_0x3b85af,_0x175657){return _0x3b85af(_0x175657);},'VogGl':function _0x175b5d(_0x1d78a6,_0x351540){return _0x1d78a6(_0x351540);},'mmHlD':_0x88fd('0xb0','BQTg'),'GNNek':function _0xcad332(_0x53ebfa,_0x21e64e,_0x5bc4d2){return _0x53ebfa(_0x21e64e,_0x5bc4d2);},'OFvYi':'PAM','slhiX':_0x88fd('0xb1',')q$f'),'mcbKw':'6|1|0|2|8|7|4|3|5','eqUEH':'wam','oTLIN':_0x88fd('0xb2','&Y#L'),'NneTJ':function _0x5793b1(_0x47960d,_0x1518c1){return _0x47960d!==_0x1518c1;},'rGxob':_0x88fd('0xb3','!6CW'),'NnESu':function _0x38d3bb(_0x4ae189,_0x3e0ab8,_0x36c42,_0x4f4667,_0x46f6a4){return _0x4ae189(_0x3e0ab8,_0x36c42,_0x4f4667,_0x46f6a4);},'WRHwa':function _0x125292(_0x458f9f,_0x33d5b5){return _0x458f9f-_0x33d5b5;},'AGFVJ':function _0x1e04e2(_0x33e41e,_0x3a5d51){return _0x33e41e(_0x3a5d51);},'qUDaW':function _0x3e72e5(_0x167380,_0x315e62){return _0x167380!=_0x315e62;},'zZPlE':function _0x439e93(_0x3132de,_0x3997ad){return _0x3132de(_0x3997ad);},'YIMWP':function _0x53e971(_0x135526,_0x2a674e){return _0x135526<_0x2a674e;},'zGHcH':function _0x101252(_0x42c7ac,_0x2ce5da){return _0x42c7ac>=_0x2ce5da;},'IjXHB':function _0x59bf0c(_0xffb856,_0xfe0c53){return _0xffb856!==_0xfe0c53;},'aPCtL':'xVL','goqeu':_0x88fd('0xb4','Po)x'),'ODQPY':function _0x1e0403(_0x4eb270,_0x24e638){return _0x4eb270(_0x24e638);},'cJEuk':function _0x522776(_0x61f0d2,_0x206b7e){return _0x61f0d2!=_0x206b7e;},'ZRMFO':function _0x1be67c(_0x18ff82){return _0x18ff82();},'yevIL':function _0x59d603(_0x3fae42,_0x541711){return _0x3fae42(_0x541711);},'YKQWm':function _0x1998ac(_0x1f6592,_0x4a108f){return _0x1f6592>=_0x4a108f;},'oHWLE':'fhz>=========','CFjFR':_0x88fd('0xb5','egRk'),'qQjZr':function _0x41ba3d(_0x46bc79){return _0x46bc79();},'pMBJI':function _0x21cc3a(_0x5a89c1,_0x5af92a){return _0x5a89c1==_0x5af92a;},'VzXSS':function _0x368adf(_0xbdebd1,_0x1c92cb){return _0xbdebd1>=_0x1c92cb;},'LkOZE':function _0x39d28a(_0x161fe6,_0x5ec224){return _0x161fe6(_0x5ec224);},'yppdn':function _0x57a687(_0x1d408f,_0x118f34){return _0x1d408f(_0x118f34);},'qNoMw':function _0x3da376(_0x17f472){return _0x17f472();},'IbOSo':function _0x2d338a(_0xcc926e,_0xe72d44){return _0xcc926e!==_0xe72d44;},'geysU':'ZRc','ZcLOh':_0x88fd('0xb6','v$Q3'),'LVyzN':function _0x43d042(_0x127ed3,_0x528d2e){return _0x127ed3(_0x528d2e);},'Unbjh':_0x88fd('0xb7',']$FZ'),'dmFTF':function _0x915d89(_0x5b866e,_0x5dc080){return _0x5b866e(_0x5dc080);},'LQZVM':function _0x5d819c(_0x5ef536,_0xe58c58){return _0x5ef536+_0xe58c58;},'QYiTX':function _0x6c1856(_0x4ccfec,_0x5b1488){return _0x4ccfec-_0x5b1488;},'kuYZS':function _0x80dc4c(_0x24decc,_0xe4b9ba){return _0x24decc*_0xe4b9ba;},'SgDYu':function _0x4cafc0(_0x754d4a,_0x59a858){return _0x754d4a/_0x59a858;},'prgzB':function _0x28c7c6(_0x2cb2e1,_0x485f59,_0x3e7a13){return _0x2cb2e1(_0x485f59,_0x3e7a13);},'FzjXC':function _0x4358da(_0x58ed7d,_0x66053c){return _0x58ed7d<=_0x66053c;},'GXaxh':'snssdk1112://profile?id=','dOlEu':function _0x136a34(_0x1ae86f,_0x119c65){return _0x1ae86f(_0x119c65);},'xHwXH':function _0x926162(_0x45f3b8,_0x562360){return _0x45f3b8(_0x562360);},'AAcDk':function _0x165328(_0x61f0ea,_0x29865c){return _0x61f0ea==_0x29865c;},'kQhWA':function _0x362040(_0x29302e,_0x3253b4){return _0x29302e(_0x3253b4);},'xirJL':'android.widget.TextView','ZaLpS':function _0xf6d102(_0x5e5d6c,_0x1dfec2){return _0x5e5d6c!=_0x1dfec2;},'vuarG':'wCO','RrjFa':_0x88fd('0xb8','SYIy'),'azudJ':'进入火山','QIjYO':function _0x3d0ef9(_0x111620,_0x12725e){return _0x111620!=_0x12725e;},'EQHec':function _0x255e2a(_0x356401,_0x491052){return _0x356401!==_0x491052;},'qKAxV':function _0x5c2148(_0x2d508f,_0x547298){return _0x2d508f+_0x547298;},'JDHTr':'android.widget.RelativeLayout','bojQe':_0x88fd('0xb9','rtMY'),'bzwan':_0x88fd('0xba','mAL5'),'JvpFk':function _0x54e9b8(_0x21e1f6){return _0x21e1f6();},'slIZG':function _0x2fc762(_0x16b282,_0x2d7342){return _0x16b282(_0x2d7342);}};if(_0x2a5310[_0x88fd('0xbb','w[@&')](_0x2a5310[_0x88fd('0xbc','v$Q3')],_0x88fd('0xbd','zErZ'))){zq=0x1;_0x2a5310[_0x88fd('0xbe','rtMY')](log,_0x88fd('0xbf','sYOl'));_0x2a5310['EHIuf'](_0x3dec9d,APPNAME);_0x38a7bf();}else{function _0x1c3abc(){var _0x7dc4b1={'hbAWL':_0x88fd('0xc0','JcCH'),'yiFUm':function _0x3afb36(_0x1945b2,_0x4644df){return _0x1945b2!=_0x4644df;},'AxXaW':function _0x1d1e00(_0x2fd0ba,_0x341677){return _0x2fd0ba-_0x341677;},'chKYt':function _0x4778e9(_0x209f3c,_0x3f1e04){return _0x209f3c-_0x3f1e04;},'DDzQT':function _0xdb51c8(_0x133cf5,_0x180b38){return _0x133cf5-_0x180b38;},'errvW':function _0x280032(_0xb32210,_0xfa0670){return _0xb32210(_0xfa0670);},'IocCI':function _0x13f30c(_0x5a98ed,_0x3ee033){return _0x5a98ed+_0x3ee033;},'hXhkR':'关注随机值','GcCmx':function _0x4d0b72(_0x2e93cc,_0x450489){return _0x2e93cc>=_0x450489;},'CEQFJ':function _0x28c6d9(_0x1c6c82){return _0x1c6c82();},'HWTmh':function _0x5bbb23(_0x525d46){return _0x525d46();},'epbNJ':'android.widget.TextView','ikgRR':function _0x1a36f1(_0x8010ca,_0xd16d0d){return _0x8010ca/_0xd16d0d;},'JYXKf':function _0x242478(_0x32dd76,_0x5cc1e4){return _0x32dd76!==_0x5cc1e4;},'KYorg':'vrt','AqWLE':_0x88fd('0xc1','2c0r'),'FQxTs':function _0x520c25(_0x216659,_0x3ae850,_0x41e063){return _0x216659(_0x3ae850,_0x41e063);},'lPjYM':_0x88fd('0xc2','2c0r'),'fkGtL':'android.widget.ImageView','azbeJ':function _0x2d99a5(_0x4d43d5){return _0x4d43d5();}};qhb=0x0;var _0x49c6a0=className(_0x7dc4b1[_0x88fd('0xc3','w4Fn')])[_0x88fd('0xc4','^ju9')]('关闭')['clickable'](!![])[_0x88fd('0xc5','QvT7')]();if(_0x7dc4b1[_0x88fd('0xc6','4IJ8')](_0x49c6a0,null)){var _0x248115=_0x49c6a0['bounds']();var _0x32133a=className(_0x88fd('0xc7','w4Fn'))[_0x88fd('0xc8',')q$f')](!![])[_0x88fd('0xc9','3@NL')](_0x7dc4b1[_0x88fd('0xca','K^AY')](_0x248115[_0x88fd('0xcb','JcCH')],0x3*(_0x248115[_0x88fd('0xcc','3@NL')]-_0x248115[_0x88fd('0xcd','jgsy')])),_0x7dc4b1[_0x88fd('0xce','&Y#L')](_0x248115[_0x88fd('0xcf','zErZ')],0.3*_0x7dc4b1['DDzQT'](_0x248115['bottom'],_0x248115[_0x88fd('0xd0','K^AY')])),_0x248115[_0x88fd('0xd1','13Ld')],_0x248115[_0x88fd('0xd2','Vtv!')]+0.3*(_0x248115['bottom']-_0x248115['top']))['findOnce']();if(_0x7dc4b1['yiFUm'](_0x32133a,null)){var _0x147492=Number(_0x32133a['text']());_0x7dc4b1['errvW'](toastLog,_0x88fd('0xd3','SYIy')+_0x147492);sleep(0x3e8);if(isNaN(_0x147492)==![]&&_0x147492<=_0x2898c4){if('Pvn'==='Pvn'){qhb=0x1;}else{gz=random(0x1,0xb4);log(_0x7dc4b1[_0x88fd('0xd4',')o2e')](gz,_0x7dc4b1[_0x88fd('0xd5','FFLW')]));if(_0x7dc4b1[_0x88fd('0xd6','Vtv!')](gz,0xaf)){_0x7dc4b1['CEQFJ'](_0x4cf9fe);_0x7dc4b1[_0x88fd('0xd7','G@)z')](_0x3d6796);var _0x3c2732=_0x7dc4b1[_0x88fd('0xd8','K^AY')](className,_0x7dc4b1['epbNJ'])[_0x88fd('0xd9','jgsy')]('关注')[_0x88fd('0xda','egRk')](!![])['enabled'](!![])[_0x88fd('0xdb',']$FZ')](_0x7dc4b1[_0x88fd('0xdc','BQTg')](device[_0x88fd('0xdd','&3$f')],0x4),0x0,device[_0x88fd('0xde',')q$f')]/0x2,device[_0x88fd('0xdf','oBvM')]/0xf)[_0x88fd('0xe0','c3bp')]();_0x7dc4b1['errvW'](sleep,0x7d0);if(_0x3c2732!=null){_0x3c2732[_0x88fd('0xe1','ROVF')]();}}}}else{qhb=0x2;}}if(_0x32133a==null){if(_0x7dc4b1[_0x88fd('0xe2',')o2e')](_0x7dc4b1[_0x88fd('0xe3','4IJ8')],_0x7dc4b1[_0x88fd('0xe4','4IJ8')])){qhb=0x2;}else{评论按钮[_0x88fd('0xe5','3@NL')]();sleep(0x5dc);if(files[_0x88fd('0xe6','ROVF')]('/sdcard/火山评论库.txt')){if(files[_0x88fd('0xe7','QvT7')]('/sdcard/火山评论库.txt')['split']('\x0a')[_0x88fd('0xe8','w4Fn')]>0x0){setText(files[_0x88fd('0xe9','BQTg')](_0x88fd('0xea','eT!y'))[_0x88fd('0xeb','K&3h')]('\x0a')[_0x7dc4b1[_0x88fd('0xec','YGJI')](random,0x0,files['read'](_0x7dc4b1[_0x88fd('0xed','&Y#L')])['split']('\x0a')['length'])]);}}sleep(0x9c4);var _0x511252=className(_0x7dc4b1['fkGtL'])['clickable'](!![])['findOnce']();sleep(0xbb8);if(_0x511252!=null){_0x511252['click']();}sleep(0xbb8);_0x7dc4b1['azbeJ'](back);}}}}function _0x4cf9fe(){var _0x194797={'kHGfc':function _0x17aa43(_0xe37cd8,_0x5e7069){return _0xe37cd8(_0x5e7069);},'WAlae':function _0x578318(_0x3ca3c0,_0x4382bf){return _0x3ca3c0(_0x4382bf);},'ezldo':_0x88fd('0xee','YGJI'),'UKZCM':_0x88fd('0xef','v$Q3'),'Ymrjz':function _0x11f778(_0x5b1a2b,_0x13a63b){return _0x5b1a2b(_0x13a63b);},'BgzBy':function _0x52f77b(_0x277fdd,_0x3fecb5){return _0x277fdd-_0x3fecb5;},'RZUiG':function _0x1f71fe(_0x3ac99e,_0x34854a){return _0x3ac99e!=_0x34854a;},'QYmtg':function _0xbb3f66(_0x446d32,_0x1e319b,_0x5f00b4,_0x446a53,_0x149ae3){return _0x446d32(_0x1e319b,_0x5f00b4,_0x446a53,_0x149ae3);},'KIVhg':function _0x4c5033(_0x34368d,_0x1b482c){return _0x34368d+_0x1b482c;},'RVUsX':function _0x43c7b3(_0x1994c8,_0x2f6df0){return _0x1994c8===_0x2f6df0;}};jc=0x0;xh1=0x1;css=0x1;while(!![]){var _0x1324e5=_0x194797[_0x88fd('0xf0','SYIy')](textContains,'说点什么')[_0x88fd('0xf1','ROVF')](!![])['findOnce']();var _0x2777e7=className(_0x88fd('0xf2','!wjm'))[_0x88fd('0xf3','2c0r')]('关闭')[_0x88fd('0xf4','Nu&O')](!![])[_0x88fd('0xf5','2c0r')]();var _0x5a72d0=_0x194797['WAlae'](packageName,_0x194797[_0x88fd('0xf6','N$Nk')])[_0x88fd('0xf7','!wjm')]('直播')['className'](_0x194797['UKZCM'])[_0x88fd('0xf1','ROVF')](![])['boundsInside'](0x69,0x5,device[_0x88fd('0xf8','Za@n')]-0x69,device[_0x88fd('0xf9','egRk')]/0x5)[_0x88fd('0xfa','wtBl')]();var _0x1c41b9=_0x194797[_0x88fd('0xfb','K&3h')](packageName,_0x194797['ezldo'])[_0x88fd('0xfc','Vtv!')]('视频')[_0x88fd('0xfd','c3bp')](_0x88fd('0xfe','K&3h'))[_0x88fd('0xff','BQTg')](![])['boundsInside'](0x69,0x5,_0x194797[_0x88fd('0x100','!wjm')](device[_0x88fd('0x101','wtBl')],0x69),device[_0x88fd('0x102','3gF[')]/0x5)[_0x88fd('0x32','Nu&O')]();if(_0x1324e5!=null&&_0x2777e7!=null){xh1--;jc=0x1;break;}else if(_0x5a72d0!=null&&_0x194797[_0x88fd('0x103','^ju9')](_0x1c41b9,null)){jc=0x2;xh1--;var _0x414654=_0x194797[_0x88fd('0x104','ROVF')](boundsInside,_0x194797[_0x88fd('0x105','zErZ')](_0x5a72d0['bounds']()[_0x88fd('0x106','egRk')],0x1e),_0x194797[_0x88fd('0x107','ROVF')](_0x5a72d0[_0x88fd('0x108','rtMY')]()[_0x88fd('0x109','mAL5')],0x1e),_0x194797[_0x88fd('0x10a',')q$f')](_0x5a72d0['bounds']()['right'],0x1e),_0x194797[_0x88fd('0x10b','Vtv!')](_0x5a72d0[_0x88fd('0x10c','2c0r')]()[_0x88fd('0x10d','zErZ')],0x1e))[_0x88fd('0x10e','yf#V')](!![])['find']();if(_0x194797['RZUiG'](_0x414654,null)){_0x414654[_0x88fd('0x10f','20#)')]();sleep(0x9c4);}break;}else{if(_0x194797[_0x88fd('0x110','N$Nk')](_0x88fd('0x111','QvT7'),'mjk')){xh1++;if(xh1>0x6){jc=0x3;break;}}else{app['launchApp'](APPNAME);_0x194797[_0x88fd('0x112','N$Nk')](sleep,0x1388);}}_0x194797['Ymrjz'](sleep,0x7d0);}}function _0x3d6796(){var _0x2873f5={'mpfSQ':function _0x5f5b6c(_0x454bdd,_0x462231){return _0x454bdd!==_0x462231;},'aGoRb':_0x88fd('0x113','2vFb'),'Qywlm':function _0x277b7d(_0x4f9d16,_0x4aad4e){return _0x4f9d16(_0x4aad4e);},'iZKyc':function _0x14cdb0(_0x3fe92a,_0x969712){return _0x3fe92a==_0x969712;},'KEoAN':_0x88fd('0x114','wtBl'),'EYVXT':_0x88fd('0x115','v$Q3'),'GKLpP':_0x88fd('0x116',']$FZ'),'FmdHI':_0x88fd('0x117','e10Q'),'kJuDf':function _0x3a92b0(_0x141941,_0x9318cd){return _0x141941-_0x9318cd;},'RuOqL':function _0x291017(_0x270a57,_0x418d35){return _0x270a57/_0x418d35;},'nUEFS':function _0xdfc093(_0x56d92a,_0x573459){return _0x56d92a-_0x573459;},'RcmFk':function _0x27381d(_0x5875f9,_0x1974d6){return _0x5875f9-_0x1974d6;},'MWNfi':function _0x580f2a(_0x2e2404,_0x5b515){return _0x2e2404+_0x5b515;},'zWEmf':function _0x36209f(_0x4b65e0,_0xadb3e8){return _0x4b65e0+_0xadb3e8;},'nqEYU':_0x88fd('0x118','20#)'),'MESCo':function _0x3f95fa(_0x4a7693,_0x37b713){return _0x4a7693/_0x37b713;},'vyQdM':function _0x482f28(_0x55ebb2,_0x41f8d5){return _0x55ebb2!=_0x41f8d5;}};if(_0x2873f5['mpfSQ'](_0x2873f5[_0x88fd('0x119','rtMY')],_0x2873f5[_0x88fd('0x11a','3@NL')])){if(ui[_0x88fd('0x11b','mAL5')]['checked']==!![]){_0x3a2d96();}scrollDown();}else{if(jc==0x2){var _0x969697=className('android.widget.RelativeLayout')[_0x88fd('0x11c','jgsy')](!![])[_0x88fd('0x11d','%0od')](!![])[_0x88fd('0x11e','%0od')](0x2,device[_0x88fd('0xdf','oBvM')]/0x8,device['width']-0x2,device[_0x88fd('0x11f',']$FZ')])[_0x88fd('0x120','egRk')]();log(_0x969697);_0x2873f5[_0x88fd('0x121','yf#V')](sleep,0x7d0);_0x969697[_0x88fd('0x122','Za@n')]();}else if(_0x2873f5[_0x88fd('0x123','w[@&')](jc,0x3)){if(_0x2873f5['KEoAN']!==_0x2873f5[_0x88fd('0x124',')o2e')]){var _0x55c0a3=_0x88fd('0x125','13Ld')[_0x88fd('0x126','v$Q3')]('|'),_0x15f000=0x0;while(!![]){switch(_0x55c0a3[_0x15f000++]){case'0':_0x2873f5[_0x88fd('0x127','G@)z')](sleep,0x1388);continue;case'1':_0x3dec9d(APPNAME);continue;case'2':_0x38a7bf();continue;case'3':sleep(0x7d0);continue;case'4':_0x5c396a['click']();continue;case'5':while(!![]){var _0x28ccf=packageName(_0x2873f5['GKLpP'])[_0x88fd('0x128','egRk')]('直播')[_0x88fd('0x129','v$Q3')](_0x2873f5[_0x88fd('0x12a','FFLW')])['clickable'](![])[_0x88fd('0x12b','&3$f')](0x69,0x5,_0x2873f5[_0x88fd('0x12c','SYIy')](device[_0x88fd('0x12d','QvT7')],0x69),_0x2873f5['RuOqL'](device[_0x88fd('0x12e','&Y#L')],0x5))[_0x88fd('0x12f','sYOl')]();var _0x1271f0=packageName(_0x2873f5[_0x88fd('0x130','jgsy')])[_0x88fd('0x131','3@NL')]('视频')['className'](_0x88fd('0x132','ROVF'))[_0x88fd('0xf4','Nu&O')](![])['boundsInside'](0x69,0x5,_0x2873f5[_0x88fd('0x133','Nu&O')](device[_0x88fd('0x134','&Y#L')],0x69),device[_0x88fd('0x135','ROVF')]/0x5)[_0x88fd('0x136','!6CW')]();if(_0x28ccf!=null&&_0x1271f0!=null){_0x2873f5[_0x88fd('0x137','oBvM')](toastLog,_0x88fd('0x138','Vtv!'));var _0x2ae70b=boundsInside(_0x2873f5['nUEFS'](_0x28ccf[_0x88fd('0x139',')q$f')]()[_0x88fd('0x13a','SYIy')],0x1e),_0x2873f5[_0x88fd('0x13b','K&3h')](_0x28ccf[_0x88fd('0x13c','13Ld')]()[_0x88fd('0x13d','eT!y')],0x1e),_0x2873f5['MWNfi'](_0x28ccf[_0x88fd('0x5f','yf#V')]()[_0x88fd('0x13e','%FV[')],0x1e),_0x2873f5['zWEmf'](_0x28ccf[_0x88fd('0x13f','!6CW')]()[_0x88fd('0x140','Za@n')],0x1e))[_0x88fd('0x141','%0od')](!![])[_0x88fd('0x142','^ju9')]();if(_0x2ae70b!=null){_0x2ae70b['click']();}var _0x5c396a=_0x2873f5[_0x88fd('0x143','JcCH')](className,_0x2873f5[_0x88fd('0x144','Po)x')])[_0x88fd('0x145','K^AY')](!![])[_0x88fd('0x146','w4Fn')](!![])['boundsInside'](0x2,_0x2873f5[_0x88fd('0x147','K^AY')](device[_0x88fd('0x148','BQTg')],0x8),device[_0x88fd('0x149','jgsy')]-0x2,device[_0x88fd('0x14a','G@)z')])['findOnce']();if(_0x2873f5[_0x88fd('0x14b','jgsy')](_0x5c396a,null)){break;}}}continue;case'6':_0x2873f5[_0x88fd('0x14c','w[@&')](toastLog,_0x88fd('0x14d','%0od'));continue;case'7':var _0x5c396a=className(_0x2873f5[_0x88fd('0x14e','&3$f')])[_0x88fd('0x14f','Vtv!')](!![])[_0x88fd('0x150','FFLW')](!![])['boundsInside'](0x2,_0x2873f5[_0x88fd('0x151','4IJ8')](device[_0x88fd('0x152','w4Fn')],0x8),device['width']-0x2,device[_0x88fd('0x102','3gF[')])[_0x88fd('0x153','il(g')]();continue;}break;}}else{红包1[i]['click']();i=_0x2873f5['zWEmf'](i,0x1);sleep(0x64);}}}}function _0x49cf2a(){var _0x11ac6d={'sBJnO':function _0x27bf66(_0x42d6c9,_0x2ac620){return _0x42d6c9!==_0x2ac620;},'POenR':_0x88fd('0x154','jgsy'),'ATRxe':function _0x17d93c(_0x5bdea4,_0x44cda4){return _0x5bdea4(_0x44cda4);},'TkQzj':function _0x1cb428(_0x21c350,_0x1a5b1a,_0x201714){return _0x21c350(_0x1a5b1a,_0x201714);},'cduJT':function _0x251928(_0xbcca6,_0x60a9fd){return _0xbcca6>=_0x60a9fd;},'axVZI':function _0x15c8ca(_0x5bef2f,_0x5110da){return _0x5bef2f/_0x5110da;},'kQVjc':function _0x9fb70c(_0x3b962b,_0x5d5b72){return _0x3b962b/_0x5d5b72;},'fcEjw':_0x88fd('0x155',']$FZ'),'eUVke':function _0x16da8f(_0xa88137){return _0xa88137();},'OEZLr':function _0x1f74b5(_0x382777,_0x174b4c){return _0x382777(_0x174b4c);},'CARsY':_0x88fd('0x156','eT!y'),'onatc':function _0x11b4e5(_0x50dda8,_0x32ab3f){return _0x50dda8(_0x32ab3f);},'IPddU':function _0x121959(_0x4e2a9f,_0x571c86){return _0x4e2a9f(_0x571c86);},'ogJkI':function _0x4a4cbf(_0x110085,_0x4c3f5c){return _0x110085(_0x4c3f5c);},'ZqwbI':function _0x566a16(_0x1519ca,_0x4c2c08){return _0x1519ca!=_0x4c2c08;},'zYzqw':'开始运行','cpSwX':function _0x2b22bc(_0x1be763,_0x54b18,_0x3c1ed0,_0x5b7b8e,_0x564fc7){return _0x1be763(_0x54b18,_0x3c1ed0,_0x5b7b8e,_0x564fc7);},'xihRG':function _0x2f6d09(_0x29c98c,_0x9b9d8c){return _0x29c98c+_0x9b9d8c;},'snWiy':function _0x4ab4c0(_0xa19600,_0x29cadd){return _0xa19600+_0x29cadd;},'SBTht':function _0x418c87(_0x1f3c1c,_0x8bf816){return _0x1f3c1c-_0x8bf816;},'GtVxn':function _0x4d8baa(_0x18bfbb,_0x2d8a20,_0x4bd2a6,_0x4c8a51,_0x49efd8){return _0x18bfbb(_0x2d8a20,_0x4bd2a6,_0x4c8a51,_0x49efd8);},'SMAsS':function _0x34829e(_0x273234,_0x4cf0e8){return _0x273234-_0x4cf0e8;},'yTJUs':function _0x43357e(_0x352a49,_0x3cfe9a){return _0x352a49==_0x3cfe9a;},'eVmyi':'snssdk1112://profile?id=','vhJLK':_0x88fd('0x157','QvT7'),'TvVZu':function _0x485cf5(_0x24c5a0,_0x244b77){return _0x24c5a0!=_0x244b77;},'wkCPX':function _0x4c5d83(_0x35d6ec,_0x300be9){return _0x35d6ec!=_0x300be9;},'DWfOT':_0x88fd('0x158','Za@n'),'HAoSh':function _0x2fd208(_0x42ddc2,_0x5cf92e){return _0x42ddc2(_0x5cf92e);},'aLQFh':function _0x18d71a(_0x6499f0,_0x3ca278){return _0x6499f0!==_0x3ca278;},'VatuS':function _0x5c68a8(_0x2d4347,_0x31ddb0){return _0x2d4347!=_0x31ddb0;},'Zggqb':_0x88fd('0x159','N$Nk'),'cmDLa':function _0x3328a9(_0x4a47ef,_0x19ff85){return _0x4a47ef===_0x19ff85;},'jAsIP':function _0x48421c(_0x438ff4,_0x23c165){return _0x438ff4(_0x23c165);},'sSFUA':'scroll_layout','sALNv':'Yke','LNZev':function _0x462def(__0x6f217a8,_0x5c706a){return __0x6f217a8(_0x5c706a);},'vlQXg':function _0x25880a(_0x3553ac,_0x3dfc39){return _0x3553ac(_0x3dfc39);},'QeutB':_0x88fd('0x15a','Nu&O'),'ZykMO':'WXw','xZZFX':_0x88fd('0x15b','v$Q3'),'ssZrR':_0x88fd('0x15c','13Ld'),'dEpRR':function _0x1da613(_0x4efa39,_0x1e6449){return _0x4efa39(_0x1e6449);},'TXAnj':function _0x294fa3(_0x440134,_0x158388){return _0x440134(_0x158388);},'ijWVs':function _0x579704(_0x1b40ed,_0x262922){return _0x1b40ed!=_0x262922;},'WJCil':function _0x36bc11(_0x134504,_0x1c4a72){return _0x134504*_0x1c4a72;},'HtKMn':_0x88fd('0x15d','w4Fn'),'lFRQw':'发私信','Nrnmk':'jEj','xIebJ':function _0x1ad7ae(_0x235218,_0x2db56e){return _0x235218(_0x2db56e);},'EtNgn':_0x88fd('0x15e','%FV['),'CbJwZ':function _0x2fd526(_0x5e7e52,_0x3da304){return _0x5e7e52(_0x3da304);},'KwaAC':_0x88fd('0x15f','e10Q'),'jqWnM':_0x88fd('0x160','%FV['),'YTCuB':_0x88fd('0x161','il(g'),'msiSV':function _0xb56614(_0x4f247b,_0x191703){return _0x4f247b(_0x191703);},'laVVz':_0x88fd('0x162','egRk'),'afDfE':_0x88fd('0x163',')o2e'),'OwIWd':function _0x254326(_0x8d36f,_0x1e8d8e){return _0x8d36f!=_0x1e8d8e;},'gloHX':function _0x2cc813(_0x516ef9,_0x11b47){return _0x516ef9===_0x11b47;},'jIzKh':'IPC','iLyZT':function _0x1fa568(_0x102a79,_0x207726){return _0x102a79(_0x207726);},'qRdEf':function _0x4414d0(_0x3de3d2,_0x1711be){return _0x3de3d2!==_0x1711be;},'TlDgU':'doH','HVvIU':function _0x184b50(_0x5ea7f6){return _0x5ea7f6();},'eMcLY':_0x88fd('0x164','mAL5'),'mnrpF':function _0x175c5f(_0x13c8d4,_0x510942){return _0x13c8d4*_0x510942;},'nYQTR':function _0x5a6e3f(_0x3443a6,_0x20650d){return _0x3443a6(_0x20650d);},'QlCIe':_0x88fd('0x165','K^AY'),'aHQCs':function _0x55116b(_0x552c4a,_0x41f943){return _0x552c4a(_0x41f943);},'OhZJD':function _0x2e0308(_0x37c78e,_0x3a6d84){return _0x37c78e(_0x3a6d84);},'MEOEp':_0x88fd('0x166','G@)z'),'JwySH':function _0x2cb60a(_0x4a432e,_0x1eeae7){return _0x4a432e(_0x1eeae7);},'cPNzY':function _0x395514(_0x50abb7,_0x5bbbb1){return _0x50abb7(_0x5bbbb1);},'XQBWz':_0x88fd('0x167','2c0r'),'cyXva':function _0x55daea(_0x191ac3,_0xbf1edb){return _0x191ac3!=_0xbf1edb;},'rqAIz':function _0x43bc0a(_0x1aca72){return _0x1aca72();},'ysHKH':function _0x38ea5c(_0x368fda,_0x470c03){return _0x368fda(_0x470c03);},'tTcao':function _0x1e8edb(_0x52775f){return _0x52775f();},'dgtfW':_0x88fd('0x168','!6CW'),'NwxGL':_0x88fd('0x169','QvT7'),'clAiC':function _0x288aea(_0x41cda0,_0x39be82){return _0x41cda0!=_0x39be82;},'LTRPP':'Dfa','wDEfa':_0x88fd('0x16a','2c0r'),'qGRAs':function _0xec0c0b(_0x956bfe,_0x44a508){return _0x956bfe>_0x44a508;},'jGslj':function _0x134853(_0x11b83a,_0x53536d){return _0x11b83a!==_0x53536d;},'DyFrO':_0x88fd('0x16b','3@NL'),'ojxUg':'YCS','ZCuue':'android.widget.RelativeLayout','VMQRz':function _0x26f392(_0x5d2115,_0x50bf01){return _0x5d2115(_0x50bf01);},'OvrtW':_0x88fd('0x16c','3gF['),'RvOws':function _0x194c72(_0x2bf13b,_0x188aed,_0x76cbb1,_0x2ec93b,_0x337bc7){return _0x2bf13b(_0x188aed,_0x76cbb1,_0x2ec93b,_0x337bc7);},'kxnhG':function _0x485ec1(_0x5f0da1,_0x8c8cf5){return _0x5f0da1(_0x8c8cf5);},'ERPMK':function _0x5d4139(_0x355923,_0x32f815){return _0x355923(_0x32f815);},'foiGv':_0x88fd('0x16d','il(g'),'bKPnS':function _0xc66a7d(_0x21590e,_0x1cd7aa){return _0x21590e!=_0x1cd7aa;},'zxsmR':function _0x422f60(_0x1fc9de,_0x554673){return _0x1fc9de(_0x554673);},'FNZXT':function _0xbfaf6c(_0x403995,_0x45390e,_0x364202){return _0x403995(_0x45390e,_0x364202);},'kBbpX':function _0x10836f(_0x3cf1d2){return _0x3cf1d2();},'iZkIn':'转发按钮','tXjrh':'YxP','jKHEP':function _0x51c612(_0x5e2abc,_0x1b4b8a){return _0x5e2abc(_0x1b4b8a);},'rxAfO':'知道了','OCggQ':function _0x153f43(_0x433252,_0x315459){return _0x433252!=_0x315459;},'eiwdS':function _0x559138(_0x38e721,_0x691028){return _0x38e721>=_0x691028;},'BwwMc':function _0x2a7785(_0x346c03,_0x1eb8d4){return _0x346c03!=_0x1eb8d4;},'ltLSl':_0x88fd('0x16e','rtMY'),'cGweO':'抖音火山版','QhSfq':function _0x17ed51(_0x5d8fa0,_0x5aa2da){return _0x5d8fa0>_0x5aa2da;},'lbiUQ':function _0x427558(_0xaf6ac0,_0xa892fc){return _0xaf6ac0*_0xa892fc;},'leUWL':function _0x37f6ff(_0x552df3,_0x4580c4){return _0x552df3(_0x4580c4);},'nHlfa':function _0x325d51(_0xabb757,_0x36bcb9){return _0xabb757<_0x36bcb9;},'lpHpL':function _0x46143c(_0x3caf84,_0x70059f){return _0x3caf84(_0x70059f);},'gsnvs':function _0x4ba61c(_0x419ded,_0x1ee2b0){return _0x419ded(_0x1ee2b0);},'DotcC':'=========滑动次数','wWvgH':function _0x1f1f42(_0x5c82e1,_0x34da62,_0x49410f){return _0x5c82e1(_0x34da62,_0x49410f);}};log(_0x11ac6d[_0x88fd('0x16f',')o2e')]('make',device[_0x88fd('0x170','w[@&')]));cnm=0x0;uio=0x0;rt=0x1;while(!![]){d=random(0x1,0x3);id1=0xb7ba6b6d0288d;id2=0x12ea957806;id3=0x65bac435c3ade;if(d==0x1){url=_0x88fd('0x171','^ju9')+id1[_0x88fd('0x172','20#)')]();}else if(d==0x2){url=_0x11ac6d[_0x88fd('0x173','BQTg')](_0x88fd('0x174','3@NL'),id2[_0x88fd('0x175','%0od')]());}else if(_0x11ac6d[_0x88fd('0x176','Za@n')](d,0x3)){url=_0x11ac6d[_0x88fd('0x177','w4Fn')](_0x11ac6d[_0x88fd('0x178','oBvM')],id3[_0x88fd('0x179',']$FZ')]());}log('startActivity');try{if('dEm'===_0x11ac6d[_0x88fd('0x17a','ROVF')]){_0xc8ea8['click']();}else{app['startActivity']({'data':url});_0x11ac6d['ogJkI'](sleep,0xbb8);}}catch(_0x1a63ef){log(_0x1a63ef);}sleep(0x7d0);var _0x157862=_0x11ac6d[_0x88fd('0x17b','FFLW')](text,'火力')[_0x88fd('0x17c',')o2e')]();var _0x52cc2e=_0x11ac6d[_0x88fd('0x17d','wtBl')](text,_0x88fd('0x17e','YGJI'))[_0x88fd('0x17f','13Ld')]();if(_0x11ac6d[_0x88fd('0x180','zErZ')](_0x157862,null)&&_0x11ac6d[_0x88fd('0x181','sYOl')](_0x52cc2e,null)){gh=0x0;while(!![]){var _0x4d4bb0=text(_0x11ac6d[_0x88fd('0x182','Za@n')])['findOnce']();_0x11ac6d['HAoSh'](log,_0x4d4bb0);if(_0x4d4bb0!=null){if(_0x11ac6d[_0x88fd('0x183','e10Q')]('JjM',_0x88fd('0x184','zErZ'))){var _0x157862=text('火力')[_0x88fd('0x185','jgsy')]();if(_0x11ac6d[_0x88fd('0x186','egRk')](_0x157862,null)){var _0x5b2ffd=_0x11ac6d[_0x88fd('0x187','3@NL')](className,_0x11ac6d[_0x88fd('0x188','2c0r')])['clickable'](!![])[_0x88fd('0x189','N$Nk')](_0x157862[_0x88fd('0x5f','yf#V')]()[_0x88fd('0x18a','^ju9')],_0x157862[_0x88fd('0x18b','K^AY')]()[_0x88fd('0x18c','FFLW')],_0x4d4bb0[_0x88fd('0x18d','zErZ')]()['right']+0x14,_0x4d4bb0[_0x88fd('0x18b','K^AY')]()['top'])[_0x88fd('0x18e','K^AY')]();if(_0x5b2ffd!=null){if(_0x11ac6d['cmDLa'](_0x88fd('0x18f','13Ld'),_0x88fd('0x190','egRk'))){_0x4605fd[_0x88fd('0x191','sYOl')]()[_0x88fd('0x192','K^AY')]();}else{_0x5b2ffd[_0x88fd('0x3f','w4Fn')]();}}}}else{_0x11ac6d[_0x88fd('0x193','rtMY')](log,'点击');_0x23edd3[_0x88fd('0x194','oBvM')]();demonumber=_0x11ac6d[_0x88fd('0x195','e10Q')](demonumber,0x1);flamenumber=flamenumber-0xa;}}var _0x3f1e6a=_0x11ac6d['jAsIP'](idContains,_0x11ac6d['sSFUA'])[_0x88fd('0x196',']$FZ')](!![])[_0x88fd('0x136','!6CW')]();if(_0x11ac6d[_0x88fd('0x197','il(g')](_0x3f1e6a,null)){if(_0x11ac6d[_0x88fd('0x198','SYIy')]!=='BlC'){_0x11ac6d[_0x88fd('0x199','&Y#L')](log,_0x3f1e6a);var _0x3e0243=_0x11ac6d[_0x88fd('0x19a','2c0r')](textContains,_0x11ac6d[_0x88fd('0x19b','%FV[')])[_0x88fd('0x19c','%0od')]();if(_0x11ac6d['VatuS'](_0x3e0243,null)){if(_0x88fd('0x19d','%0od')!==_0x11ac6d[_0x88fd('0x19e','il(g')]){scrollDown();}else{log(_0x3e0243);_0x3f1e6a[_0x88fd('0x19f','QvT7')]();}}}else{var _0x377583=className(_0x11ac6d['xZZFX'])[_0x88fd('0x1a0','w4Fn')](!![])['boundsInside'](device[_0x88fd('0x1a1','Po)x')]*0x2/0x3,0x0,device['width'],_0x317f8b[_0x88fd('0x1a2','ROVF')]()[_0x88fd('0x1a3','&3$f')])[_0x88fd('0x1a4','c3bp')](0x7d0);if(_0x377583!=null){log(_0x377583);_0x377583['click']();}}}if(_0x4d4bb0==null){gh=gh+0x1;if(gh>0x2){if(_0x11ac6d[_0x88fd('0x1a5','SYIy')]===_0x11ac6d[_0x88fd('0x1a6','JcCH')]){break;}else{_0x11ac6d[_0x88fd('0x1a7','K^AY')](log,_0x3f1e6a);var _0x5e16b=textContains(_0x11ac6d['QeutB'])[_0x88fd('0x1a8','yf#V')]();if(_0x11ac6d[_0x88fd('0x1a9','rtMY')](_0x5e16b,null)){log(_0x5e16b);_0x3f1e6a[_0x88fd('0x1aa','BQTg')]();}}}}_0x11ac6d[_0x88fd('0x1ab','FFLW')](sleep,0x4b0);}}var _0x52cc2e=_0x11ac6d['TXAnj'](text,_0x88fd('0x1ac','!6CW'))['findOnce']();log(_0x52cc2e);if(_0x11ac6d[_0x88fd('0x1ad','eT!y')](_0x52cc2e,null)){var _0x165db7=boundsInside(0x0,_0x52cc2e[_0x88fd('0x4c','egRk')]()[_0x88fd('0x18c','FFLW')],device[_0x88fd('0xf8','Za@n')],_0x11ac6d[_0x88fd('0x1ae',')o2e')](device[_0x88fd('0x1af','QvT7')],0x2))[_0x88fd('0x1b0','JcCH')](_0x88fd('0x1b1','&Y#L'))['clickable'](!![])['find']();if(_0x165db7[_0x88fd('0x1b2',')o2e')]>0x3){if('Atd'==='spU'){_0x11ac6d['TXAnj'](toast,_0x11ac6d[_0x88fd('0x1b3',')q$f')]);}else{var _0x317f8b=_0x11ac6d[_0x88fd('0x1b4','3gF[')](textContains,_0x11ac6d[_0x88fd('0x1b5','3gF[')])['findOnce']();if(_0x157862!=null){if('ESL'===_0x11ac6d[_0x88fd('0x1b6','^ju9')]){_0x11ac6d['eUVke'](back);}else{sleep(0x5dc);if(_0x317f8b==null){var _0x59c9f3=_0x11ac6d['TXAnj'](text,'关注')[_0x88fd('0x1b7','eT!y')](!![])[_0x88fd('0x1b8','BQTg')]();if(_0x59c9f3!=null){_0x59c9f3['click']();}}break;}}}}}rt++;if(rt>0x3){if('cyq'!=='cyq'){if(minu==ui['timepicker'][_0x88fd('0x1b9','HVrR')]){_0x11ac6d['xIebJ'](toastLog,_0x11ac6d[_0x88fd('0x1ba','v$Q3')]);A['interrupt']();_0x3dec9d(APPNAME);exit();}}else{rt=0x1;_0x11ac6d[_0x88fd('0x1bb','w4Fn')](_0x3dec9d,APPNAME);}}sleep(0x9c4);}if(uio<=0x3){if(_0x11ac6d[_0x88fd('0x1bc',')q$f')](_0x88fd('0x1bd','w4Fn'),_0x11ac6d[_0x88fd('0x1be','il(g')])){toastLog(_0x11ac6d['jqWnM']);}else{function _0x146e03(){if(_0x11ac6d[_0x88fd('0x1bf','&3$f')](_0x11ac6d['POenR'],_0x88fd('0x1c0','zErZ'))){_0x11ac6d['ATRxe'](log,_0x88fd('0x1c1','^ju9'));uuu=_0x11ac6d[_0x88fd('0x1c2','v$Q3')](random,0x1,0xa);if(_0x11ac6d[_0x88fd('0x1c3',')q$f')](uuu,0x5)){var _0x384a83=descContains(_0x88fd('0x1c4',')q$f'))[_0x88fd('0x1c5','FFLW')](!![])[_0x88fd('0x1c6','!6CW')](_0x11ac6d[_0x88fd('0x1c7','&3$f')](device['width'],0x2),_0x11ac6d['kQVjc'](device[_0x88fd('0x14a','G@)z')],0x3),device['width'],device[_0x88fd('0x1c8','3@NL')])['findOnce']();if(_0x384a83!=null){var _0x5342fa=_0x11ac6d['fcEjw'][_0x88fd('0x1c9','%0od')]('|'),_0x2198b4=0x0;while(!![]){switch(_0x5342fa[_0x2198b4++]){case'0':if(_0x269b5a!=null){if(_0x11ac6d[_0x88fd('0x1ca','2c0r')](_0x88fd('0x1cb','!IVq'),'lNy')){_0x11ac6d[_0x88fd('0x1cc','YGJI')](toastLog,_0x88fd('0x1cd','Nu&O'));_0x11ac6d[_0x88fd('0x1ce','FFLW')](exit);}else{var _0xc16a70=_0x11ac6d[_0x88fd('0x1cf',']$FZ')](Number,_0x269b5a[_0x88fd('0x1d0','mAL5')]());_0x11ac6d[_0x88fd('0x1d1','SYIy')](log,_0xc16a70);if(_0xc16a70<_0x336698){_0x384a83['click']();}}}continue;case'1':if(_0x45e687!=null){if(_0x88fd('0x1d2','ROVF')==='vJP'){var _0x336698=Number(_0x45e687[_0x88fd('0x1d3','wtBl')]());_0x11ac6d[_0x88fd('0x1d4','K&3h')](log,_0x336698);_0x384a83[_0x88fd('0x1aa','BQTg')]();}else{var _0x58bb56=_0x11ac6d[_0x88fd('0x1d5','sYOl')]['split']('|'),_0x50ec47=0x0;while(!![]){switch(_0x58bb56[_0x50ec47++]){case'0':_0x11ac6d[_0x88fd('0x1d6','G@)z')](sleep,0x7d0);continue;case'1':_0x11ac6d[_0x88fd('0x1d7','egRk')](toastLog,'启动');continue;case'2':var _0x1fb7e1=_0x11ac6d[_0x88fd('0x1d8','!wjm')](textContains,'确定')[_0x88fd('0x1d9','egRk')](_0x88fd('0x1da','4IJ8'))['clickable'](!![])['findOnce']();continue;case'3':if(_0x1fb7e1!=null){_0x1fb7e1['click']();_0x11ac6d['ogJkI'](sleep,0x3e8);}continue;case'4':_0x11ac6d[_0x88fd('0x1db','zErZ')](sleep,0x7d0);continue;case'5':if(_0x11ac6d['ZqwbI'](_0x3409d9,null)){_0x3409d9['click']();}continue;case'6':var _0x3409d9=text(_0x11ac6d[_0x88fd('0x1dc','Vtv!')])['className']('android.widget.Button')[_0x88fd('0x1dd','QvT7')](!![])[_0x88fd('0x1de','HVrR')]();continue;}break;}}}continue;case'2':sleep(0x3e8);continue;case'3':var _0x45e687=_0x11ac6d[_0x88fd('0x1df','%FV[')](boundsInside,_0x11ac6d[_0x88fd('0x1e0','&3$f')](_0x384a83[_0x88fd('0x1a2','ROVF')]()[_0x88fd('0x1e1','YGJI')],0x1),_0x11ac6d['snWiy'](_0x384a83[_0x88fd('0x1e2','e10Q')]()['top'],0x1),_0x384a83['bounds']()['right']-0x1,_0x11ac6d['SBTht'](_0x384a83[_0x88fd('0x1e3','FFLW')]()[_0x88fd('0x1e4','egRk')],0x1))[_0x88fd('0xfa','wtBl')]();continue;case'4':var _0x269b5a=_0x11ac6d[_0x88fd('0x1e5','YGJI')](boundsInside,_0x11ac6d[_0x88fd('0x1e6','il(g')](_0x384a83[_0x88fd('0x13f','!6CW')]()[_0x88fd('0x1e7','BQTg')],0x1),_0x384a83[_0x88fd('0x1e8','YGJI')]()['top']+0x1,_0x384a83['bounds']()[_0x88fd('0x1e9','3gF[')]-0x1,_0x11ac6d[_0x88fd('0x1ea',')q$f')](_0x384a83['bounds']()[_0x88fd('0x1eb','&Y#L')],0x1))['findOnce']();continue;}break;}}}}else{_0x5b2ffd[_0x88fd('0x1ec','w[@&')]();}}p=0x1;while(!![]){var _0x52cc2e=text(_0x11ac6d[_0x88fd('0x1ed',')q$f')])[_0x88fd('0x1ee','YGJI')]();_0x11ac6d['msiSV'](log,_0x52cc2e);if(_0x52cc2e!=null){if(_0x11ac6d[_0x88fd('0x1ef','c3bp')](_0x11ac6d[_0x88fd('0x1f0','BQTg')],_0x11ac6d['afDfE'])){var _0x380d44=_0x11ac6d[_0x88fd('0x1f1','!6CW')](boundsContains,_0x52cc2e[_0x88fd('0x1e2','e10Q')]()['left'],_0x52cc2e['bounds']()[_0x88fd('0x1f2','2vFb')],_0x52cc2e['bounds']()[_0x88fd('0x1f3','oBvM')],_0x52cc2e['bounds']()['bottom'])[_0x88fd('0x1f4','HVrR')](!![])[_0x88fd('0x1f5','oBvM')]();if(_0x11ac6d[_0x88fd('0x1f6','!6CW')](_0x380d44,null)){if(_0x11ac6d[_0x88fd('0x1f7',')o2e')](_0x88fd('0x1f8','Za@n'),_0x11ac6d[_0x88fd('0x1f9','3gF[')])){_0x11ac6d['msiSV'](log,_0x380d44);_0x380d44[_0x88fd('0x1fa','jgsy')]();_0x11ac6d['msiSV'](sleep,0x7d0);}else{_0x11ac6d['msiSV'](log,_0x4a21a9);var _0x310132=clickable(!![])[_0x88fd('0x1fb','G@)z')](_0x4a21a9[_0x88fd('0x139',')q$f')]()[_0x88fd('0x1fc','c3bp')],_0x4a21a9[_0x88fd('0x1fd','SYIy')]()[_0x88fd('0x1a3','&3$f')],_0x4a21a9[_0x88fd('0x1fe','v$Q3')]()[_0x88fd('0x1ff',')o2e')],_0x4a21a9[_0x88fd('0x18b','K^AY')]()[_0x88fd('0x200','^ju9')])[_0x88fd('0x185','jgsy')]();}}}else{cv++;_0x4605fd['parent']()[_0x88fd('0x201','zErZ')]();}}var _0x24a8db=_0x11ac6d[_0x88fd('0x202',']$FZ')](textContains,_0x88fd('0x203','w[@&'))[_0x88fd('0x204','3gF[')]();if(_0x11ac6d['OwIWd'](_0x24a8db,null)){if(_0x11ac6d[_0x88fd('0x205','BQTg')](_0x11ac6d[_0x88fd('0x206','egRk')],_0x11ac6d[_0x88fd('0x207','YGJI')])){_0x11ac6d[_0x88fd('0x208','K^AY')](back);}else{log(_0x24a8db);钻石数量=className(_0x11ac6d['eMcLY'])[_0x88fd('0x209','eT!y')](_0x24a8db[_0x88fd('0x20a',']$FZ')]()[_0x88fd('0x20b','eT!y')],_0x24a8db[_0x88fd('0x20c','4IJ8')]()[_0x88fd('0x20d','2c0r')],_0x24a8db[_0x88fd('0x20e','!wjm')]()[_0x88fd('0x20f','YGJI')]+_0x11ac6d[_0x88fd('0x210','w4Fn')](_0x11ac6d[_0x88fd('0x211','4IJ8')](_0x24a8db[_0x88fd('0x20c','4IJ8')]()[_0x88fd('0x212','K&3h')],_0x24a8db[_0x88fd('0x1e8','YGJI')]()[_0x88fd('0x213','%FV[')]),0x2),_0x24a8db[_0x88fd('0x214','Za@n')]()[_0x88fd('0x215','e10Q')])['findOnce']();if(钻石数量!=null){if(_0x11ac6d['nYQTR'](isNaN,_0x11ac6d[_0x88fd('0x216','G@)z')](Number,钻石数量[_0x88fd('0x217','zErZ')]()))==![]){if(_0x88fd('0x218','jgsy')===_0x11ac6d[_0x88fd('0x219','rtMY')]){发送按钮['click']();}else{log(_0x88fd('0x21a','2c0r')+_0x11ac6d[_0x88fd('0x21b','&Y#L')](Number,钻石数量[_0x88fd('0x73','3gF[')]()));demonumber=_0x11ac6d['OhZJD'](Number,钻石数量[_0x88fd('0x21c','2vFb')]());_0x11ac6d[_0x88fd('0x21d','Po)x')](log,demonumber);hhh=0x1;while(!![]){var _0x3c954d=_0x11ac6d[_0x88fd('0x21e','K^AY')](textContains,_0x11ac6d[_0x88fd('0x21f',')q$f')])['clickable'](!![])['findOnce']();if(_0x11ac6d['OwIWd'](_0x3c954d,null)){log(_0x3c954d);var _0x2cc453=_0x11ac6d[_0x88fd('0x220','Po)x')](className,'android.widget.ImageView')[_0x88fd('0x221','il(g')](!![])['boundsInside'](_0x3c954d[_0x88fd('0x1a2','ROVF')]()[_0x88fd('0x222','!wjm')],_0x3c954d['bounds']()[_0x88fd('0x223','JcCH')],device['width'],_0x3c954d[_0x88fd('0x224','N$Nk')]()['bottom'])['findOnce']();if(_0x2cc453!=null){_0x11ac6d[_0x88fd('0x225','FFLW')](log,_0x2cc453);_0x2cc453['click']();}}if(_0x3c954d==null){if(_0x11ac6d['XQBWz']!=='UcC'){break;}else{var _0xdafc53=video['parent']();if(_0x11ac6d['cyXva'](_0xdafc53,null)){var _0x563399=_0x11ac6d['GtVxn'](bounds,_0xdafc53[_0x88fd('0x226','oBvM')]()[_0x88fd('0x227','K&3h')],_0xdafc53[_0x88fd('0x224','N$Nk')]()['top'],_0xdafc53[_0x88fd('0x228','il(g')]()[_0x88fd('0x229','yf#V')],_0xdafc53[_0x88fd('0x214','Za@n')]()[_0x88fd('0x22a','ROVF')])['clickable'](!![])[_0x88fd('0x22b','K&3h')]();if(_0x563399!=null){_0x563399[_0x88fd('0x22c','13Ld')]();}}}}hhh++;if(hhh>0x3){h=0x1;_0x11ac6d[_0x88fd('0x22d','YGJI')](back);sleep(0x7d0);}sleep(0x3e8);}break;}}}}}var _0x4153d5=text('周榜')['findOnce']();var _0x5a6886=_0x11ac6d[_0x88fd('0x22e','eT!y')](desc,'周榜')['findOnce']();if(_0x11ac6d['cyXva'](_0x4153d5,null)||_0x5a6886!=null){_0x11ac6d[_0x88fd('0x22f','YGJI')](back);}p++;if(p>=0x3){log(_0x88fd('0x230','yf#V'));demonumber=0x14;break;}sleep(0x7d0);}while(!![]){if(_0x11ac6d[_0x88fd('0x231','^ju9')]===_0x11ac6d[_0x88fd('0x232','!6CW')]){_0xc8ea8[_0x88fd('0x62','v$Q3')]();sleep(0x9c4);}else{var _0x52cc2e=text(_0x88fd('0x233','yf#V'))[_0x88fd('0x234','20#)')]();_0x11ac6d[_0x88fd('0x235','N$Nk')](log,_0x52cc2e);if(_0x11ac6d[_0x88fd('0x236','QvT7')](_0x52cc2e,null)){if(_0x11ac6d[_0x88fd('0x237','^ju9')]===_0x88fd('0x238','Po)x')){var _0x521885=_0x11ac6d[_0x88fd('0x239','&3$f')](textContains,'作品')[_0x88fd('0x23a','2vFb')]();if(_0x521885!=null){if(_0x11ac6d['qRdEf'](_0x11ac6d[_0x88fd('0x23b','oBvM')],_0x88fd('0x23c','w4Fn'))){var _0x3eb024='0|2|3|1|4'['split']('|'),_0x322ad2=0x0;while(!![]){switch(_0x3eb024[_0x322ad2++]){case'0':pl++;continue;case'1':抢['click']();continue;case'2':if(_0x11ac6d['qGRAs'](pl,0x3)){_0x11ac6d[_0x88fd('0x23d','!6CW')](back);}continue;case'3':log('补抢');continue;case'4':sleep(0x3e8);continue;}break;}}else{log(_0x521885);var _0x165db7=boundsInside(0x0,_0x521885[_0x88fd('0x1e8','YGJI')]()[_0x88fd('0x23e','4IJ8')],device[_0x88fd('0x23f','3@NL')],device[_0x88fd('0x240','Nu&O')]*0x2)[_0x88fd('0x241','e10Q')](_0x88fd('0x242','SYIy'))['clickable'](!![])[_0x88fd('0x1b8','BQTg')]();if(_0x165db7!=null){if(_0x11ac6d[_0x88fd('0x243',']$FZ')](_0x11ac6d[_0x88fd('0x244','w4Fn')],_0x11ac6d[_0x88fd('0x245','ROVF')])){_0x11ac6d['ysHKH'](log,_0x165db7);_0x165db7[_0x88fd('0x45',')o2e')]();sleep(0x7d0);}else{var _0x5d22c1=className(_0x11ac6d[_0x88fd('0x246','FFLW')])[_0x88fd('0x247','sYOl')](!![])[_0x88fd('0x248','20#)')](!![])['boundsInside'](0x2,_0x11ac6d[_0x88fd('0x249','sYOl')](device['height'],0x8),device[_0x88fd('0x24a','v$Q3')]-0x2,device['height'])[_0x88fd('0x24b',']$FZ')]();_0x11ac6d['VMQRz'](log,_0x5d22c1);sleep(0x7d0);_0x5d22c1['click']();}}}}else if(_0x11ac6d['yTJUs'](_0x521885,null)){if(_0x11ac6d[_0x88fd('0x24c','jgsy')]!==_0x11ac6d['OvrtW']){fhz=0xc8;}else{var _0x165db7=_0x11ac6d['RvOws'](boundsInside,0x0,_0x52cc2e[_0x88fd('0x228','il(g')]()[_0x88fd('0x24d','yf#V')],device[_0x88fd('0x24e','rtMY')],device['height']*0x2)[_0x88fd('0x24f','FFLW')](_0x11ac6d[_0x88fd('0x250','!wjm')])['clickable'](!![])[_0x88fd('0x251','w4Fn')]();if(_0x11ac6d[_0x88fd('0x252','zErZ')](_0x165db7,null)){_0x11ac6d[_0x88fd('0x253','eT!y')](log,_0x165db7);_0x165db7[_0x88fd('0x254','!IVq')]();sleep(0x7d0);}}}}else{_0x11ac6d[_0x88fd('0x255','!6CW')](log,share);share[_0x88fd('0x256','2c0r')]();}}var _0x28e4f7=descContains(_0x11ac6d['foiGv'])[_0x88fd('0xfa','wtBl')]();if(_0x11ac6d[_0x88fd('0x257','!6CW')](_0x28e4f7,null)){break;}_0x11ac6d[_0x88fd('0x258','2c0r')](sleep,0xbb8);}}hd=0x1;hdrandom=_0x11ac6d[_0x88fd('0x259','YGJI')](random,0x5,0x7);while(!![]){_0x11ac6d[_0x88fd('0x25a','il(g')](_0x146e03);gq=0x2;cv=0x1;xv=0x0;xvv=0x1;while(!![]){var _0x4a21a9=desc(_0x11ac6d[_0x88fd('0x25b','G@)z')])['boundsInside'](device[_0x88fd('0x25c',']$FZ')]/0x2,_0x11ac6d[_0x88fd('0x25d','e10Q')](device[_0x88fd('0x25e','N$Nk')],0x3),device[_0x88fd('0x25f','Nu&O')],device[_0x88fd('0x260','2c0r')])[_0x88fd('0x261','Vtv!')]();if(_0x4a21a9!=null){if(_0x11ac6d[_0x88fd('0x262','N$Nk')]!=='YxP'){_0x11ac6d[_0x88fd('0x263','!wjm')](log,'loadtime=1');timetamp=Number(new Date());_0x11ac6d[_0x88fd('0x264','4IJ8')](log,timetamp);loadtime=0x2;}else{log(_0x4a21a9);var _0x23edd3=clickable(!![])[_0x88fd('0x265','!IVq')](_0x4a21a9['bounds']()['left'],_0x4a21a9[_0x88fd('0x266','QvT7')]()[_0x88fd('0x267','oBvM')],_0x4a21a9['bounds']()['right'],_0x4a21a9['bounds']()[_0x88fd('0x268','!wjm')])['findOnce']();}}var _0x4605fd=_0x11ac6d[_0x88fd('0x269','eT!y')](text,_0x11ac6d['rxAfO'])[_0x88fd('0xf5','2c0r')]();var _0x519cdd=textContains('自动')[_0x88fd('0x26a','!IVq')]();log(_0x23edd3);if(_0x11ac6d['OCggQ'](_0x23edd3,null)){xv=xv+0x1;if(_0x11ac6d[_0x88fd('0x1c3',')q$f')](demonumber,random(0x7,0x8))||_0x11ac6d['eiwdS'](flamenumber,0xa)){log('点击');_0x23edd3['click']();demonumber=_0x11ac6d['SMAsS'](demonumber,0x1);flamenumber=flamenumber-0xa;}}else if(_0x11ac6d[_0x88fd('0x26b','!IVq')](_0x4605fd,null)&&_0x519cdd==null){cv++;_0x4605fd[_0x88fd('0x26c','oBvM')]()[_0x88fd('0x26d','mAL5')]();}else if(_0x11ac6d[_0x88fd('0x26e','Nu&O')](_0x519cdd,null)){if(_0x11ac6d[_0x88fd('0x26f','v$Q3')]('pSc',_0x11ac6d['ltLSl'])){APPNAME=_0x11ac6d[_0x88fd('0x270','jgsy')];}else{cv++;_0x519cdd[_0x88fd('0x271','20#)')]()[_0x88fd('0x272','yf#V')]();}}if(_0x11ac6d[_0x88fd('0x273','v$Q3')](cv,0x2)||xv>=_0x11ac6d['lbiUQ'](demonumber,0.9)/hdrandom){if('Izf'===_0x88fd('0x274','v$Q3')){var _0x39b544=_0x11ac6d[_0x88fd('0x275','%0od')](Number,点赞数量1['text']());_0x11ac6d[_0x88fd('0x276','Za@n')](log,_0x39b544);if(_0x11ac6d[_0x88fd('0x277','e10Q')](_0x39b544,数)){like[_0x88fd('0x47','JcCH')]();}}else{break;}}if(_0x23edd3==null){xvv++;if(_0x11ac6d[_0x88fd('0x278','K&3h')](xvv,0x5)){xvv=0x1;break;}}_0x11ac6d[_0x88fd('0x279','FFLW')](sleep,random(0x320,0x384));}_0x11ac6d[_0x88fd('0x279','FFLW')](sleep,random(0x7d0,0xbb8));var _0x4605fd=text(_0x88fd('0x27a','Po)x'))['findOnce']();if(_0x11ac6d[_0x88fd('0x27b','FFLW')](_0x4605fd,null)){_0x4605fd[_0x88fd('0x27c','!6CW')]()[_0x88fd('0x27d','&Y#L')]();}sleep(0x3e8);var _0x191be9=scrollable(!![])[_0x88fd('0x1d9','egRk')]('android.support.v4.view.ViewPager')[_0x88fd('0x12f','sYOl')]();if(_0x191be9!=null){log(_0x191be9);_0x191be9[_0x88fd('0x27e','c3bp')]();}hd++;_0x11ac6d[_0x88fd('0x27f','N$Nk')](log,hd+_0x11ac6d[_0x88fd('0x280','2vFb')]);sleep(_0x11ac6d['wWvgH'](random,0x5dc,0x7d0));if(_0x11ac6d[_0x88fd('0x281','2c0r')](hd,hdrandom)){hd=0x1;_0x38a7bf();break;}}}}}function _0x531299(_0x1ffc25,_0x340f61){var _0x203674={'EYjly':function _0x36e5e4(_0x350ac1,_0x1906d2){return _0x350ac1!==_0x1906d2;},'GCqwp':function _0x3c2850(_0x392120,_0x23c319){return _0x392120(_0x23c319);},'SJEAz':function _0x51a5e5(_0x1c0351,_0x20cc07){return _0x1c0351==_0x20cc07;},'LzeEp':function _0x430a08(_0x53341d,_0x21cd35){return _0x53341d<=_0x21cd35;},'oYgNI':'tbT','XlvHN':function _0x508bd2(_0x5b6ba5,_0x22c159){return _0x5b6ba5+_0x22c159;},'MtmNB':function _0x4b6d25(_0x1b44f1,_0x15ac25){return _0x1b44f1(_0x15ac25);},'tuoPK':function _0x29c0c9(_0x28505e,_0x355da7){return _0x28505e+_0x355da7;},'xnPSC':_0x88fd('0x282','egRk'),'SOjBT':_0x88fd('0x283','BQTg')};if(_0x203674['EYjly'](_0x88fd('0x284',')o2e'),_0x88fd('0x285','v$Q3'))){var _0x38cd8b=Number(直播间人数['text']());_0x203674[_0x88fd('0x286','il(g')](toastLog,'直播人数：'+_0x38cd8b);_0x203674['GCqwp'](sleep,0x3e8);if(_0x203674[_0x88fd('0x287','QvT7')](isNaN(_0x38cd8b),![])&&_0x203674['LzeEp'](_0x38cd8b,_0x2898c4)){qhb=0x1;}else{qhb=0x2;}}else{xc=0x0;time=random(_0x1ffc25,_0x340f61);while(!![]){if(_0x203674[_0x88fd('0x288','HVrR')]===_0x203674['oYgNI']){xc=_0x203674['XlvHN'](xc,0x3);_0x203674[_0x88fd('0x289','Vtv!')](toastLog,_0x203674[_0x88fd('0x28a','c3bp')](_0x203674[_0x88fd('0x28b','Nu&O')](_0x203674[_0x88fd('0x28c','!IVq')](_0x203674[_0x88fd('0x28d','2c0r')],_0x203674[_0x88fd('0x28e','G@)z')])+xc,'秒'),'还有')+(time-xc)+'秒');sleep(0xbb8);if(xc>=time){break;}}else{qhb=0x1;}}}}function _0x9da5c3(){var _0x372778={'AqIZS':function _0x5ba15d(_0xe6e16f,_0x554b92){return _0xe6e16f+_0x554b92;},'cwcnz':'关注随机值','bVwdy':function _0x2a0178(_0xf3e5ab,_0x51b89e){return _0xf3e5ab>=_0x51b89e;},'tfQXG':function _0x1137d7(_0x268b43){return _0x268b43();},'FueRT':function _0x133ca5(_0x522f5f,_0x10308c){return _0x522f5f(_0x10308c);},'MZoWp':function _0x19f757(_0x2fa7f3,_0x598b10){return _0x2fa7f3/_0x598b10;},'CEZDK':function _0x41f38b(_0x238d82,_0xe6d6e6){return _0x238d82/_0xe6d6e6;},'HDdHX':function _0x1a7237(_0x141a93,_0x1f0384){return _0x141a93!=_0x1f0384;},'pjqvN':function _0x1dc515(_0xeaf763,_0x5ee6fb){return _0xeaf763==_0x5ee6fb;},'XZbeN':function _0x3c2f3c(_0x11b6cd,_0x384af5){return _0x11b6cd!==_0x384af5;},'DKzdP':_0x88fd('0x28f','rtMY'),'XaJkv':function _0x4b5cd1(_0x575d76,_0x3cb066){return _0x575d76(_0x3cb066);},'hHRhA':'tzF','xZOME':function _0x39ef72(_0x2664ad){return _0x2664ad();},'RXddv':_0x88fd('0x290','w[@&'),'oUFlc':'说点什么...','ZQswQ':function _0x410195(_0x4ca5dc,_0x5e8906){return _0x4ca5dc*_0x5e8906;},'IESxO':function _0x91ed4b(_0x5bcd1a,_0x51bb3c){return _0x5bcd1a/_0x51bb3c;},'bLbqL':function _0xbe4155(_0x408700,_0x1250ec){return _0x408700-_0x1250ec;},'VZzYC':function _0x4ab2d1(_0x4ebffe,_0x15152e){return _0x4ebffe(_0x15152e);},'SQFEY':function _0x105049(_0x3eb4e1,_0xebf6e3){return _0x3eb4e1===_0xebf6e3;},'bSxBZ':_0x88fd('0x291','2vFb'),'AReCa':_0x88fd('0x292','yf#V'),'lFWDu':function _0x23468d(_0x43ffcb,_0x12d5b1,_0x506a4c){return _0x43ffcb(_0x12d5b1,_0x506a4c);},'EacvL':function _0x4f14cd(_0x3af780,_0x638ffa){return _0x3af780(_0x638ffa);},'oJdfd':function _0x1d6a3d(_0x251c10,_0x57e3a8){return _0x251c10(_0x57e3a8);},'ZJYrn':function _0x4e002a(_0x4fa172,_0x35555d,_0x235243,_0x339241,_0x551d05){return _0x4fa172(_0x35555d,_0x235243,_0x339241,_0x551d05);},'QfbKv':function _0x36a6e8(_0x277f06,_0x104c39){return _0x277f06!=_0x104c39;}};if('Vwi'===_0x88fd('0x293','K^AY')){app[_0x88fd('0x294','YGJI')](APPNAME);sleep(0x1f40);}else{if(_0x119be7==!![]){gz=random(0x1,0xb4);log(_0x372778['AqIZS'](gz,_0x372778[_0x88fd('0x295','Za@n')]));if(_0x372778['bVwdy'](gz,0xaf)){if(_0x88fd('0x296','G@)z')!==_0x88fd('0x297','20#)')){_0x372778[_0x88fd('0x298','K&3h')](_0x4cf9fe);_0x3d6796();var _0x8c2a94=_0x372778['FueRT'](className,'android.widget.TextView')['text']('关注')[_0x88fd('0x196',']$FZ')](!![])[_0x88fd('0x299','20#)')](!![])['boundsInside'](_0x372778[_0x88fd('0x29a','K^AY')](device[_0x88fd('0x29b','egRk')],0x4),0x0,_0x372778[_0x88fd('0x29c','&Y#L')](device[_0x88fd('0x29d','sYOl')],0x2),_0x372778[_0x88fd('0x29e','mAL5')](device[_0x88fd('0x29f','K^AY')],0xf))['findOnce']();_0x372778[_0x88fd('0x2a0','sYOl')](sleep,0x7d0);if(_0x372778[_0x88fd('0x2a1','%FV[')](_0x8c2a94,null)){_0x8c2a94[_0x88fd('0x2a2','^ju9')]();}}else{结束运行[_0x88fd('0x2a3','G@)z')]();}}}if(_0x372778['pjqvN'](_0x3adb76,!![])&&device['sdkInt']>=0x15){if(_0x372778['XZbeN'](_0x88fd('0x2a4','sYOl'),_0x372778[_0x88fd('0x2a5','&3$f')])){pl=random(0x1,0xc8);_0x372778[_0x88fd('0x2a6','Vtv!')](log,_0x372778[_0x88fd('0x2a7','jgsy')](pl,_0x88fd('0x2a8','rtMY')));if(pl>0xc3){if(_0x372778[_0x88fd('0x2a9','zErZ')]!==_0x372778[_0x88fd('0x2aa','G@)z')]){_0x372778['XaJkv'](log,share);share[_0x88fd('0x26d','mAL5')]();}else{_0x372778[_0x88fd('0x2ab','ROVF')](_0x4cf9fe);_0x3d6796();var _0x5d44dc=className(_0x372778['RXddv'])[_0x88fd('0x2ac','!IVq')](_0x372778[_0x88fd('0x2ad','Po)x')])[_0x88fd('0xf1','ROVF')](!![])[_0x88fd('0x2ae','oBvM')](!![])[_0x88fd('0x2af','JcCH')](0x1,_0x372778[_0x88fd('0x2b0','jgsy')](device[_0x88fd('0x2b1','%0od')],0xa)/0xb,_0x372778[_0x88fd('0x2b2','Vtv!')](device['width'],1.8),_0x372778['bLbqL'](device[_0x88fd('0x148','BQTg')],0x1))[_0x88fd('0xc5','QvT7')]();_0x372778[_0x88fd('0x2b3','3@NL')](sleep,0x3e8);if(_0x5d44dc!=null){if(_0x372778['SQFEY'](_0x88fd('0x2b4','&3$f'),_0x372778[_0x88fd('0x2b5','FFLW')])){强行停止[_0x88fd('0x2b6','HVrR')]();}else{_0x5d44dc['click']();sleep(0x5dc);if(files[_0x88fd('0x2b7','zErZ')](_0x372778[_0x88fd('0x2b8',')o2e')])){if(files[_0x88fd('0x2b9','&Y#L')](_0x372778[_0x88fd('0x2ba','13Ld')])[_0x88fd('0x2bb','^ju9')]('\x0a')[_0x88fd('0x2bc','oBvM')]>0x0){setText(files['read'](_0x372778['AReCa'])['split']('\x0a')[_0x372778[_0x88fd('0x2bd','K^AY')](random,0x0,files[_0x88fd('0x2be','v$Q3')](_0x372778[_0x88fd('0x2bf','e10Q')])[_0x88fd('0x2c0','ROVF')]('\x0a')[_0x88fd('0x2c1','Po)x')])]);}}_0x372778[_0x88fd('0x2c2','2c0r')](sleep,0x9c4);var _0x45aa32=_0x372778[_0x88fd('0x2c3','sYOl')](className,_0x88fd('0x2c4','jgsy'))['clickable'](!![])['findOnce']();sleep(0xbb8);if(_0x45aa32!=null){_0x45aa32['click']();}_0x372778[_0x88fd('0x2c5','sYOl')](sleep,0xbb8);back();}}}}}else{_0x372778['oJdfd'](log,作品);var _0xbd7a47=_0x372778['ZJYrn'](boundsInside,0x0,作品['bounds']()[_0x88fd('0x2c6','SYIy')],device[_0x88fd('0x2c7','il(g')],_0x372778[_0x88fd('0x2c8','N$Nk')](device[_0x88fd('0x102','3gF[')],0x2))['className'](_0x88fd('0x2c9','3gF['))[_0x88fd('0x2ca','&Y#L')](!![])[_0x88fd('0x2cb','oBvM')]();if(_0x372778['QfbKv'](_0xbd7a47,null)){log(_0xbd7a47);_0xbd7a47['click']();_0x372778[_0x88fd('0x2cc','c3bp')](sleep,0x7d0);}}}}}function _0x278634(){var _0x28ad20={'GFBkc':function _0xd9873a(_0xbc489e,_0x115691){return _0xbc489e(_0x115691);},'xejNp':_0x88fd('0x2cd','Nu&O'),'AxruC':function _0x46f7a6(_0x2e3006,_0x113081){return _0x2e3006!==_0x113081;},'BuGGK':_0x88fd('0x2ce','&Y#L'),'kEEAw':function _0x58925b(_0x3c608d){return _0x3c608d();},'coBTG':function _0x3fbc69(_0x115bad,_0x4d6ca7){return _0x115bad<_0x4d6ca7;},'aGbgU':_0x88fd('0x2cf','G@)z'),'DgFBu':'Oqz','roaIr':function _0x1c49b8(_0x1fab78,_0x578d1f){return _0x1fab78(_0x578d1f);},'uCDmq':function _0x1927c9(_0x1502cf,_0x236f26){return _0x1502cf==_0x236f26;},'fZHxE':function _0x1cd56b(_0x30302c,_0xf5986e){return _0x30302c+_0xf5986e;},'srJNu':function _0x1affcd(_0x37efe7,_0x215cbd){return _0x37efe7<=_0x215cbd;},'HsDut':function _0x59424c(_0x109a90,_0xe27c8c){return _0x109a90>=_0xe27c8c;},'HtlRV':function _0x195a62(_0x1d5766,_0x48ab69){return _0x1d5766(_0x48ab69);},'hAMhy':function _0x375c63(_0x7690d2,_0x4165ac){return _0x7690d2(_0x4165ac);},'EFDhZ':'红包倒计时在1分钟之内','noTsD':function _0xe7e5f8(_0x28a4b4,_0x51ec6a){return _0x28a4b4!=_0x51ec6a;},'fxePz':function _0x50890f(_0x4719ea,_0x426999,_0x950eb8,_0x102d1a,_0x465f19){return _0x4719ea(_0x426999,_0x950eb8,_0x102d1a,_0x465f19);},'WMOTz':function _0xf52ad8(_0x33c62f,_0x1caf6b){return _0x33c62f<_0x1caf6b;},'yBvXB':'tou','hcjys':function _0x1e09d8(_0x2cb38a,_0x11fddb){return _0x2cb38a==_0x11fddb;},'bFJSB':function _0x377e82(_0x54b3af,_0x345d20){return _0x54b3af<_0x345d20;},'aqGqc':function _0x3247f2(_0x2e02e7,_0x568898){return _0x2e02e7(_0x568898);},'QmqtB':_0x88fd('0x2d0','2c0r'),'jVefT':_0x88fd('0x2d1','w[@&'),'Aujxy':function _0x241a51(_0x2fa8a4,_0x59943f){return _0x2fa8a4(_0x59943f);},'dpelQ':'剩余时间太短，放弃','lbprm':function _0x1d3d6e(_0x2867a8,_0x33d1fb){return _0x2867a8<=_0x33d1fb;},'BHZvC':function _0x89452d(_0x162c01,_0x2fc68d){return _0x162c01<=_0x2fc68d;},'wWoFM':function _0x1afccf(_0x260559,_0xa8aec6){return _0x260559==_0xa8aec6;},'JtUgP':_0x88fd('0x2d2','il(g'),'biyMH':function _0x44ce70(_0x19225d,_0x3144ac){return _0x19225d!=_0x3144ac;},'KkBvD':'WCi','UbxLs':_0x88fd('0x2d3','!wjm')};红包=_0x28ad20['GFBkc'](className,_0x28ad20[_0x88fd('0x2d4','K&3h')])[_0x88fd('0xda','egRk')](!![])['find']();iii=0x0;if(红包[_0x88fd('0x2d5','HVrR')]>0x0){if(_0x28ad20[_0x88fd('0x2d6','egRk')](_0x28ad20[_0x88fd('0x2d7','Vtv!')],_0x88fd('0x2d8','K^AY'))){_0x28ad20[_0x88fd('0x2d9','HVrR')](_0x4e431d);}else{i=0x0;while(_0x28ad20[_0x88fd('0x2da','mAL5')](i,红包['length'])){x=红包[i]['children']()['findOne'](className(_0x28ad20[_0x88fd('0x2db','Za@n')])[_0x88fd('0x2dc','G@)z')](':'));if(x!=null){if('Oqz'!==_0x28ad20[_0x88fd('0x2dd',')o2e')]){强行停止[_0x88fd('0x22c','13Ld')]();}else{var _0x4c17a7=x['text']();var _0x368b73=_0x4c17a7['split'](':');log(_0x368b73);minute=Number(_0x368b73[0x0]);second=Number(_0x368b73[0x1]);log(minute);log(second);iii=0x1;if(_0x28ad20[_0x88fd('0x2de','&Y#L')](isNaN,second)==![]&&_0x28ad20['uCDmq'](isNaN(minute),![])){红包=红包[i];break;}}}i=_0x28ad20[_0x88fd('0x2df','c3bp')](i,0x1);}if(_0x28ad20['uCDmq'](iii,0x1)){if(minute==0x0&&_0x28ad20[_0x88fd('0x2e0','HVrR')](second,0x3b)&&_0x28ad20[_0x88fd('0x2e1','w4Fn')](second,0x1)&&_0x28ad20[_0x88fd('0x2e2','2c0r')](_0x28ad20[_0x88fd('0x2e3','JcCH')](isNaN,second),![])&&_0x28ad20['uCDmq'](_0x28ad20['HtlRV'](isNaN,minute),![])){fhz=0x3;_0x28ad20[_0x88fd('0x2e4','JcCH')](toastLog,_0x28ad20['EFDhZ']);if(_0x28ad20['noTsD'](红包,null)){红包1=_0x28ad20['fxePz'](bounds,红包['bounds']()['left'],红包[_0x88fd('0x20c','4IJ8')]()['top'],红包[_0x88fd('0x2e5','wtBl')]()['right'],红包[_0x88fd('0x2e6','w4Fn')]()['bottom'])[_0x88fd('0x2e7','yf#V')]();i=0x0;while(_0x28ad20[_0x88fd('0x2e8','mAL5')](i,红包1[_0x88fd('0x2e9','w[@&')])){if('odt'!==_0x28ad20[_0x88fd('0x2ea','HVrR')]){红包1[i][_0x88fd('0x2eb','egRk')]();i=i+0x1;sleep(0x64);}else{back();sleep(0xbb8);}}}}else if(_0x28ad20[_0x88fd('0x2ec',')q$f')](minute,0x0)&&_0x28ad20[_0x88fd('0x2ed','FFLW')](second,0x1)&&_0x28ad20[_0x88fd('0x2ee','!IVq')](isNaN(second),![])&&_0x28ad20[_0x88fd('0x2ef','YGJI')](_0x28ad20[_0x88fd('0x2f0','e10Q')](isNaN,minute),![])){if(_0x28ad20[_0x88fd('0x2f1','e10Q')]===_0x28ad20[_0x88fd('0x2f2','c3bp')]){yes[_0x88fd('0x2f3','%0od')]();_0x28ad20['aqGqc'](sleep,0x3e8);}else{fhz=0x64;_0x28ad20['Aujxy'](toastLog,_0x28ad20[_0x88fd('0x2f4','mAL5')]);}}else if(0x1<=minute&&_0x28ad20['lbprm'](minute,_0x28ad20[_0x88fd('0x2f5',']$FZ')](Number,ui[_0x88fd('0x9a','HVrR')][_0x88fd('0x2f6','2c0r')]()))&&_0x28ad20[_0x88fd('0x2f7','%0od')](0x0,second)&&second<=0x3c&&isNaN(second)==![]&&_0x28ad20[_0x88fd('0x2f8','ROVF')](isNaN(minute),![])){fhz=0x2;toastLog(_0x28ad20[_0x88fd('0x2f9','2c0r')]);if(_0x28ad20[_0x88fd('0x2fa','e10Q')](红包,null)){if(_0x88fd('0x2fb','13Ld')===_0x28ad20[_0x88fd('0x2fc','w4Fn')]){红包1[i]['click']();i=i+0x1;sleep(0x64);}else{红包1=_0x28ad20[_0x88fd('0x2fd','3gF[')](bounds,红包['bounds']()[_0x88fd('0x2fe',')q$f')],红包[_0x88fd('0x2ff','&Y#L')]()[_0x88fd('0x300','rtMY')],红包[_0x88fd('0x265','!IVq')]()[_0x88fd('0x301','FFLW')],红包[_0x88fd('0x13f','!6CW')]()[_0x88fd('0x20','!IVq')])[_0x88fd('0x302','&Y#L')]();i=0x0;while(i<红包1[_0x88fd('0x303','YGJI')]){红包1[i][_0x88fd('0x192','K^AY')]();i=i+0x1;sleep(0x64);}}}}else{if(_0x28ad20[_0x88fd('0x304','wtBl')](_0x88fd('0x305','mAL5'),_0x28ad20[_0x88fd('0x306','wtBl')])){fhz=0xc8;}else{fu=0x1;}}}if(iii==0x0){fhz=0xc8;}}}else if(红包[_0x88fd('0x307','QvT7')]==0x0){fhz=0x64;}}function _0x1dc689(){var _0x954957={'tMgMN':function _0x52cf33(_0x48d040,_0x532af3){return _0x48d040===_0x532af3;},'owTFa':_0x88fd('0x308','ROVF'),'jhvXG':'开始正常抢红包','pAVZl':function _0x3e6ade(_0x13222d,_0xe06e10){return _0x13222d(_0xe06e10);},'SzeOd':function _0x11eb16(_0x410fa8,_0x5be79d){return _0x410fa8!=_0x5be79d;},'eFAIS':function _0x2ffe29(_0x418861,_0x39156d){return _0x418861==_0x39156d;},'zfGax':'oJL','EGgRo':_0x88fd('0x309','3gF['),'WNydC':function _0x7f22e0(_0x2132d8,_0x435b14){return _0x2132d8==_0x435b14;},'iAzBr':'分钟后','ZaOWy':'Cuk','yXGbP':function _0x5cef99(_0x26b2da,_0x29506a){return _0x26b2da(_0x29506a);},'DfYIV':function _0x4ba66c(_0x5acac9,_0x36c112){return _0x5acac9!==_0x36c112;},'OkCDW':'mbK','yHZEg':function _0x74360f(_0x492bf8,_0x1257a7){return _0x492bf8(_0x1257a7);},'SSEdH':function _0x3ea6e6(_0x1b048c,_0x232759){return _0x1b048c>_0x232759;},'nnyEY':function _0x133893(_0x169473,_0x35796b){return _0x169473+_0x35796b;},'vBCdU':_0x88fd('0x30a','QvT7'),'fqxpn':function _0x36d537(_0x3859b8,_0x3382b6){return _0x3859b8>_0x3382b6;},'Huxmy':'zVE','YWxHl':function _0x51d48d(_0x1af3dd,_0x45487c){return _0x1af3dd(_0x45487c);},'IeuiA':_0x88fd('0x30b','!6CW'),'ZqAza':'Hqd','WpOUE':_0x88fd('0x30c','%0od'),'zKyqH':function _0x4bc32e(_0x50d035){return _0x50d035();},'XeTpa':function _0x4e4ba9(_0x485cf7,_0x5476fe){return _0x485cf7==_0x5476fe;},'ALzRS':function _0x10e8ef(_0x4c7fb4,_0x5ae6de){return _0x4c7fb4(_0x5ae6de);},'yaQCo':_0x88fd('0x30d','HVrR'),'kepiU':function _0x29d155(_0x98b13e,_0xe78953){return _0x98b13e-_0xe78953;},'AHHVZ':_0x88fd('0x30e','eT!y'),'wlHbw':_0x88fd('0x30f','v$Q3'),'Lsehu':_0x88fd('0x310','G@)z'),'WZBNR':function _0x2939e3(_0x5c0fc0,_0x3a5894){return _0x5c0fc0==_0x3a5894;},'yNbuD':function _0x58aeea(_0xf15f64,_0x4d686f){return _0xf15f64(_0x4d686f);},'HJvnt':function _0x12e327(_0x427077,_0x38a4eb){return _0x427077>=_0x38a4eb;},'zdKkW':function _0x3e8c7b(_0x50ca1d,_0x4f78b5){return _0x50ca1d(_0x4f78b5);},'wvNwW':function _0x34b100(_0x1f3a87,_0xb37bcb){return _0x1f3a87(_0xb37bcb);},'Rsoxn':function _0xe2fba6(_0x3193c5,_0x111bce){return _0x3193c5!=_0x111bce;},'GKxud':_0x88fd('0x311','FFLW'),'aJTBj':'HJx','GQEXB':function _0xcbfdec(_0x284572,_0x236180){return _0x284572+_0x236180;},'WNdHP':function _0x82218d(_0x4bf8c9,_0x2642a8){return _0x4bf8c9!=_0x2642a8;},'NbIHW':function _0x3cf839(_0x1e70dd,_0xcedd4){return _0x1e70dd(_0xcedd4);},'QZGVl':function _0x551145(_0x469a6d,_0x1fc3f5){return _0x469a6d(_0x1fc3f5);},'VJnqR':function _0x5479ed(_0x4bbbe1,_0x2a9744){return _0x4bbbe1!=_0x2a9744;},'jcbLO':function _0x134d60(_0x5a9220,_0x5b9920){return _0x5a9220!==_0x5b9920;},'YnlFN':'LsF','XspIZ':function _0x4e66ac(_0x4ffd34,_0x81ef68,_0x3199de){return _0x4ffd34(_0x81ef68,_0x3199de);},'mCKnM':_0x88fd('0x312','!6CW'),'dQqBM':'赠送给主播','SKtUC':function _0x15f0af(_0x558a5f,_0x339607){return _0x558a5f(_0x339607);},'YtpkL':function _0x3e436a(_0x5765f6,_0x48ce04){return _0x5765f6(_0x48ce04);},'BjYFo':function _0x462f74(_0x5d2018,_0x86b504){return _0x5d2018(_0x86b504);},'aXGlJ':function _0x27fbcd(_0x114875,_0x5f40c5){return _0x114875(_0x5f40c5);},'CGoMh':function _0x48d0b5(_0x11e9f1,_0x728065){return _0x11e9f1+_0x728065;},'lxSHp':'2|3|6|4|0|1|5','pkciJ':_0x88fd('0x313','Nu&O'),'qWhcR':_0x88fd('0x314','N$Nk'),'rieLC':_0x88fd('0x315','wtBl'),'BVlys':'error','cJOMJ':function _0x29d699(_0x751199,_0x5c8ace){return _0x751199==_0x5c8ace;},'aHUPn':_0x88fd('0x316','YGJI'),'FtHKb':function _0x3a8f02(_0x31df57,_0x18a364){return _0x31df57(_0x18a364);},'xuvJn':function _0x34b3b1(_0x3c0b07){return _0x3c0b07();},'WcGxc':_0x88fd('0x317','wtBl'),'zXLHF':function _0x4c5e47(_0x373f7a,_0x5d32f0){return _0x373f7a(_0x5d32f0);},'CLNNS':function _0x463dcd(_0x448daf,_0x21dcf2){return _0x448daf(_0x21dcf2);}};if(_0x954957[_0x88fd('0x318','yf#V')]('uDv',_0x954957[_0x88fd('0x319',')o2e')])){log(_0x954957['jhvXG']);var _0xcab4c5=_0x954957[_0x88fd('0x31a','zErZ')](textContains,'红包')[_0x88fd('0x31b','sYOl')](0x9c4);if(_0x954957[_0x88fd('0x31c','4IJ8')](_0xcab4c5,null)){fu=0x2;}else if(_0x954957['eFAIS'](_0xcab4c5,null)){if('oJL'===_0x954957[_0x88fd('0x31d',')q$f')]){fu=0x1;}else{if(ui[_0x88fd('0x31e','QvT7')][_0x88fd('0x31f','K^AY')]==!![]){_0x3a2d96();}scrollDown();}}log(fu+_0x954957['EGgRo']);if(_0x954957[_0x88fd('0x320','4IJ8')](fu,0x2)){q=0x1;while(!![]){var _0x1bdb60=_0x954957['pAVZl'](textContains,_0x954957[_0x88fd('0x321','4IJ8')])['findOnce']();if(_0x1bdb60==null){if('Cuk'===_0x954957[_0x88fd('0x322','YGJI')]){q=q+0x1;sleep(0x5dc);}else{var _0x6a6f82=_0x88fd('0x323','^ju9')[_0x88fd('0x324','egRk')]('|'),_0x549b3b=0x0;while(!![]){switch(_0x6a6f82[_0x549b3b++]){case'0':sleep(0x7d0);continue;case'1':if(_0x3a5240!=null){var _0x2e7412=_0x88fd('0x325','yf#V')[_0x88fd('0x126','v$Q3')]('|'),_0x2019e3=0x0;while(!![]){switch(_0x2e7412[_0x2019e3++]){case'0':var _0x8c9bca=_0x954957[_0x88fd('0x326','Po)x')](text,'赠送')[_0x88fd('0x327','&3$f')]();continue;case'1':var _0x1130f0=_0x3a5240[_0x88fd('0x328','egRk')]();continue;case'2':if(_0x8c9bca!=null){_0x8c9bca[_0x88fd('0x329','!wjm')]();_0x954957[_0x88fd('0x32a','oBvM')](sleep,0x7d0);}continue;case'3':zslwcs++;continue;case'4':if(_0x1130f0!=null){_0x1130f0['click']();_0x954957[_0x88fd('0x32b','4IJ8')](sleep,0xfa0);}continue;}break;}}continue;case'2':pd2[_0x88fd('0x32c','YGJI')]();continue;case'3':_0x954957['yXGbP'](sleep,0x3e8);continue;case'4':var _0x3a5240=text('玫瑰')[_0x88fd('0x26a','!IVq')]();continue;case'5':toastLog(_0x88fd('0x32d','&3$f'));continue;case'6':sleep(0x1388);continue;}break;}}}if(_0x1bdb60!=null){if(_0x954957[_0x88fd('0x32e','il(g')](_0x88fd('0x32f','w[@&'),_0x954957[_0x88fd('0x330','Po)x')])){q=0x1;toast('等待红包中');_0x954957[_0x88fd('0x331','!wjm')](sleep,0xfa0);}else{关注p[_0x88fd('0x53','%FV[')]();}}tiaochu=0x1;nm=0x1;if(_0x954957['SSEdH'](q,0x6)){q=0x1;while(!![]){s=textMatches(_0x88fd('0x332','v$Q3'))[_0x88fd('0x333','Po)x')]();log(s);if(_0x954957[_0x88fd('0x334','&3$f')](s,null)){var _0x1ae413=textContains('红包')[_0x88fd('0xc5','QvT7')]();if(_0x1ae413!=null){var _0x18d7b2=s[_0x88fd('0x335','rtMY')]();var _0x352e5a=Number(_0x18d7b2);_0x954957[_0x88fd('0x336','20#)')](toastLog,_0x954957[_0x88fd('0x337','mAL5')]('还有'+_0x352e5a,_0x954957[_0x88fd('0x338','rtMY')]));if(_0x954957[_0x88fd('0x339','K^AY')](_0x352e5a,0x3)){if(_0x954957[_0x88fd('0x33a',']$FZ')](_0x88fd('0x33b','SYIy'),_0x954957['Huxmy'])){_0x954957[_0x88fd('0x33c','Po)x')](sleep,(_0x352e5a-0x4)*0x3e8);tcz=0x1;break;}else{玫瑰1['click']();sleep(0xfa0);}}if(_0x352e5a<=0x3&&_0x352e5a>0x0){tcz=0x1;break;}}if(_0x1ae413==null){if(_0x954957[_0x88fd('0x33d','oBvM')]===_0x954957[_0x88fd('0x33e','Po)x')]){关注[_0x88fd('0x1aa','BQTg')]();}else{nm++;if(_0x954957['fqxpn'](nm,0x3)){if(_0x954957[_0x88fd('0x33f','BQTg')]==='SBs'){_0x954957['zKyqH'](back);}else{tcz=0x2;break;}}}}}else if(_0x954957[_0x88fd('0x340','K&3h')](s,null)){tiaochu++;if(tiaochu>0x3){log('我叼');tcz=0x2;break;}}sleep(0x3e8);}break;}sleep(0x3e8);}if(_0x954957['XeTpa'](tcz,0x1)){w=0x1;while(!![]){if(_0x88fd('0x341','il(g')===_0x88fd('0x342','3@NL')){xx=_0x954957['ALzRS'](className,_0x954957[_0x88fd('0x343','w4Fn')])[_0x88fd('0x344','2vFb')](![])[_0x88fd('0x345','K&3h')](!![])[_0x88fd('0x346','K&3h')](_0x954957['kepiU'](s['bounds']()[_0x88fd('0x5c','ROVF')],0xa),s[_0x88fd('0x18b','K^AY')]()[_0x88fd('0x347','QvT7')]-0xa,s[_0x88fd('0x228','il(g')]()['right']+0xa,s[_0x88fd('0x20a',']$FZ')]()[_0x88fd('0x348','mAL5')]+0xa)[_0x88fd('0x22b','K&3h')]();var _0x1b92eb=_0x954957['ALzRS'](className,_0x954957['AHHVZ'])['clickable'](!![])[_0x88fd('0x349','wtBl')](!![])['boundsInside'](_0x954957[_0x88fd('0x34a','Nu&O')](s[_0x88fd('0x265','!IVq')]()[_0x88fd('0x34b','!IVq')],0xa),s[_0x88fd('0x13f','!6CW')]()[_0x88fd('0x34c',')q$f')]-0xa,s['bounds']()[_0x88fd('0x34d','e10Q')]+0xa,s[_0x88fd('0x13f','!6CW')]()['bottom']+0xa)[_0x88fd('0x34e','ROVF')]();if(xx!=null||_0x1b92eb!=null){if('uaV'!==_0x954957['wlHbw']){fu=0x0;log(_0x88fd('0x34f','Po)x'));}else{_0x954957[_0x88fd('0x350','%FV[')](log,_0x954957[_0x88fd('0x351','e10Q')]);break;}}if(xx==null&&_0x954957['WZBNR'](_0x1b92eb,null)){w++;_0x954957['yNbuD'](log,'可能意外丢失');if(_0x954957[_0x88fd('0x352','%FV[')](w,0x5)){_0x954957[_0x88fd('0x353','SYIy')](log,'丢失红包');break;}}_0x954957[_0x88fd('0x354','SYIy')](sleep,0x3e8);}else{like['click']();}}if(_0x954957[_0x88fd('0x355','ROVF')](xx,null)||_0x954957['Rsoxn'](_0x1b92eb,null)){if(_0x954957['GKxud']!==_0x954957[_0x88fd('0x356','&Y#L')]){var _0x1cca85='1|0|5|4|3|2'['split']('|'),_0x4efa2a=0x0;while(!![]){switch(_0x1cca85[_0x4efa2a++]){case'0':if(_0x1c2653!=null){log('抢');_0x1c2653[_0x88fd('0x10f','20#)')]();sleep(0x1f4);}continue;case'1':var _0x1c2653=className('android.widget.ImageView')['clickable'](!![])[_0x88fd('0x357','HVrR')](s[_0x88fd('0x2e5','wtBl')]()[_0x88fd('0x358','N$Nk')]-0xa,s[_0x88fd('0x359','&3$f')]()['top']-0xa,_0x954957[_0x88fd('0x35a','!6CW')](s['bounds']()[_0x88fd('0x1f3','oBvM')],0xa),s[_0x88fd('0x35b','3gF[')]()[_0x88fd('0x35c','rtMY')]+0xa)[_0x88fd('0x35d','13Ld')](0x1f40);continue;case'2':if(_0x954957[_0x88fd('0x35e','&Y#L')](pd2,null)&&zslwcs<_0x46237e&&_0x29181d>0xfa){var _0x471427=_0x88fd('0x35f','w4Fn')[_0x88fd('0x360','rtMY')]('|'),_0x543fea=0x0;while(!![]){switch(_0x471427[_0x543fea++]){case'0':_0x954957[_0x88fd('0x361','13Ld')](toastLog,_0x88fd('0x362','QvT7'));continue;case'1':_0x954957['QZGVl'](sleep,0x3e8);continue;case'2':var _0x2930c4=text('玫瑰')['findOnce']();continue;case'3':pd2[_0x88fd('0x2eb','egRk')]();continue;case'4':sleep(0x1388);continue;case'5':if(_0x954957[_0x88fd('0x363','Vtv!')](_0x2930c4,null)){if(_0x954957['jcbLO']('LsF',_0x954957[_0x88fd('0x364','e10Q')])){APPNAME='火山小视频';}else{var _0x21a376=_0x88fd('0x365','BQTg')['split']('|'),_0x47e8ac=0x0;while(!![]){switch(_0x21a376[_0x47e8ac++]){case'0':if(_0x33bb6e!=null){_0x33bb6e[_0x88fd('0x2a2','^ju9')]();sleep(0xfa0);}continue;case'1':var _0x5a1af6=_0x954957['QZGVl'](text,'赠送')['findOnce']();continue;case'2':if(_0x5a1af6!=null){if('gDu'!==_0x88fd('0x366','K^AY')){log(X);X[_0x88fd('0x47','JcCH')]();}else{_0x5a1af6[_0x88fd('0x45',')o2e')]();sleep(0x7d0);}}continue;case'3':zslwcs++;continue;case'4':var _0x33bb6e=_0x2930c4[_0x88fd('0x367','3@NL')]();continue;}break;}}}continue;case'6':sleep(0x7d0);continue;}break;}}continue;case'3':var _0x29181d=_0x954957[_0x88fd('0x368','rtMY')](random,0x1,0x12c);continue;case'4':while(!![]){pd1=text(_0x954957[_0x88fd('0x369','&3$f')])[_0x88fd('0x36a','%FV[')]();pd2=text(_0x954957[_0x88fd('0x36b','Vtv!')])[_0x88fd('0x12f','sYOl')]();pd3=_0x954957['SKtUC'](text,'红包已过期')['findOnce']();pd4=_0x954957['YtpkL'](textStartsWith,_0x88fd('0x36c','egRk'))[_0x88fd('0x12f','sYOl')]();_0x1c2653=_0x954957['BjYFo'](className,_0x954957[_0x88fd('0x36d','N$Nk')])['clickable'](!![])[_0x88fd('0x36e','2c0r')](s[_0x88fd('0x36f','jgsy')]()[_0x88fd('0x370','wtBl')]-0xa,s['bounds']()['top']-0xa,_0x954957[_0x88fd('0x371','K&3h')](s[_0x88fd('0x1a2','ROVF')]()['right'],0xa),_0x954957[_0x88fd('0x372','sYOl')](s[_0x88fd('0x1f','w[@&')]()['bottom'],0xa))['findOnce']();log(pd1);_0x954957[_0x88fd('0x373',')o2e')](log,pd2);_0x954957[_0x88fd('0x374','w[@&')](log,pd3);_0x954957['aXGlJ'](log,pd4);if(_0x1c2653!=null){pl++;if(pl>0x3){if(_0x88fd('0x375','%FV[')==='wjG'){back();}else{url=_0x954957['CGoMh'](_0x88fd('0x376','mAL5'),id3[_0x88fd('0x377','!6CW')]());}}log('补抢');_0x1c2653[_0x88fd('0x378','eT!y')]();sleep(0x3e8);}if(_0x954957['VJnqR'](pd2,null)||pd1!=null||_0x954957[_0x88fd('0x379','%FV[')](pd3,null)||_0x954957[_0x88fd('0x37a','w[@&')](pd4,null)){var _0x7feca2=_0x954957[_0x88fd('0x37b','4IJ8')]['split']('|'),_0x169715=0x0;while(!![]){switch(_0x7feca2[_0x169715++]){case'0':_0x954957['aXGlJ'](sleep,0x3e8);continue;case'1':back();continue;case'2':toastLog(_0x954957['pkciJ']);continue;case'3':log(pd1);continue;case'4':_0x954957[_0x88fd('0x37c','G@)z')](log,pd4);continue;case'5':sleep(0x3e8);continue;case'6':log(pd2);continue;}break;}}if(pd2==null&&pd1==null&&pd3==null&&_0x954957[_0x88fd('0x37d','mAL5')](pd4,null)&&_0x1c2653==null){log(_0x954957[_0x88fd('0x37e','v$Q3')]);if(pl>0x3){if(ui[_0x88fd('0x37f','wtBl')][_0x88fd('0x380',']$FZ')]==!![]){if(_0x954957[_0x88fd('0x381','G@)z')]===_0x954957['rieLC']){_0x954957[_0x88fd('0x382','2vFb')](_0x3a2d96);}else{_0x954957[_0x88fd('0x383','^ju9')](toastLog,_0x954957[_0x88fd('0x384','SYIy')]);exit();}}scrollDown();}break;}sleep(0x3e8);}continue;case'5':pl=0x1;continue;}break;}}else{var _0x31ebf7=boundsContains(送火苗['bounds']()[_0x88fd('0x385',')o2e')],送火苗[_0x88fd('0x13c','13Ld')]()[_0x88fd('0x34c',')q$f')],送火苗[_0x88fd('0x1f','w[@&')]()['right'],送火苗['bounds']()[_0x88fd('0x20','!IVq')])[_0x88fd('0xda','egRk')](!![])[_0x88fd('0x386','jgsy')]();if(_0x31ebf7!=null){log(_0x31ebf7);_0x31ebf7[_0x88fd('0x387','Po)x')]();_0x954957[_0x88fd('0x388','Nu&O')](sleep,0x7d0);}}}}else if(_0x954957[_0x88fd('0x389','K&3h')](tcz,0x2)){_0x954957[_0x88fd('0x38a',')q$f')](log,_0x954957[_0x88fd('0x38b','BQTg')]);var _0x13e028=_0x954957['FtHKb'](desc,'关闭')[_0x88fd('0xf5','2c0r')]();if(_0x13e028==null){_0x954957[_0x88fd('0x38c','w[@&')](back);}}}else if(_0x954957[_0x88fd('0x38d','v$Q3')](fu,0x1)){fu=0x0;log(_0x954957['WcGxc']);}}else{_0x954957['zXLHF'](sleep,0x7d0);toastLog(_0x88fd('0x38e','!wjm'));sleep(0x3e8);pd2['click']();sleep(0x1388);var _0x5da6ab=text('玫瑰')[_0x88fd('0x26a','!IVq')]();if(_0x954957[_0x88fd('0x38f','K^AY')](_0x5da6ab,null)){var _0x2ae5e3=_0x5da6ab[_0x88fd('0x390','2c0r')]();if(_0x2ae5e3!=null){_0x2ae5e3[_0x88fd('0xa2','SYIy')]();_0x954957[_0x88fd('0x391','3gF[')](sleep,0xfa0);}var _0x243d3e=_0x954957[_0x88fd('0x392','&3$f')](text,'赠送')[_0x88fd('0x1b8','BQTg')]();if(_0x243d3e!=null){_0x243d3e[_0x88fd('0x393','il(g')]();_0x954957['CLNNS'](sleep,0x7d0);}zslwcs++;}}}function _0x4e431d(){var _0x5a9303={'RiccG':'开始快速抢红包','ZgDbl':_0x88fd('0x394',')q$f'),'qAXwS':function _0x329a95(_0x4ee300,_0x207e30){return _0x4ee300(_0x207e30);},'vSjpV':function _0x2ebd0c(_0x49e563,_0x106e07){return _0x49e563(_0x106e07);},'YZOdn':function _0x44a8a0(_0x5c2f56,_0x3e2eed){return _0x5c2f56!=_0x3e2eed;},'zBNAE':function _0x52b933(_0x19d17f,_0x3b5878){return _0x19d17f(_0x3b5878);},'GFTeC':function _0x576133(_0x56544d,_0x5e9ce8){return _0x56544d+_0x5e9ce8;},'mmxcN':function _0x3d7421(_0x4db70c,_0x12331f){return _0x4db70c+_0x12331f;},'hzcrQ':function _0x307cc(_0x470af3,_0x5ac523){return _0x470af3(_0x5ac523);},'NWvBr':_0x88fd('0x395','Vtv!'),'eLgCx':function _0x4badc7(_0x49ac78,_0x326571){return _0x49ac78>_0x326571;},'vhDwf':function _0xbd4b75(_0x52f563,_0x3fa1f3){return _0x52f563!==_0x3fa1f3;},'SbQIU':function _0x274052(_0x2f7381,_0x1a57d5){return _0x2f7381>=_0x1a57d5;},'QDqLz':function _0x2e7cf0(_0x5e9baa,_0x460eb3){return _0x5e9baa===_0x460eb3;},'tKghs':_0x88fd('0x396','20#)'),'wXeIJ':function _0x42b971(_0x254b1f,_0x1e6e96){return _0x254b1f(_0x1e6e96);},'sVAqE':function _0x2be9f1(_0x80aa63,_0x3edba4){return _0x80aa63+_0x3edba4;},'wifKA':function _0x31a2d1(_0x387d3a,_0x381c97){return _0x387d3a(_0x381c97);},'cCAdy':'android.widget.ImageView','vYYDI':function _0x1869d0(_0xb069ed,_0x550c99){return _0xb069ed-_0x550c99;},'BNJbo':_0x88fd('0x397','yf#V'),'WAuwS':function _0x42a817(_0x1da049,_0x505167){return _0x1da049==_0x505167;},'qPiZJ':function _0x4a74f8(_0x16693c,_0x25d919){return _0x16693c==_0x25d919;},'FJrDw':_0x88fd('0x398','HVrR'),'HFGLj':_0x88fd('0x399','3@NL'),'OtmlY':_0x88fd('0x39a','wtBl'),'dkvFT':function _0x4e5370(_0x4bb60b,_0x114581){return _0x4bb60b===_0x114581;},'IDiLd':'tsC','vHchu':'crW','EuuEr':function _0x59ccea(_0xff7240,_0x12d3f1){return _0xff7240-_0x12d3f1;},'BUzGq':function _0x9de28(_0x153c02,_0xdbe73b){return _0x153c02+_0xdbe73b;},'NYrEf':function _0x75d315(_0x3da9d4,_0x39045f){return _0x3da9d4(_0x39045f);},'hocnV':function _0x41c578(_0x1f33eb,_0x2e1459){return _0x1f33eb(_0x2e1459);},'mFwkq':function _0x52f3ae(_0x534d5b,_0x208ed8){return _0x534d5b(_0x208ed8);},'eRWJS':_0x88fd('0x39b','!wjm'),'KJphX':_0x88fd('0x39c','Po)x'),'tRhdC':function _0x57c4d4(_0x5b3048,_0x456d96){return _0x5b3048(_0x456d96);},'bRQhU':_0x88fd('0x39d','il(g'),'fwVYc':function _0x2f11ce(_0x5f3116,_0x3195cd){return _0x5f3116(_0x3195cd);},'Zeuzs':function _0x1c47fb(_0x31d676,_0x525eea){return _0x31d676(_0x525eea);},'hMWmC':function _0x59c44c(_0x5e058f,_0x156d11){return _0x5e058f===_0x156d11;},'PFknL':'cLC','eRpPF':function _0x571d31(_0x4b6c8f,_0x3b790f){return _0x4b6c8f+_0x3b790f;},'hmddZ':function _0x354ef0(_0xc1cba7,_0xf00b1a,_0x19f349){return _0xc1cba7(_0xf00b1a,_0x19f349);},'NduYl':function _0x239b41(_0x1d764c,_0x40acdb){return _0x1d764c(_0x40acdb);},'FypXf':_0x88fd('0x39e','oBvM'),'BqMDR':_0x88fd('0x39f','yf#V'),'nEeNw':'已开启','JWaQT':function _0xfac9d1(_0x5c9f09,_0x341a24){return _0x5c9f09==_0x341a24;},'mvZna':function _0xc6c394(_0x352cc6,_0x142410){return _0x352cc6==_0x142410;},'tcNDA':function _0x30bd51(_0x4b3aeb,_0x234294){return _0x4b3aeb(_0x234294);},'KYMio':_0x88fd('0x3a0','JcCH'),'MECyK':function _0xb80e2e(_0x5efc52,_0x569f66){return _0x5efc52!==_0x569f66;},'qsmgY':_0x88fd('0x3a1','il(g'),'ZifFk':function _0x2c8e47(_0xa34e31,_0x12c2fc,_0x559a8a,_0x5b42ad,_0x27ed4a){return _0xa34e31(_0x12c2fc,_0x559a8a,_0x5b42ad,_0x27ed4a);},'FzEMO':function _0x53ef47(_0x2f5df0,_0x2485d0){return _0x2f5df0<_0x2485d0;},'sxAae':function _0x5d39cf(_0x72666e){return _0x72666e();},'LalUf':_0x88fd('0x3a2','v$Q3'),'RllBd':function _0x514926(_0x2087a5,_0x2cd7ca){return _0x2087a5(_0x2cd7ca);},'kCBux':function _0x464fe9(_0x10e7b5,_0x35b2a6){return _0x10e7b5!=_0x35b2a6;},'XtLLK':function _0xd53b0c(_0x50c704,_0x15d79f){return _0x50c704>_0x15d79f;},'PLlvS':_0x88fd('0x3a3','c3bp'),'JWJrn':'blH','TwWrX':function _0x570f4b(_0x5e1da1,_0x312ccf){return _0x5e1da1(_0x312ccf);},'oSZLz':function _0x5b5814(_0x91f888,_0x313588){return _0x91f888(_0x313588);},'raHHw':_0x88fd('0x3a4','YGJI'),'bpoTQ':function _0x4ca6b1(_0x3fca50,_0x2ebd42){return _0x3fca50(_0x2ebd42);},'FJibf':function _0x27eb32(_0x33555a,_0x116cd6){return _0x33555a(_0x116cd6);},'emBJf':_0x88fd('0x3a5','Za@n'),'MEmQf':_0x88fd('0x3a6','!6CW'),'RdvWN':function _0x1c6fe8(_0x517f9,_0xd89d1b){return _0x517f9(_0xd89d1b);},'WNfzB':_0x88fd('0x3a7','zErZ'),'dpKIX':'异常丢失读秒，直接退出','xgXUq':function _0x4def4c(_0x58b640,_0x60b24f){return _0x58b640(_0x60b24f);},'OFMqb':'nID','zpmpd':function _0x22494f(_0x317964){return _0x317964();},'WSacl':function _0x2f48e3(_0x2cc59c,_0x3fda15){return _0x2cc59c(_0x3fda15);},'ynywf':function _0x109ddd(_0x1dd126,_0x591563){return _0x1dd126(_0x591563);},'GRQJD':function _0x94048(_0x92bba7,_0x1fd898){return _0x92bba7(_0x1fd898);},'yRugK':_0x88fd('0x3a8','ROVF'),'soFfh':function _0x3af89d(_0x4e69c9,_0x43be2d){return _0x4e69c9+_0x43be2d;},'KISDR':'=======fast======fu'};var _0x42519c='1|0|3|4|2'[_0x88fd('0x3a9','c3bp')]('|'),_0x27f41a=0x0;while(!![]){switch(_0x42519c[_0x27f41a++]){case'0':var _0x3adcdb=textContains('红包')[_0x88fd('0x3aa','mAL5')](0x9c4);continue;case'1':log(_0x5a9303[_0x88fd('0x3ab','SYIy')]);continue;case'2':if(fu==0x2){if(_0x88fd('0x3ac','c3bp')!==_0x5a9303[_0x88fd('0x3ad','ROVF')]){tiaochu=0x1;nm=0x1;while(!![]){s=textMatches(_0x88fd('0x3ae','3@NL'))[_0x88fd('0x1b8','BQTg')]();_0x5a9303[_0x88fd('0x3af','Nu&O')](log,s);if(s!=null){if(_0x88fd('0x3b0','K&3h')!=='arc'){var _0x3ffaba=_0x5a9303[_0x88fd('0x3b1','G@)z')](textContains,'红包')['findOnce']();if(_0x5a9303[_0x88fd('0x3b2','3@NL')](_0x3ffaba,null)){var _0x5fd145=s[_0x88fd('0x3b3','FFLW')]();var _0x1a2295=Number(_0x5fd145);_0x5a9303['zBNAE'](toastLog,_0x5a9303[_0x88fd('0x3b4','HVrR')](_0x5a9303[_0x88fd('0x3b5','oBvM')]('还有',_0x1a2295),'s开红包'));if(_0x1a2295>0x3){_0x5a9303[_0x88fd('0x3b6','&Y#L')](sleep,(_0x1a2295-0x3)*0x3e8);tcz=0x1;break;}if(_0x1a2295<=0x3&&_0x1a2295>0x0){tcz=0x1;break;}}if(_0x3ffaba==null){if(_0x88fd('0x3b7','yf#V')!==_0x5a9303[_0x88fd('0x3b8','Nu&O')]){cv++;自动['parent']()[_0x88fd('0x194','oBvM')]();}else{nm++;if(_0x5a9303['eLgCx'](nm,0x3)){tcz=0x2;break;}}}}else{log(查看);查看全部['click']();}}else if(s==null){if(_0x5a9303[_0x88fd('0x3b9','JcCH')](_0x88fd('0x3ba',')o2e'),_0x88fd('0x3bb','3@NL'))){log(火苗总榜);var _0x6aa245=className('android.widget.ImageView')[_0x88fd('0x3bc','4IJ8')](!![])['boundsInside'](火苗总榜[_0x88fd('0x18b','K^AY')]()[_0x88fd('0x3bd','QvT7')],火苗总榜[_0x88fd('0x3be',')o2e')]()['top'],device['width'],火苗总榜[_0x88fd('0x3bf','2vFb')]()[_0x88fd('0x3c0','oBvM')])['findOnce']();if(_0x5a9303['YZOdn'](_0x6aa245,null)){log(_0x6aa245);_0x6aa245[_0x88fd('0x32c','YGJI')]();}}else{tiaochu++;if(_0x5a9303['SbQIU'](tiaochu,0x3)){if(_0x5a9303[_0x88fd('0x3c1','Po)x')](_0x5a9303[_0x88fd('0x3c2','13Ld')],'SCH')){_0x5a9303[_0x88fd('0x3c3','HVrR')](log,'我叼');tcz=0x2;break;}else{_0xc8ea8[_0x88fd('0x3c4','!6CW')]();}}}}sleep(0x3e8);}if(tcz==0x1){w=0x1;while(!![]){xx=className(_0x88fd('0x3c5','&Y#L'))[_0x88fd('0x3c6','2c0r')](![])['enabled'](!![])[_0x88fd('0x3c7','SYIy')](s[_0x88fd('0x13f','!6CW')]()[_0x88fd('0x34b','!IVq')]-0xa,s[_0x88fd('0x266','QvT7')]()[_0x88fd('0xd0','K^AY')]-0xa,_0x5a9303[_0x88fd('0x3c8','N$Nk')](s[_0x88fd('0x226','oBvM')]()[_0x88fd('0x3c9','egRk')],0xa),_0x5a9303[_0x88fd('0x3ca','BQTg')](s['bounds']()['bottom'],0xa))[_0x88fd('0x22b','K&3h')]();_0x4dc1ce=_0x5a9303[_0x88fd('0x3cb','Nu&O')](className,_0x5a9303['cCAdy'])[_0x88fd('0x3cc','N$Nk')](!![])['enabled'](!![])[_0x88fd('0x3cd','20#)')](_0x5a9303[_0x88fd('0x3ce','mAL5')](s[_0x88fd('0x228','il(g')]()[_0x88fd('0x1e7','BQTg')],0xa),s['bounds']()[_0x88fd('0x3cf','!6CW')]-0xa,s['bounds']()['right']+0xa,s['bounds']()[_0x88fd('0x3d0','eT!y')]+0xa)[_0x88fd('0xe0','c3bp')]();if(_0x5a9303[_0x88fd('0x3d1','eT!y')](xx,null)||_0x4dc1ce!=null){log(_0x5a9303[_0x88fd('0x3d2','3gF[')]);break;}if(_0x5a9303[_0x88fd('0x3d3','eT!y')](xx,null)&&_0x5a9303[_0x88fd('0x3d4',')o2e')](_0x4dc1ce,null)){if(_0x5a9303[_0x88fd('0x3d5',']$FZ')]===_0x5a9303[_0x88fd('0x3d6','N$Nk')]){fu=0x2;}else{w++;log(_0x5a9303[_0x88fd('0x3d7','e10Q')]);if(w>=0x3){if(_0x5a9303[_0x88fd('0x3d8','%0od')](_0x5a9303[_0x88fd('0x3d9','zErZ')],_0x5a9303[_0x88fd('0x3da',')q$f')])){var _0x5d7953=boundsInside(关注['bounds']()['left'],关注[_0x88fd('0x108','rtMY')]()['top'],_0x5a9303['sVAqE'](关注[_0x88fd('0x3be',')o2e')]()[_0x88fd('0x3db','2c0r')],0x28),关注[_0x88fd('0x20e','!wjm')]()[_0x88fd('0x3dc','jgsy')])['clickable'](!![])[_0x88fd('0x261','Vtv!')]();if(_0x5d7953!=null){_0x5d7953[_0x88fd('0x3dd','c3bp')]();}}else{_0x5a9303[_0x88fd('0x3de','QvT7')](log,_0x88fd('0x3df','K^AY'));break;}}}}sleep(0x3e8);}if(xx!=null||_0x4dc1ce!=null){var _0x4dc1ce=className(_0x5a9303['cCAdy'])[_0x88fd('0x3e0','oBvM')](!![])['boundsInside'](_0x5a9303[_0x88fd('0x3e1','ROVF')](s[_0x88fd('0x18b','K^AY')]()['left'],0xa),_0x5a9303[_0x88fd('0x3e2','!6CW')](s['bounds']()[_0x88fd('0x3e3','N$Nk')],0xa),s[_0x88fd('0x35b','3gF[')]()[_0x88fd('0x1e9','3gF[')]+0xa,_0x5a9303['BUzGq'](s[_0x88fd('0x1e3','FFLW')]()[_0x88fd('0x3e4','13Ld')],0xa))['findOne'](0x1f40);if(_0x4dc1ce!=null){_0x5a9303['NYrEf'](log,'抢');_0x4dc1ce[_0x88fd('0x3e5','FFLW')]();_0x5a9303[_0x88fd('0x3e6','Za@n')](sleep,0x1f4);}pl=0x1;while(!![]){pd1=_0x5a9303[_0x88fd('0x3e7','QvT7')](text,_0x5a9303[_0x88fd('0x3e8','%FV[')])[_0x88fd('0x3e9','N$Nk')]();pd2=text(_0x88fd('0x3ea','%FV['))['findOnce']();pd3=_0x5a9303['mFwkq'](text,_0x5a9303[_0x88fd('0x3eb','3@NL')])[_0x88fd('0x3ec','^ju9')]();pd4=_0x5a9303[_0x88fd('0x3ed','^ju9')](textStartsWith,_0x5a9303['bRQhU'])[_0x88fd('0x3ee','il(g')]();_0x4dc1ce=_0x5a9303[_0x88fd('0x3ef','!IVq')](className,_0x5a9303[_0x88fd('0x3f0','egRk')])[_0x88fd('0x3cc','N$Nk')](!![])[_0x88fd('0x3f1','oBvM')](s[_0x88fd('0x13f','!6CW')]()[_0x88fd('0x3f2','Po)x')]-0xa,_0x5a9303['EuuEr'](s['bounds']()[_0x88fd('0x3f3','Za@n')],0xa),s[_0x88fd('0x3f4','BQTg')]()[_0x88fd('0x222','!wjm')]+0xa,s[_0x88fd('0x3bf','2vFb')]()[_0x88fd('0x22a','ROVF')]+0xa)['findOnce']();log(pd1);_0x5a9303[_0x88fd('0x3f5','HVrR')](log,pd2);log(pd3);_0x5a9303[_0x88fd('0x3f6','BQTg')](log,pd4);if(_0x4dc1ce!=null){if(_0x5a9303[_0x88fd('0x3f7','YGJI')](_0x5a9303[_0x88fd('0x3f8','sYOl')],_0x88fd('0x3f9','Za@n'))){xv=_0x5a9303[_0x88fd('0x3fa','SYIy')](xv,0x1);if(demonumber>=_0x5a9303[_0x88fd('0x3fb','4IJ8')](random,0x7,0x8)||flamenumber>=0xa){_0x5a9303[_0x88fd('0x3fc','w4Fn')](log,'点击');mon[_0x88fd('0xe1','ROVF')]();demonumber=demonumber-0x1;flamenumber=flamenumber-0xa;}}else{pl++;if(pl>0x3){if(_0x5a9303['FypXf']!==_0x88fd('0x3fd','SYIy')){fhz=0x64;}else{back();}}_0x5a9303['NduYl'](log,'补抢');_0x4dc1ce[_0x88fd('0x3fe','3gF[')]();_0x5a9303[_0x88fd('0x3ff','wtBl')](sleep,0x3e8);}}if(_0x5a9303['YZOdn'](pd2,null)||pd1!=null||pd3!=null||pd4!=null){if(_0x88fd('0x400','e10Q')!==_0x5a9303['BqMDR']){_0x5a9303[_0x88fd('0x401','G@)z')](log,video_page);video_page['scrollForward']();}else{var _0x1302da=_0x88fd('0x402','3gF[')[_0x88fd('0x403','Nu&O')]('|'),_0x5b51c2=0x0;while(!![]){switch(_0x1302da[_0x5b51c2++]){case'0':_0x5a9303[_0x88fd('0x404','zErZ')](log,pd4);continue;case'1':sleep(0x3e8);continue;case'2':log(pd2);continue;case'3':back();continue;case'4':log(pd1);continue;case'5':_0x5a9303[_0x88fd('0x405','2vFb')](toastLog,_0x5a9303[_0x88fd('0x406',')o2e')]);continue;case'6':_0x5a9303['NduYl'](sleep,0x3e8);continue;}break;}}}if(_0x5a9303[_0x88fd('0x407','K&3h')](pd2,null)&&_0x5a9303[_0x88fd('0x408','Po)x')](pd1,null)&&_0x5a9303[_0x88fd('0x409','Vtv!')](pd3,null)&&_0x5a9303[_0x88fd('0x40a','YGJI')](pd4,null)&&_0x5a9303['mvZna'](_0x4dc1ce,null)){if(_0x88fd('0x40b','il(g')===_0x88fd('0x40c','rtMY')){_0x5a9303['tcNDA'](log,_0x5a9303[_0x88fd('0x40d','yf#V')]);if(_0x5a9303['eLgCx'](pl,0x3)){if(_0x5a9303['MECyK'](_0x5a9303[_0x88fd('0x40e','e10Q')],_0x88fd('0x40f','%0od'))){红包1=_0x5a9303[_0x88fd('0x410','w4Fn')](bounds,红包[_0x88fd('0x226','oBvM')]()['left'],红包['bounds']()[_0x88fd('0x411','Vtv!')],红包['bounds']()[_0x88fd('0x412','BQTg')],红包['bounds']()[_0x88fd('0x23e','4IJ8')])[_0x88fd('0x302','&Y#L')]();i=0x0;while(_0x5a9303['FzEMO'](i,红包1['length'])){红包1[i][_0x88fd('0x393','il(g')]();i=i+0x1;_0x5a9303['tcNDA'](sleep,0x64);}}else{if(ui[_0x88fd('0x413','w4Fn')]['checked']==!![]){_0x5a9303[_0x88fd('0x414','BQTg')](_0x3a2d96);}scrollDown();}}break;}else{window[_0x88fd('0x415','K&3h')](_0x5a9303[_0x88fd('0x416','QvT7')]);}}_0x5a9303[_0x88fd('0x417','%0od')](sleep,0x3e8);}var _0x2ac856=_0x5a9303[_0x88fd('0x418',')o2e')](random,0x1,0x12c);if(_0x5a9303[_0x88fd('0x419','oBvM')](pd2,null)&&zslwcs<_0x46237e&&_0x5a9303['XtLLK'](_0x2ac856,0xfa)){if(_0x5a9303[_0x88fd('0x41a','SYIy')]===_0x5a9303['JWJrn']){_0x5a9303[_0x88fd('0x41b','2vFb')](log,本场火力);var _0x2d5cc3=_0x5a9303[_0x88fd('0x41c','K^AY')](clickable,!![])[_0x88fd('0x41d','ROVF')](本场火力[_0x88fd('0x3f4','BQTg')]()['left'],本场火力[_0x88fd('0x265','!IVq')]()[_0x88fd('0x41e','3@NL')],本场火力[_0x88fd('0x4c','egRk')]()[_0x88fd('0x301','FFLW')],本场火力['bounds']()[_0x88fd('0x41f','Nu&O')])[_0x88fd('0x17c',')o2e')]();if(_0x2d5cc3!=null){_0x5a9303[_0x88fd('0x420','w[@&')](log,_0x2d5cc3);_0x2d5cc3[_0x88fd('0x201','zErZ')]();_0x5a9303[_0x88fd('0x421','4IJ8')](sleep,0x7d0);}}else{sleep(0x7d0);_0x5a9303['oSZLz'](toastLog,_0x5a9303[_0x88fd('0x422','N$Nk')]);_0x5a9303[_0x88fd('0x421','4IJ8')](sleep,0x3e8);pd2[_0x88fd('0x423','N$Nk')]();_0x5a9303[_0x88fd('0x424','&3$f')](sleep,0x1388);var _0x50a884=text('玫瑰')[_0x88fd('0x425','egRk')]();if(_0x5a9303['kCBux'](_0x50a884,null)){var _0x26c1ed=_0x88fd('0x426','K^AY')['split']('|'),_0x2f5016=0x0;while(!![]){switch(_0x26c1ed[_0x2f5016++]){case'0':if(_0x5a9303[_0x88fd('0x427','N$Nk')](_0x38b652,null)){if(_0x5a9303['MECyK']('vpx',_0x88fd('0x428','jgsy'))){_0x38b652[_0x88fd('0x423','N$Nk')]();_0x5a9303['FJibf'](sleep,0xfa0);}else{_0x5a9303[_0x88fd('0x429','il(g')](log,_0x88fd('0x42a','il(g'));var _0x4d2e64=textContains('等待')['clickable'](!![])[_0x88fd('0x425','egRk')]();if(_0x5a9303['kCBux'](_0x4d2e64,null)){_0x4d2e64['click']();}}}continue;case'1':var _0x38b652=_0x50a884['parent']();continue;case'2':var _0x5ef6aa=_0x5a9303['FJibf'](text,'赠送')['findOnce']();continue;case'3':if(_0x5ef6aa!=null){if(_0x5a9303[_0x88fd('0x42b','eT!y')]===_0x5a9303[_0x88fd('0x42c','Za@n')]){h=0x1;back();sleep(0x7d0);}else{_0x5ef6aa[_0x88fd('0x42d','&3$f')]();_0x5a9303[_0x88fd('0x42e','K^AY')](sleep,0x7d0);}}continue;case'4':zslwcs++;continue;}break;}}}}}}else if(_0x5a9303[_0x88fd('0x42f','Nu&O')](tcz,0x2)){if(_0x88fd('0x430','il(g')!==_0x5a9303[_0x88fd('0x431',')o2e')]){var _0x2ed101=boundsInside(关注[_0x88fd('0x3be',')o2e')]()[_0x88fd('0x432','QvT7')],关注[_0x88fd('0x3bf','2vFb')]()['top'],_0x5a9303[_0x88fd('0x433','rtMY')](关注['bounds']()[_0x88fd('0x434','w4Fn')],0x28),关注[_0x88fd('0x435','Vtv!')]()[_0x88fd('0x268','!wjm')])[_0x88fd('0x3bc','4IJ8')](!![])[_0x88fd('0x1b8','BQTg')]();if(_0x2ed101!=null){_0x2ed101['click']();}}else{_0x5a9303[_0x88fd('0x436','20#)')](log,_0x5a9303['dpKIX']);var _0x230ed5=_0x5a9303['xgXUq'](desc,'关闭')[_0x88fd('0x61','!wjm')]();if(_0x230ed5==null){if('nID'===_0x5a9303[_0x88fd('0x437','^ju9')]){_0x5a9303['zpmpd'](back);}else{log('火苗');var _0x48b40e=textContains(_0x88fd('0x438','20#)'))['clickable'](!![])[_0x88fd('0x17c',')o2e')]();if(_0x48b40e!=null){_0x5a9303[_0x88fd('0x439','mAL5')](back);}}}}}}else{var _0x1d2b78=_0x5a9303[_0x88fd('0x43a','rtMY')](Number,点赞数量[_0x88fd('0x43b','^ju9')]());_0x5a9303[_0x88fd('0x43c','K&3h')](log,_0x1d2b78);like[_0x88fd('0x2eb','egRk')]();}}else if(fu==0x1){if(_0x88fd('0x43d','oBvM')===_0x88fd('0x43e',')o2e')){_0x5a9303['ynywf'](_0x3dec9d,APPNAME);_0x5a9303[_0x88fd('0x43f','K^AY')](_0x531299,0x64,0xfa);}else{fu=0x0;_0x5a9303[_0x88fd('0x440','%FV[')](log,_0x5a9303[_0x88fd('0x441','4IJ8')]);}}continue;case'3':if(_0x5a9303[_0x88fd('0x442','YGJI')](_0x3adcdb,null)){fu=0x2;}else if(_0x3adcdb==null){fu=0x1;}continue;case'4':log(_0x5a9303['soFfh'](fu,_0x5a9303[_0x88fd('0x443','^ju9')]));continue;}break;}}function _0x455bca(){var _0x437fe2={'nSbKk':function _0x45e94d(_0x220969,_0x4b13fb){return _0x220969!==_0x4b13fb;},'iIhGd':_0x88fd('0x444','N$Nk'),'uLGNi':_0x88fd('0x445','3@NL'),'PguxL':_0x88fd('0x446','G@)z'),'wSQqN':_0x88fd('0x447','2c0r'),'uqlCz':function _0x36ef63(_0x26a16d,_0x3837ad){return _0x26a16d(_0x3837ad);},'PzSyl':function _0xd2faf3(_0x5a3125,_0x10a96e){return _0x5a3125!=_0x10a96e;},'XaEgQ':function _0x4ee7f2(_0xf91df1,_0x139f6a){return _0xf91df1(_0x139f6a);},'mNGdM':_0x88fd('0x448',']$FZ'),'lYWFF':function _0x52e65f(_0x1089d2){return _0x1089d2();},'LBHFw':_0x88fd('0x449','^ju9'),'kTInf':'以后再说','JoomP':function _0x4374ee(_0x5430c5,_0x4d3edd){return _0x5430c5(_0x4d3edd);},'gLsFa':'送火苗人数','nKDZX':function _0x43dae0(_0x384112,_0x3276c9){return _0x384112!=_0x3276c9;},'kIhqp':function _0x494eec(_0x2773e2,_0xe3e695){return _0x2773e2!==_0xe3e695;},'fkZZF':_0x88fd('0x44a','eT!y'),'RlgaV':_0x88fd('0x44b','G@)z'),'sFKWG':function _0x538e2c(_0x2d6e56){return _0x2d6e56();},'lesQu':function _0x3524a3(_0x1a1d5d,_0x26e3e6){return _0x1a1d5d/_0x26e3e6;},'JwiSb':function _0x4edc1c(_0x363ae7,_0x7c601c){return _0x363ae7!=_0x7c601c;},'VEETG':function _0xf6deb3(_0xe26509,_0x3ee8e5){return _0xe26509(_0x3ee8e5);},'AOYOA':'青少年模式','vLrpJ':function _0x4b5363(_0x51b8ec,_0x3bb637){return _0x51b8ec==_0x3bb637;},'mUiuh':_0x88fd('0x44c','QvT7'),'BgMiz':function _0x5c1279(_0x465b6d){return _0x465b6d();},'DCFkx':function _0x378c06(_0x42586e,_0x218cb3){return _0x42586e!=_0x218cb3;},'JmTfn':function _0x5d5e95(_0x437990){return _0x437990();},'DyVHu':function _0xfed10e(_0x1ab357,_0x19d4c){return _0x1ab357(_0x19d4c);},'efpjP':_0x88fd('0x44d','2c0r'),'NEEWg':function _0x52dc84(_0x42be22,_0x1c8161){return _0x42be22===_0x1c8161;},'cXgjx':'sTV','sNXuy':_0x88fd('0x44e','Po)x'),'iNygu':'知道啦','rxyzW':'加载失败','wsBTL':_0x88fd('0x44f','zErZ')};while(!![]){if(_0x437fe2[_0x88fd('0x450','&3$f')](_0x88fd('0x451','zErZ'),_0x437fe2['iIhGd'])){a['click']();}else{var _0x5403a0=_0x437fe2[_0x88fd('0x452','K&3h')]['split']('|'),_0x557460=0x0;while(!![]){switch(_0x5403a0[_0x557460++]){case'0':if(_0x5da125!=null){if('BFZ'!==_0x437fe2[_0x88fd('0x453','^ju9')]){scrollDown();}else{var _0x172080=_0x437fe2[_0x88fd('0x454','jgsy')][_0x88fd('0x455','YGJI')]('|'),_0xd6a99e=0x0;while(!![]){switch(_0x172080[_0xd6a99e++]){case'0':var _0x4e599e=_0x437fe2[_0x88fd('0x456',']$FZ')](text,'赠送')[_0x88fd('0x1b8','BQTg')]();continue;case'1':zslwcs++;continue;case'2':if(_0x437fe2[_0x88fd('0x457','Za@n')](_0x4e599e,null)){_0x4e599e[_0x88fd('0xe5','3@NL')]();sleep(0x7d0);}continue;case'3':var _0x32b7b4=玫瑰[_0x88fd('0x458','13Ld')]();continue;case'4':if(_0x32b7b4!=null){_0x32b7b4[_0x88fd('0x201','zErZ')]();sleep(0xfa0);}continue;}break;}}}continue;case'1':var _0x54f42e=_0x437fe2['XaEgQ'](text,_0x88fd('0x459','w4Fn'))[_0x88fd('0xda','egRk')](!![])['findOnce']();continue;case'2':if(_0x2b62e0!=null){log('火苗');var _0x485d82=textContains(_0x437fe2[_0x88fd('0x45a','il(g')])[_0x88fd('0x145','K^AY')](!![])[_0x88fd('0x261','Vtv!')]();if(_0x485d82!=null){_0x437fe2['lYWFF'](back);}}continue;case'3':sleep(0xbb8);continue;case'4':var _0x5da125=text(_0x437fe2[_0x88fd('0x45b','c3bp')])['findOnce']();continue;case'5':var _0x260b99=text(_0x437fe2[_0x88fd('0x45c','SYIy')])[_0x88fd('0xf4','Nu&O')](!![])['findOnce']();continue;case'6':var _0x2b62e0=_0x437fe2[_0x88fd('0x45d','il(g')](textContains,_0x437fe2[_0x88fd('0x45e','%0od')])['clickable'](![])['findOnce']();continue;case'7':if(_0x437fe2[_0x88fd('0x45f','!IVq')](_0x260b99,null)){var _0x3f2bc2=textContains('更新')[_0x88fd('0x19c','%0od')]();var _0x37223a=textContains('升级')['findOnce']();if(_0x3f2bc2!=null||_0x437fe2[_0x88fd('0x460','v$Q3')](_0x37223a,null)){if(_0x437fe2[_0x88fd('0x461','20#)')](_0x437fe2[_0x88fd('0x462',')o2e')],_0x437fe2[_0x88fd('0x463','!wjm')])){log(a);a[_0x88fd('0x464','jgsy')]();}else{_0x260b99[_0x88fd('0x465','e10Q')]();}}}continue;case'8':if(_0x5386b1!=null){var _0x147da5=_0x437fe2[_0x88fd('0x466','yf#V')](textContains,_0x88fd('0x467','jgsy'))[_0x88fd('0x18e','K^AY')]();if(_0x437fe2[_0x88fd('0x468','w[@&')](_0x147da5,null)){if(_0x437fe2[_0x88fd('0x469','2c0r')]===_0x88fd('0x46a','BQTg')){_0x3dec9d(APPNAME);_0x437fe2[_0x88fd('0x46b',')o2e')](_0x38a7bf);}else{log('抢');抢['click']();sleep(0x1f4);}}}continue;case'9':var _0x18acdb=text('关注')[_0x88fd('0x46c','JcCH')](!![])[_0x88fd('0x46d','zErZ')](0x0,_0x437fe2[_0x88fd('0x46e','Po)x')](device[_0x88fd('0x25e','N$Nk')]*0x3,0x4),device[_0x88fd('0x46f','ROVF')],device[_0x88fd('0x470','v$Q3')])['findOnce']();continue;case'10':if(_0x437fe2[_0x88fd('0x471','!6CW')](_0x54f42e,null)){var _0x4cf7bf=_0x437fe2['VEETG'](textContains,_0x437fe2['AOYOA'])[_0x88fd('0x1b8','BQTg')]();if(_0x437fe2[_0x88fd('0x472','rtMY')](_0x4cf7bf,null)){_0x54f42e['click']();}}continue;case'11':if(_0xf118b9!=null){var _0x45af4e=desc('关闭')[_0x88fd('0xda','egRk')](!![])[_0x88fd('0x36a','%FV[')]();if(_0x437fe2[_0x88fd('0x473','2c0r')](_0x45af4e,null)){_0x45af4e[_0x88fd('0x3c4','!6CW')]();}if(_0x437fe2[_0x88fd('0x474','K&3h')](_0x45af4e,null)){if(_0x88fd('0x475','HVrR')===_0x437fe2['mUiuh']){_0x437fe2[_0x88fd('0x476','rtMY')](back);}else{_0x437fe2[_0x88fd('0x477','w[@&')](back);}}}else if(_0x18acdb!=null){var _0x13b7e3=text('关注主播，不错过任何一次直播')[_0x88fd('0x31b','sYOl')](0x1f4);if(_0x437fe2[_0x88fd('0x478','K&3h')](_0x13b7e3,null)){_0x437fe2['JmTfn'](back);}}continue;case'12':var _0x1d7443=_0x437fe2[_0x88fd('0x479','2vFb')](textContains,_0x437fe2[_0x88fd('0x47a','3@NL')])[_0x88fd('0x2cb','oBvM')]();continue;case'13':if(_0x1d7443!=null){if(_0x437fe2[_0x88fd('0x47b','yf#V')](_0x437fe2[_0x88fd('0x47c','JcCH')],_0x437fe2[_0x88fd('0x47d','13Ld')])){log(_0x88fd('0x47e','ROVF'));var _0x517edf=textContains('等待')[_0x88fd('0x47f','rtMY')](!![])['findOnce']();if(_0x517edf!=null){if(_0x437fe2[_0x88fd('0x480','oBvM')]===_0x88fd('0x44e','Po)x')){_0x517edf[_0x88fd('0x387','Po)x')]();}else{var _0x591449=_0x437fe2[_0x88fd('0x481','yf#V')](text,_0x437fe2['iNygu'])[_0x88fd('0x482','!wjm')](!![])[_0x88fd('0x3d','FFLW')]();if(_0x437fe2[_0x88fd('0x483','^ju9')](_0x591449,null)){_0x591449[_0x88fd('0x53','%FV[')]();}}}}else{log(_0x3006c6);_0x3006c6[_0x88fd('0x2b6','HVrR')]();_0x437fe2[_0x88fd('0x484',')o2e')](sleep,0x7d0);}}continue;case'14':var _0x5386b1=_0x437fe2[_0x88fd('0x485','il(g')](text,_0x437fe2[_0x88fd('0x486','wtBl')])[_0x88fd('0x36a','%FV[')]();continue;case'15':var _0xf118b9=text(_0x437fe2[_0x88fd('0x487','K^AY')])['clickable'](!![])[_0x88fd('0x1c6','!6CW')](0x0,device['height']*0x3/0x4,device[_0x88fd('0x1a1','Po)x')],device['height'])['findOnce']();continue;}break;}}}}function _0x3dec9d(_0x2ea339){var _0x4c800a={'ijmZE':function _0x4e7182(_0x2bd981,_0x7d36c6){return _0x2bd981(_0x7d36c6);},'GkTbQ':function _0x74ae06(_0xfbabd1,_0x16f466){return _0xfbabd1!==_0x16f466;},'zbrBS':_0x88fd('0x488','Po)x'),'eVBfd':function _0x4be782(_0x2ef09f,_0x350e48){return _0x2ef09f(_0x350e48);},'YyOGK':function _0x954f92(_0x53ce3b,_0x32378a){return _0x53ce3b*_0x32378a;},'TlOCN':function _0x4fc2db(_0x1b4479,_0x43fcf0){return _0x1b4479!=_0x43fcf0;},'gcgml':function _0xb5f763(_0x28c6a6,_0x3da598){return _0x28c6a6(_0x3da598);},'rcrKG':'结束运行','CBKUt':function _0x42e927(_0x8889a7,_0x2d6033){return _0x8889a7!=_0x2d6033;},'xZngH':function _0x3ba67c(_0x161835,_0x3eb267){return _0x161835!=_0x3eb267;},'DpofC':function _0x27e416(_0x2bdee5,_0x225c58){return _0x2bdee5(_0x225c58);},'XDeoA':_0x88fd('0x489','QvT7'),'RvTam':function _0x803912(_0x40ade3,_0x229240){return _0x40ade3(_0x229240);},'qDbRI':function _0x525566(_0xd9dbbe,_0x43e33f){return _0xd9dbbe!=_0x43e33f;},'azgtZ':function _0x3d9cc1(_0x5c09ec,_0x1c67fd){return _0x5c09ec!=_0x1c67fd;},'FvQoX':'android.widget.Button','aHpAq':function _0x5e03cb(_0x31d82a,_0x44762e){return _0x31d82a!=_0x44762e;},'eyxCs':function _0x405905(_0x23a837,_0x13e87c){return _0x23a837===_0x13e87c;},'XlohZ':_0x88fd('0x48a','w4Fn'),'WmlJB':function _0x4f7a88(_0xa6b3b5,_0x48c37b){return _0xa6b3b5(_0x48c37b);},'WNuQm':_0x88fd('0x48b','K&3h')};_0x4c800a[_0x88fd('0x48c',')o2e')](log,_0x88fd('0x48d','jgsy'));var _0x2ec2a0=app['getPackageName'](_0x2ea339);app[_0x88fd('0x48e','2c0r')](_0x2ec2a0);while(!![]){if(_0x4c800a['GkTbQ'](_0x88fd('0x48f','v$Q3'),_0x4c800a[_0x88fd('0x490','HVrR')])){var _0x313cbc=_0x4c800a[_0x88fd('0x491','!IVq')](className,_0x88fd('0x492','Nu&O'))[_0x88fd('0xda','egRk')](!![])[_0x88fd('0x493','rtMY')](_0x4c800a[_0x88fd('0x494','13Ld')](device[_0x88fd('0x495','eT!y')],0x2)/0x3,0x0,device[_0x88fd('0x496','^ju9')],device[_0x88fd('0x497','K&3h')]/0x4)['findOne'](0x7d0);if(_0x4c800a[_0x88fd('0x498','Za@n')](_0x313cbc,null)){_0x4c800a[_0x88fd('0x499','il(g')](log,_0x313cbc);_0x313cbc[_0x88fd('0x3dd','c3bp')]();}}else{var _0x1d8644=_0x4c800a[_0x88fd('0x49a','w4Fn')](text,_0x4c800a[_0x88fd('0x49b','zErZ')])[_0x88fd('0x49c','v$Q3')]();var _0x226946=textEndsWith('停止')[_0x88fd('0x36a','%FV[')]();if(_0x4c800a[_0x88fd('0x49d','oBvM')](_0x1d8644,null)||_0x4c800a[_0x88fd('0x49e','3gF[')](_0x226946,null)){_0x4c800a['DpofC'](log,_0x4c800a[_0x88fd('0x49f',']$FZ')]);break;}sleep(0x3e8);}}sleep(0x7d0);var _0x15cb5b=className('android.widget.Button')['text'](_0x88fd('0x4a0','egRk'))['findOne'](0x5dc);var _0x9de5e8=_0x4c800a[_0x88fd('0x4a1','wtBl')](className,_0x88fd('0x4a2','13Ld'))[_0x88fd('0x4a3',')o2e')]('停止')[_0x88fd('0x4a4','%FV[')](0x5dc);if(_0x4c800a[_0x88fd('0x4a5','w4Fn')](_0x15cb5b,null)){_0x15cb5b[_0x88fd('0x423','N$Nk')]();}else if(_0x4c800a[_0x88fd('0x4a6','v$Q3')](_0x9de5e8,null)){_0x9de5e8[_0x88fd('0x1aa','BQTg')]();}_0x4c800a[_0x88fd('0x4a7','w4Fn')](sleep,0x7d0);while(!![]){var _0x25a20d=_0x4c800a['RvTam'](className,_0x4c800a[_0x88fd('0x4a8','!wjm')])['text']('确定')['findOnce']();var _0x9de5e8=className(_0x88fd('0x4a9','%FV['))[_0x88fd('0x4aa','rtMY')]('停止')[_0x88fd('0x22b','K&3h')]();if(_0x4c800a[_0x88fd('0x4ab','wtBl')](_0x25a20d,null)){_0x25a20d['click']();break;}else if(_0x9de5e8!=null){if(_0x4c800a[_0x88fd('0x4ac','FFLW')](_0x88fd('0x4ad','wtBl'),_0x88fd('0x4ae','ROVF'))){app['startActivity']({'action':_0x4c800a['XlohZ'],'data':'mqqapi://card/show_pslcard?src_type=internal&version=1&uin=906824840&card_type=group&source=qrcode','packageName':'com.tencent.mobileqq'});}else{_0x9de5e8[_0x88fd('0x4af','Nu&O')]();break;}}_0x4c800a[_0x88fd('0x4b0','2c0r')](sleep,0x3e8);}log(_0x4c800a['WNuQm']);home();_0x4c800a[_0x88fd('0x4b1',')o2e')](sleep,0x7d0);}function _0x36a09b(){var _0x5a26b6={'qVXJY':_0x88fd('0x4b2','rtMY'),'zhlWP':function _0x1a9f3f(_0x1ae200,_0x5c594e){return _0x1ae200!=_0x5c594e;},'lcGAb':function _0x359c41(_0x135a43,_0x35c60e){return _0x135a43(_0x35c60e);},'mOoRs':function _0x299d99(_0x3635d4,_0x159ebc){return _0x3635d4===_0x159ebc;},'yppCz':_0x88fd('0x4b3','zErZ'),'PKvVs':'异常丢失读秒，直接退出','vCRIe':function _0x575016(_0x5c2e04,_0x1b7533){return _0x5c2e04==_0x1b7533;},'nJGKX':function _0x2eaff6(_0x2797fe){return _0x2797fe();},'gBkxC':_0x88fd('0x4b4','QvT7'),'pVmbN':function _0x24adee(_0x53ab53,_0x42d6ad){return _0x53ab53(_0x42d6ad);},'UcNqv':function _0x362ede(_0x175e2d,_0x5adabd){return _0x175e2d(_0x5adabd);},'jDzAy':'喜欢按钮','blIPV':_0x88fd('0x4b5','eT!y'),'ezMbi':function _0x53977a(_0x353e6b,_0xc62325,_0x277408,_0x33f003,_0x3845b4){return _0x353e6b(_0xc62325,_0x277408,_0x33f003,_0x3845b4);},'plzGq':_0x88fd('0x4b6','e10Q'),'jjxCQ':_0x88fd('0x4b7','c3bp'),'JpCOA':function _0x5799f5(_0x1b4090,_0x3d66bb){return _0x1b4090/_0x3d66bb;},'ABteF':function _0x3ac696(_0x218470,_0x3ebd2c){return _0x218470!==_0x3ebd2c;},'bGJjc':function _0x1e6b97(_0x502a05,_0x2d1ec5){return _0x502a05+_0x2d1ec5;},'mxvwo':_0x88fd('0x4b8','Po)x'),'joNpF':function _0x40c0ad(_0x26075b,_0x1f8529){return _0x26075b===_0x1f8529;},'gyuYa':_0x88fd('0x4b9','w4Fn'),'ULsAv':'你今天领取到','uXMLm':function _0x21c60e(_0x543531,_0x40d671){return _0x543531-_0x40d671;},'dhSaW':function _0x2eb314(_0x43629c,_0x5efe22){return _0x43629c(_0x5efe22);},'oKgxs':_0x88fd('0x4ba','ROVF'),'QmJQe':'cUz','kIUKE':_0x88fd('0x4bb','!wjm'),'dAUQv':_0x88fd('0x4bc','jgsy'),'ZhHdc':function _0xdf6a20(_0x215611){return _0x215611();},'lTBLA':function _0x5a2781(_0x426205,_0x26e160){return _0x426205(_0x26e160);},'FiHhO':function _0x59a986(_0x3b36ad,_0x3064ee,_0x140a1a){return _0x3b36ad(_0x3064ee,_0x140a1a);},'hnIIa':function _0x1e823b(_0x3a2d31,_0x466eca){return _0x3a2d31(_0x466eca);},'LiuuA':function _0x20d1fe(_0x2f7f0c,_0x93a4b5){return _0x2f7f0c>=_0x93a4b5;},'WXunz':function _0x3ed9bd(_0x4358c1,_0x2480b5){return _0x4358c1===_0x2480b5;},'kwFKJ':_0x88fd('0x4bd','ROVF'),'dnBlY':function _0x3171d9(_0x4c6508,_0x3de459){return _0x4c6508>_0x3de459;},'Dhooq':function _0x2613e2(_0xb709eb,_0x1ad60a){return _0xb709eb===_0x1ad60a;},'NgUay':'xjb','kurgV':function _0xcf4aa4(_0x3ad13f,_0x3b80bb){return _0x3ad13f(_0x3b80bb);}};var _0x21f1a2=_0x5a26b6[_0x88fd('0x4be',']$FZ')]['split']('|'),_0xb86941=0x0;while(!![]){switch(_0x21f1a2[_0xb86941++]){case'0':if(_0x5a26b6[_0x88fd('0x4bf','&3$f')](_0x3894d2,null)){var _0x435c10=_0x5a26b6[_0x88fd('0x4c0','jgsy')](text,_0x88fd('0x4c1','YGJI'))[_0x88fd('0x1c5','FFLW')](!![])[_0x88fd('0x3ee','il(g')]();if(_0x5a26b6['zhlWP'](_0x435c10,null)){if(_0x5a26b6['mOoRs'](_0x5a26b6['yppCz'],_0x88fd('0x4c2','!6CW'))){_0x435c10[_0x88fd('0x53','%FV[')]();}else{log(_0x5a26b6[_0x88fd('0x4c3','w[@&')]);var _0x1cbd03=desc('关闭')[_0x88fd('0x2cb','oBvM')]();if(_0x5a26b6[_0x88fd('0x4c4','13Ld')](_0x1cbd03,null)){_0x5a26b6[_0x88fd('0x4c5','jgsy')](back);}}}}continue;case'1':kl=0x1;continue;case'2':while(!![]){_0x5a26b6[_0x88fd('0x4c6','yf#V')](toastLog,_0x5a26b6[_0x88fd('0x4c7',')o2e')]);var _0x4a6abd=_0x5a26b6[_0x88fd('0x4c8','c3bp')](className,'android.widget.TextView')[_0x88fd('0x4c9','HVrR')]('前')['findOnce']();var _0x54a336=_0x5a26b6[_0x88fd('0x4ca','eT!y')](descEndsWith,_0x5a26b6[_0x88fd('0x4cb','il(g')])[_0x88fd('0x4cc','!6CW')](!![])['findOnce']();var _0x4d5564=textContains(_0x88fd('0x4cd','&Y#L'))[_0x88fd('0x4ce','v$Q3')](!![])[_0x88fd('0x4cf','4IJ8')]();if(_0x4a6abd!=null&&_0x5a26b6[_0x88fd('0x4d0','HVrR')](_0x54a336,null)){var _0x444552=_0x4a6abd['parent']();if(_0x444552!=null){if(_0x5a26b6[_0x88fd('0x4d1','YGJI')]===_0x88fd('0x4d2','Vtv!')){var _0x2708d9=_0x5a26b6[_0x88fd('0x4d3','w4Fn')](bounds,_0x444552[_0x88fd('0x139',')q$f')]()[_0x88fd('0xd1','13Ld')],_0x444552[_0x88fd('0x2ff','&Y#L')]()['top'],_0x444552[_0x88fd('0x4d4','Nu&O')]()['right'],_0x444552[_0x88fd('0x4d5','JcCH')]()['bottom'])[_0x88fd('0xf4','Nu&O')](!![])[_0x88fd('0x18e','K^AY')]();if(_0x2708d9!=null){_0x2708d9[_0x88fd('0xe1','ROVF')]();}}else{_0x5a26b6[_0x88fd('0x4d6','13Ld')](log,'抢');抢[_0x88fd('0x2a3','G@)z')]();_0x5a26b6[_0x88fd('0x4d7',')q$f')](sleep,0x1f4);}}}if(_0x54a336!=null||_0x4d5564!=null){toastLog(_0x5a26b6[_0x88fd('0x4d8','wtBl')]);break;}_0x5a26b6['UcNqv'](sleep,0xfa0);}continue;case'3':zq=0x1;continue;case'4':while(!![]){var _0x6af4dc=packageName(_0x5a26b6['jjxCQ'])['text']('关注')[_0x88fd('0x40','4IJ8')](_0x88fd('0x4d9',')o2e'))[_0x88fd('0x4da','c3bp')](![])['boundsInside'](0x69,0x5,device[_0x88fd('0x29b','egRk')]-0x69,_0x5a26b6[_0x88fd('0x4db','K&3h')](device[_0x88fd('0x4dc','w[@&')],0x5))[_0x88fd('0x261','Vtv!')]();if(_0x5a26b6[_0x88fd('0x4dd','e10Q')](_0x6af4dc,null)){if(_0x5a26b6['ABteF'](_0x88fd('0x4de','13Ld'),'GYu')){var _0x4f437b=text(_0x88fd('0x4df','Za@n'))[_0x88fd('0x4e0','&3$f')](0x1f4);if(_0x4f437b!=null){back();}}else{var _0x12c1d8=boundsInside(_0x6af4dc[_0x88fd('0x3f4','BQTg')]()[_0x88fd('0x1e1','YGJI')],_0x6af4dc[_0x88fd('0x10c','2c0r')]()['top'],_0x5a26b6['bGJjc'](_0x6af4dc['bounds']()[_0x88fd('0x4e1','Nu&O')],0x28),_0x6af4dc[_0x88fd('0x2e5','wtBl')]()[_0x88fd('0x4e2','&3$f')])[_0x88fd('0x4e3','e10Q')](!![])[_0x88fd('0xf5','2c0r')]();if(_0x12c1d8!=null){_0x12c1d8[_0x88fd('0x50',']$FZ')]();}}}var _0x5129ad=_0x5a26b6[_0x88fd('0x4e4','ROVF')](textContains,_0x5a26b6['mxvwo'])['clickable'](![])[_0x88fd('0x4cf','4IJ8')]();if(_0x5129ad!=null){if(_0x5129ad[_0x88fd('0x4e5','Po)x')]()['right']>0x0){if(_0x5a26b6[_0x88fd('0x4e6','eT!y')](_0x5a26b6[_0x88fd('0x4e7','K&3h')],_0x5a26b6[_0x88fd('0x4e8','FFLW')])){break;}else{确定['click']();}}}_0x5a26b6['UcNqv'](sleep,0x7d0);}continue;case'5':var _0x3894d2=_0x5a26b6[_0x88fd('0x4e9','Za@n')](text,_0x5a26b6[_0x88fd('0x4ea','eT!y')])[_0x88fd('0x3d','FFLW')]();continue;case'6':while(!![]){var _0x3cb6d5=packageName('com.ss.android.ugc.live')[_0x88fd('0x4eb','!6CW')]('直播')[_0x88fd('0x4ec','yf#V')](_0x88fd('0x4d9',')o2e'))[_0x88fd('0x4ce','v$Q3')](![])[_0x88fd('0x4ed','il(g')](0x69,0x5,_0x5a26b6[_0x88fd('0x4ee','!IVq')](device[_0x88fd('0x25c',']$FZ')],0x69),device[_0x88fd('0x260','2c0r')]/0x5)[_0x88fd('0x4ef','e10Q')]();var _0x444552=_0x5a26b6['dhSaW'](packageName,_0x5a26b6[_0x88fd('0x4f0','4IJ8')])['text']('视频')[_0x88fd('0x4f1','YGJI')]('android.widget.TextView')['clickable'](![])[_0x88fd('0x4f2','13Ld')](0x69,0x5,_0x5a26b6[_0x88fd('0x4f3','^ju9')](device[_0x88fd('0x4f4','Vtv!')],0x69),device[_0x88fd('0x4f5','!wjm')]/0x5)[_0x88fd('0x4f6','zErZ')]();if(_0x5a26b6[_0x88fd('0x4f7','20#)')](_0x3cb6d5,null)&&_0x444552!=null){if(_0x5a26b6[_0x88fd('0x4f8','!6CW')]===_0x5a26b6[_0x88fd('0x4f9','jgsy')]){_0x3a2d96();}else{log(_0x5a26b6[_0x88fd('0x4fa','il(g')]);break;}}zq++;sleep(0x7d0);if(zq>0xa){zq=0x1;log(_0x5a26b6[_0x88fd('0x4fb','Za@n')]);_0x3dec9d(APPNAME);_0x5a26b6[_0x88fd('0x4fc','FFLW')](_0x38a7bf);}_0x5a26b6[_0x88fd('0x4fd','HVrR')](sleep,0xbb8);}continue;case'7':while(!![]){_0x5a26b6['lTBLA'](sleep,random(0x1f40,0x3a98));abc=random(random(0x1,0x1e),_0x5a26b6[_0x88fd('0x4fe','&3$f')](random,0x64,0x82));abcd=_0x5a26b6[_0x88fd('0x4ff','ROVF')](random,_0x5a26b6[_0x88fd('0x500','eT!y')](random,0x1,0x14),_0x5a26b6['FiHhO'](random,0x78,0x96));var _0x54a336=_0x5a26b6[_0x88fd('0x501','ROVF')](descEndsWith,_0x5a26b6[_0x88fd('0x502','v$Q3')])[_0x88fd('0x503','w[@&')]();if(_0x5a26b6[_0x88fd('0x504','Za@n')](abc,0x5f)&&_0x5a26b6[_0x88fd('0x505','!6CW')](_0x54a336,null)){_0x54a336['click']();_0x5a26b6[_0x88fd('0x506','!IVq')](log,'点赞');}var _0x3d6b7a=className('android.support.v4.view.ViewPager')[_0x88fd('0x507','eT!y')](!![])[_0x88fd('0x261','Vtv!')]();if(_0x3d6b7a!=null){if(_0x5a26b6[_0x88fd('0x508','rtMY')](_0x88fd('0x509','2vFb'),_0x5a26b6[_0x88fd('0x50a','Za@n')])){log(_0x3d6b7a);_0x3d6b7a[_0x88fd('0x50b','zErZ')]();}else{back();}}kl++;if(_0x5a26b6[_0x88fd('0x50c','wtBl')](kl,random(0xf,0x19))){if(_0x5a26b6[_0x88fd('0x50d','egRk')](_0x5a26b6['NgUay'],_0x5a26b6[_0x88fd('0x50e','20#)')])){log(_0x88fd('0x50f','4IJ8'));_0x38a7bf();break;}else{_0x54a336[_0x88fd('0x1aa','BQTg')]();_0x5a26b6[_0x88fd('0x510','w4Fn')](log,'点赞');}}}continue;}break;}}function _0x38a7bf(){var _0x9a3e61={'VhWyt':_0x88fd('0x511','mAL5'),'jAQpF':function _0x3e4e27(_0x5ec831,_0xd2805){return _0x5ec831/_0xd2805;},'liJHH':function _0x49d979(_0x2cef87,_0x489b50){return _0x2cef87!==_0x489b50;},'ayIhI':'Oqr','fQMvW':function _0x2d0940(_0x14d7df,_0x307964){return _0x14d7df(_0x307964);},'LjXhH':function _0x5e3dad(_0x5b1e95,_0x1f1ebe){return _0x5b1e95(_0x1f1ebe);},'IASwa':function _0x4087a8(_0xc4d59d,_0x38b440){return _0xc4d59d!==_0x38b440;},'BmcKu':'EJE','sJaEq':function _0xb3265c(_0x184fcd,_0x12abca,_0x40f4df,_0x149934,_0x90b560){return _0x184fcd(_0x12abca,_0x40f4df,_0x149934,_0x90b560);},'cHDFV':function _0x388df8(_0x2f4247,_0x3806f9){return _0x2f4247<_0x3806f9;},'ZfJJh':function _0x3d3c0a(_0xf4fb36){return _0xf4fb36();},'Ncwpj':_0x88fd('0x512','eT!y'),'GUahw':function _0x1a64ba(_0x1ff0f0,_0x120b72){return _0x1ff0f0===_0x120b72;},'LZWcT':_0x88fd('0x513','FFLW')};while(!![]){if(_0x88fd('0x514','eT!y')===_0x9a3e61['VhWyt']){var _0x40673e=packageName(_0x88fd('0x515','!6CW'))[_0x88fd('0x516',']$FZ')]('直播')[_0x88fd('0x1d9','egRk')](_0x88fd('0x132','ROVF'))[_0x88fd('0x3c','13Ld')](![])[_0x88fd('0x517','yf#V')](0x69,0x5,device[_0x88fd('0x4f4','Vtv!')]-0x69,_0x9a3e61[_0x88fd('0x518','Za@n')](device['height'],0x5))['findOnce']();var _0x1293d7=packageName(_0x88fd('0x519','w[@&'))[_0x88fd('0x1d3','wtBl')]('视频')[_0x88fd('0x3b','eT!y')](_0x88fd('0x51a','sYOl'))[_0x88fd('0x51b','wtBl')](![])[_0x88fd('0x51c','wtBl')](0x69,0x5,device['width']-0x69,_0x9a3e61[_0x88fd('0x51d',')q$f')](device[_0x88fd('0x2b1','%0od')],0x5))[_0x88fd('0x12f','sYOl')]();if(_0x40673e!=null&&_0x1293d7!=null){if(_0x9a3e61[_0x88fd('0x51e','Po)x')](_0x9a3e61['ayIhI'],_0x88fd('0x51f','G@)z'))){关注p[_0x88fd('0x520','Vtv!')]();}else{var _0x2faaf2=_0x9a3e61['fQMvW'](textContains,'搜索')[_0x88fd('0xe0','c3bp')]();if(_0x2faaf2!=null){back();_0x9a3e61[_0x88fd('0x521','rtMY')](sleep,0x7d0);}_0x9a3e61[_0x88fd('0x522','w4Fn')](toastLog,_0x88fd('0x523','oBvM'));break;}}else{var _0x17ae79=_0x9a3e61[_0x88fd('0x524','c3bp')](packageName,_0x88fd('0x512','eT!y'))['findOnce']();if(_0x17ae79!=null){if(_0x9a3e61['IASwa'](_0x88fd('0x525','!wjm'),_0x9a3e61['BmcKu'])){红包1=_0x9a3e61[_0x88fd('0x526','Za@n')](bounds,红包[_0x88fd('0x226','oBvM')]()[_0x88fd('0x527','rtMY')],红包[_0x88fd('0x528','sYOl')]()[_0x88fd('0x529','w4Fn')],红包[_0x88fd('0x214','Za@n')]()[_0x88fd('0x52a','sYOl')],红包[_0x88fd('0x435','Vtv!')]()[_0x88fd('0x52b','N$Nk')])[_0x88fd('0x52c','4IJ8')]();i=0x0;while(_0x9a3e61['cHDFV'](i,红包1[_0x88fd('0x52d','rtMY')])){红包1[i][_0x88fd('0x3fe','3gF[')]();i=i+0x1;_0x9a3e61[_0x88fd('0x52e','zErZ')](sleep,0x64);}}else{_0x9a3e61[_0x88fd('0x52f','Po)x')](back);_0x9a3e61[_0x88fd('0x530','K&3h')](sleep,0xbb8);}}var _0x3ada89=packageName(_0x9a3e61[_0x88fd('0x531','&Y#L')])[_0x88fd('0x532','jgsy')]('退出')[_0x88fd('0x1f4','HVrR')](!![])[_0x88fd('0x17f','13Ld')]();if(_0x3ada89!=null){if(_0x9a3e61['GUahw'](_0x9a3e61['LZWcT'],_0x9a3e61[_0x88fd('0x533','%FV[')])){_0x3ada89['click']();}else{q=0x1;toast('等待红包中');_0x9a3e61[_0x88fd('0x534','HVrR')](sleep,0xfa0);}}}var _0x17ae79=packageName('com.ss.android.ugc.live')['findOnce']();if(_0x17ae79==null){app['launchApp'](APPNAME);_0x9a3e61[_0x88fd('0x535','JcCH')](sleep,0x1f40);}sleep(0x3e8);}else{结束运行[_0x88fd('0x378','eT!y')]();}}}function _0x3a2d96(){var _0x1f5b9e={'CyJOW':function _0x448020(_0x45afc8,_0x27dfd0){return _0x45afc8!==_0x27dfd0;},'FeUMQ':_0x88fd('0x536','v$Q3'),'cidpX':'CUW','fcFuI':function _0x237190(_0x58471b,_0x16472a){return _0x58471b(_0x16472a);},'blKHv':function _0x357939(_0x19289e,_0x2aa08a){return _0x19289e(_0x2aa08a);},'kKJky':_0x88fd('0x537','3gF['),'Lbrxy':function _0x29951(_0x273143,_0x4cf3a1){return _0x273143!=_0x4cf3a1;},'LsGBc':function _0x40cb55(_0x1a33fc,_0x45cec6){return _0x1a33fc===_0x45cec6;},'SMvxc':'Nvi','ZZTUy':_0x88fd('0x538','w[@&'),'zQTXE':function _0x2a1f51(_0x3a7b04,_0x185ca8){return _0x3a7b04+_0x185ca8;},'nlRSH':function _0x9167cc(_0x28b46c,_0x4232f2){return _0x28b46c!=_0x4232f2;},'EgCQo':function _0x46f7f7(_0x4e5364,_0xb297c5){return _0x4e5364(_0xb297c5);},'jVozn':function _0x406ff5(_0x4980e9,_0x1d0c0b){return _0x4980e9==_0x1d0c0b;},'oGair':function _0x467fd0(_0x341ba7,_0x39a9fb){return _0x341ba7===_0x39a9fb;},'caMeE':function _0x154cda(_0x3d663b,_0x433550){return _0x3d663b<_0x433550;},'fxKou':function _0x41e019(_0x42db23,_0x2e913d){return _0x42db23+_0x2e913d;},'fqTyU':'干,拉黑','iBADQ':function _0x7c416d(_0x3b4f0a,_0x2553b7){return _0x3b4f0a(_0x2553b7);},'NMfeM':function _0x8ab5bf(_0x365758){return _0x365758();},'FIYWC':function _0x3f5ffd(_0x440aa1,_0x4c03ba){return _0x440aa1!=_0x4c03ba;},'tEQzy':function _0x2dae0b(_0xdbf82e,_0x9b7619){return _0xdbf82e(_0x9b7619);},'qZxIe':_0x88fd('0x539','c3bp'),'HoTZt':_0x88fd('0x53a','yf#V'),'ntBtb':'android.widget.ImageView','sXJNB':function _0x4920af(_0x54f47e,_0x458f39){return _0x54f47e/_0x458f39;},'jiLmY':_0x88fd('0x53b','JcCH'),'VNsOK':function _0x47416a(_0x3d8026,_0x5ddeda){return _0x3d8026(_0x5ddeda);},'DNzad':function _0x2ded44(_0x4f62c1,_0x18eacf){return _0x4f62c1(_0x18eacf);},'IsvnL':function _0x5d3525(_0xe622de,_0x368bdc){return _0xe622de!=_0x368bdc;},'VXHlc':function _0x1ac133(_0x19aa26,_0x7c55d7){return _0x19aa26!=_0x7c55d7;},'hfRtb':function _0x2a8a52(_0x466280,_0x5f1615){return _0x466280!==_0x5f1615;},'Swbyg':'rNe','XHUKC':'adU','YFqWG':function _0x20c3d1(_0x5ec82b,_0x3507b2){return _0x5ec82b(_0x3507b2);}};if(_0x1f5b9e['CyJOW'](_0x88fd('0x53c','4IJ8'),_0x1f5b9e[_0x88fd('0x53d','il(g')])){var _0x4b0b50='1|4|3|2|0'[_0x88fd('0x53e','mAL5')]('|'),_0x319fc0=0x0;while(!![]){switch(_0x4b0b50[_0x319fc0++]){case'0':while(!![]){if(_0x1f5b9e[_0x88fd('0x53f','20#)')]!==_0x1f5b9e[_0x88fd('0x540','JcCH')]){以后再说[_0x88fd('0x3e5','FFLW')]();}else{var _0x211aa4=_0x1f5b9e[_0x88fd('0x541','e10Q')](desc,'关闭')[_0x88fd('0x1a8','yf#V')]();var _0x4605ab=_0x1f5b9e[_0x88fd('0x542','ROVF')](text,'直播')[_0x88fd('0x543','!IVq')](_0x1f5b9e[_0x88fd('0x544','QvT7')])['boundsInside'](0x5a,0x0,device[_0x88fd('0x545','yf#V')]-0x5a,device['height']/0x3)[_0x88fd('0x251','w4Fn')]();if(_0x1f5b9e[_0x88fd('0x546','!6CW')](_0x211aa4,null)||_0x1f5b9e['Lbrxy'](_0x4605ab,null)){if(_0x1f5b9e[_0x88fd('0x547','rtMY')](_0x88fd('0x548','BQTg'),_0x1f5b9e['SMvxc'])){break;}else{var _0x4d8deb=className(_0x1f5b9e['ZZTUy'])[_0x88fd('0x549','SYIy')](!![])[_0x88fd('0x54a','!IVq')](火力[_0x88fd('0x1e2','e10Q')]()['left'],火力[_0x88fd('0x54b','3@NL')]()['bottom'],_0x1f5b9e[_0x88fd('0x54c','!wjm')](showall['bounds']()[_0x88fd('0x54d','Za@n')],0x14),showall[_0x88fd('0x54e','mAL5')]()[_0x88fd('0x54f','G@)z')])[_0x88fd('0x34e','ROVF')]();if(_0x1f5b9e[_0x88fd('0x550','eT!y')](_0x4d8deb,null)){_0x4d8deb[_0x88fd('0x393','il(g')]();}}}else{var _0x36cadf=_0x1f5b9e[_0x88fd('0x551','G@)z')](packageName,_0x88fd('0x552','yf#V'))[_0x88fd('0x17f','13Ld')]();log(_0x36cadf);if(_0x36cadf!=null){if(_0x88fd('0x553','rtMY')!==_0x88fd('0x554','BQTg')){back();sleep(0x7d0);}else{玫瑰1['click']();_0x1f5b9e[_0x88fd('0x555','w4Fn')](sleep,0xfa0);}}else if(_0x1f5b9e[_0x88fd('0x556','ROVF')](_0x36cadf,null)){if(_0x1f5b9e['oGair'](_0x88fd('0x557','il(g'),_0x88fd('0x558','JcCH'))){app[_0x88fd('0x559','K&3h')](APPNAME);sleep(0x1388);}else{fhz=0x3;_0x1f5b9e[_0x88fd('0x55a','3@NL')](toastLog,_0x88fd('0x55b','3@NL'));if(_0x1f5b9e['nlRSH'](红包,null)){红包1=bounds(红包[_0x88fd('0x18b','K^AY')]()[_0x88fd('0x55c','&Y#L')],红包[_0x88fd('0x4d4','Nu&O')]()['top'],红包[_0x88fd('0x13c','13Ld')]()[_0x88fd('0x55d','HVrR')],红包[_0x88fd('0x1a2','ROVF')]()[_0x88fd('0x140','Za@n')])[_0x88fd('0x386','jgsy')]();i=0x0;while(_0x1f5b9e['caMeE'](i,红包1[_0x88fd('0x2e9','w[@&')])){红包1[i][_0x88fd('0x2eb','egRk')]();i=_0x1f5b9e[_0x88fd('0x55e','N$Nk')](i,0x1);_0x1f5b9e[_0x88fd('0x55f','wtBl')](sleep,0x64);}}}}}_0x1f5b9e[_0x88fd('0x560','oBvM')](sleep,0x1f4);}}continue;case'1':log(_0x1f5b9e[_0x88fd('0x561','Za@n')]);continue;case'2':sleep(0x3e8);continue;case'3':while(!![]){if('oij'===_0x88fd('0x562','yf#V')){_0x1f5b9e[_0x88fd('0x563','BQTg')](sleep,0x3e8);_0x1f5b9e[_0x88fd('0x564','^ju9')](_0x1dc689);}else{var _0x31cc10=_0x1f5b9e['iBADQ'](textContains,_0x88fd('0x565','4IJ8'))['findOnce']();if(_0x1f5b9e[_0x88fd('0x566','YGJI')](_0x31cc10,null)){log(_0x31cc10);var _0x56b3e8=clickable(!![])['boundsContains'](_0x31cc10[_0x88fd('0x13f','!6CW')]()['left'],_0x31cc10[_0x88fd('0x35b','3gF[')]()['top'],_0x31cc10['bounds']()[_0x88fd('0x3db','2c0r')],_0x31cc10[_0x88fd('0x1fe','v$Q3')]()['bottom'])[_0x88fd('0x567',')q$f')]();if(_0x1f5b9e[_0x88fd('0x568','sYOl')](_0x56b3e8,null)){log(_0x56b3e8);_0x56b3e8[_0x88fd('0x254','!IVq')]();_0x1f5b9e[_0x88fd('0x569','HVrR')](sleep,0x7d0);}}var _0x47ca0f=text('主页')[_0x88fd('0x247','sYOl')](!![])['findOne'](0x7d0);if(_0x47ca0f!=null){_0x47ca0f[_0x88fd('0x56a','2vFb')]();}var _0x26fce1=_0x1f5b9e['tEQzy'](textContains,_0x88fd('0x56b','Po)x'))['findOne'](0x3e8);if(_0x26fce1!=null){if(_0x1f5b9e['qZxIe']!==_0x1f5b9e['HoTZt']){var _0x5a8fde=className(_0x1f5b9e[_0x88fd('0x56c','HVrR')])[_0x88fd('0x56d','mAL5')](!![])['boundsInside'](_0x1f5b9e[_0x88fd('0x56e','oBvM')](device[_0x88fd('0x56f','w4Fn')]*0x2,0x3),0x0,device[_0x88fd('0x495','eT!y')],_0x26fce1[_0x88fd('0x139',')q$f')]()[_0x88fd('0x570','c3bp')])[_0x88fd('0x4e0','&3$f')](0x7d0);if(_0x5a8fde!=null){_0x1f5b9e['tEQzy'](log,_0x5a8fde);_0x5a8fde[_0x88fd('0x329','!wjm')]();}}else{_0x1f5b9e[_0x88fd('0x571','3@NL')](toastLog,_0x1f5b9e[_0x88fd('0x572','&3$f')]);A[_0x88fd('0x573','%0od')]();_0x1f5b9e[_0x88fd('0x574','13Ld')](_0x3dec9d,APPNAME);_0x1f5b9e[_0x88fd('0x575','2vFb')](exit);}}else if(_0x26fce1==null){var _0x5a8fde=className(_0x88fd('0x15b','v$Q3'))[_0x88fd('0x576','zErZ')](!![])[_0x88fd('0x2af','JcCH')](device[_0x88fd('0x577','N$Nk')]*0x2/0x3,0x0,device[_0x88fd('0x578','13Ld')],device['height']/0x4)[_0x88fd('0x579','2vFb')](0x7d0);if(_0x1f5b9e['FIYWC'](_0x5a8fde,null)){_0x1f5b9e[_0x88fd('0x57a','Vtv!')](log,_0x5a8fde);_0x5a8fde['click']();}}var _0x277503=text('拉黑')[_0x88fd('0x26a','!IVq')]();if(_0x1f5b9e[_0x88fd('0x57b','2vFb')](_0x277503,null)){var _0x186129=clickable(!![])[_0x88fd('0x57c','!6CW')](_0x277503[_0x88fd('0x5d','c3bp')]()[_0x88fd('0x57d','FFLW')],_0x277503[_0x88fd('0x57e','K&3h')]()[_0x88fd('0x57f','13Ld')],_0x277503[_0x88fd('0x2e5','wtBl')]()[_0x88fd('0x580','2vFb')],_0x277503[_0x88fd('0x18d','zErZ')]()[_0x88fd('0x18c','FFLW')])[_0x88fd('0x3aa','mAL5')](0x7d0);if(_0x1f5b9e[_0x88fd('0x581','13Ld')](_0x186129,null)){log(_0x186129);_0x186129[_0x88fd('0x32c','YGJI')]();var _0x384534=text('确定')[_0x88fd('0x582','3@NL')](!![])[_0x88fd('0x583','w4Fn')](0x7d0);if(_0x1f5b9e['VXHlc'](_0x384534,null)){if(_0x1f5b9e['hfRtb'](_0x1f5b9e[_0x88fd('0x584','sYOl')],_0x1f5b9e[_0x88fd('0x585','2c0r')])){_0x384534[_0x88fd('0x27d','&Y#L')]();break;}else{_0x1f5b9e[_0x88fd('0x586','w4Fn')](back);_0x1f5b9e[_0x88fd('0x587','%FV[')](sleep,0x7d0);}}}}sleep(0x3e8);o++;if(o>0x2){break;}}}continue;case'4':o=0x1;continue;}break;}}else{_0x4e431d();}}function _0x1c8fb2(){var _0x4c62d8={'Gizcg':'flame','uOtzL':function _0x28682e(_0x5cd53b,_0x5b1187){return _0x5cd53b(_0x5b1187);},'kIQmN':function _0x12c0d5(_0x375454,_0x1e52c5){return _0x375454!==_0x1e52c5;},'yfJaG':_0x88fd('0x588','il(g'),'zdnzN':function _0x4dd290(_0x29ed41,_0x1695a4){return _0x29ed41+_0x1695a4;},'jMKaM':function _0x6e6e8d(_0x297297,_0xf48b10){return _0x297297>_0xf48b10;},'AfbBU':_0x88fd('0x589','3gF['),'ogAtD':function _0x5cefbc(_0x443703,_0x4cfd0c){return _0x443703(_0x4cfd0c);},'XSLed':_0x88fd('0x58a','3@NL'),'ADYhQ':function _0x3896fd(_0x131b99,_0x5c96cc){return _0x131b99*_0x5c96cc;},'SCqrr':function _0x1e615b(_0x3d4a85,_0x78264){return _0x3d4a85!=_0x78264;},'wwGUk':function _0x219bf9(_0x5fccdb,_0x3e0921){return _0x5fccdb!==_0x3e0921;},'RpTgd':_0x88fd('0x58b','eT!y'),'oQxkT':function _0x36ba13(_0x38f918,_0x464b8e){return _0x38f918(_0x464b8e);}};log(_0x4c62d8['Gizcg']);j=0x1;while(!![]){if(_0x88fd('0x58c','rtMY')===_0x88fd('0x58d',')q$f')){_0x4c62d8[_0x88fd('0x58e','SYIy')](log,err);}else{while(!![]){if(_0x88fd('0x58f','Nu&O')==='WdR'){var _0x538ebe=_0x4c62d8['uOtzL'](packageName,_0x88fd('0x590',')o2e'))['text']('关注')[_0x88fd('0x3b','eT!y')](_0x88fd('0x591','FFLW'))[_0x88fd('0x2ca','&Y#L')](![])['boundsInside'](0x69,0x5,device['width']-0x69,device[_0x88fd('0x592','%FV[')]/0x5)[_0x88fd('0x593','rtMY')]();if(_0x538ebe!=null){if(_0x4c62d8['kIQmN']('hGw',_0x4c62d8[_0x88fd('0x594','%FV[')])){关注按钮[_0x88fd('0x201','zErZ')]();}else{var _0x26353f=boundsInside(_0x538ebe['bounds']()[_0x88fd('0x595','eT!y')],_0x538ebe[_0x88fd('0x35b','3gF[')]()[_0x88fd('0x596','4IJ8')],_0x4c62d8[_0x88fd('0x597','G@)z')](_0x538ebe[_0x88fd('0x598','eT!y')]()['right'],0x28),_0x538ebe[_0x88fd('0x3f4','BQTg')]()['bottom'])[_0x88fd('0x482','!wjm')](!![])[_0x88fd('0x23a','2vFb')]();if(_0x26353f!=null){_0x26353f[_0x88fd('0xe1','ROVF')]();}}}var _0x2345db=_0x4c62d8[_0x88fd('0x599','il(g')](textContains,_0x88fd('0x59a','SYIy'))['clickable'](![])[_0x88fd('0x59b','mAL5')]();if(_0x2345db!=null){if(_0x4c62d8[_0x88fd('0x59c','&Y#L')](_0x2345db[_0x88fd('0x3be',')o2e')]()[_0x88fd('0x59d','JcCH')],0x0)){if(_0x4c62d8[_0x88fd('0x59e','ROVF')]!==_0x88fd('0x59f','%0od')){back();}else{break;}}}_0x4c62d8[_0x88fd('0x5a0','yf#V')](sleep,0x7d0);}else{主['click']();}}var _0x2345db=textContains(_0x88fd('0x5a1','!IVq'))[_0x88fd('0x145','K^AY')](![])['findOnce']();if(_0x2345db!=null){var _0x44ab61=textMatches(_0x4c62d8[_0x88fd('0x5a2','!wjm')])['clickable'](![])[_0x88fd('0x5a3','w[@&')](_0x2345db[_0x88fd('0x18b','K^AY')]()[_0x88fd('0x106','egRk')],_0x2345db['bounds']()[_0x88fd('0x596','4IJ8')]-_0x4c62d8['ADYhQ'](_0x2345db[_0x88fd('0x57e','K&3h')]()[_0x88fd('0x1eb','&Y#L')]-_0x2345db[_0x88fd('0x5d','c3bp')]()[_0x88fd('0x109','mAL5')],0x3),_0x2345db[_0x88fd('0x18d','zErZ')]()['right'],_0x2345db[_0x88fd('0x5f','yf#V')]()[_0x88fd('0x57f','13Ld')])[_0x88fd('0x1a8','yf#V')]();if(_0x4c62d8[_0x88fd('0x5a4','sYOl')](_0x44ab61,null)){if(_0x4c62d8[_0x88fd('0x5a5','%0od')](_0x4c62d8[_0x88fd('0x5a6','!6CW')],_0x4c62d8['RpTgd'])){ui[_0x88fd('0x5a7','ROVF')](()=>toastAt0(msg,x,y));}else{flamenumber=_0x4c62d8['ogAtD'](Number,_0x44ab61[_0x88fd('0x98','c3bp')]());_0x4c62d8['ogAtD'](log,_0x4c62d8[_0x88fd('0x5a8','FFLW')]('火苗数量',_0x44ab61[_0x88fd('0x43b','^ju9')]()));break;}}}j++;if(_0x4c62d8[_0x88fd('0x5a9','2c0r')](j,0xa)){flamenumber=0x0;break;}_0x4c62d8[_0x88fd('0x5aa','egRk')](sleep,0x3e8);}}}threads[_0x88fd('0x5bd','Za@n')](function(){var _0x2f342c={'cnDVx':function _0x3e77e4(_0x53c897){return _0x53c897();}};_0x2f342c[_0x88fd('0x5be','eT!y')](_0x455bca);});_0x2a5310['TyCSx'](_0x38a7bf);while(!![]){if('LKx'===_0x2a5310[_0x88fd('0x5bf','yf#V')]){var _0x2c96f3=packageName(_0x2a5310[_0x88fd('0x5c0','w4Fn')])[_0x88fd('0x3b3','FFLW')]('直播')[_0x88fd('0x5c1','ROVF')]('android.widget.TextView')['clickable'](![])['boundsInside'](0x69,0x5,device[_0x88fd('0x5c2','SYIy')]-0x69,_0x2a5310['IbSyC'](device[_0x88fd('0x5c3','2vFb')],0x5))[_0x88fd('0x234','20#)')]();var _0x3006c6=_0x2a5310[_0x88fd('0x5c4','FFLW')](packageName,_0x2a5310[_0x88fd('0x5c5','w[@&')])[_0x88fd('0x5c6','ROVF')]('视频')[_0x88fd('0x5c7','zErZ')](_0x88fd('0x5c8','wtBl'))[_0x88fd('0x4cc','!6CW')](![])[_0x88fd('0x4f2','13Ld')](0x69,0x5,_0x2a5310[_0x88fd('0x5c9','Vtv!')](device[_0x88fd('0x56f','w4Fn')],0x69),_0x2a5310[_0x88fd('0x5ca','ROVF')](device[_0x88fd('0x5c3','2vFb')],0x5))['findOnce']();if(_0x2c96f3!=null&&_0x3006c6!=null){if(_0x2a5310[_0x88fd('0x5cb','20#)')]!==_0x2a5310['KyFRd']){_0x2a5310[_0x88fd('0x5cc','egRk')](toastLog,_0x2a5310[_0x88fd('0x5cd','ROVF')]);var _0xc8ea8=boundsInside(_0x2a5310[_0x88fd('0x5ce','N$Nk')](_0x2c96f3[_0x88fd('0x5cf','%FV[')]()[_0x88fd('0x3f2','Po)x')],0x1e),_0x2c96f3[_0x88fd('0x3f4','BQTg')]()[_0x88fd('0x41e','3@NL')]-0x1e,_0x2c96f3[_0x88fd('0x108','rtMY')]()[_0x88fd('0x5d0','!6CW')]+0x1e,_0x2c96f3[_0x88fd('0x266','QvT7')]()[_0x88fd('0x5d1',')o2e')]+0x1e)[_0x88fd('0x56d','mAL5')](!![])[_0x88fd('0x5d2','3@NL')]();if(_0x2a5310['knjZw'](_0xc8ea8,null)){_0xc8ea8[_0x88fd('0x2b6','HVrR')]();}var _0x172f96=className(_0x88fd('0x5d3','%0od'))['clickable'](!![])[_0x88fd('0x5d4','!wjm')](!![])[_0x88fd('0x5d5','egRk')](0x2,device[_0x88fd('0x25e','N$Nk')]/0x8,_0x2a5310['xUXOB'](device[_0x88fd('0x5d6','c3bp')],0x2),device[_0x88fd('0x5d7','FFLW')])[_0x88fd('0x5d8','SYIy')]();if(_0x2a5310['ZNRBD'](_0x172f96,null)){break;}}else{_0x2a5310[_0x88fd('0x5d9','BQTg')](toastLog,'error');_0x2a5310[_0x88fd('0x5da','oBvM')](exit);}}}else{var _0x3f0b8b=_0x88fd('0x5db','BQTg')[_0x88fd('0x5dc','N$Nk')]('|'),_0x5c18a0=0x0;while(!![]){switch(_0x3f0b8b[_0x5c18a0++]){case'0':if(_0x2a5310[_0x88fd('0x5dd','Vtv!')](_0x745028,ui[_0x88fd('0x5de','c3bp')][_0x88fd('0x5df','yf#V')])){if(_0xf494f6==ui['timepicker'][_0x88fd('0x5e0','il(g')]){_0x2a5310[_0x88fd('0x5e1','sYOl')](toastLog,_0x2a5310[_0x88fd('0x5e2','Nu&O')]);A['interrupt']();_0x3dec9d(APPNAME);_0x2a5310[_0x88fd('0x5e3','jgsy')](exit);}}continue;case'1':toastAt(_0x2a5310['zFefd'](_0x2a5310[_0x88fd('0x5e4','jgsy')](_0x2a5310['zFefd'](_0x2a5310[_0x88fd('0x5e5','K&3h')](_0x2a5310[_0x88fd('0x5e6','QvT7')](_0x2a5310['bsXjC'](_0x2a5310['bsXjC'](_0x88fd('0x5e7','N$Nk'),_0x745028),':'),_0xf494f6),_0x2a5310['qoSZq']),ui[_0x88fd('0x5e8',')o2e')][_0x88fd('0x5e9',')o2e')]),':'),ui[_0x88fd('0x5ea','2c0r')][_0x88fd('0x5eb','BQTg')]),0x0,device['height']/0x2);continue;case'2':var _0x202f03=new Date();continue;case'3':var _0x745028=_0x202f03[_0x88fd('0x5ec','Za@n')]();continue;case'4':var _0xf494f6=_0x202f03['getMinutes']();continue;case'5':_0x2a5310[_0x88fd('0x5ed','Vtv!')](sleep,0x2710);continue;}break;}}}sleep(0xbb8);var _0x172f96=className('android.widget.RelativeLayout')[_0x88fd('0x5ee','Za@n')](!![])[_0x88fd('0x5ef','mAL5')](!![])[_0x88fd('0x5f0','QvT7')](0x2,device[_0x88fd('0x135','ROVF')]/0x8,device[_0x88fd('0x101','wtBl')]-0x2,device[_0x88fd('0x5f1','!6CW')])[_0x88fd('0x5f2','N$Nk')]();sleep(0x7d0);_0x172f96[_0x88fd('0x22c','13Ld')]();_0x2a5310[_0x88fd('0x5f3','G@)z')](sleep,0x1388);toastLog(_0x2a5310[_0x88fd('0x5f4','mAL5')]);fhz=0x1;secrandom=_0x2a5310[_0x88fd('0x5f5','13Ld')](random,0x1b58,0x2ee0);mm=0x1;nnn=0x1;cnm=0x0;zslwcs=0x0;m=0x1;xhz=0x1;loadtime=0x1;while(!![]){if(_0x2a5310[_0x88fd('0x5f6','K^AY')](_0x2a5310[_0x88fd('0x5f7','%0od')],_0x2a5310[_0x88fd('0x5f8','!6CW')])){我知道了[_0x88fd('0x10f','20#)')]();}else{var _0x1cec5f=_0x2a5310[_0x88fd('0x5f9','&Y#L')]['split']('|'),_0x4922be=0x0;while(!![]){switch(_0x1cec5f[_0x4922be++]){case'0':_0x2a5310[_0x88fd('0x5fa','ROVF')](toastLog,'下一个直播间');continue;case'1':while(!![]){if(_0x88fd('0x5fb','Po)x')===_0x2a5310[_0x88fd('0x5fc','w[@&')]){_0x2a5310[_0x88fd('0x5fd','13Ld')](_0x4cf9fe);_0x3d6796();_0x2a5310[_0x88fd('0x5fe','jgsy')](sleep,0x5dc);_0x1c3abc();if(qhb==0x1){if(_0x88fd('0x5ff',')o2e')!==_0x2a5310['oTLIN']){fhz=0x64;toastLog(_0x88fd('0x600','JcCH'));}else{qqq=0x1;while(!![]){toastLog(_0x2a5310[_0x88fd('0x601','Po)x')](_0x88fd('0x602','e10Q'),qqq));_0x278634();if(fhz==0x2){if(_0x2a5310[_0x88fd('0x603','4IJ8')]('Kpo',_0x88fd('0x604','w[@&'))){_0x3a2d96();}else{sleep(0x3e8);_0x2a5310['TyCSx'](_0x1dc689);}}if(fhz==0x3){if(_0x2a5310['NneTJ'](_0x2a5310[_0x88fd('0x605','^ju9')],'Jsv')){_0x4e431d();}else{var _0x4c987c=_0x2a5310[_0x88fd('0x606','QvT7')](boundsInside,_0x2a5310['bsXjC'](like[_0x88fd('0x4d4','Nu&O')]()[_0x88fd('0x607',']$FZ')],0x1),_0x2a5310[_0x88fd('0x608','mAL5')](like[_0x88fd('0x214','Za@n')]()[_0x88fd('0x609','il(g')],0x1),_0x2a5310[_0x88fd('0x60a','N$Nk')](like[_0x88fd('0x13f','!6CW')]()['right'],0x1),like['bounds']()[_0x88fd('0x60b','Po)x')]-0x1)['findOnce']();if(_0x4c987c!=null){var _0x4f0677=_0x2a5310['VogGl'](Number,_0x4c987c[_0x88fd('0x60c','K^AY')]());_0x2a5310['AGFVJ'](log,_0x4f0677);like[_0x88fd('0x3f','w4Fn')]();}_0x2a5310['AGFVJ'](sleep,0x3e8);var _0x57e2bb=_0x2a5310[_0x88fd('0x60d','%0od')](boundsInside,like[_0x88fd('0x57e','K&3h')]()[_0x88fd('0x5c','ROVF')]+0x1,_0x2a5310[_0x88fd('0x60e',')o2e')](like[_0x88fd('0x54e','mAL5')]()[_0x88fd('0x60f','%0od')],0x1),like[_0x88fd('0x1fd','SYIy')]()[_0x88fd('0x59d','JcCH')]-0x1,like[_0x88fd('0x5f','yf#V')]()[_0x88fd('0x1e4','egRk')]-0x1)['findOnce']();if(_0x2a5310[_0x88fd('0x610','egRk')](_0x57e2bb,null)){var _0x12d3fb=_0x2a5310[_0x88fd('0x611','sYOl')](Number,_0x57e2bb['text']());_0x2a5310[_0x88fd('0x612','20#)')](log,_0x12d3fb);if(_0x2a5310[_0x88fd('0x613',')o2e')](_0x12d3fb,_0x4f0677)){like['click']();}}}}sleep(0x7d0);if(_0x2a5310[_0x88fd('0x614','SYIy')](qqq,_0x2a5310['GNNek'](random,0x2,0x4))){if(_0x2a5310[_0x88fd('0x615','N$Nk')](_0x2a5310['aPCtL'],_0x2a5310['aPCtL'])){while(!![]){toastLog('启动');var _0x3385f8=text(_0x88fd('0x616','&3$f'))[_0x88fd('0x617',']$FZ')](_0x2a5310[_0x88fd('0x618','^ju9')])[_0x88fd('0x3c6','2c0r')](!![])[_0x88fd('0x619','Za@n')]();if(_0x2a5310[_0x88fd('0x61a','2c0r')](_0x3385f8,null)){_0x3385f8['click']();}_0x2a5310[_0x88fd('0x61b','ROVF')](sleep,0x7d0);var _0x47b379=_0x2a5310[_0x88fd('0x61c','HVrR')](textContains,'确定')[_0x88fd('0x129','v$Q3')](_0x88fd('0x61d','N$Nk'))['clickable'](!![])[_0x88fd('0x32','Nu&O')]();if(_0x2a5310['cJEuk'](_0x47b379,null)){_0x47b379[_0x88fd('0xe1','ROVF')]();sleep(0x3e8);}sleep(0x7d0);}}else{break;}}qqq++;}_0x2a5310[_0x88fd('0x61e','3gF[')](_0x9da5c3);qqq=0x1;while(!![]){toastLog(_0x88fd('0x61f','!wjm')+qqq);_0x2a5310['yevIL'](sleep,0x7d0);if(_0x2a5310[_0x88fd('0x620','Za@n')](qqq,random(0x1,0x3))){break;}_0x2a5310['ZRMFO'](_0x278634);log(_0x2a5310['oHWLE']+fhz);if(fhz==0x2){if(_0x2a5310[_0x88fd('0x621','Po)x')]!==_0x2a5310[_0x88fd('0x622','w4Fn')]){var _0x4210fc=_0x2a5310[_0x88fd('0x623','il(g')](textContains,'更新')['findOnce']();var _0x16a374=_0x2a5310[_0x88fd('0x624','N$Nk')](textContains,'升级')['findOnce']();if(_0x2a5310[_0x88fd('0x625','Nu&O')](_0x4210fc,null)||_0x16a374!=null){以后再说['click']();}}else{_0x2a5310[_0x88fd('0x626','Nu&O')](sleep,0x3e8);_0x2a5310[_0x88fd('0x627','N$Nk')](_0x1dc689);}}if(_0x2a5310[_0x88fd('0x628','13Ld')](fhz,0x3)){_0x2a5310[_0x88fd('0x629','eT!y')](_0x4e431d);}qqq++;}}}if(_0x2a5310[_0x88fd('0x62a','sYOl')](qhb,0x2)){break;}fg++;if(_0x2a5310[_0x88fd('0x62b','%0od')](fg,0x2)){break;}}else{toastLog(_0x88fd('0x62c','BQTg'));log(pd1);_0x2a5310[_0x88fd('0x62d','FFLW')](log,pd2);_0x2a5310['yppdn'](log,pd4);sleep(0x3e8);_0x2a5310[_0x88fd('0x62e','G@)z')](back);sleep(0x3e8);}}continue;case'2':_0x2a5310[_0x88fd('0x62f','w[@&')](scrollDown);continue;case'3':if(loadtime==0x1){if(_0x2a5310[_0x88fd('0x630','eT!y')](_0x2a5310['geysU'],_0x2a5310[_0x88fd('0x631','eT!y')])){_0x2a5310[_0x88fd('0x632','c3bp')](log,_0x2a5310[_0x88fd('0x633','c3bp')]);timetamp=Number(new Date());_0x2a5310[_0x88fd('0x634','&3$f')](log,timetamp);loadtime=0x2;}else{var _0x3769c2='4|3|0|2|1'[_0x88fd('0x635','3gF[')]('|'),_0x450048=0x0;while(!![]){switch(_0x3769c2[_0x450048++]){case'0':var _0x23e34e=Toast[_0x88fd('0x636','Po)x')](context,msg,Toast[_0x88fd('0x637','N$Nk')]);continue;case'1':_0x23e34e['show']();continue;case'2':_0x23e34e['setGravity'](Gravity[_0x88fd('0x638','wtBl')]|Gravity['LEFT'],x,y);continue;case'3':_0x2a5310[_0x88fd('0x639','egRk')](importClass,android[_0x88fd('0x63a','mAL5')][_0x88fd('0x63b','mAL5')]);continue;case'4':importClass(android[_0x88fd('0x63c','N$Nk')]['Toast']);continue;}break;}}}continue;case'4':_0x2a5310['dmFTF'](log,_0x2a5310[_0x88fd('0x63d','ROVF')]('滑动第',xhz));continue;case'5':if(_0x2a5310[_0x88fd('0x63e','sYOl')](Number(new Date()),timetamp)>_0x2a5310[_0x88fd('0x63f','wtBl')](0x3e8,secrandom)){var _0x2bdd20=_0x88fd('0x640','v$Q3')[_0x88fd('0x641','3@NL')]('|'),_0x2d77de=0x0;while(!![]){switch(_0x2bdd20[_0x2d77de++]){case'0':_0x38a7bf();continue;case'1':loadtime=0x1;continue;case'2':_0x2a5310['dmFTF'](toastLog,_0x2a5310['mmHlD']);continue;case'3':var _0x3a8569=_0x2a5310[_0x88fd('0x642','v$Q3')](className,_0x88fd('0x643','mAL5'))[_0x88fd('0xf4','Nu&O')](!![])[_0x88fd('0x644','K^AY')](!![])[_0x88fd('0x645','4IJ8')](0x2,_0x2a5310[_0x88fd('0x646','Za@n')](device[_0x88fd('0x647',')q$f')],0x8),_0x2a5310[_0x88fd('0x648','c3bp')](device[_0x88fd('0x496','^ju9')],0x2),device[_0x88fd('0x649','Za@n')])[_0x88fd('0x64a','Za@n')]();continue;case'4':sleep(0x7d0);continue;case'5':_0x2a5310[_0x88fd('0x64b','3@NL')](_0x49cf2a);continue;case'6':if(ui['watchvideo']['checked']==!![]){cbd=_0x2a5310[_0x88fd('0x64c','G@)z')](random,0xa,0x32);if(_0x2a5310[_0x88fd('0x64d','QvT7')](nnn,0x5)&&cbd>=0x26){if(_0x88fd('0x64e','N$Nk')!==_0x88fd('0x64f','oBvM')){url=_0x2a5310[_0x88fd('0x650','K&3h')]+id1[_0x88fd('0x651','%FV[')]();}else{_0x2a5310[_0x88fd('0x652','mAL5')](sleep,0xbb8);app[_0x88fd('0x653','2vFb')](APPNAME);_0x2a5310[_0x88fd('0x654','!6CW')](sleep,0x1f40);_0x2a5310[_0x88fd('0x655','Nu&O')](_0x36a09b);nnn++;}}sleep(0xbb8);}continue;case'7':log('loadtime=2');continue;case'8':xhz=0x1;continue;case'9':_0x2a5310[_0x88fd('0x656','!wjm')](_0x1c8fb2);continue;case'10':if(_0x2a5310['AAcDk'](ui['relax']['checked'],!![])){_0x3dec9d(APPNAME);_0x531299(0x64,0xfa);}continue;case'11':_0x3a8569[_0x88fd('0x42d','&3$f')]();continue;case'12':if(cnm==0x0){if(_0x2a5310[_0x88fd('0x657','!wjm')]('oOB',_0x88fd('0x658','sYOl'))){while(!![]){var _0x2f4ddb=_0x2a5310['kQhWA'](text,'直播')[_0x88fd('0x659','3@NL')](_0x2a5310['xirJL'])[_0x88fd('0x46d','zErZ')](0x5a,0x0,_0x2a5310[_0x88fd('0x65a','4IJ8')](device['width'],0x5a),device[_0x88fd('0x65b','c3bp')]/0x3)[_0x88fd('0x5d8','SYIy')]();var _0x59eaee=text('视频')['className'](_0x2a5310[_0x88fd('0x65c','jgsy')])[_0x88fd('0x11e','%0od')](0x5a,0x0,device[_0x88fd('0x2c7','il(g')]-0x5a,_0x2a5310[_0x88fd('0x65d','jgsy')](device[_0x88fd('0x1af','QvT7')],0x3))['findOnce']();if(_0x2a5310['ZaLpS'](_0x2f4ddb,null)&&_0x2a5310['ZaLpS'](_0x59eaee,null)){if(_0x2a5310[_0x88fd('0x65e','&Y#L')]!==_0x2a5310[_0x88fd('0x65f','eT!y')]){_0x2a5310['kQhWA'](toastLog,_0x2a5310[_0x88fd('0x660',')q$f')]);var _0x37ecd5=boundsInside(_0x2f4ddb[_0x88fd('0x35b','3gF[')]()[_0x88fd('0x3f2','Po)x')]-0x1e,_0x2f4ddb[_0x88fd('0x661','HVrR')]()[_0x88fd('0x662','BQTg')]-0x1e,_0x2a5310['LQZVM'](_0x2f4ddb[_0x88fd('0x57e','K&3h')]()[_0x88fd('0x663','^ju9')],0x1e),_0x2a5310['LQZVM'](_0x2f4ddb[_0x88fd('0x528','sYOl')]()[_0x88fd('0x664','v$Q3')],0x1e))[_0x88fd('0x221','il(g')](!![])['find']();if(_0x2a5310['QIjYO'](_0x37ecd5,null)){if(_0x2a5310[_0x88fd('0x665','v$Q3')](_0x88fd('0x666','K^AY'),_0x88fd('0x667','!IVq'))){var _0x3b8ee4=text('火力')[_0x88fd('0x668','JcCH')]();if(_0x3b8ee4!=null){var _0x98e99=className(_0x88fd('0x669','FFLW'))[_0x88fd('0xf4','Nu&O')](!![])[_0x88fd('0x209','eT!y')](_0x3b8ee4[_0x88fd('0x13f','!6CW')]()[_0x88fd('0x66a','Vtv!')],_0x3b8ee4[_0x88fd('0x35b','3gF[')]()[_0x88fd('0x66b','sYOl')],_0x2a5310[_0x88fd('0x66c','G@)z')](showall['bounds']()['right'],0x14),showall[_0x88fd('0x4d4','Nu&O')]()[_0x88fd('0x109','mAL5')])[_0x88fd('0x36a','%FV[')]();if(_0x2a5310[_0x88fd('0x66d','2c0r')](_0x98e99,null)){_0x98e99[_0x88fd('0x10f','20#)')]();}}}else{_0x37ecd5['click']();}}var _0x3a8569=className(_0x2a5310[_0x88fd('0x66e','&3$f')])[_0x88fd('0x582','3@NL')](!![])[_0x88fd('0x66f','yf#V')](!![])[_0x88fd('0x670','Vtv!')](0x2,device[_0x88fd('0x5f1','!6CW')]/0x8,_0x2a5310[_0x88fd('0x671','!6CW')](device[_0x88fd('0x672','!wjm')],0x2),device[_0x88fd('0x673','jgsy')])[_0x88fd('0x251','w4Fn')]();if(_0x2a5310[_0x88fd('0x674',')q$f')](_0x3a8569,null)){if(_0x2a5310[_0x88fd('0x675','oBvM')]!==_0x88fd('0x676','c3bp')){break;}else{fu=0x1;}}}else{setText(files['read'](_0x88fd('0x677','w[@&'))[_0x88fd('0x1c9','%0od')]('\x0a')[random(0x0,files['read'](_0x2a5310['bzwan'])[_0x88fd('0x678','BQTg')]('\x0a')[_0x88fd('0x679','wtBl')])]);}}_0x2a5310['kQhWA'](sleep,0x9c4);}}else{_0x3dec9d(APPNAME);_0x2a5310[_0x88fd('0x67a','4IJ8')](_0x38a7bf);}}continue;case'13':cnm=0x1;continue;case'14':sleep(0x1388);continue;}break;}}continue;case'6':fg=0x1;continue;case'7':xhz=xhz+0x1;continue;case'8':_0x2a5310[_0x88fd('0x67b','2vFb')](sleep,random(0x5dc,0xbb8));continue;}break;}}}}});}if(_0x104ec7['ygNqd'](ui['timePickerModeText'][_0x88fd('0x67c','YGJI')],!![])){if(_0x104ec7[_0x88fd('0x67d','QvT7')](_0x88fd('0x67e','JcCH'),_0x104ec7[_0x88fd('0x67f','2vFb')])){_0x104ec7[_0x88fd('0x680','3@NL')](back);}else{function _0x538f8b(_0x3b504d){var _0x22fe08={'FMubJ':function _0x2e2c80(_0x11aee8,_0x48e60a){return _0x11aee8!==_0x48e60a;},'OFleN':'TjI','WXhIz':'fdv','OPZPj':function _0x12b5e9(_0x83b51f,_0x9501ee){return _0x83b51f(_0x9501ee);},'CtSHn':function _0xa32f2c(_0x399ea0,_0x33caa3){return _0x399ea0!=_0x33caa3;},'NRaSw':function _0x2ac7f4(_0x43ded1,_0x1afde4){return _0x43ded1(_0x1afde4);},'BDFep':_0x88fd('0x681','c3bp'),'nDByX':_0x88fd('0x682','QvT7'),'kvexK':_0x88fd('0x683','%0od'),'pjqna':_0x88fd('0x684','Po)x'),'MTUtV':_0x88fd('0x685','Za@n'),'aVzan':_0x88fd('0x686',')o2e'),'JWaeq':_0x88fd('0x687','Vtv!'),'LEsTX':_0x88fd('0x688','N$Nk'),'wQGfg':_0x88fd('0x689','N$Nk'),'BGBdF':function _0x23dfe4(_0x2fddc6,_0x4dda87){return _0x2fddc6(_0x4dda87);},'eNlxg':_0x88fd('0x68a','w[@&'),'WXxzZ':function _0x315ea3(_0x5bbbd4,_0x5cef41){return _0x5bbbd4>_0x5cef41;},'UofoT':function _0x1f2131(_0x4d1c87){return _0x4d1c87();}};var _0x22c0ba=app[_0x88fd('0x68b','oBvM')](_0x3b504d);app['openAppSetting'](_0x22c0ba);while(!![]){if(_0x22fe08[_0x88fd('0x68c','Vtv!')](_0x22fe08[_0x88fd('0x68d','Po)x')],_0x22fe08[_0x88fd('0x68e','w4Fn')])){var _0x4c55d2=text(_0x88fd('0x68f','JcCH'))['findOnce']();var _0x4d9994=_0x22fe08[_0x88fd('0x690','oBvM')](textEndsWith,'停止')[_0x88fd('0x668','JcCH')]();if(_0x22fe08[_0x88fd('0x691',')q$f')](_0x4c55d2,null)||_0x22fe08[_0x88fd('0x692','FFLW')](_0x4d9994,null)){_0x22fe08[_0x88fd('0x693','ROVF')](log,_0x88fd('0x694','%0od'));break;}_0x22fe08[_0x88fd('0x695','jgsy')](sleep,0x3e8);}else{var _0x3fdc86=_0x88fd('0x696','G@)z')[_0x88fd('0x5dc','N$Nk')]('|'),_0x4b5a76=0x0;while(!![]){switch(_0x3fdc86[_0x4b5a76++]){case'0':var _0x243b4f=storages['create'](_0x88fd('0x697','egRk'));continue;case'1':_0x243b4f[_0x88fd('0x698','YGJI')]('timepickerhour_save',ui['timepicker'][_0x88fd('0x699','%FV[')]);continue;case'2':_0x243b4f[_0x88fd('0x69a','20#)')](_0x22fe08['BDFep'],ui['roomnumber']['text']());continue;case'3':_0x243b4f[_0x88fd('0x69b',')o2e')](_0x22fe08['nDByX'],ui[_0x88fd('0x69c','zErZ')][_0x88fd('0x3b3','FFLW')]());continue;case'4':_0x243b4f['put'](_0x22fe08['kvexK'],ui[_0x88fd('0x69d','ROVF')][_0x88fd('0x69e','3gF[')]);continue;case'5':_0x243b4f['put'](_0x22fe08['pjqna'],ui[_0x88fd('0x69f','K^AY')][_0x88fd('0x6a0','c3bp')]);continue;case'6':_0x243b4f[_0x88fd('0x6a1','&Y#L')](_0x88fd('0x6a2','egRk'),ui[_0x88fd('0x6a3','SYIy')][_0x88fd('0x6a4','&Y#L')]);continue;case'7':_0x243b4f[_0x88fd('0x6a5','K^AY')](_0x22fe08[_0x88fd('0x6a6','Nu&O')],ui['relax'][_0x88fd('0x6a7','e10Q')]);continue;case'8':_0x243b4f[_0x88fd('0x6a8','!wjm')](_0x22fe08['aVzan'],ui[_0x88fd('0x6a9','zErZ')][_0x88fd('0x6aa','oBvM')]);continue;case'9':_0x243b4f['put'](_0x22fe08['JWaeq'],ui[_0x88fd('0x6ab','egRk')]['checked']);continue;case'10':_0x243b4f[_0x88fd('0x6ac','&3$f')](_0x22fe08[_0x88fd('0x6ad',']$FZ')],ui[_0x88fd('0x6ae','v$Q3')]['minute']);continue;case'11':_0x243b4f[_0x88fd('0x76','egRk')](_0x88fd('0x6af','YGJI'),ui[_0x88fd('0x6b0','2c0r')][_0x88fd('0x6b1','N$Nk')]);continue;case'12':_0x243b4f[_0x88fd('0x6b2','2c0r')](_0x88fd('0x6b3',']$FZ'),ui['djs'][_0x88fd('0x1d0','mAL5')]());continue;}break;}}}sleep(0x7d0);var _0x3d8961=className(_0x22fe08[_0x88fd('0x6b4','rtMY')])['text'](_0x88fd('0x6b5',')q$f'))[_0x88fd('0x6b6','!IVq')](0x5dc);var _0x207a86=className(_0x22fe08[_0x88fd('0x6b7','K^AY')])[_0x88fd('0x6b8','%FV[')]('停止')[_0x88fd('0x6b9','2c0r')](0x5dc);if(_0x3d8961!=null){_0x3d8961['click']();}else if(_0x22fe08[_0x88fd('0x6ba','20#)')](_0x207a86,null)){_0x207a86[_0x88fd('0x520','Vtv!')]();}_0x22fe08[_0x88fd('0x6bb','Za@n')](sleep,0x7d0);while(!![]){if('FXP'!==_0x88fd('0x6bc',')o2e')){var _0x5c6f8f=_0x22fe08[_0x88fd('0x6bd','QvT7')](className,_0x22fe08[_0x88fd('0x6be','%0od')])['text']('确定')['findOnce']();var _0x207a86=_0x22fe08[_0x88fd('0x6bf','3gF[')](className,_0x22fe08['wQGfg'])[_0x88fd('0x6c0','FFLW')]('停止')['findOnce']();if(_0x5c6f8f!=null){_0x5c6f8f[_0x88fd('0x254','!IVq')]();break;}else if(_0x207a86!=null){_0x207a86[_0x88fd('0x1aa','BQTg')]();break;}_0x22fe08[_0x88fd('0x6c1',')q$f')](sleep,0x3e8);}else{var _0x5e39e1=_0x22fe08[_0x88fd('0x6c2','%FV[')][_0x88fd('0x2c0','ROVF')]('|'),_0x20c9fa=0x0;while(!![]){switch(_0x5e39e1[_0x20c9fa++]){case'0':pl++;continue;case'1':抢[_0x88fd('0x10f','20#)')]();continue;case'2':if(_0x22fe08[_0x88fd('0x6c3','!IVq')](pl,0x3)){back();}continue;case'3':sleep(0x3e8);continue;case'4':_0x22fe08['BGBdF'](log,'补抢');continue;}break;}}}_0x22fe08[_0x88fd('0x6c4','egRk')](home);sleep(0x7d0);}threads[_0x88fd('0x6c5','3gF[')](function(){var _0x192497={'qgEqD':function _0xac30a(_0x397349,_0x1c4483){return _0x397349(_0x1c4483);},'FVgww':function _0x210b9d(_0x493fc4,_0x34b1bf,_0x51bffd,_0x251b35){return _0x493fc4(_0x34b1bf,_0x51bffd,_0x251b35);},'NdVOG':function _0x579c67(_0x45dbe5,_0xd5da92){return _0x45dbe5+_0xd5da92;},'RHMsT':function _0x12b423(_0x5f24c2,_0x2af9ad){return _0x5f24c2+_0x2af9ad;},'KbZTa':_0x88fd('0x6c6','oBvM'),'xoVBW':'运行到','gaDea':function _0x484294(_0x13b7ee,_0x5c3771){return _0x13b7ee/_0x5c3771;},'WGEkR':function _0x4fc813(_0x5e2190,_0x505231){return _0x5e2190==_0x505231;},'KzXKC':function _0x12950e(_0xa4fb38,_0x35b842){return _0xa4fb38(_0x35b842);},'pzDGY':_0x88fd('0x6c7','il(g'),'eTqXp':function _0x47cd01(_0x5dc44a){return _0x5dc44a();}};function _0x967968(_0x59e015,_0x311189,_0x44a61f){var _0xa84492={'lNJtp':function _0x3f79b4(_0x5367e5,_0x47cda5){return _0x5367e5(_0x47cda5);}};var _0xed4ac9=_0x88fd('0x6c8','3@NL')[_0x88fd('0x324','egRk')]('|'),_0x2b84d5=0x0;while(!![]){switch(_0xed4ac9[_0x2b84d5++]){case'0':_0x21f656[_0x88fd('0x6c9','Vtv!')]();continue;case'1':var _0x21f656=Toast[_0x88fd('0x6ca','sYOl')](context,_0x59e015,Toast[_0x88fd('0x6cb','mAL5')]);continue;case'2':_0x21f656['setGravity'](Gravity['TOP']|Gravity[_0x88fd('0x6cc','&3$f')],_0x311189,_0x44a61f);continue;case'3':_0xa84492[_0x88fd('0x6cd','rtMY')](importClass,android[_0x88fd('0x6ce','4IJ8')][_0x88fd('0x6cf','3gF[')]);continue;case'4':importClass(android[_0x88fd('0x6d0','e10Q')]['Toast']);continue;}break;}}function _0x2dc3cf(_0x4c499c,_0x5ed375,_0x122f6b){ui[_0x88fd('0x6d1','&3$f')](()=>_0x967968(_0x4c499c,_0x5ed375,_0x122f6b));}while(!![]){var _0x4cf455=_0x88fd('0x6d2','FFLW')[_0x88fd('0x6d3','w[@&')]('|'),_0x5d9d45=0x0;while(!![]){switch(_0x4cf455[_0x5d9d45++]){case'0':_0x192497['qgEqD'](sleep,0x2710);continue;case'1':_0x192497[_0x88fd('0x6d4','FFLW')](_0x2dc3cf,_0x192497[_0x88fd('0x6d5','eT!y')](_0x192497[_0x88fd('0x6d6','SYIy')](_0x192497['RHMsT'](_0x192497[_0x88fd('0x6d7','HVrR')](_0x192497['KbZTa']+_0x22e518,':')+_0x567f1e,_0x192497[_0x88fd('0x6d8','YGJI')])+ui[_0x88fd('0x6d9','sYOl')][_0x88fd('0x6da','mAL5')],':'),ui['timepicker']['minute']),0x0,_0x192497[_0x88fd('0x6db','oBvM')](device['height'],0x2));continue;case'2':var _0x3a33ef=new Date();continue;case'3':if(_0x192497['WGEkR'](_0x22e518,ui[_0x88fd('0x6dc','&3$f')][_0x88fd('0x6dd','w[@&')])){if(_0x567f1e==ui['timepicker'][_0x88fd('0x6de','G@)z')]){_0x192497['KzXKC'](toastLog,_0x192497[_0x88fd('0x6df',')q$f')]);A['interrupt']();_0x192497[_0x88fd('0x6e0','3@NL')](_0x538f8b,APPNAME);_0x192497['eTqXp'](exit);}}continue;case'4':var _0x22e518=_0x3a33ef[_0x88fd('0x6e1','%0od')]();continue;case'5':var _0x567f1e=_0x3a33ef[_0x88fd('0x6e2','20#)')]();continue;}break;}}});}}});;if(!(typeof encode_version!==_0x88fd('0x6e3','HVrR')&&encode_version===_0x88fd('0x6e4','^ju9'))){window['alert'](_0x88fd('0x6e5','BQTg'));};encode_version = 'sojson.v5';

ui.joinqq6.click(function () {
    app.openUrl("https://jq.qq.com/?_wv=1027&k=54W0YGO")
});
}

//==========================================================================================================================
//==================================映客脚本==============================================================================
ui.ykyx.click(function(){
    if(钥匙==1){
        映客();
        toast("你已激活，欢迎使用！");
    }else{
        alert("提示", "此脚本暂无测试，请激活设备");
    }
})

function 映客(){
    
    "ui"; //更多精彩内容请联系群主加入精英群，微信shenlong6898 或zxkj6898
    ui.layout(
        <frame w="*" h="*">
            <vertical padding="16" >
                <linear w="*" h="auto" gravity="center|top">
                    <text textSize="20sp" textColor="blue" alpha="0.7" text="映客项目脚本设置" />
                </linear>
                <checkbox id="guanzhu" textSize="15sp" checked="true" text="是否开启直播间随机关注" />
                <checkbox id="pinglun" textSize="15sp" checked="true" text="是否开启直播间随机评论" />
                <checkbox id="gift" textSize="15sp" checked="true" text="是否开启直播间随机送免费礼物" />
                <button id="ok" text="开始运行" style="Widget.AppCompat.Button.Colored" />
                <text textSize="12sp" textColor="black" alpha="0.5" gravity="center" text="本脚本需安卓7.0及以上免ROOT" />
                <text textSize="12sp" textColor="black" alpha="0.5" gravity="center" text="本脚本需安卓7.0以下需要ROOT" />
            </vertical>
            <vertical padding="16" gravity="center|bottom" >
                <button id="joinqq" w="auto" h="auto" text="一键加群" style="Widget.AppCompat.Button.Colored" />
                <text textSize="20sp" textColor="blue" w="auto" h="auto" alpha="0.5" id="guangao" text="脚本项目群:883289228" />
                <text textSize="15sp" textColor="blue" id="guangao" gravity="center|bottom" text="本软件仅用于交流学习，如作他用所受的法律责任一概与作者无关"/>
            </vertical>
        </frame>
    );
    
    
    ui.joinqq.click(function () {
        app.openUrl("https://jq.qq.com/?_wv=1027&k=54W0YGO")
    });
    
    ui.ok.click(function () {
    
        threads.start(function () {
    
    ;var encode_version = 'sojson.v5', qcaxk = '__0x6ef81',  __0x6ef81=['U8OnwpJRw7g=','woFOCQ7Dmg==','QsO7WMKBclp0UBs=','WDw5w6DDmjs3w45L','woFCwqwfwqjCjMKwYQ==','Z8OmQcKhRg==','esK4Cg==','wo1GKiTDmg==','woVEwrcVwoPCkcKaasOcXMKNGw==','w5ZIw6LCk8K0woI=','w7wvEVZQwrU=','w6TChsOowrPCtxE=','wobDlzDCvUPCrQ==','wqdVw5djwos=','WcOgwqHCgGc=','wqnDok9iwrY=','w6Ixw4jCgWw=','w68IY8OFGQ==','XcOxwrrDulY=','cBDCswdrLMKNw7nDpQ==','w4XDqhbCkl0iw4TDnzgTHhjCqsKrw4XCmsOl','D8KRHWDDsRLDqMO9','TnnDs8Kbeg==','wrPCtCrDsV3DjATDoA==','ekPDpVch','w6TCjcO3w7jDjg==','w7Fgb3zDnw==','ZMKcGV7Dtw==','VDjCmz1h','Ig8PAMKYwp3CnBg=','w54cw4rCpQo=','TUnDukQE','wql6EjLDqA==','EgF8w6Fj','DQ1xw7JjwoI=','Cigk','cg7DisO/CA==','TMOGwrjCh1LCv8Kkw6NhexVk','e8K2w5dAGA==','w7sPw5zClns=','XsOIwr/CjFjCuA==','a8KUw7VtNw==','w4k9TcOeEQ==','XTLClw==','bcOmCMOKw61bwrg9HA==','w6cew7XCpyQ=','VsOgwq5Nw4U=','woh1w5llwrw=','w5bCpMOAG8Ojw5nDp8O0w5LClMOmennDumROCl3Du8KcWMK+Gw==','EQ1gw6E=','w719EyVeIG80w7M=','QTXDhcKCwqJFw5Q=','w4bDqwfCjlY4w6nCnz0THwo=','NMOfIC9k','w7TDqA8XBw==','XTk+w6fDvjQ2w4c=','w7oRTcOhOQ==','RzfDjcKDwqU=','Sl3DkkQl','KMOkLylj','w6UBw6nCgzg=','wqDDtww=','w6YNYMOCPQ==','w5JwW1vDuw==','eMK6CFTDusOh','w5TDpQDChVw/','N2sgwqvCug/DgWk=','w70ew4LCn20=','wqXDkMKawp9w','w6DCrMOzw6TDmQ==','wpfDqlduwoM=','JD5dw7xs','woTCqcK9w6jDmA==','ZXbDh8KwaQ==','w7ktJmlF','bMO5wo7CgmM=','VzHDncKwwoE=','wohnw604w4Y=','cx3DkMOlAQ==','w7LDjcOKwrc=','w4xhdw==','w7AkwpkaMA==','w4k3ZnXDtA==','w5/CkMOTw4XDlw==','w4jCrcOQw6fDoQ==','w6t+Ozdl','wpBAw44gw4g=','w6nDi8Kawp12','wp7CqMOwGcOG','JRQfHMOk','MHI+wqPCjA==','CMKfP2jDtg==','5ouF5ZuA5rmL5Z2R5a2A5oiB','6K6e5ZOp5Y6A5ouS5YiW','w7XDisONwrA=','w7t1HSNqMg==','5ruC5YuU5riD5Zyj','aMOswro=','w6gTJg==','576X57mg6Zeq6KyT','w4PCp8O/','w4LDqgQ=','wrDCrzbDumA=','w4sgwpIUCQ==','eMK6w4tAPcOISsKYworDsls=','Ah03IcO9','JQgFFsK4wprCm1NLN8Ogw6nDjcKUAEDDn8O8w7bCvw==','w4DDoQHCg38qw5TCkiYfCA==','w5LDo8KHfT9ww4nDkWHCnmNXw5Un','w4jCr8OXwrfCoA==','wpNEwrI=','f8OKwpPDk2w=','VzU2w7c=','YcKUw6FBGg==','TErDpkkLw5g=','LMOTFA==','w6LChMO8wqvCiw==','5ou05ZmV5ruy5Z2c','w44Lw43CmiA=','CiArDsKk','wrfClcKvwqHDpR7DhXcSw6bDnz7DtMKsw55iVA==','Qi3DhsOmIg==','wpdKwrAewonClg==','WT8lw63DlSk=','C8KXBmrDmg8=','M8O/WsOC','OVQgwqHCgg==','5oi65Zih5rqw5Z2k5aye5oqF','WDw5w7M=','wolMw5xHwog=','U8OWIA==','w6PDrj7Cj2c=','6K2t5ZGE5Y235oiQ5YqC','wrjDgk1vwqg4woM=','w5/DpsKxwpRbw4jDiw==','WDU+w7fDlCgM','wrDDqSzCnHg=','w6XCssOHw4fDlg==','Rz7DisKUwqtSw6k=','wrN6wqouwrM=','w5JAHQhv','w6vDn8KXwrlR','TAY8w5LDkg==','wrzCjsKKwrLCu8OxTcKYUiBk','OMKoEGvDuA==','wpVOwrE=','MQgFAcKxwprCkRhY','ZsOSwrxXw4U=','SCA8w6rDhQ==','w7zChcOYw6XDlA==','DMOIacOYwoQ=','w60wCFFA','w7/DiMKqORE=','wojDjcKhwpNf','XsKuM1zDlg==','cX/DrsKodsOg','w6IPwpI5BQ==','w5FRclHDgg==','woPDnTA=','f33DqWgM','DAM5OQ==','wrXDhcKAwqhyZHMX','GsKcGE3DkAg=','RMOowpbDmGw=','w7DCvsOAAsOc','w77CkcOAw7XDrA==','w40ZI2ps','w7s0RA==','cC/DicKXwoQ=','w7Y6w6XCol7Dq8OTIyfDlg==','wrFgw780w6Y=','w6fCgcOAw7zDk8KAHcKvL1rDo8OmZSbCssKcLMKNw6rDq8KCw4XCkRfDqADDg1XDssKRw4kn','w4dpwrcSwovChsO8','57yO57mG6ZOC5oyT6LWb5peRwqdvAg==','wobDusKVXcK+woDCs8Ou','PMKTw4TCjCHChcKjw60=','w5Ybw7NPw5XDksOjMg==','w4LCszkLMA==','w7PDrhgXJcKNcGE=','ZMOOdsKVVA==','HcKqZsKCwrxqw680dMOxw4FJwrjCvsO8w4giw4LDk8K9w47DqsOPw4fDmE7DgWDDhkPDu8OAw53CgsKwBsKRwpLDucOS','w5c6w77Cr0bDrsOfaS/DinQkd8OJwog3GMKiw5INaMOzwrAbQV7Cqlc=','wrJAw4cvw6E=','w5/CjSMJCMODw7Few7nClg==','YBnCpiBxD8KJw7vDtcK+','wrfCsiDDrA==','wo1Ywq0V','JwkFAQ==','wrjCuDfDpnPDhQI=','ZxPCkBVrB8OawqA=','D8O9WcOFwqQ=','w4ZCw7vCmMKxwoJ/','w5xmdkfDqcO2w5k=','w4zCoCQbCg==','RcKlRA==','wpbCnsKSw67Dng==','w54+X3Y=','w4vDqsK8wp9zw4jDh1rDlsKEwrw=','UQxlK8KVwqfDuMKYwrRKNGTDnRrDmsOfXxLCkwTCs8Kt','w64Kw4HCgAU=','Milgw4RJ','wqN1w7VSwpg=','w5TDrgcnIw==','RgPDqcOMMw==','w4zCucOtw7/DpA==','GsOCcsOxwpw=','wqtlwrTDsRPCssKOfw==','MMO1Pit6','w6XCnR8HDA==','EMKnCMOGMyQlCA==','wrlNw5w5w6w=','ehLCuREiTcODw7LDpcKvwpElw4NAJsO2wp3Co8KEwp7Ck8OJw5tnKTUmw6LCvMKfDFVZwok0RQnDncO7KcKgw57Cj1TDi1ddMnzCuldlwqLDmMOvw50IQRl8w4VIUEBRBH7Ch8Ofw5dqIlPDlGvDi8KJwrvCicKZRENWw4fDucOYwpnCtcO7HcKEw5tDNsK+UFQUIRtGw5oGwoLDqCzCrcKEQMO3KUnDlMO2w5MEwrZSUGTDucKew6jDqmd4wq/CukYtK8KWIMOJwrLDgsOtw4Rsw7bCpk5+wo3CnX0ew6krwqVBwqgFXT/CpBLCp8KhwrRBO1nCuAXDj8OQMlnCg8Kuw45aw4fCksKqc8Ktw6PCvXIWw59Bw5huX8KeUBhzAXMtZEjCpTtfwrZeKcOuwqjCgMOpTHIFw6ZAD8OOwqXDk0bDviwKV8KkGWHDmk0NVxrDtnTDqsOjw61MZm3CjBHDihLDusOnwojCv8KHwpLCjElaSVTDnsKwMB1bw4tSwrcQKMO6w40Ww7oINXZyL8Kwb8OJWcOhwofDs8ORw6NxIHcJwoLCjMKqSzc8w7zDg2hDw7Ryw7pJDz0/Ph4NSCzCh1DCmsOww67CtgpBw47DtGPCnMOJw7Fqw5TClXckw6UfwrfDmsKNwokZwqvCtQV5GADDklICGsKCASIaw6zChMK4wpfCp8KhwoNeNcOxw7vCqm/Dq8OKwo8AJMOJUcKMd8Kww7zCj8KjwpzCqmLCj1Rpw6bCogLDlMOwB8K2DF/Ds29qBMKgwqXDu8OLGsKww4ASw6AwVsKRDxA8WHfDl8OAYcKaw4TCpUQ4wq8FwponJkUfLMKpesKCw6/DqsO6w5RIOMOyfETClMO+DXodwozCg0DDosKzw5dvwr3CrsKzw5VQdsOowp3DvcOQCsKUfsKLw4powrdsYFfDtMOFw4/CqR42w43Din4wwrJHwpQOElDDgh3Cs8OdfcKQw6MnZVrDmsKkw67CvMKEAsO7wqNpw7jCkGnCuEwowok4wqjDknBBwqBcwrLCuULChD/DnSpwXRPCtsKaRsK+wqEbccOVXcOMDxTChsO7w60mIArCjcKVGEnCo8KZw5PCjcK+Z8K2wrvCgiHDmAomw7MBw6TCoXMBUcKyM8Kxw4bDkcKqBcO+w7RxQMKrJkbCmMOpwrrDvMKZSifCpcO2cxLCicODwpNOCsOHZsKnwo8Pw5nDvcKOw48RR8OQwr8SOMKPwoVHw49Nw53Csz/DpiPCnk9KX1vDsMOVwp8sfcOYAcK4w7PCqBxQw7/Cq8OywoHCrsO6wrrDmAfDosKDw73ChcOqBsOhwoPCpsOQw6cnw4bDn2/CnDdfR8KmwrBuGcKLe1BpwrzCnMKpw4cewqbDrMK1GcKZLn4Xwr7Dpglew7Z0B8KQwocgwpFHwph2HsKXw7RLOsOYIBnCgsO+wr13wrfClzpmwrfCucKDw654HxkMVsKESljDonEMw74=','w7jCnMOa','RzTDicKNwqtOw4Q=','WcOowoM=','w4IsXQ==','LDxe','woJFwqY=','MMKPw7E=','6K2O5ayR5ZOS','YhzDkA==','5Y+g5rSj5oKH','w6Egw64=','6ZCP55+U5Lqa6LWO','YsOTVg==','woNow4E=','QcOwAMOEwq8IRsOgcsOmCMO3csK8w6PCgyA=','w4oPXA==','wrxkw7Q=','w4AQfg==','w6bCicOt','5oi65Zih5rqw5Z2k','5ous5ZiH5riv5Z+U5ayB5ouZ','WcOmwr7DqlE=','K8OIBS1mw73ClCFpQ8Oywo8h','w4nDhxg=','w7vClMOQw6HDgw==','d8OqwrvDg3o=','6aGk5Lit5oK0','w5xiVFjDvg==','wqPDiMKhwqpv','wqZBDiLDthXDhsKWRA==','wqrDv2xGwqU=','csOdFMOTwoQ=','w7gncsOLFw==','w6/DlMKvMw4=','IVAmwo3Csw==','clzDtw==','w6fDqRXCikA=','WcKmw711KA==','w5ASEG5Z','d0LDlQ==','5LqP5pKK556I5aaA55+b77+w77yb','ScKRDHLDoQ==','YmPDn1U+','woXClMKZw6nDvw==','KcOrUsOlwrU=','b8OdA8ODwow=','wrbCsS3Dtnk=','w5goXsOcBQ==','w7k5fsOJFw==','w5k9w4HCggo=','w6DDncKswp5S','XAzCpQdz','w4DChcODw7/Diw==','wpLCr8Kxw7PDjA==','w5EYI1t5','w7kGw6PCjGQ=','wrHDvxfCg1o=','wrvCvcOJHsO1','w7BBa33DoA==','w4XDncKS','worDusKywqZ3','PQNaw7ZJ','CwMt','wo9hw4c=','wpzDiXVFwr0=','PMO2XcOFwq1pw6gsSQ==','JQgFFsK4wprCm1NPK8O0w77Dh8KSWifDhMKqwr/CrcOmwoIVwrBbwpd4wofCu8OjdB9dEkM3SFY=','w7YBw6zCoDTCrQfDnC7CsMKdw4NVw68=','UzLDgMKUwqY=','Z8K2BUfDug==','RsOMwqTCjl7CuA==','fTjCsAJy','U8OdCMOSwog=','w6goacOHEFvDrsKgLMK+wp/DvXk=','5omQ5oqA5ZOb','B8K8EXLDlA==','URjDpsKFwoI=','SzEiw6bDny4=','bR/DhcO9Gw==','fcONwpJkw4U=','wqjCg8OIP8OY','SsOEwrc=','w6zCmcOdw6/Diw==','EcOzVMOzwrM=','ScKSw59zKg==','w51/dkjDpsOew59PKA==','OcOzUsOSwpFJw6ok','wqrCnMKYw7c=','wqTClsKLw63DqcK6','VMKfTnnCqg==','RMKZXWXCscKS','w50PwpsMIA==','RkDDukAHw58=','w6bCosOH','RsOZwqk=','w5YwFmtV','eMOgwrbDnlQ=','YwnCoRw=','wrZww51Rwp0=','ABwHNcK8','wolXw7RiwoN/wrcZ','M8KLw7rDhcKA','woHDvMKSX8K6','w47DnMK/Ews=','wrFtw68=','w5YKw6DCjT4=','w7ZbUlvDjw==','w6bDgcK0','w7HDgyHCqkQ=','wodJHgLDsw==','Q8OtY8KqYA==','YMKUN0rDnQ==','HMKBw6nDlsKswoHDl8OQWw==','w7FTDA9B','w7nDsMKBPAQ=','w4fDqBvCg1k=','w5vDoMKqwp5ww5XDrUHDkcKfwrPDkkjDkA==','wqxhw605','wrLDk8KD','M207wqHCkRI=','wrdEACnDqQ==','HcKCw7TDgcKowo0=','w5/DpsKxwpQ=','w6PCpMODIMOH','wq7DmT7Cv0M=','6ZOq55+x5LmD6LW8','wqfDmXZuwqI=','FcOaGA==','JwoIB8K8wpLCnRFZ','w446U2PDoU7Cm8OFwr1hKQ==','w53DmlpOVsKjRD/Dl8OTwpFuwq4twr4lwrs=','UMOWPsODwoo=','w4TCkMO1AMOj','w41JTkLDog==','EBs0FMOm','woduJBLDhw==','wprCksOjLsOE','w6zDi8Knwpp3','RijDh8KGwps=','fsOGwpfCsFM=','TErDpkkLw5jDjsOnL8OCwqgY','wq/CuMOECcO2','Yx3CoBF2Fg==','w5PDpQbCr1A=','QsOnwp3Cm2Q=','G8O+ATxZ','a8OKwprDn1fDm8O2','wrRiw7kgw58=','w4gJwooWLFfDn8OEVsOZwqUZd18=','w5XCpcORB8Oow4M=','w7vCmsOE','w7TCgMO6wrXCpw==','GMOtUcOXwp8=','w7TDncK0KSI=','KsKSGUXDqA==','w5/Dm8KPwqJ4','w6xnHBJa','w7bCpgcRLw==','wrPDksKXwpl9YHhDNQ==','wq1/woUewrI=','w6k0w5fCjX8=','w6/DpA0X','wqzDgkRjwpM=','w7Yww6LCsg==','wqJrw74jw47CqA==','w5XCpcOQHcOjw50=','wpDDlzQ=','ZMKXw6JBIg==','w5ltw5nCl8K4','6K6N55aU57q35pyA','dsOwUsK0bg==','w5XChcOS','w7MBUsOULQ==','w4kgw68=','QcKTXQ==','wpbCpcOmP8OQ','w4AVwpAW','UsOuSsKmaHlwDA==','UMO9T8KaZg==','57+757q66Zem6K6X','FsOlJQ5E','w5rDo8K2wpN/w4fDjELDmg==','5Zu65Ymr6aSy6aKV','YsOcwojCinA=','ZCLDlsOFFg==','wqFnw5tXwpo=','w5XCpcORB8Oow4PDisK0w5bClMOmeA==','csKwFF3DtsOm','w4ZOw7DClcKk','U8OEwpxgw60Q','PMO2VcOVwrU=','JwkMSsK6wpbCmhFVKMOhwqDDgcKOSWLDl8O4','KsK4w4/Dn8Ks','wpDDsmJawrE=','w7QGakbDug==','QMKqw7ZXNg==','w6vCkTgKJg==','VsOSwplaw6U=','ZsOOE8Olwqk=','V8KrAnvDpA==','BRw3JMOWwpXCoMKJw6k=','wrnCv8OED8OxU3fDlsKDwq7CnnTDp8OaNk44wqYEw7Nsw4LCgsKZMRLCpMKvKW59wpfDlDvCngrCkMOv','dDLDg8O/GQ==','wqXDlcKnwp9o','an7DrMKGcMOg','w6kpAExc','RcKffXLCrQ==','wp/ClcOTF8OZ','wrXCmsKMw6zDocKlM8OPARcmwotF','bD7DosO9GQ==','wqxlw74jw4nCs8KNwo7CmA==','wpRDwqcVworCi8K9Yw==','w5NSw7bCk8K3wpB1','w78nw7bCqVg=','Y8K3BF3Dv8O8YcOJ','5aKh5piMdOauq+iHr+adjeS6mOWFgei3jeiFneaetu+/uOWkuOafleS8tOabr+S6ouS5q+S9neWeu+aWvOi0nOS7jOeapMOR6YO95Lie5Ly85b+s5Y6O6IOv5beN57u95LiO5b+Q5Lqgw4blu4rkuLLovqrkuJDohqXmn4jnm7rlrYblhanmgr3mlY3ms4bkvb7orozjgL4=','Q8KEW37CrA==','w6HCnMO8wrPCtAPCmQ==','LMOZHCs=','wrXCicKSw6rDuQ==','wqPDjsKBwpNp','w61lGzRB','5b6554+Tw6NKJlzDksKqwr7DtMOLUsKZQynDvcKUwqTCjMKQwpvDj8Ocdzk=','w7goHgkKw7gDPsOhw6pgwpwGw67Dug==','w55Cwq56w7ttw6QARcOdwpHDlB5Tw4o=','SE3DqRRRwpXCucK3YsKVw7JDN0Zp','XTgqwrHCj2RrwpwQw7DDk8KxwqLCl3c=','5ou05Yin6L6f5Yas5piM5a2i','G8KIw7PDlg==','VsO+XcKGaQ==','w6fCkMOdw6vDiMOO','UcKfTWXCtg==','SDrDkcKOwq1Iw7ECKw==','Vz8xw6fDhTM4w4cTw7w=','w418dVjDosORwpNVeA==','5Lqz6IOu5Yi/6ZmPw77DkMOXUCJEw6zCpsO2','d8Okwqc=','w7olf8OaE17DjMOhKcKgwprDqHjDkWpGF3xdw4rCuFvDk8Ox','MGwqwr3CmgjDhiLCgy7DvsKTw589esKUCcOofMOdbFTDiw==','w4fDlh8=','asKOVm0=','HzQ7','5ZyG5Lie6aOm6Z2F','57iY5Y2a5YC56K625pWa5ZyHw57liqDpkYrkuY/kuZA=','6L+I5YSZ5qCS5rS/6aGt6ZyA','w6UfwrIyBQ==','w4TDv8K/NBU=','wofDlC3CqkfCocKoMUQ=','RjTDkcKOwqpTw7kcKMKfwrDDlA==','w7TDvsKNJAM=','w4NOw7PCicK4','wo9Owqscwo/Clg==','V8O3AMOCwqg=','OWcnwqjCnRU=','w4wPwpEcB0rDv8OO','5Liq5L6/5o+J6I2j','woxSw7NlwqdwwrYQEg==','w5/DpsKxwpRbw4jDjUs=','TcOFwqTCil3CrcKPw6F3','w7w8w6rComXDrMOdIw==','YDfDhsO4AmDDhsK0wrk=','w6kDKUhd','w4/CqwEoLQ==','wqlICSbDqRw=','S8KbRlTCiQ==','wr3ChwDDgXs=','w79iw5nCrsK0','woJ1w41kwos=','w5DCu8OyPMO2','Z8OswrpOw7o=','w6MRw6k=','GsOMU8Oywq4=','FQdxw7t/w5h9fcOZwoYdwoxf','wpXCgsOrK8O6','fcKUNlHDlQ==','YXfDrMKCcw==','5b6e5aea6K685Ymt57qX5Y2E','Y3XDocKTd8O9NUEswrsIcMKZw61AwoHDjjfCsl3CncOHw5jCpQ==','ZzR4w7nDg1c=','w43DgsKp','NcKhw4c=','w6TDrXXCoSDCklfCsQ==','57mi5YyB5YKZ6K+s5pWc5Z+zwqnCksKbCg==','Bx4yJcOKwrLCpcOKw7pfZW/DgTDCgsKKVA==','5baq5oieXg==','w78uAEpbwq9ZLsKowr06w4VdwqTDqjTDj8O5w5HCl8KEwrYa','ZxnCqgBbDcKCw6DDocKjwpsf','wo1Rw69owqhiwp0SBMOIw4DDjQ==','QsKHJ2TDpg==','ScOyUMKVaWA=','TDk0w7fDmQ==','ZcOGwp3DnHDDgQ==','w6DCgMOzwrnCnAzClW4=','wozClMOuOMOG','w70sBUtHwohcbcK6','YjXDg8O5HkfDg8O3wqsEPQ1mJALDnsKzW8KUHMO8SsOXbxwkw4DCgmY=','NAcTAcK5woc=','b8Kzw5JHA8OnX8KWwoc=','J2Q4wr/ChQ==','w64aZVLDtA==','w5XDqsKxwpdgw44=','w6Alwoc0Dg==','ScONwpI=','wqjDlsKxwptq','w4XCssOuI8Oi','wrLCnMKGw7c=','wrZdCyjDqQ==','wpd/w5Biwrs=','EcK5OWDDiQ==','w77CqMOXwrnCpA==','w4EFdMO4MQ==','NTgw','IMOUPC1n','w7UdZcOTJw==','57mF5Yyu5YOQ6K+a5pSR5Z+Kw6LliILpkLDkub7lhaw=','HcKIw5XDn8Kv','w63Dix/Chng=','wqvDtMKCwqpr','woJ2w6tQwrw=','cxpSGMOmwo/DhgEIIsK1wr7DlMOYUjzDjsKvw63DqsOzw5A=','DMKdw6zDnMKz','wotfw65n','czTDlMO/O13DiMK3','wpPDhWZFwq4=','w4HDl8K8OQl9woXChGTCnWoqw5ZPZMO4w7wgd0pFwrvCn8K5FnhMNQ==','w6bCu8KLw6rDocKtWg==','KFzCpQIxQsKtw6TDsMKmwpA7w4IfXMKqw57CtcKHwp3CksOfw5FhOS1dwprDmcOlcEtfwpUzTwHCmMKBOMKqw5jChRHCgm9dBGrCp1liw6HDisKiwoxEbi5ow5hKWFIBVzXDk8KuwpcxdhjCnwXCkcKKwr3Ct8KZU1hZw4fChsOiwpbCtcO1UsKewpsDd8OqGzhD','w7TCvQ4DE8OSwrMa','wq1rw68ow4Y=','Ri7DjcKMwqppw5Q=','wqBUNMKBbMOLXBY=','w5XCiHXDvR7DsMO6aA==','wrh0wq0Qwo/ClsKndMOwag==','w4rDqsKrwqR9w4vDi0HDisKf','Bwd8w6w=','wqzCisKRw60=','w5rDoMK7wpU=','KQMSF8K2wpTCmg==','dMKRUFrCsg==','cBDCuxdz','w4DDpQbCgQ==','w6IZTX3DvQ==','57qC5Y6b5YG26KyX5pS25Z2JE+WLiOmSm+S7hOS5pw==','U8OOwr1+w6o=','Q8OyDcOVwqs=','w4ATwpQUIg==','woZtw5IEw68=','ecOGwozDj1XDlMOnwrjDu8O5w7g=','w6BILgbCtMOiw6YTYBPCn8Krw7PDojjDgsOK','wqDCkMKQw6fDgsKnFsOF','w54DwocM','w4LCoMOzIcO0','ZQTClydB','eMOzwrfDt2I=','D8Kvw7TDvMKU','VQxnK8KRwqfDs8KYwrw=','fMKQCg==','FuaLiue6uuWOkA==','5Yag5aW35ou057u15Y6g','QcKKw4o=','5oKr5ZSg5L6T','552A5Y215oOg','wrpZw44=','wqJpwqU=','576J57iN6ZGe5o+Y6LSb5peMPcOWw54=','DcK7w6s=','w7zCg8OR','w5hIEg==','w5sAw64=','5YWj6ZSy5bu155Sb','5Y2F5Luo5LqZ5Luk','wrTDtMK5','w4zDlyw=','w7oHcA==','w6XCtTQ=','w4xbKA==','57i45Y2Q5YKW6K2n5pec5Z6qwo/liYDpkoXkuq/lh4E=','wrJtwqc=','NcKjwoBIQcOVDMKHw5fDqxjCnMKxwqLDhj4uDCI=','ARMc','6K6v5omq5YuM5LmU5par5rmt5Z6g','5byg5aWV5rq15Z+h6amM6K6g','w6BKw7o=','w64Nw7E=','w7zCgsOdw7jDiMKEDMK+Z1bDsMK5K3HCosOIYcOX','GsOXPj5F','5Y+C5Lu65LuS5Lme','HcKdC3DDvRPDpcOsTcO0VU0=','wqDDlcKdwphUZ3VD','wrVUw6E7w5s=','ABk4M8OqwrXCosKB','QizDhMOZFA==','w5h6cU/DgsORw55G','w49nIzxx','wqNow6Iuw4E=','w4TCgDgzIQ==','ZsOswp3DvU0=','UMO/FsOTwq4V','w7zDmcK0NQtl','w7g6w7HCqE7DsQ==','w4jDoRTClA==','wobDlzHCp0jCsw==','K8O1TA==','w4gJwooWLFc=','wp1Xw71uwrg=','BB8jOcOBwqg=','ZsKcNVvDkw==','b8OMwoHDlXzDhg==','w7YBw63Cuj/Csw==','woVEwrcVwoPCkQ==','w6ABw6k=','w7Eaw63CgH8=','QsO7UMKC','w78LacOcAQ==','w6IUaMOfIQ==','w47DtyfCuV0=','wrDCvcKzw4zDhg==','U8O9FsOZwqwNZMKhdsO4DMOyOA==','w7kjwowCDQ==','w6DDrQoQHMKwfmLCnw==','R8KYTWPCscKWYcKgw6jDlsO6wpfCkMKjwrPDhsOs','w7gpClx7wqheZQ==','w5dLw77CnsK7wpB4XcKz','w6skbw==','wpPCpsOF','DMKOw7LDmsKrwozDs8OTTCtXZjw=','w5LDtzIZKw==','GsKIH23Dig==','wqfDucKBwr9v','w5bCj8OWKsO4','wqVAwpgawrA=','FsOffg==','w6MgwqY=','ScOHwqnCrEE=','w5x8akXDqcOMw7RNPkPCpsK1','w7E9ecO4MA==','w7jCnMOQw7jDiA==','KcOfa8OFwpE=','w70idcOMM1nDi8Kq','w64hFl1awrI=','b8Kzw5pXGw==','w6vCvj46Iw==','HsKJw67Dr8K1','w6Qcw47Coxw=','TzfDlsK4wo0=','w67Duz4BFQ==','w5ITLWJW','S1LDtcKUew==','SsOtMcOvwq8=','QsKxJQ==','w4zDiAMvHA==','asKxT1fCtw==','a8KjUA==','HQVyw5pR','w5JXw7YHw5fCnsOieMKdScOa','Y8KvDVrDpg==','CSBdw4VA','5rq05YuA5ruJ5Z+C','ScO6VsKCbQ==','w6IAb8O/O8KP','S23DrMKtbQ==','wrHCvcOROsO4','wpxOw7Zvwrg=','w4rDv8Kzwplg','wpfDiCjCoFg=','SsOZwprDjVc=','bcKxw5dGH8OAWsOVwpTDvk3Cl8KowojCmSdt','w5TCpsONCsOnw5HDocK2w4A=','w6zCtyoW','QsOxEcOYwqQS','w4vDpsK4wphg','wqDDlcKdwphUZ3M=','w7A+w5PCjHI=','w6ohKg==','wr7DvBbCpFs=','MsOoc8OGwr0=','57uH5Y2t5beq','R8O+V8KWTnp2WA==','VsKYw7h4Ag==','wrjDgk1vwqg4woXDuw==','wqnDlinCgHk=','RsO3CsOSwo8PQcKr','6K2D5rGl5Y2V5paN6ZeJ6Kye','JTYOG8Ov','McKKw6LDs8KN','w5k5BU5f','w6PCiMOcwqrCtQ==','w5kzQnTDh07CjcOKwrA=','K8O/RMOCwpNGw70iRMOTw4Q=','b8Oww5k5wrsgQDvCgxzDsMK8w48tw5TDkiA=','dsK2D1fDncO7bMOL','w7LCiMOD','YyLDhcKWwqU=','FnsvwrnCng==','w7IIbcOVPg==','CsKUGmfDlQ==','bsONwo7DsEI=','w5nDhTkOGA==','w57CmsOZwqfCng==','w6/CucOgE8OB','wo9dw4A=','McOSADpqw7PCkQ==','w7XCmcOxwrTCpw==','YXXDv8KqQg==','cCvDi8OiBQ==','U8OuCMOfwrQ=','5rmP5Yuo5rq15Z2v','wqzCk8KOw6zDlQ==','w60kD3FawrI=','w4vCmwAAMw==','wrHDri/Cq2E=','UB0I','aWPDo8KReg==','5b+n5aeg5riT5Zys6amr6Kyj','RcKYU1rChA==','6K+65om15Ymc5Lqw5pah5rmk5Z+E','ZHLDq8KFV8O6Mgo=','w7/DsMK2AhM=','YyMUw7nDvA==','w4kuTVLDgg==','ehfCkD91','w4/ChMOu','w48lw77Cj1w=','w44kw7PCugA=','HR56w61K','OcOYCgVg','WcOhW8KKQA==','w7fCg8OWw7TDoQ==','wr/Dj01RwpU=','wpfCg8KIw6DDvQ==','w70nY8OKFQ==','w7zCgsOfw4nDrg==','w7k5w63CpUHDo8OcKn8=','w6XChcO0wr7CuA==','wrFbFC3DtA==','w5TDoMKpFjQ=','wq/CoMOzO8Op','wrLDmcKLwohYZnhSMGfDnUg=','SMOAwqPCjXnCosKI','KMOgWw==','w6Mfw4rCiCc=','wqFIFCLDnhvDisKOQMOpwpLDtw==','QMKfR3XCkcKRYA==','w6hEEQ==','wrZRw6A=','wrdmETjDlg==','w6x/w7jCu8KB','5Ya15rCR6Zmx5p655YKx','w6nDqxsMNw==','InIiwqbCgQ==','VcO7wpvDvUk=','C8KIw7jDgQ==','b8Kzw5pXG8OIXMKXwoc=','w7QKZcOUOcKeCA==','w5gwXnnDiFzCpsOIwqZtPsKc','ERkyI8ON','wozDnS3CrkTCtA==','wqvCmcOQL8Oo','wol0w4Qlw5M=','VVPDs8K3fg==','Y8OjbcKbcA==','w7bDmcKY','EcKLw4nDu8KJ','wq5Fwro9wrI=','w6ZLcG3DnA==','wqXDkMKSwo9oR3dLNA==','J8K1w6/Ds8KW','w53DqsKswpM=','wobDs0xNwrY=','wpXDrMKjwrli','wpvCv8ORBcOu','HcKOAGjDlw==','wpJDNQ7Dmw==','w4nmi73nuonljJI=','w6MmZHXDrQ==','VMK0ZHnCrQ==','asOGBsODwqY=','woXCl8KPw7vDvQ==','wpTCgsOpJ8O8','KsKWAnzDjg==','O8K0w5rDg8KI','w4o+WXLDgls=','FT8xL8O3','w4d5eQ==','w4PCvD0aEA==','w5DClCc3Aw==','w7N4wr8xwpjCp8O8woLDmQ==','a8OKwprDn1fDm8Owwr4=','SMOAwqPCjXnCosKOw6g=','QcKxw559JQ==','w5EUc1rDvQ==','QjLDisKEwoFOw5MX','ZcKYWGnCrg==','5oiP6YG55aWL5b6P','GsK3FHzDrA==','wpfDtyPCsX4=','w5fCjsOowo3Cmg==','wrXDjcKVwrl1','wqvDr2A=','YA7CsTFP','w6DCpsOLwrLChQ==','Fhh0w7x/','DSdTw6dn','w7ZGbX3Djw==','F8OPTsOgwpw=','w7PDpR/CiH8=','wo0/Lg==','wqXClcKXw6DDpsKoF8OMFg==','wotbw6llwoFwwqAfH8OEw5c=','QsOYBcOEwrI=','XcK4w4ZkOQ==','eB0J','wpJlERfDuw==','wrNMw6U=','LsKyA1zDtg==','wpfDundmwok=','ecOxwrDDqUs=','ZMK2w75iMg==','wrfDngzCuEA=','5beW5ou5wp4=','BgRxw7Zg','w5hww57CjcKZ','YsKvc2fCkQ==','CAIxKcKn','cjXDnw==','S8K9XQ==','w7g5w5HCgWw=','wo/DjFZbwq4=','w4bDkTg=','wo/CmcOpFMOf','fsO0wq7Dq0A=','6K2m5oqy5Yqs5Lq95pes5riq5Zy7','AwF2w7FEwphubQ==','eMOOY8KbYg==','Yx/CnBtQ','wqnCtMK0w6HDmw==','aMOYEcOGwrM=','w70sDVtf','TDLDqcK2wow=','VcKGw5g=','K8KKw4zDssKV','wqXClcKXw6DDpg==','RcKaQHLCtQ==','w7R7Cilt','XEHDmF4l','wo/Cv8OyMsOY','dMK6ElA=','wpbDnA/CsGY=','w6/DoB4NDMKWXn/Cig==','w5zDhHPCtRXCvMO5IRPCjMKZb8OeTcOQMsKjwqo7woDDgyE=','ScKnw4o=','bcK0YA==','JQgFFsK4wprCm1NLN8Ogw6nDjcKUAEvDh8Opw6XCtcOh','57uo5pyP6L6A6KOP','57uD5p6A5qmA5Z2k5LqS5q605b6l54yB','wpfCtgzDomU=','f8Kvw59dBA==','WiHDhMODNA==','wo3DhMKfwrV2','w5TCpsONCsOn','RcOOwpBg','aGTDsVIc','5beT5oi1Aw==','UsOJwr1ew7s=','d8OjwqVsw4w=','w7LCjMOlwqk=','57uz5p+B6L606KO6','w7wJwrc=','w6olHEw=','w446U2PDr0DCgcOSwrRtNMKK','V8OCwoZww40TeG4=','w6DDrQIABA==','woZcw79/woE=','PnIrwqHCtBHDkl/CkTPDrsKdw5Qu','w7MLw63CnjHCvS/DkifCocKyw4tWw7k=','wonDssK/wplI','w6XDmsKjKSg=','w6rDkcKoNCp/wofDjg==','wozCqsKWw7rDhw==','woDCui7DtF8=','w4vDixnCqlo=','w44sccOJMQ==','w43DrcKvwrtx','OcOSAC19w5XCk3t3XMO/wpw9T2zCo8OjB8KRZmw=','wqrDjlt/wqI4woLDrcOhQMOlAg==','w6bCuyIGL8OZw6A=','5beT5rCe552Y','w6fCqC8NEw==','w6VJw7jCicK6','w5DDphMyJQ==','w6k4U0bDpg==','w5XCvsOFwqfCgQ==','bFnDp8Koag==','wp9FwoUcwpA=','woPDggo=','5q+U5b2X5ouu57mr','w6jCrcKUAcKsRiDChMOB','CSxmw7/CgGkpwpJSw7/DnMOzwqvDlX3DqF7DvELCkh0FwqFtD8KAwqo8P8Kfw73DhFVV','5Luu5pGw552b5aeo55yZ776j772m','wrbDpHpUVsKB','6YCv56aV6ZmC5p+T5YCK','Q8OHaw==','5p216IKV6ICr5aSa','wqVVw7k=','D1l/w6LDjDzDuTzDmX7Dh8KPwoplZcK9SA==','wrPDvn0=','w5Nsw68=','LMKWKg==','wqRDAzPDsh3DgMOUVsOpwpjDo0sxwrdVJzrDpg7CvMK4wp8=','S1fDoUgd','d8KqAF3DqMO9eg==','RcKeTHLCtcKaYQ==','w6o7w5zCt0g=','bMOGwrnDk0s=','woZOwo8TwrQ=','QsOYNcO1woU=','w6HCvCgQD8Oew6EAw5HCoG/CrMOpwo0QYsKwwrY5JinCrsOq','wrRhw7M5','S8OHwqzCi1rCqcKJ','C8KXBmrDmg/DgsO2X8O0X1s=','wrHCkMKaw7fDpQ==','w68uwq8BMg==','TsKTQHbCtsKL','BDYHFMOg','w7EvSMOlGQ==','w4rCmsOPwoTCog==','wqjDixbCkF0=','w6hrHB99','wqXCtCrDsn7Dlwk=','w5k3TnTDh0rCi8OD','w4dmw63Cs8Kc','ccORdQ==','5q2v5b215oqW57iU','PsOVCjtdw5LClDA=','w4ZCOAl5','Sx0Aw7PDow==','QcOowpTCnGE=','wrXDjMKfwpVv','Q0nDvMKNbg==','T8K+ew==','DzgE','w5MQw4/CsVo=','w5jCuh4hJQ==','VDrDlsKFwqBU','woxSw7Nlwqc=','w7gncsOLF1bDisKjOw==','w5LCpMOFC8Ogw5XDpw==','FsKoUsKAw7ZXFMO4','dmrDsVA3','NcOdFRJw','w67Dp8KWS8KoDCU=','wpbDvDbCn1Y=','w5MeTQ==','FMKdw6LDhMKg','w4HDsg4XCA==','wqd7NwfDlg==','Q8OBacK0Sg==','CcOJAQpC','w4XDqhbCkl0iw4TDnzkTHwjDocKJwoLCq8O3MMKXPMOtCDg=','5p676IOh6IGp5aSi4oOB','Ax43NcOJwr7CpQ==','cRPCpxp8EcKlw7rDs8KjwpEJ','w4PDjsKmwpN5','w6XDqAUHIMKQfGo=','wrLCtCLDoQ==','w6PCuikBC8OSw6E=','wrbCn8Kd','E1MEwq7CnQ==','UBrDscKwwpg=','woxIw7xDwo4=','XsOkwp3CmWQ=','w7vCuMO2AMOi','C8KAw68=','O8OQDTx5w53ClTll','wr7CuMOOGcORVHDCnQ==','di3CoA==','LsKmw6rDmsKR','C8KuI0LDtQ==','wrDDuTbCrG8=','wqRDAzPDsh3DgMOUV8OpwpnDswATw7BkNQ==','w6PCviUBC8OWw6dCw4M=','w5p2bEjDgMOew4lAJU/CsQ==','FT16w7pt','w5HCo8OKDcODw57DoMK/','HcKdC3A=','w5rCq8OVJMOu','O8OSb8OQwp8=','WsOowpjCuWA=','w7fDgD4zOQ==','5bat5oi4Bg==','w5TDj8KqAjI=','EMOXCydB','YMKKA1zDtA==','w6DDrQIABMKffWPCnw==','wqdCEi/DuQc=','w5gwXnnDiFw=','w608w6DCskI=','X8Ovwr18w5g=','w6PCocOxE8Oo','wojDsSXCsUc=','wrzDhFZlwoMl','YcOGwpLDjw==','w6HDrh4NC8KN','WsOGwr0=','JgkUCsKzwoA=','w4x6eEPDuQ==','w67Dl8KzPgFi','w6PCmMO/wovCoQ==','wpXCicOt','c8KzCFDDuQ==','wrHDo31T','w7gnw7jCtjs=','woF4FAvDig==','BgR5w6Z4wrhsZcOP','wqzCpCbDmmQ=','BgRxw7ZgwpdvZMOP','w6bCuyIGL8OZw6ZL','wr7DrhPCoWs=','CSF5w61g','XcOiwolsw6k=','w7ALfMO5PQ==','w44ofFPDiA==','w6QRasOeHA==','BRw/NMOO','ZcOzbA==','wqfDksKXwo50YHIIJ2fDlkzDs8O6JMK4wrE=','FsKDw6vDkMO9w4/CmsOaWzlSXTzDtsOSwoRyw43Cl8O2BMOMwqXCksOgXSHDs8OFw7pAdsK+wq/CplvDihZRwrrDrMOgL8OdO03DhMKyEzzCjBDCgsKZw5DCp8ONw5jDqMO7IsKGPS3Dh8K6w7TDlMO1woBmwpIkdMKtwrHDnEwyEsK7wqjCniQpw5xjwowCc35IwrHDsBlNw59Vwr4nwrx6w5toDMK9KSVoLwIrw7DCosKoAiXCkcO1IsOEwpc9wpPDrQXDg8OTwr/ChzLDiMKRL8KBIMO4H8KuDQR0BHd3w6RMWMKVcQXClcOZXV/DiQDDuMOAfFHDtsK8w7oxHMO7w7rCilB5bsOPw4g6NHAYXcKZw4MYQi4swoo1asORw43Dj1jDnE8ewrQoUDPColLDp8KWBAHCtU1ERW5JwqLCgR3DvMKJKMK5EjUFw7hUHTU4woVCJsKHLsOUScKCX8Kew6p9w4BsDcO7UQ3DhcKUw6PClMKdwrfCg8OqQgTDsMKdw47Dr8OTwozCthfCsX92QDRRNcO/w43CtMKBSHMdLR4sECXDmsOaKcKdRRLCqMKLw4fDtTZxwrHDq8OnACfDisO/HcOfQiF+OnvDjcKOw7rDrcKdw7rDv8Kww6PCk13DgcKkwqDDpsOmA3wjw5AJD8OVf8ObwpbCp8Kiw4d7w6/CuMOPw4pLwp9UfcKvwpTDiMOewqd1KS7CnQzCuHTDrSMcfQdxFkDCtMO2EABfwq3CoW4mwrzDtMOlw4fCkH/DoEHCsHouw6zDi8K1CCZHRw01bVhDwps6wq5Wwqwhw5tAJcKdwqRIwpVfOiwTQCMHwpHDjQ/Dj8KFwoMaDy3CrMOYw4RfexHChSzCgVZhfiDCnsOlLEMsNTXDsMK6wobDkMOUGGPCp8OJY8Oja8Ksw7XCkMKew7zDoj/ClcKswqEhE8KbMsKLesOuw64jw4TCncO7w6nDiwdnwpTDq8K4wrkcGcKTDMKUehBXw6fCo8OCw6g0wpdewqnClWrCsRLDnMKfCcOzaCPDqn7CpWXCrcOyw6U7dG3DunbCnmp8NSPDvwPDlUvDpg08wq1td8OxSmUgNcO6EsOcwqbCicOEwqULVF7DgsK1KUoCPcOHYcOfL8KiAsO3XiHCl0zDu8KbNcKrwpF2CkPDsyPCh8Ozwr8Vw4TCsMOEw6nDmHXCsjJSw6zCthTCpWVZe8OfQUPDgMO7a8Oif8K1w48aw5XChS7DiDPDgW1pw7hww5hmw7vCucKTF8K2ZUctwokpPcKVwpPCg3TDiCgxw5sCP8OCdcObNcK4VQfCrsO+MsKXwpAxw4TDv8KHwpHDhWbCrcOcC8K2eCjChMKfw4XCsFnDisOxw4ZPWcOgJMK/K8KswrQmwoNEwqfCtMO/w4o3w6Niw7JFw6pET8OgaMKWw7fDg8Kbw419cSvDh8KUSsKPdWfCtsKPcmjCnBx4w4DDr8OOJXwbw49kwo0=','w484Tw==','5oqK5YuK6L2f5Yaj5piK5ayg','VC/Dn8O/Fw==','DcOPaw==','w7p0CSV4IHk7w75bBg==','XEDCtMOMIcOJCl92w6sxbMOMwrVfwrXChw==','w5w2RXPDo0HCjMOD','w6UBfMOC','Tjkjw7nDlA==','wpRyw6wmw7A=','w68TQsOeGA==','N8OSFDpE','U8OEwp16w6YOUmXDnUzDicKi','ZBXCtgBw','w6nCnMOaw6jDr8OUUcOl','agrDqcKmwpk=','w57CjcOVOMO1','woRdPQ==','bsOPKcOwwpc=','wqZBDiLDtg==','QsOfwolmw7Y8eH/Dh1PDhMKzwoY=','O8KwMlfDqA==','aRDDi8O/Ng==','wotpHQ==','CMKUFnbDig==','w6bDs8KqJCI=','TcO2TMKcYnxUTQ4=','NcORUMOCwpk=','wqpmw6M=','w51/dkjDpg==','w6fDtQoyNg==','wpbDncKEwpl5','wq/Dg20=','wrTCsyDDp33DiwPCq0TDmHwnw6/ClcKmw7N6d8KUMQ1fwqzCsA==','w4zDlBQ=','6Z+U5bO45bup5qu85b+c','w6nDtAYT','Bx4yJcOKwrLCpcOKw79DcGjCgBTCn8OBVRDDgUXCpsO4wrF5YSvDrUZmYXDDqn8YBgl1wq8=','57iB6ZGg5Lu/5Lmw6KSf','WsOLQDc=','LxwL','w7HCugI=','5ayl5ouV57qB5YyO','woXDliDCu0PCqcKuc1LChcOYL8ONDsOYKcKpwqtpw4fDlnHDjhLCtkDChSLCrAQEw4nDrcKPYUoeFg==','HcKCw7XDm8KjwpPDtsOTUChXfTbCuA==','JmsqwrvCnQ==','LMKHw5TDhcKS','asOUFsOvwpM=','w5JOw7nCmcKfwp95VA==','V8OCwoZw','chLCtgZ3C8KIwrrDt8KjwpELw4IJOcKRw4/DtsOTw5rDjMKHwocbeHx5wqfDuQ==','wrvCvcOJHsO1W3HClMKV','wqxhw6Uqw57Csw==','Jw4ICMKzwoHCmhM=','wqrCnMKQw6TDucKh','w5g8w47CsV0=','wo3CoMOp','dcOvLQ==','fcOZwotVw7U=','HcKCw7XDm8KjwpPDvMOSTTVScQ==','wrrCvsOVE8O6SQ==','RjTDkcKOwqpT','EQdo','WQgJw7bDmg==','w7YBw6zCoDTCrQ==','w6YHw77CpiQ=','YTTDksOlFV0=','w5vDoMKrwoR7w4s=','woLDkSrCrWPCrsKpOA==','w4g2TH/DmA==','cRPCpxp8EQ==','LcOzW8Oewqo=','wprCkwrDv2I=','Q8O4TMKcZWc=','w4gJwosMJ0k=','C8KCw7A=','wq1Xw5Bxwrs=','wqhdw68=','SsKTT2U=','HcKXAw==','U8OEwp16w6YO','w4XCo8ODAcO4','PcO1ScOYwrpU','WT8kw7fDnjc=','w5JOw7nCmQ==','WMOmYcK4cg==','w7IlCl9Awq4=','OcObVMOcwrQ=','w4o1wqjDo2nCgx/Cg23DvcKhw5ELwrBewrnDqw==','w6kifMOACA==','w63CmsOBw6LDhMOJ','w7onwpgSIQ==','Bwdtw7tvwoU=','YHTDsMKPfMOn','w67Dl8KyJAp8','w5dLw77CnsK7','eMO/PcOTwqE=','w4HDqCEUGA==','VcKbXFfClQ==','VE7Dq8KZVg==','fDrDvcKFwq8=','U8OzEcOwwos=','w7QGRk7Dmw==','LMOhXQ3CrsKrM8KQYMOjwrzCqMOrf8OJRcOzN1LDrHdyFcO/RnHDpw==','VHbDm2Y5','FcOmJzVD','Kjo0FMOW','wqvDtgrCo1w=','wqrDuMK0wpZ/','w5LDrQU=','w6TCpMOAH8Or','bcKJUWo=','RMO5WMKaZA==','w50RPXdn','fMKbJlnDtg==','wqtOw6I=','a8OibMKcRQ==','UsOHwolnw7EzembDiw==','w7rCkTkIOg==','wphXw75ywqQ=','w5xCw77CmsK4woU=','L8OVACt6','wqZtw6Upw6XCtcKvwps=','BcK8NG7Dmg==','w4PDrMKP','SMOowrY=','56u65Y+Y5omK6LS5','w7AKYMOEOsKSCAHCvS3DgcKiw4cUw5rDvsOU','OsO0XcOewrs=','54Oc5YaT6aKe5Y2D','GcKEw67DkcKIwo7DlsOZ','XDQ8w5rDiQ==','w4QFw5TCoB8=','w6sKCndu','wp3CgsOvNMOH','w7HCgMO5wqnCuw==','w4zDoRvCh1o/','w55+w5PClMK4','w5BDbg==','LMO5TsOZwrJLw48uXsOBw5ZWwqg=','EcK8w7XDsMKq','wpFAwq4awq8=','wrZPw5IIw78=','JmYDwo7Cmg==','OMO/SA==','w7UKesOOCQ==','PcO1WMOP','w6XChsObw6I=','w6Idd8OiPMKWCR4=','wr/DhMO2LFdtw5DDl2A=','w5bCvsOkwpvCpg==','wqNECSXDkhrDh8Kf','5ouW5Ymm6Lyl5Yem5pqt5a2r','NicvEcOQ','ChEjOcOGwrPCgMKUw7w=','w5bCiDjDsVDDscO8IRbCjMKbI8KXAMKdNsKjwqg7wobDgyTCmwvDs1fCq3XCs0QbwpTCu8KBBhYHUFsZJsOhwqkNwrwCSUvDnijDqMO3','w5UvPg==','5Y2x6IK95ay85ZyQ6aO66Zqv','5pqY5ZOs57mD57qE6Kyz6ZWe','5oqS552k6YC45Lul','5Ya15rCR5bqI6YKD5YW3','wqfCl8Kaw7HDosKgEcKOBAkjwp5EcCY0w4jDiwDCowXCokE=','wp3DuxU=','Z8OuFQ==','DMOqTw==','6ZyD5bCT5bi65b+256mi','dg7CoBtq','woRpNw==','w7fCjcOCw40=','54mX5byJ56Sf5b2p','wp9Ewoc=','56m85Y655oiG6LWE','54G/5YWH6aG15Yyq','TDLDrA==','55mq5pOt5baW57ur5p2r','wo7DqHp9wqI=','wolFExXDuA==','wpbDm05mwrQ=','w5zCp8O1HsO+','JwoIB8K8','w4Bkw6/CkMK1','fcKYw7Z6Fg==','w7J0FCFBKQ==','S8OzNcOBwrI=','QsKMCGXDgg==','V33DsA==','asK2w51QP8OHXcKe','PsKNPA==','w67DusKQ','G8Kcw7jDnA==','wofDlC3Cqkc=','6YOc6L275a2t5ZOx6K6/6K+I','w7cNasOSGsKVD0o=','e8KyMETDoA==','w7jDvsK1woBe','wr/CtyLDr38=','Q8OjbcK/Zg==','w7rDlcKNwoNC','w67DjMKSHQI=','IcK2OmnDkg==','wqNow6o+w5nClcKtwpPCjQ==','QMO5XcKAbn1xEwnDlHTDjcOZwrQZEsOBd27DkXHClsOV','w4zCpBUGJA==','w4TCuBgyNA==','w6XChcO0wr7CuAPClGdD','w5DDoQrClH8qw5TCkiYfCA==','wpjCosOPwq7CtMKULsKQXlkawoIRKDkdwok=','wrfCsjHDu3bDkS7Dq0DDmHwl','HABpw4RT','w5/Cr8ONDsOkw4Q=','wqnDgkd/wo8=','N8O/VcORwrZT','OMO7ccOfwrI=','E8OySMOiwrs=','WhPDn8OxNg==','PMOYSA==','w4bDsTfCpWg=','bcOhYMKWRQ==','woRHwqsYwow=','6K+65ay95ZO5','w5TCvMO0wpTCgw==','wrvCp8OEMcOT','5p+L556i5Lu26aKc','w6MHw73Cujg=','wr3CuC3DsnrDlg==','wpnCqRDDtEg=','w6ROw7zCuMKk','D2Rkwrc=','6KyA55e157qX5p+K','UnLDrsKkbA==','SEzDvUMgw4XDpMOs','w7ALQ0XDmQ==','KRxMw7RR','wqLDiTzCmms=','IsOyFzpK','N8OMDw==','wrLCusKGw67DqA==','TMO/A8O5woo=','w656dG7DuQ==','wqtfwpYawr0=','5q6G5b2u5oim57mm','w4kKwpYbIw==','YMKQLmrDnQ==','Qx4S','woLCocOuG8Od','6Z2p5bGB5bik5qqi5b6+','UsOYXcKGeA==','UsOHwoF3w6k=','CcOkLwVb','w7k5w6XCtVnDjMOfK38=','w78uAEpbwq9ZLsKpwr07w5UWwobCrQXDnQ==','wrbDshPCkWU=','VcOxIQ=='];(function(_0x1ca495,_0x1dc8fb){var _0x20616d=function(_0x4a2d69){while(--_0x4a2d69){_0x1ca495['push'](_0x1ca495['shift']());}};_0x20616d(++_0x1dc8fb);}(__0x6ef81,0x1c0));var _0x5e58=function(_0x42450c,_0x51d08c){_0x42450c=_0x42450c-0x0;var _0x22d7c8=__0x6ef81[_0x42450c];if(_0x5e58['initialized']===undefined){(function(){var _0x58dd20=typeof window!=='undefined'?window:typeof process==='object'&&typeof require==='function'&&typeof global==='object'?global:this;var _0x51cdbd='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x58dd20['atob']||(_0x58dd20['atob']=function(_0x3f6b77){var _0x268dac=String(_0x3f6b77)['replace'](/=+$/,'');for(var _0x5d939a=0x0,_0x55412a,_0x544bf8,_0x18e395=0x0,_0x439a17='';_0x544bf8=_0x268dac['charAt'](_0x18e395++);~_0x544bf8&&(_0x55412a=_0x5d939a%0x4?_0x55412a*0x40+_0x544bf8:_0x544bf8,_0x5d939a++%0x4)?_0x439a17+=String['fromCharCode'](0xff&_0x55412a>>(-0x2*_0x5d939a&0x6)):0x0){_0x544bf8=_0x51cdbd['indexOf'](_0x544bf8);}return _0x439a17;});}());var _0x5ce0d4=function(_0xeda8c8,_0x37939c){var _0x53de6f=[],_0x7382a5=0x0,_0x4af406,_0x5da11b='',_0x5dfa44='';_0xeda8c8=atob(_0xeda8c8);for(var _0x282e55=0x0,_0x21787f=_0xeda8c8['length'];_0x282e55<_0x21787f;_0x282e55++){_0x5dfa44+='%'+('00'+_0xeda8c8['charCodeAt'](_0x282e55)['toString'](0x10))['slice'](-0x2);}_0xeda8c8=decodeURIComponent(_0x5dfa44);for(var _0x243122=0x0;_0x243122<0x100;_0x243122++){_0x53de6f[_0x243122]=_0x243122;}for(_0x243122=0x0;_0x243122<0x100;_0x243122++){_0x7382a5=(_0x7382a5+_0x53de6f[_0x243122]+_0x37939c['charCodeAt'](_0x243122%_0x37939c['length']))%0x100;_0x4af406=_0x53de6f[_0x243122];_0x53de6f[_0x243122]=_0x53de6f[_0x7382a5];_0x53de6f[_0x7382a5]=_0x4af406;}_0x243122=0x0;_0x7382a5=0x0;for(var _0x4b4310=0x0;_0x4b4310<_0xeda8c8['length'];_0x4b4310++){_0x243122=(_0x243122+0x1)%0x100;_0x7382a5=(_0x7382a5+_0x53de6f[_0x243122])%0x100;_0x4af406=_0x53de6f[_0x243122];_0x53de6f[_0x243122]=_0x53de6f[_0x7382a5];_0x53de6f[_0x7382a5]=_0x4af406;_0x5da11b+=String['fromCharCode'](_0xeda8c8['charCodeAt'](_0x4b4310)^_0x53de6f[(_0x53de6f[_0x243122]+_0x53de6f[_0x7382a5])%0x100]);}return _0x5da11b;};_0x5e58['rc4']=_0x5ce0d4;_0x5e58['data']={};_0x5e58['initialized']=!![];}var _0x1621de=_0x5e58['data'][_0x42450c];if(_0x1621de===undefined){if(_0x5e58['once']===undefined){_0x5e58['once']=!![];}_0x22d7c8=_0x5e58['rc4'](_0x22d7c8,_0x51d08c);_0x5e58['data'][_0x42450c]=_0x22d7c8;}else{_0x22d7c8=_0x1621de;}return _0x22d7c8;};function 检测页面(){var _0x36ce24={'OyMJM':function _0x59073b(_0x539b6c,_0x5e4892){return _0x539b6c!==_0x5e4892;},'HGydp':_0x5e58('0x0','dDiO'),'idtNG':_0x5e58('0x1','*43I'),'bnCYW':function _0x20ca03(_0x5bb841,_0x4518f0){return _0x5bb841/_0x4518f0;},'xFKtf':function _0x71e02c(_0x6093c4,_0x339c25){return _0x6093c4*_0x339c25;},'UZHnm':function _0x1fa721(_0x5ee4dc,_0xd65e7){return _0x5ee4dc/_0xd65e7;},'hDEPS':function _0x241338(_0x19e095,_0x237c10){return _0x19e095(_0x237c10);},'wCMpi':_0x5e58('0x2','ApO#'),'ecOLA':_0x5e58('0x3','i^1K'),'vKcbJ':function _0x248618(_0x24574f){return _0x24574f();},'Civev':_0x5e58('0x4','chrf'),'hZDTi':function _0x4be7f2(_0x6b4e5,_0x34cce0){return _0x6b4e5(_0x34cce0);},'mmoEW':function _0x5a7722(_0x2cd138,_0x551ca0){return _0x2cd138-_0x551ca0;},'KENSd':'在直播页面','mKWbG':function _0x266697(_0x1725c9,_0x33bb6f){return _0x1725c9!=_0x33bb6f;},'gqVUz':function _0x2ca4dd(_0xee39ab,_0x57b3cc){return _0xee39ab===_0x57b3cc;},'VGRZx':_0x5e58('0x5','f3xs'),'OJGxB':_0x5e58('0x6','Y9)E'),'EVoDp':function _0x2f09ea(_0x5766a7,_0x49425d){return _0x5766a7+_0x49425d;},'MSKVd':_0x5e58('0x7','X$DD')};log(_0x5e58('0x8',']Zf['));jc=0x0;df=0x0;while(!![]){if(_0x36ce24[_0x5e58('0x9','A*M6')]('ETM',_0x36ce24[_0x5e58('0xa','GHN$')])){var _0xb31ec2=className(_0x36ce24['idtNG'])[_0x5e58('0xb','p@cE')](!![])['desc']('映客')[_0x5e58('0xc','WErm')](_0x36ce24['bnCYW'](_0x36ce24[_0x5e58('0xd','GHN$')](device[_0x5e58('0xe','0B*U')],0x3),0x4),_0x36ce24['UZHnm'](device[_0x5e58('0xf','Yb@8')]*0x3,0x4),device[_0x5e58('0x10','o1uA')],device[_0x5e58('0x11','ApO#')])[_0x5e58('0x12','A*M6')]();var _0x4e9877=_0x36ce24['hDEPS'](textContains,_0x5e58('0x13','X]ON'))[_0x5e58('0x14','xlHp')](![])[_0x5e58('0x15','3r7l')]();var _0x2b5217=text('推荐')[_0x5e58('0x16','dDiO')](![])[_0x5e58('0x17','&xi@')]();var _0x226840=text('直播')[_0x5e58('0x18','z6Qk')](_0x36ce24[_0x5e58('0x19','WV5]')])['findOnce']();if(_0xb31ec2!=null&&_0x4e9877!=null){if(_0x36ce24[_0x5e58('0x1a','#w[J')]('cRm',_0x36ce24['ecOLA'])){var _0x35c2d2=_0x36ce24['vKcbJ'](find);if(_0x35c2d2[_0x5e58('0x1b','2NCU')]<0xf){log(升级);toastLog(_0x36ce24['Civev']);_0x36ce24['hZDTi'](log,'6');back();}}else{df=_0x36ce24[_0x5e58('0x1c','W*MJ')](df,0x1);jc=0x1;_0x36ce24[_0x5e58('0x1d','&$0%')](toastLog,_0x36ce24[_0x5e58('0x1e','0B*U')]);break;}}else if(_0x36ce24[_0x5e58('0x1f','xlHp')](_0x2b5217,null)&&_0x226840!=null){if(_0x36ce24[_0x5e58('0x20',')IlH')](_0x36ce24[_0x5e58('0x21','Wked')],_0x5e58('0x22','&xi@'))){df=df-0x1;jc=0x2;toastLog(_0x36ce24['OJGxB']);break;}else{eval(_0x36ce24[_0x5e58('0x23','d]D!')](_0x5e58('0x24','C!^&'),i)+')');}}else{toastLog('异常');df=df+0x1;if(df>=0x6){jc=0x3;break;}}_0x36ce24['hZDTi'](sleep,0x3e8);}else{fhz=0x1;log(_0x36ce24[_0x5e58('0x25','%0CV')]);if(_0x36ce24[_0x5e58('0x26','X]ON')](红包,null)){if(红包!=null){红包[_0x5e58('0x27','lpp5')]();}}}}}function 识别红包(){var _0x263e2e={'TSZvY':_0x5e58('0x28','LTGd'),'RXFWt':function _0x48111e(_0x17283b,_0x2f18d9){return _0x17283b*_0x2f18d9;},'yLHcg':function _0x1694c1(_0x5a26fd,_0x2b6035){return _0x5a26fd/_0x2b6035;},'ZXjgU':function _0x19a725(_0x5b36d1,_0x514564){return _0x5b36d1(_0x514564);},'TENEX':function _0x23b388(_0x58914d,_0x2ff2ec){return _0x58914d==_0x2ff2ec;},'vfvpp':_0x5e58('0x29','lpp5'),'JCxLF':function _0x26a9df(_0x4bb183,_0x597571){return _0x4bb183===_0x597571;},'njBgq':function _0x24230e(_0xa822b5,_0xd8f614){return _0xa822b5(_0xd8f614);},'rxJJn':_0x5e58('0x2a','ApO#'),'xAJdw':function _0x27dd4a(_0x34e96a,_0x30b53f){return _0x34e96a(_0x30b53f);},'ujWHx':function _0x1dbb25(_0x5d559d,_0x4d17f5){return _0x5d559d(_0x4d17f5);},'ZNoPM':_0x5e58('0x2b','3r7l'),'xhXru':function _0x253a20(_0xed0e96,_0xcb55a4){return _0xed0e96==_0xcb55a4;},'dyaer':function _0x32be61(_0x39d4f0,_0x54161d){return _0x39d4f0<=_0x54161d;},'fgPwm':function _0x2d4705(_0x11cfe0,_0x1ffc47){return _0x11cfe0>=_0x1ffc47;},'beUjh':function _0x23e4c5(_0x3df3dd,_0x1adaaf){return _0x3df3dd!=_0x1adaaf;},'IOmfJ':function _0xd36163(_0x1dfc5d,_0x486023){return _0x1dfc5d!==_0x486023;},'mHqVp':_0x5e58('0x2c','L$Ks'),'MnENI':'https://v2-api.jsdama.com/upload','lXTyu':function _0x3d2477(_0x3c0b88,_0x11e6bb){return _0x3c0b88+_0x11e6bb;},'Bklph':'10079006','uhzpo':_0x5e58('0x2d','&$0%'),'RgyKl':function _0x1df619(_0x27b32a,_0x236207){return _0x27b32a==_0x236207;},'hNief':'10142006','hepRH':function _0x2e4a08(_0x5bb750,_0x5c2a36){return _0x5bb750<=_0x5c2a36;},'XFfjQ':function _0x5e60df(_0x55b466,_0x12de10){return _0x55b466<=_0x12de10;},'juklj':_0x5e58('0x2e','T%(3'),'FiYIE':_0x5e58('0x2f','f3xs'),'pgVwm':function _0x3b5fd2(_0xd3f292,_0xf7ec0d){return _0xd3f292==_0xf7ec0d;},'vxESY':function _0x4609ff(_0x387cc7,_0x1e54ce){return _0x387cc7+_0x1e54ce;},'uPCLz':_0x5e58('0x30','chrf'),'pBtIS':function _0x37b883(_0x2ffd7d,_0x4f6b84){return _0x2ffd7d==_0x4f6b84;},'LsRha':function _0x18c6bf(_0x4579fd,_0x34904c){return _0x4579fd(_0x34904c);}};log(_0x263e2e['TSZvY']);sbtime=0x1;fhz=0x0;minute=null;second=null;while(!![]){var _0x5bdfe3=className(_0x5e58('0x31','WV5]'))[_0x5e58('0x32',']Zf[')](':')[_0x5e58('0xb','p@cE')](![])[_0x5e58('0x33','xlHp')](_0x263e2e[_0x5e58('0x34','X]ON')](device['width'],0x2)/0x3,_0x263e2e['yLHcg'](device[_0x5e58('0x35','5u[M')]*0x2,0x3),device[_0x5e58('0x36','^A4Q')],device[_0x5e58('0x37','z%L6')])[_0x5e58('0x38','@Saf')]();if(_0x5bdfe3!=null){_0x263e2e['ZXjgU'](log,_0x5bdfe3);if(_0x263e2e[_0x5e58('0x39','%0CV')](_0x5bdfe3['parent']()[_0x5e58('0x3a','WV5]')](),_0x5e58('0x3b','z6Qk'))){红包=_0x5bdfe3[_0x5e58('0x3c','[Frg')]()['children']()['find'](clickable(!![])[_0x5e58('0x3d','#Ljn')](_0x263e2e[_0x5e58('0x3e','ApO#')]));if(_0x263e2e[_0x5e58('0x3f','X$DD')](红包[_0x5e58('0x40','3r7l')],0x1)){if(_0x263e2e[_0x5e58('0x41','A*M6')](_0x5e58('0x42','Wked'),'Lwk')){_0x263e2e[_0x5e58('0x43','zdyr')](setText,_0x263e2e[_0x5e58('0x44',')IlH')]);}else{log(红包[0x0]);var _0x4e1381=_0x5bdfe3[_0x5e58('0x45','5x%&')]();var _0x129b6c=_0x4e1381[_0x5e58('0x46','2NCU')](':');_0x263e2e['njBgq'](log,_0x129b6c);minute=_0x263e2e[_0x5e58('0x47','xlHp')](Number,_0x129b6c[0x0]);second=_0x263e2e[_0x5e58('0x48','&NFZ')](Number,_0x129b6c[0x1]);_0x263e2e[_0x5e58('0x49','@Saf')](log,minute);log(second);if(isNaN(second)==![]&&_0x263e2e['ujWHx'](isNaN,minute)==![]){if(_0x263e2e[_0x5e58('0x4a','*43I')]!==_0x5e58('0x4b','f3xs')){if(_0x263e2e[_0x5e58('0x4c','chrf')](minute,0x0)&&_0x263e2e[_0x5e58('0x4d','ppdB')](second,0x3c)&&_0x263e2e['fgPwm'](second,0x1)){if('CRO'==='CRO'){fhz=0x1;log(_0x5e58('0x4e','Yb@8'));if(_0x263e2e[_0x5e58('0x4f','L$Ks')](红包,null)){if(_0x263e2e[_0x5e58('0x50','i^1K')](_0x263e2e[_0x5e58('0x51','zdyr')],_0x263e2e[_0x5e58('0x52','xlHp')])){var _0x93398=_0x5e58('0x53','[Frg')[_0x5e58('0x54','L$Ks')]('|'),_0x179919=0x0;while(!![]){switch(_0x93398[_0x179919++]){case'0':if('0'==p){return{'code':p,'msg':m,'data':{'res':d[_0x5e58('0x55','xlHp')]['recognition']}};}continue;case'1':try{n=http[_0x5e58('0x56','z6Qk')](_0x263e2e[_0x5e58('0x57','ygwV')],{'softwareId':0x45ac,'softwareSecret':'B0Z4bMfuXGvmtwimwC5m5rkFXgaWU3yoo3c2ghug','username':username,'password':password,'captchaData':_0x38e683,'captchaType':0x51e,'captchaMinLength':0x0,'captchaMaxLength':0x0,'workerTipsId':0x0},{'headers':{'User-Agent':_0x263e2e['lXTyu'](_0x263e2e['lXTyu'](_0x5e58('0x58','GHN$')+_0x43260a+';\x20'+_0x243a4c,_0x5e58('0x59','5x%&')),_0x1d6624)+_0x5e58('0x5a',']Zf[')}});}catch(_0xc76558){return{'code':'-1','msg':'网络链接超时...','data':{}};}continue;case'2':if(_0x263e2e['xhXru'](_0x263e2e['Bklph'],p))return{'code':p,'msg':m,'data':{}};continue;case'3':var _0x38e683=images[_0x5e58('0x5b','#w[J')](img,format='png'),_0x43260a=device['release'],_0x243a4c=device[_0x5e58('0x5c','T%(3')],_0x1d6624=device[_0x5e58('0x5d','WErm')];continue;case'4':if(_0x5e58('0x5e','ppdB')==p)return{'code':p,'msg':m,'data':{}};continue;case'5':if(_0x5e58('0x5f','p@cE')==p)return{'code':p,'msg':m,'data':{}};continue;case'6':return d;case'7':http[_0x5e58('0x60','Yb@8')][_0x5e58('0x61','3r7l')](0x7530);continue;case'8':if(_0x263e2e['uhzpo']==p)return{'code':p,'msg':m,'data':{}};continue;case'9':d=n[_0x5e58('0x62','C!^&')][_0x5e58('0x63','5x%&')](),p=d[_0x5e58('0x64','3r7l')],m=d[_0x5e58('0x65','[Frg')];continue;case'10':if(_0x263e2e[_0x5e58('0x66','W*MJ')](_0x263e2e['hNief'],p))return{'code':p,'msg':m,'data':{}};continue;}break;}}else{红包[_0x5e58('0x67',']Zf[')]();}}}else{return{'code':p,'msg':m,'data':{'res':d[_0x5e58('0x68','i^1K')]['recognition']}};}}else if(_0x263e2e['hepRH'](0x1,minute)&&minute<=0x4&&0x0<=second&&_0x263e2e[_0x5e58('0x69','X$DD')](second,0x3c)){fhz=0x1;_0x263e2e['ujWHx'](log,_0x5e58('0x6a','o1uA'));if(红包!=null){if(_0x263e2e[_0x5e58('0x6b','Wked')](红包,null)){红包[_0x5e58('0x6c','o1uA')]();}}}else{log(_0x263e2e[_0x5e58('0x6d','A*M6')]);fhz=0x0;}break;}else{var _0x3ec38e=className(_0x263e2e[_0x5e58('0x6e','T%(3')])['clickable'](![])[_0x5e58('0x6f','z%L6')](_0x5e58('0x70','Us6N'))[_0x5e58('0x71','5x%&')]();if(_0x3ec38e!=null){v=Number(_0x3ec38e[_0x5e58('0x72','A*M6')]());if(_0x263e2e['pgVwm'](_0x263e2e[_0x5e58('0x73',')IlH')](isNaN,v),![])){vv=vv+v;log(_0x263e2e['lXTyu'](_0x263e2e[_0x5e58('0x74',']Zf[')](_0x263e2e[_0x5e58('0x75','z%L6')],vv),'钻石'));}}sleep(0x3e8);}}}}else if(_0x263e2e[_0x5e58('0x76','L$Ks')](isNaN(second),!![])||_0x263e2e['LsRha'](isNaN,minute)==!![]){break;}}}else{sbtime++;if(sbtime>0x2){fhz=0x0;break;}}}}function 抢红包(){var _0x215442={'VQPrs':function _0x2b2d49(_0x16395e,_0x3b5775){return _0x16395e(_0x3b5775);},'BkZaW':function _0x185543(_0x14b3a0,_0x35277e){return _0x14b3a0===_0x35277e;},'lXGwU':'cUd','uPjvq':function _0x305f88(_0x27a2e7,_0x596d7b){return _0x27a2e7(_0x596d7b);},'AwcRe':function _0xc62c6f(_0x30cbd9){return _0x30cbd9();},'QvYzD':function _0x229546(_0x35a8d6,_0x57d64a){return _0x35a8d6!=_0x57d64a;},'DRtQA':'euE','kOiFU':function _0x28b985(_0x362f75,_0x162fd3){return _0x362f75(_0x162fd3);},'vCThA':function _0x35ed19(_0x1c1af9,_0x3e8217){return _0x1c1af9-_0x3e8217;},'DtLFZ':'截图滑块','nomjT':_0x5e58('0x77','f3xs'),'jsUYo':function _0x58e0ad(_0x959302,_0x37080a){return _0x959302!==_0x37080a;},'vDMOK':_0x5e58('0x78','X]ON'),'jjHNk':function _0x37018d(_0x1c1afc,_0x112845){return _0x1c1afc(_0x112845);},'SEszE':function _0x399a62(_0x5a543a,_0x109d01){return _0x5a543a(_0x109d01);},'aErCt':function _0x51630f(_0x53b7a3,_0x1a44be){return _0x53b7a3==_0x1a44be;},'gndEw':function _0x9270ac(_0x4a9c45,_0x47d434){return _0x4a9c45(_0x47d434);},'jvbPL':function _0x505bd9(_0x53c81a,_0x480c32){return _0x53c81a/_0x480c32;},'vEWsO':function _0x2a1089(_0x421b94,_0x379ecb){return _0x421b94/_0x379ecb;},'klrXC':function _0x24c2cb(_0x3b7a64,_0x5d9103){return _0x3b7a64+_0x5d9103;},'adnZr':function _0x2e64bd(_0x56d266,_0x5adfc5){return _0x56d266*_0x5adfc5;},'prWmL':_0x5e58('0x79','C!^&'),'mzUbz':function _0x14e4d9(_0x5a20ec,_0x9e3d06){return _0x5a20ec<=_0x9e3d06;},'LSIZb':_0x5e58('0x7a','f3xs'),'IIpuc':function _0x35ddc7(_0x1c0079,_0xfebe5b){return _0x1c0079==_0xfebe5b;},'lfZFg':function _0x1192cd(_0x356d98,_0x3bedee){return _0x356d98(_0x3bedee);},'ZDRmw':function _0x304e81(_0x184352){return _0x184352();},'laBLe':'dHL','OIhLs':function _0x1201f1(_0x96d789,_0xefcc58){return _0x96d789>_0xefcc58;},'LGfFi':function _0x51eeb8(_0x46adc1,_0x3a42ce){return _0x46adc1>=_0x3a42ce;},'xmjOZ':_0x5e58('0x7b','#Ljn'),'lHEPK':function _0x437f71(_0x2632e2,_0x2beaa5){return _0x2632e2(_0x2beaa5);},'hmopl':function _0x1cdba4(_0x2ee374,_0x2df4b4){return _0x2ee374>=_0x2df4b4;},'KILbS':function _0x5ef2bf(_0xb2bfe1,_0x255ad2,_0x1083c2,_0x1f17fd,_0x12baf0,_0x3ee986){return _0xb2bfe1(_0x255ad2,_0x1083c2,_0x1f17fd,_0x12baf0,_0x3ee986);},'IviLu':function _0x4e1179(_0xa8e5e6,_0xa4d588,_0x2db7c0){return _0xa8e5e6(_0xa4d588,_0x2db7c0);},'ilqGf':function _0x15acc8(_0x5c4516,_0x495bae){return _0x5c4516(_0x495bae);},'GznvO':function _0x433198(_0x577b3e,_0x1fb27c){return _0x577b3e(_0x1fb27c);},'jkWJX':'taN','mrOpc':function _0x50ec54(_0xb6c35,_0x38d22b){return _0xb6c35(_0x38d22b);},'ZGKLr':_0x5e58('0x7c','zdyr'),'uYtlW':function _0x4f0309(_0x58b710,_0x30b152){return _0x58b710(_0x30b152);},'MnmIU':_0x5e58('0x7d','d]D!'),'CFXLJ':'手速太快','kZZiI':'ByB','NgbFJ':_0x5e58('0x7e','xlHp'),'Gyavk':function _0x382143(_0x2bd213,_0x3aa25e){return _0x2bd213(_0x3aa25e);},'eaAwf':'android.view.View','ZhXIZ':_0x5e58('0x7f','Yb@8'),'AQYre':function _0x3f6b75(_0x50634b,_0x3ee4f1){return _0x50634b+_0x3ee4f1;},'jyZhY':_0x5e58('0x80','%0CV'),'cnzKZ':function _0x318a23(_0x4f600e,_0x16f2ae){return _0x4f600e(_0x16f2ae);},'XsDzM':function _0x2cc8b4(_0x58f425,_0x5b3bde){return _0x58f425==_0x5b3bde;},'jjpoX':function _0x4122ff(_0x2ef0f1,_0x599690){return _0x2ef0f1>=_0x599690;},'wISRA':function _0x485521(_0x1bbbff,_0x554332,_0x33f456){return _0x1bbbff(_0x554332,_0x33f456);},'UVkbM':function _0x2b000a(_0x211d16,_0x1a4cd1){return _0x211d16!=_0x1a4cd1;},'QRHCo':_0x5e58('0x81','L$Ks'),'kxfpb':function _0x4fb406(_0xe28366,_0x251fb9){return _0xe28366===_0x251fb9;},'aAdFu':_0x5e58('0x82','p^1b'),'SEEnT':_0x5e58('0x83','LTGd'),'WHvVf':function _0x3f36b0(_0x92e0d9,_0x372998){return _0x92e0d9===_0x372998;},'bNOes':_0x5e58('0x84','$Jkv'),'sHpRv':function _0x1b87cf(_0x4e4ed0){return _0x4e4ed0();},'sqfEn':function _0x5070c8(_0x2e7670,_0x1d81e9){return _0x2e7670!==_0x1d81e9;},'ikBKm':'kzj','UpzIv':function _0x2dfb78(_0x258e17,_0x197c06){return _0x258e17-_0x197c06;},'ZJjtP':function _0x566693(_0x55d7e7,_0xde9319){return _0x55d7e7-_0xde9319;},'xvbxA':function _0x253e25(_0x39aa7d,_0x4b4f5f){return _0x39aa7d-_0x4b4f5f;},'Qzvcp':function _0x1eb597(_0x985434,_0x4e03b4){return _0x985434*_0x4e03b4;},'Hciys':function _0x5d7576(_0x19cced,_0x3a9ac3){return _0x19cced+_0x3a9ac3;},'psreZ':function _0x58e3ae(_0x2f97be,_0x39e3d0){return _0x2f97be+_0x39e3d0;},'flxbi':function _0x319a20(_0x1ce7ef,_0x246156){return _0x1ce7ef*_0x246156;},'swkEN':function _0x2fcd99(_0x3e8930,_0x54cb37){return _0x3e8930(_0x54cb37);},'BLCte':_0x5e58('0x85','X]ON'),'tvsli':function _0x29f246(_0xd09ac,_0x4c32c2){return _0xd09ac+_0x4c32c2;},'XXoFQ':function _0x2e5a38(_0x17a409,_0x5e4f16){return _0x17a409(_0x5e4f16);},'wqSFw':_0x5e58('0x86','$Jkv'),'zAHeH':function _0x43566d(_0x585903,_0x1d31de){return _0x585903==_0x1d31de;},'jcmsE':_0x5e58('0x87','zdyr'),'rKvyK':function _0x1d8e2e(_0x4401c0,_0x1f0b30,_0x5501b4){return _0x4401c0(_0x1f0b30,_0x5501b4);},'IpOhy':function _0x4dde87(_0x2a6010,_0x2c7e7d){return _0x2a6010==_0x2c7e7d;},'BtTiq':_0x5e58('0x88','ztib'),'nfINN':_0x5e58('0x89','*43I'),'InxFU':_0x5e58('0x8a','#w[J'),'fmglN':function _0x3afb81(_0x42d956,_0x2f6452){return _0x42d956(_0x2f6452);},'DYZvO':function _0x5ad826(_0x53eeb2,_0x380640){return _0x53eeb2==_0x380640;},'SPPEy':function _0x4536c8(_0x106e9b,_0x8f0a21){return _0x106e9b(_0x8f0a21);},'Cnqxp':function _0x5e5ce6(_0xc03578,_0x11e221){return _0xc03578(_0x11e221);},'WnROF':function _0x1079e8(_0x567e0d,_0x34a3d0){return _0x567e0d*_0x34a3d0;},'YyObA':function _0x43c9dc(_0x1a9d71,_0x2056b9){return _0x1a9d71<_0x2056b9;},'rBMhs':function _0x440cfe(_0xf71df2,_0x4381cc){return _0xf71df2+_0x4381cc;},'JXbuf':function _0x1cba27(_0x264361,_0x30f6e0){return _0x264361<=_0x30f6e0;},'UJoiQ':_0x5e58('0x8b','LTGd'),'sOgxR':function _0x25b937(_0x4d8f51,_0x181712){return _0x4d8f51!=_0x181712;},'PFkUc':_0x5e58('0x8c','&xi@'),'kKXMQ':'请求参数错误','QguPI':function _0x3282cf(_0x301310,_0xe9a392){return _0x301310!=_0xe9a392;},'srcEW':_0x5e58('0x8d','Yb@8'),'fOVoV':_0x5e58('0x8e','#Ljn'),'hOKrl':function _0x311257(_0x5d110a,_0x358e02){return _0x5d110a(_0x358e02);},'HUrVB':function _0x452403(_0x26bd91,_0x41e93e){return _0x26bd91(_0x41e93e);},'WamhM':function _0x869ab8(_0x339d2d,_0x5632de){return _0x339d2d(_0x5632de);},'bFarr':'^[1-9][0-9]{0,1}$','JbJLv':'CMY','GJpXH':_0x5e58('0x8f','f3xs'),'IQTmn':function _0x32459a(_0x5be27b,_0x51cdc4){return _0x5be27b(_0x51cdc4);},'tRDRS':'end','SfHql':function _0x540be4(_0x37bc2b,_0x87a5a9){return _0x37bc2b(_0x87a5a9);},'hiMVB':function _0x17a121(_0x4ef676,_0x1503fb){return _0x4ef676+_0x1503fb;},'slrii':function _0x2056b5(_0xd06c86,_0x23210b){return _0xd06c86(_0x23210b);},'lWIpI':'66666666','LdPMp':function _0x3eac30(_0x31fb8f,_0x2c5f5a){return _0x31fb8f==_0x2c5f5a;},'blUGF':function _0x20d7b8(_0x339ce3,_0x4d095e){return _0x339ce3(_0x4d095e);},'rYFbk':_0x5e58('0x90','chrf'),'WHIiA':_0x5e58('0x91','o1uA'),'sWZPX':function _0x1bd268(_0x504264,_0x3a5f90){return _0x504264(_0x3a5f90);},'YYZic':function _0xfe0d69(_0x5f0f3d,_0xb2f01){return _0x5f0f3d!=_0xb2f01;},'pcNoH':function _0x4120db(_0x3c5a4e,_0x4e5f1b){return _0x3c5a4e==_0x4e5f1b;},'oMJbV':function _0xb5bb1b(_0x117227,_0x36d032){return _0x117227!==_0x36d032;},'HFups':_0x5e58('0x92','0B*U'),'TgLGR':_0x5e58('0x93','$Jkv'),'rdKyJ':function _0x2bfcf3(_0x3b58ab,_0x19ac12){return _0x3b58ab(_0x19ac12);}};_0x215442['VQPrs'](log,_0x5e58('0x94','p^1b')+swith);if(swith==0x0){if(_0x215442[_0x5e58('0x95','chrf')]('cUd',_0x215442['lXGwU'])){while(!![]){var _0x591df0=textContains(_0x5e58('0x96',']Zf['))[_0x5e58('0x97','&NFZ')]('红包')[_0x5e58('0x98','zdyr')]();var _0x4b20cf=_0x215442[_0x5e58('0x99','T%(3')](descContains,'发了一个')['descContains']('红包')['findOnce']();if(_0x591df0!=null){swith=0x1;break;}if(_0x4b20cf!=null){swith=0x2;break;}sleep(0x3e8);}}else{var _0x322d0f=packageName('com.meelive.ingkee')[_0x5e58('0x9a','f3xs')]();if(_0x322d0f!=null){_0x215442[_0x5e58('0x9b','z6Qk')](back);}sleep(0x7d0);var _0x40f683=_0x215442['uPjvq'](textContains,'离开')['clickable'](!![])[_0x5e58('0x9c','Us6N')]();if(_0x215442[_0x5e58('0x9d','LTGd')](_0x40f683,null)){_0x40f683[_0x5e58('0x9e','T%(3')]();}}}if(swith==0x1){if(_0x215442[_0x5e58('0x9f','#w[J')]!==_0x215442['DRtQA']){_0x215442[_0x5e58('0xa0','z%L6')](log,子滑块[_0x5e58('0xa1','o1uA')]());var _0x43aec8=子滑块[_0x5e58('0xa2','GHN$')]();var _0x53ca81=_0x43aec8[_0x5e58('0xa3','&xi@')]()[_0x5e58('0xa4','i^1K')];var _0x37be22=_0x43aec8[_0x5e58('0xa5','p@cE')]()[_0x5e58('0xa6','d]D!')];var _0x426bee=_0x43aec8[_0x5e58('0xa7','A*M6')]()[_0x5e58('0xa8','xlHp')]-_0x43aec8[_0x5e58('0xa9','f3xs')]()['left'];var _0x2c50ca=_0x215442[_0x5e58('0xaa','X]ON')](_0x43aec8[_0x5e58('0xab','z%L6')]()[_0x5e58('0xac','$Jkv')],_0x43aec8[_0x5e58('0xad','Yb@8')]()[_0x5e58('0xae','$Jkv')]);_0x215442[_0x5e58('0xaf','&xi@')](log,_0x215442['DtLFZ']);img111=images[_0x5e58('0xb0','5u[M')](captureScreen(),0x0,_0x37be22,_0x426bee,_0x2c50ca);_0x215442['kOiFU'](log,'截图滑块完成');}else{var _0x3136cd=_0x215442[_0x5e58('0xb1','ppdB')][_0x5e58('0xb2','ppdB')]('|'),_0x5a719d=0x0;while(!![]){switch(_0x3136cd[_0x5a719d++]){case'0':if(open==0x1){if(_0x215442[_0x5e58('0xb3','i^1K')](_0x215442[_0x5e58('0xb4','5x%&')],_0x215442['vDMOK'])){_0x215442['jjHNk'](log,_0x31bbad);_0x31bbad[_0x5e58('0xb5','o1uA')]();}else{jk=0x1;while(!![]){var _0x1a28c2=_0x215442[_0x5e58('0xb6','A*M6')](textContains,':')[_0x5e58('0xb7','ztib')](_0x5e58('0xb8','W*MJ'))[_0x5e58('0xb9','WV5]')]();var _0x432df9=text('抢')[_0x5e58('0xba','0B*U')](![])[_0x5e58('0x12','A*M6')]();if(_0x432df9!=null){if(_0x5e58('0xbb','*43I')!==_0x5e58('0xbc','%0CV')){jk=0x1;break;}else{log(_0x31bbad);_0x31bbad[_0x5e58('0xbd','L$Ks')]();}}if(_0x215442[_0x5e58('0xbe','ztib')](_0x1a28c2,null)){jk=0x1;var _0x31bbad=_0x1a28c2['text']();var _0x1c751d=_0x31bbad[_0x5e58('0xbf','&NFZ')](':');log(_0x1c751d);minute=_0x215442['SEszE'](Number,_0x1c751d[0x0]);second=Number(_0x1c751d[0x1]);if(_0x215442[_0x5e58('0xc0','zdyr')](isNaN(second),![])&&_0x215442[_0x5e58('0xc1',')IlH')](isNaN(minute),![])){if(_0x215442[_0x5e58('0xc2','Yb@8')](_0x5e58('0xc3','d]D!'),_0x5e58('0xc4','A*M6'))){var _0x26ed70=_0x215442[_0x5e58('0xc5','dDiO')](text,'发现')[_0x5e58('0xc6','Us6N')](0x0,0x0,_0x215442[_0x5e58('0xc7','*43I')](device[_0x5e58('0xc8','p^1b')],1.5),_0x215442[_0x5e58('0xc9','d]D!')](device['height'],0x8))[_0x5e58('0xca','*43I')]();if(_0x215442['QvYzD'](_0x26ed70,null)){var _0x5b3110=_0x26ed70[_0x5e58('0xcb','WV5]')]();if(_0x5b3110!=null){_0x5b3110[_0x5e58('0xcc','#Ljn')]();_0x5b3110['click']();}}}else{i=0x1;toastLog(_0x215442[_0x5e58('0xcd','#w[J')]('还有'+(_0x215442[_0x5e58('0xce','L$Ks')](minute,0x3c)+second),_0x215442[_0x5e58('0xcf','$Jkv')]));if(_0x215442[_0x5e58('0xd0','WErm')](minute*0x3c,second)<0x14){if(_0x215442[_0x5e58('0xd1','ztib')](second,0xe)){timel=0x0;}toastLog(_0x215442[_0x5e58('0xd2','WV5]')]);break;}}}else if(isNaN(second)==!![]||_0x215442[_0x5e58('0xd3','lpp5')](isNaN(minute),!![])){i++;if(i>0x3){fhz=0x0;break;}}}else{if(_0x215442[_0x5e58('0xd4','o1uA')](_0x5e58('0xd5','X]ON'),'RnD')){_0x215442['lfZFg'](log,狠心离开);log('5');_0x215442['ZDRmw'](back);}else{jk++;if(jk>0x3){log('2');back();break;}}}sleep(0xfa0);}if(jk<=0x3){if(_0x215442['laBLe']!=='dHL'){if(_0x215442[_0x5e58('0xd6','ztib')](IntTime(),ntime)){return!![];}else{return![];}}else{if(_0x215442[_0x5e58('0xd7','W*MJ')](second,0x4)){if(_0x5e58('0xd8','W*MJ')===_0x215442[_0x5e58('0xd9','C!^&')]){sleep(_0x215442['vCThA'](second,0x4)*0x44c);}else{var _0x488ec3=_0x5e58('0xda','Yb@8')[_0x5e58('0xdb','X]ON')]('|'),_0x895f7f=0x0;while(!![]){switch(_0x488ec3[_0x895f7f++]){case'0':log(_0x23be51);continue;case'1':log(_0x216968);continue;case'2':_0x215442[_0x5e58('0xdc','C!^&')](toastLog,_0x5e58('0xdd','C!^&'));continue;case'3':if(_0x215442[_0x5e58('0xde','5u[M')](device['sdkInt'],0x18)){_0x215442['KILbS'](sml_move,_0x23be51,heights,_0x216968,heights,random(0x320,0x640));}else if(device[_0x5e58('0xdf','ppdB')]<0x18){Swipe(_0x23be51,heights,_0x216968,heights,_0x215442[_0x5e58('0xe0','lpp5')](random,0x320,0x640));}continue;case'4':var _0x216968=_0x215442[_0x5e58('0xe1','%0CV')](parseInt,result['split']('|')[0x1][_0x5e58('0xe2','xlHp')](',')[0x0]);continue;case'5':var _0x23be51=parseInt(result[_0x5e58('0xe3','3r7l')]('|')[0x0][_0x5e58('0xe4','p@cE')](',')[0x0]);continue;}break;}}}var _0x432df9=_0x215442[_0x5e58('0xe5','z%L6')](className,_0x5e58('0xe6','#Ljn'))[_0x5e58('0xe7',')IlH')](!![])['boundsInside'](_0x4f35e2['bounds']()[_0x5e58('0xe8','#w[J')],_0x4f35e2[_0x5e58('0xe9','o1uA')]()['top'],_0x4f35e2['bounds']()[_0x5e58('0xea','3r7l')],device['height'])[_0x5e58('0xeb','zdyr')](0x1f40);if(_0x432df9!=null){log('抢');_0x432df9['click']();_0x215442['GznvO'](sleep,0xbb8);}r=0x0;while(!![]){if(_0x215442['jsUYo'](_0x215442[_0x5e58('0xec','&xi@')],_0x5e58('0xed','WV5]'))){_0x215442[_0x5e58('0xee','p@cE')](抢红包);}else{var _0x1c3170=_0x215442[_0x5e58('0xef','d]D!')](textContains,_0x5e58('0xf0','C!^&'))[_0x5e58('0xf1','5u[M')]();var _0x317527=textContains(_0x215442[_0x5e58('0xf2','#Ljn')])[_0x5e58('0xf3','ygwV')]();var _0x207943=_0x215442['uYtlW'](textContains,_0x215442[_0x5e58('0xf4','p@cE')])[_0x5e58('0xf5','o1uA')]();var _0x139922=textContains(_0x5e58('0xf6','0B*U'))['findOnce']();var _0x3e16d4=textContains(_0x215442[_0x5e58('0xf7','f3xs')])[_0x5e58('0xca','*43I')]();if(_0x1c3170!=null||_0x317527!=null||_0x207943!=null||_0x139922!=null||_0x3e16d4!=null){if('Zlh'==='Zlh'){r=0xa;log(_0x1c3170);log(_0x317527);log(_0x207943);log(_0x139922);log(_0x3e16d4);if(_0x215442['QvYzD'](_0x317527,null)){if(_0x215442['jsUYo'](_0x215442['kZZiI'],_0x215442[_0x5e58('0xf8','L$Ks')])){var _0x5f9e36=_0x215442[_0x5e58('0xf9','WV5]')](className,_0x215442[_0x5e58('0xfa','@Saf')])[_0x5e58('0xfb','X$DD')](![])[_0x5e58('0xfc','d]D!')](_0x5e58('0xfd','Wked'))[_0x5e58('0xfe','X]ON')]();if(_0x5f9e36!=null){if(_0x215442['ZhXIZ']===_0x5e58('0xff',')IlH')){v=Number(_0x5f9e36['text']());if(_0x215442[_0x5e58('0x100','WErm')](isNaN,v)==![]){vv=vv+v;_0x215442[_0x5e58('0x101','ApO#')](log,_0x215442['AQYre']('已抢:'+vv,'钻石'));}}else{zymp[_0x5e58('0x102','ppdB')]();zymp[_0x5e58('0x103','&NFZ')]();}}sleep(0x3e8);}else{return{'code':'-1','msg':_0x215442['jyZhY'],'data':{}};}}_0x215442['Gyavk'](log,'3,1');_0x215442[_0x5e58('0x104','z%L6')](sleep,0x3e8);_0x215442[_0x5e58('0x105','ztib')](back);}else{open=0x1;}}if(r>0x9){if(_0x1c3170==null&&_0x215442[_0x5e58('0x106','@Saf')](_0x317527,null)&&_0x215442['XsDzM'](_0x207943,null)&&_0x215442[_0x5e58('0x107',')IlH')](_0x139922,null)&&_0x3e16d4==null){if('Rup'===_0x5e58('0x108','T%(3')){if(result[_0x5e58('0x109','chrf')]('|')!=-0x1){var _0x1c370b=parseInt(result[_0x5e58('0x10a','@Saf')]('|')[0x0]['split'](',')[0x0]);var _0x31dd09=_0x215442[_0x5e58('0x10b','lpp5')](parseInt,result[_0x5e58('0x10c','z6Qk')]('|')[0x1][_0x5e58('0x10d','o1uA')](',')[0x0]);_0x215442['cnzKZ'](log,_0x1c370b);_0x215442['cnzKZ'](log,_0x31dd09);toastLog(_0x5e58('0x10e','WV5]'));if(_0x215442[_0x5e58('0x10f','5x%&')](device[_0x5e58('0x110','WV5]')],0x18)){_0x215442[_0x5e58('0x111','#w[J')](sml_move,_0x1c370b,heights,_0x31dd09,heights,_0x215442['wISRA'](random,0x320,0x640));}else if(device['sdkInt']<0x18){Swipe(_0x1c370b,heights,_0x31dd09,heights,random(0x320,0x640));}}}else{break;}}}var _0x55a4a3=_0x215442['cnzKZ'](textContains,_0x5e58('0x90','chrf'))['findOnce']();if(_0x215442[_0x5e58('0x112','p@cE')](_0x55a4a3,null)){if(_0x215442['QRHCo']!==_0x5e58('0x113','^A4Q')){uo=0x1;while(!![]){if(_0x215442[_0x5e58('0x114','lpp5')](_0x215442['aAdFu'],_0x215442['SEEnT'])){关注[_0x5e58('0x102','ppdB')]();}else{toastLog(_0x5e58('0x115','Yb@8'));var _0x55a4a3=_0x215442[_0x5e58('0x116','W*MJ')](textContains,_0x5e58('0x117','z%L6'))[_0x5e58('0x118','lpp5')]();if(_0x55a4a3!=null){if(_0x215442['WHvVf'](_0x215442['bNOes'],_0x215442['bNOes'])){_0x215442[_0x5e58('0x119','GHN$')](联众滑块);}else{_0x215442['cnzKZ'](log,直播p);直播p['click']();}}else if(_0x215442[_0x5e58('0x11a','^A4Q')](_0x55a4a3,null)){if(_0x215442[_0x5e58('0x11b','X$DD')](_0x215442[_0x5e58('0x11c',']Zf[')],_0x5e58('0x11d',')IlH'))){break;}else{cx=_0x215442['adnZr'](0x3,cp[0x1]['x']-cp[0x0]['x']);bx=0x3*(cp[0x2]['x']-cp[0x1]['x'])-cx;ax=_0x215442[_0x5e58('0x11e','&xi@')](_0x215442[_0x5e58('0x11f','$Jkv')](_0x215442[_0x5e58('0x120','C!^&')](cp[0x3]['x'],cp[0x0]['x']),cx),bx);cy=_0x215442[_0x5e58('0x121','chrf')](0x3,cp[0x1]['y']-cp[0x0]['y']);by=_0x215442[_0x5e58('0x122','5u[M')](0x3*(cp[0x2]['y']-cp[0x1]['y']),cy);ay=_0x215442[_0x5e58('0x123','p^1b')](cp[0x3]['y']-cp[0x0]['y']-cy,by);tSquared=_0x215442[_0x5e58('0x124','ygwV')](t,t);tCubed=_0x215442['Qzvcp'](tSquared,t);result={'x':0x0,'y':0x0};result['x']=_0x215442['Hciys'](ax*tCubed+_0x215442['Qzvcp'](bx,tSquared),_0x215442[_0x5e58('0x125','5x%&')](cx,t))+cp[0x0]['x'];result['y']=_0x215442['psreZ'](ay*tCubed+_0x215442[_0x5e58('0x126','*43I')](by,tSquared)+cy*t,cp[0x0]['y']);return result;}}sleep(0x1388);}}}else{var _0x184756=_0x215442[_0x5e58('0x127','p^1b')](text,_0x215442['BLCte'])[_0x5e58('0x128','&xi@')](!![])['findOnce']();if(_0x184756!=null){_0x184756[_0x5e58('0x129','@Saf')]();}}}r=_0x215442[_0x5e58('0x12a','2NCU')](r,0x1);_0x215442['swkEN'](sleep,0x3e8);}}}}}}continue;case'1':if(_0x4f35e2!=null){open=0x1;}else if(_0x4f35e2==null){open=0x0;}continue;case'2':timel=0x1;continue;case'3':var _0x4f35e2=_0x215442[_0x5e58('0x12b','GHN$')](textContains,_0x215442[_0x5e58('0x12c','%0CV')])[_0x5e58('0x12d','zdyr')]('红包')[_0x5e58('0x12e','dDiO')](0x1f40);continue;case'4':i=0x1;continue;}break;}}}else if(_0x215442['zAHeH'](swith,0x2)){if(_0x215442['jcmsE']!==_0x5e58('0x12f','d]D!')){var _0x5757ab=descContains(_0x215442[_0x5e58('0x130','$Jkv')])[_0x5e58('0x131','2NCU')]('红包')[_0x5e58('0x132','W*MJ')](0x1f40);if(_0x5757ab!=null){if(_0x5e58('0x133','LTGd')!==_0x5e58('0x134','T%(3')){gz=_0x215442[_0x5e58('0x135','2NCU')](random,0x1,0xb4);_0x215442[_0x5e58('0x136','0B*U')](log,gz+_0x5e58('0x137','5x%&'));if(_0x215442[_0x5e58('0x138','ztib')](gz,0xaf)){var _0x118852='2|4|1|0|3'[_0x5e58('0x139','ApO#')]('|'),_0xe956=0x0;while(!![]){switch(_0x118852[_0xe956++]){case'0':sleep(0x7d0);continue;case'1':var _0x52c156=_0x215442[_0x5e58('0x13a','z%L6')](className,'android.widget.TextView')[_0x5e58('0x13b','L$Ks')]('关注')[_0x5e58('0x13c','#Ljn')](!![])[_0x5e58('0x13d','ppdB')](!![])[_0x5e58('0x13e','X$DD')](0x0,0x0,device[_0x5e58('0x13f','f3xs')]/0x2,device[_0x5e58('0x140','p@cE')]/0xa)['findOnce']();continue;case'2':_0x215442[_0x5e58('0x141','%0CV')](检测页面);continue;case'3':if(_0x52c156!=null){_0x52c156['click']();}continue;case'4':页面操作();continue;}break;}}}else{open=0x1;}}else if(_0x215442['IpOhy'](_0x5757ab,null)){open=0x0;}i=0x1;timel=0x1;if(_0x215442[_0x5e58('0x142','T%(3')](open,0x1)){if(_0x215442[_0x5e58('0x143','lpp5')](_0x215442[_0x5e58('0x144','5u[M')],_0x5e58('0x145','3r7l'))){jk=0x1;while(!![]){if(_0x215442[_0x5e58('0x146','L$Ks')]!==_0x215442[_0x5e58('0x147','Yb@8')]){var _0x3ebbe9=_0x215442[_0x5e58('0x148','Us6N')](descContains,':')[_0x5e58('0x149','zdyr')](_0x215442['eaAwf'])['findOnce']();var _0xa05627=_0x215442[_0x5e58('0x14a','L$Ks')](desc,'抢')['clickable'](![])[_0x5e58('0x15','3r7l')]();if(_0xa05627!=null){jk=0x1;break;}if(_0x215442[_0x5e58('0x112','p@cE')](_0x3ebbe9,null)){jk=0x1;var _0x5aeb77=_0x3ebbe9[_0x5e58('0x14b','3r7l')]();var _0x47f333=_0x5aeb77['split'](':');_0x215442[_0x5e58('0x14c','ygwV')](log,_0x47f333);minute=_0x215442['fmglN'](Number,_0x47f333[0x0]);second=Number(_0x47f333[0x1]);if(_0x215442['DYZvO'](_0x215442[_0x5e58('0x14d','zdyr')](isNaN,second),![])&&_0x215442['Cnqxp'](isNaN,minute)==![]){i=0x1;_0x215442[_0x5e58('0x14e','%0CV')](toastLog,_0x215442[_0x5e58('0x14f','&NFZ')]('还有',_0x215442[_0x5e58('0x150','2NCU')](minute,0x3c)+second)+_0x5e58('0x151','X$DD'));if(_0x215442[_0x5e58('0x152','X$DD')](_0x215442[_0x5e58('0x153','W*MJ')](minute*0x3c,second),0x14)){if(_0x215442[_0x5e58('0x154','o1uA')](second,0xe)){timel=0x0;}_0x215442[_0x5e58('0x155','5x%&')](toastLog,_0x215442[_0x5e58('0x156','%0CV')]);break;}}else if(_0x215442[_0x5e58('0x157','&NFZ')](isNaN,second)==!![]||_0x215442[_0x5e58('0x158','L$Ks')](isNaN(minute),!![])){if(_0x215442['UJoiQ']!==_0x215442['UJoiQ']){var _0x466e22=zym2[_0x5e58('0x159','X$DD')]();if(_0x215442[_0x5e58('0x15a','f3xs')](_0x466e22,null)){_0x466e22['click']();}}else{i++;if(i>0x3){if(_0x5e58('0x15b','Us6N')!=='yjf'){setText('6666666');}else{fhz=0x0;break;}}}}}else{jk++;if(jk>0x3){log('2');back();break;}}_0x215442[_0x5e58('0x15c','#w[J')](sleep,0xfa0);}else{fhz=0x1;log(_0x215442[_0x5e58('0x15d','#w[J')]);if(红包!=null){红包['click']();}}}if(jk<=0x3){var _0x172af7=_0x5e58('0x15e','T%(3')['split']('|'),_0x292d51=0x0;while(!![]){switch(_0x172af7[_0x292d51++]){case'0':r=0x0;continue;case'1':while(!![]){var _0x11eaaf=descContains(_0x5e58('0xf0','C!^&'))[_0x5e58('0x15f','z%L6')]();var _0x21db61=descContains(_0x215442['ZGKLr'])[_0x5e58('0x160','dDiO')]();var _0xc7120a=descContains(_0x215442[_0x5e58('0x161','#Ljn')])['findOnce']();var _0x5a1f9b=descContains(_0x215442[_0x5e58('0x162','X$DD')])[_0x5e58('0x163','WErm')]();var _0x871902=_0x215442[_0x5e58('0x164','W*MJ')](descContains,_0x5e58('0x165','[Frg'))[_0x5e58('0x15f','z%L6')]();if(_0x215442[_0x5e58('0x166','&NFZ')](_0x11eaaf,null)||_0x21db61!=null||_0x215442[_0x5e58('0x167','p@cE')](_0xc7120a,null)||_0x5a1f9b!=null||_0x215442[_0x5e58('0x168','@Saf')](_0x871902,null)){if(_0x215442[_0x5e58('0x169','zdyr')](_0x5e58('0x16a','ygwV'),_0x215442[_0x5e58('0x16b',']Zf[')])){var _0x1ed97d=_0x215442[_0x5e58('0x16c','@Saf')][_0x5e58('0x16d','C!^&')]('|'),_0x295ba8=0x0;while(!![]){switch(_0x1ed97d[_0x295ba8++]){case'0':_0x215442['hOKrl'](log,_0x871902);continue;case'1':_0x215442[_0x5e58('0x16e','C!^&')](log,_0x21db61);continue;case'2':_0x215442[_0x5e58('0x16f','Us6N')](log,_0xc7120a);continue;case'3':_0x215442[_0x5e58('0x170','d]D!')](log,_0x11eaaf);continue;case'4':_0x215442['WamhM'](sleep,0x3e8);continue;case'5':_0x215442[_0x5e58('0x171','i^1K')](log,_0x5a1f9b);continue;case'6':log(_0x5e58('0x172','Us6N'));continue;case'7':if(_0x21db61!=null){var _0x15d5ed=_0x215442['WamhM'](className,_0x215442['eaAwf'])[_0x5e58('0x173','5x%&')](![])[_0x5e58('0x174','xlHp')](_0x215442[_0x5e58('0x175','o1uA')])[_0x5e58('0xfe','X]ON')]();if(_0x215442[_0x5e58('0x176','#Ljn')](_0x15d5ed,null)){if(_0x215442['JbJLv']===_0x5e58('0x177','^A4Q')){v=_0x215442['WamhM'](Number,_0x15d5ed['text']());if(isNaN(v)==![]){if(_0x215442[_0x5e58('0x178','2NCU')](_0x5e58('0x179','T%(3'),_0x215442[_0x5e58('0x17a','&NFZ')])){_0x215442[_0x5e58('0x17b','ygwV')](log,_0x215442[_0x5e58('0x17c','z%L6')]);_0x215442['SfHql'](结束模块,'映客');}else{vv=_0x215442[_0x5e58('0x17d','#Ljn')](vv,v);_0x215442[_0x5e58('0x17e','p@cE')](log,_0x215442['hiMVB'](_0x5e58('0x17f','WErm')+vv,'钻石'));}}}else{继续[_0x5e58('0x180','C!^&')]();}}_0x215442['slrii'](sleep,0x3e8);}continue;case'8':back();continue;case'9':r=0xa;continue;}break;}}else{_0x215442['slrii'](setText,_0x215442[_0x5e58('0x181','0B*U')]);}}if(r>0x9){if(_0x215442[_0x5e58('0x182','W*MJ')](_0x11eaaf,null)&&_0x215442[_0x5e58('0x183','[Frg')](_0x21db61,null)&&_0xc7120a==null&&_0x5a1f9b==null&&_0x215442['LdPMp'](_0x871902,null)){if(_0x5e58('0x184','z6Qk')!==_0x5e58('0x185','W*MJ')){break;}else{var _0x30c68b=_0x215442[_0x5e58('0x186','&xi@')](textContains,'发消息')['findOnce']();if(_0x215442['QguPI'](_0x30c68b,null)){_0x215442['sHpRv'](back);}}}}var _0x1f2e1a=_0x215442['blUGF'](descContains,_0x215442['rYFbk'])[_0x5e58('0xfe','X]ON')]();if(_0x215442[_0x5e58('0x187','ygwV')](_0x1f2e1a,null)){uo=0x1;while(!![]){if(_0x215442['WHvVf'](_0x5e58('0x188','ztib'),'EPS')){toastLog(_0x215442[_0x5e58('0x189','%0CV')]);var _0x1f2e1a=_0x215442[_0x5e58('0x18a','z%L6')](descContains,_0x5e58('0x18b','ppdB'))[_0x5e58('0x18c','C!^&')]();if(_0x215442[_0x5e58('0x18d','5u[M')](_0x1f2e1a,null)){联众滑块();}else if(_0x215442[_0x5e58('0x18e',']Zf[')](_0x1f2e1a,null)){if(_0x215442[_0x5e58('0x18f','5x%&')](_0x215442[_0x5e58('0x190','o1uA')],'Tmm')){scrollDown();}else{break;}}sleep(0x1388);}else{log('抢');_0x1dfbea[_0x5e58('0x191','WV5]')]();_0x215442['sWZPX'](sleep,0xbb8);}}}r=_0x215442[_0x5e58('0x192','WErm')](r,0x1);_0x215442['sWZPX'](sleep,0x3e8);}continue;case'2':if(_0x1dfbea!=null){if(_0x5e58('0x193','#Ljn')===_0x215442[_0x5e58('0x194','L$Ks')]){风之恋[_0x5e58('0x195','5x%&')]();}else{_0x215442['sWZPX'](log,'抢');_0x1dfbea[_0x5e58('0x196','W*MJ')]();_0x215442['sWZPX'](sleep,0xbb8);}}continue;case'3':if(_0x215442[_0x5e58('0x197','LTGd')](second,0x4)){_0x215442[_0x5e58('0x198','Y9)E')](sleep,_0x215442[_0x5e58('0x199','%0CV')](_0x215442[_0x5e58('0x123','p^1b')](second,0x4),0x44c));}continue;case'4':var _0x1dfbea=className(_0x5e58('0x2f','f3xs'))[_0x5e58('0xba','0B*U')](!![])[_0x5e58('0x19a','X]ON')]('抢')['findOne'](0x1f40);continue;}break;}}}else{_0x215442[_0x5e58('0x19b','p@cE')](结束模块,'映客');sleep(0x7d0);app[_0x5e58('0x19c','ztib')]('映客');}}}else{timel=0x0;}}}function 结束模块(_0xb355fd){var _0xdf87cd={'BkHww':_0x5e58('0x19d','p@cE'),'YzcHE':_0x5e58('0x19e','#Ljn'),'KxlIm':_0x5e58('0x19f','W*MJ'),'cbUJy':function _0x4c4953(_0x447457,_0x50125f){return _0x447457(_0x50125f);},'EUKld':function _0x457d84(_0x341927,_0x364b76){return _0x341927==_0x364b76;},'FAbus':function _0x31eae2(_0x6c8499,_0x550a59){return _0x6c8499+_0x550a59;},'jmunf':function _0x14ccc3(_0x229031,_0xed31a7){return _0x229031!=_0xed31a7;},'FHMxN':_0x5e58('0x1a0','[Frg'),'ibeyM':function _0x2149fb(_0x13d8ab,_0xdef81d){return _0x13d8ab(_0xdef81d);},'ONLeS':_0x5e58('0x1a1','^A4Q'),'JShyJ':function _0x516d65(_0x5dc478,_0x12c3f1){return _0x5dc478!=_0x12c3f1;},'UfIxf':function _0x784dab(_0x446d41,_0x8d56c0){return _0x446d41===_0x8d56c0;},'TLUUB':'axY','UgjaM':function _0x24f17a(_0x5664fc,_0x496dee){return _0x5664fc(_0x496dee);},'oOkJh':_0x5e58('0x1a2','X]ON'),'tbpKe':function _0x854e2d(_0x30ca87,_0x17d315){return _0x30ca87(_0x17d315);}};var _0x28780d=_0xdf87cd[_0x5e58('0x1a3','&$0%')][_0x5e58('0x1a4','#Ljn')]('|'),_0x49be74=0x0;while(!![]){switch(_0x28780d[_0x49be74++]){case'0':home();continue;case'1':if(_0x22abde!=null){if(_0xdf87cd[_0x5e58('0x1a5','z6Qk')]!==_0xdf87cd[_0x5e58('0x1a6','zdyr')]){_0x22abde[_0x5e58('0x1a7',')IlH')]();}else{v=_0xdf87cd['cbUJy'](Number,liang[_0x5e58('0x1a8','Wked')]());if(_0xdf87cd['EUKld'](isNaN(v),![])){vv=_0xdf87cd[_0x5e58('0x1a9','Y9)E')](vv,v);log(_0xdf87cd['FAbus'](_0x5e58('0x1aa','5u[M'),vv)+'钻石');}}}else if(_0xdf87cd['jmunf'](_0x5828c6,null)){_0x5828c6['click']();}continue;case'2':var _0x22abde=_0xdf87cd[_0x5e58('0x1ab','Wked')](className,_0xdf87cd[_0x5e58('0x1ac','Wked')])[_0x5e58('0x1ad','@Saf')](_0x5e58('0x1ae','o1uA'))['findOne'](0x5dc);continue;case'3':sleep(0x7d0);continue;case'4':sleep(0x7d0);continue;case'5':sleep(0x7d0);continue;case'6':while(!![]){if('VoH'===_0x5e58('0x1af','A*M6')){var _0x1684dc=className(_0xdf87cd['FHMxN'])[_0x5e58('0x1b0','WV5]')]('确定')[_0x5e58('0x17','&xi@')]();var _0x5828c6=_0xdf87cd['cbUJy'](className,_0xdf87cd['FHMxN'])[_0x5e58('0x1b1','X$DD')]('停止')[_0x5e58('0x1b2','Wked')]();if(_0x1684dc!=null){_0x1684dc[_0x5e58('0x1b3','ztib')]();break;}else if(_0x5828c6!=null){_0x5828c6[_0x5e58('0x102','ppdB')]();break;}_0xdf87cd[_0x5e58('0x1b4','xlHp')](sleep,0x3e8);}else{打招呼p['click']();}}continue;case'7':app[_0x5e58('0x1b5','ApO#')](_0x317b0a);continue;case'8':var _0x317b0a=app[_0x5e58('0x1b6','$Jkv')](_0xb355fd);continue;case'9':while(!![]){var _0x57881c=text(_0xdf87cd[_0x5e58('0x1b7','zdyr')])['findOnce']();var _0x319cec=_0xdf87cd[_0x5e58('0x1b8','GHN$')](textEndsWith,'停止')[_0x5e58('0x1b9','GHN$')]();if(_0x57881c!=null||_0xdf87cd[_0x5e58('0x1ba','5x%&')](_0x319cec,null)){if(_0xdf87cd['UfIxf'](_0xdf87cd['TLUUB'],_0xdf87cd['TLUUB'])){_0xdf87cd[_0x5e58('0x1bb','&$0%')](log,_0xdf87cd[_0x5e58('0x1bc','i^1K')]);break;}else{sb=0x1;}}_0xdf87cd[_0x5e58('0x1bd','*43I')](sleep,0x3e8);}continue;case'10':var _0x5828c6=_0xdf87cd[_0x5e58('0x1be','3r7l')](className,_0x5e58('0x1bf','chrf'))[_0x5e58('0x1c0','ygwV')]('停止')[_0x5e58('0x1c1','#w[J')](0x5dc);continue;}break;}}function 随机休息模块(_0x2b84ae,_0xc2f09b){var _0x4d293f={'gzcos':function _0x3154e6(_0x3a1546,_0x18466f){return _0x3a1546(_0x18466f);},'Qnotj':function _0x2520d5(_0x24dc28,_0x4259a0){return _0x24dc28+_0x4259a0;},'SgxQJ':function _0x441e41(_0x30337e,_0x56192f){return _0x30337e+_0x56192f;},'SWXzR':_0x5e58('0x1c2','5u[M'),'auVIg':function _0x4f4992(_0x114060,_0xb08dfe){return _0x114060*_0xb08dfe;},'nBbIr':function _0x48cf90(_0x1c3704,_0x155187){return _0x1c3704(_0x155187);},'xnGgw':function _0x3506ea(_0x3d0b43,_0x58a742){return _0x3d0b43>=_0x58a742;}};xc=0x1;time=random(_0x2b84ae,_0xc2f09b);while(!![]){xc=xc+0x1;_0x4d293f[_0x5e58('0x1c3','#w[J')](toastLog,_0x4d293f[_0x5e58('0x1c4','0B*U')](_0x4d293f[_0x5e58('0x1c5','ztib')](_0x4d293f[_0x5e58('0x1c6','X$DD')]('随机沉睡中'+_0x4d293f[_0x5e58('0x1c7','@Saf')]+xc*0x2,'秒'),'还有')+_0x4d293f['auVIg'](time-xc,0x2),'秒'));_0x4d293f[_0x5e58('0x1c8','lpp5')](sleep,0xbb8);if(_0x4d293f[_0x5e58('0x1c9','Yb@8')](xc,time)){break;}}}function 模拟人(){var _0x137496={'SDZuB':function _0x118a5f(_0x2a6a15,_0x492df9){return _0x2a6a15==_0x492df9;},'vzfYH':function _0x283f64(_0x239cb2,_0x51c42f,_0x4eca7f){return _0x239cb2(_0x51c42f,_0x4eca7f);},'vpspZ':function _0xaab4ee(_0x1a9718,_0x5a3dbd){return _0x1a9718(_0x5a3dbd);},'pnXqb':function _0x1bbc59(_0x346ac7,_0x3235d5){return _0x346ac7+_0x3235d5;},'RlhGx':'关注随机值','aeMhS':function _0x2e04cb(_0xb7d299){return _0xb7d299();},'bFQCE':function _0x1aa825(_0x4516b1,_0x57e704){return _0x4516b1(_0x57e704);},'EHPyz':function _0x481211(_0x1acf9a,_0x28e367){return _0x1acf9a/_0x28e367;},'sxXHy':function _0x327861(_0x45991b,_0x1cecb8){return _0x45991b!=_0x1cecb8;},'jdSMe':function _0x1e0bd5(_0x389643,_0x589cb0){return _0x389643!==_0x589cb0;},'LsRYq':_0x5e58('0x1ca','p@cE'),'DwRIW':function _0x510bed(_0x1c724a,_0x8192ad){return _0x1c724a>=_0x8192ad;},'sAzNL':function _0x3b8a97(_0x3866d7,_0x124d92){return _0x3866d7!==_0x124d92;},'xyUtf':'PFL','ullTV':function _0x1b0f4b(_0x4fc5e6,_0x2f169f){return _0x4fc5e6(_0x2f169f);},'lzwOi':function _0x579e25(_0x1011c7,_0x30afe6){return _0x1011c7(_0x30afe6);},'XSBOL':_0x5e58('0x1cb','d]D!'),'pMPpR':function _0x3f053b(_0x305939,_0x33838c){return _0x305939>_0x33838c;},'oAYuW':_0x5e58('0x1cc','%0CV'),'ARylv':function _0x248197(_0x4ed7b1,_0x3852ac){return _0x4ed7b1!=_0x3852ac;},'HXiiQ':_0x5e58('0x1cd','^A4Q'),'IEKwp':function _0xe660b6(_0x27f61a,_0x276cd1){return _0x27f61a(_0x276cd1);},'XhRCE':'66666','XObwX':function _0x24d656(_0x5ea96d,_0x3c354e){return _0x5ea96d(_0x3c354e);},'maqMb':function _0x50aec1(_0x586c38,_0x3c3512){return _0x586c38==_0x3c3512;},'rDrVz':function _0x24cc49(_0x5d2376,_0x587dfa){return _0x5d2376(_0x587dfa);},'ZVWhG':function _0x2aea75(_0x339438,_0x2ddcb1){return _0x339438!=_0x2ddcb1;},'DXujR':function _0xc1e7aa(_0x4d5e22,_0x5b678e){return _0x4d5e22===_0x5b678e;},'rXqAv':function _0x121292(_0x1a7d28,_0x1d2b8a){return _0x1a7d28(_0x1d2b8a);},'kpbqg':_0x5e58('0x1ce','&$0%'),'Bsetg':_0x5e58('0x1cf','#w[J'),'bVPFK':function _0x1e9e7a(_0xadcda1,_0x113650){return _0xadcda1(_0x113650);},'QueUP':function _0x4ab1b3(_0x5c04b6){return _0x5c04b6();},'zAycm':function _0x4a5028(_0x7cf4d9,_0xecd44a){return _0x7cf4d9/_0xecd44a;},'PZYGq':function _0x529a28(_0x125ec9,_0x510bd3){return _0x125ec9/_0x510bd3;},'BQJah':function _0x5f2690(_0x3e4cf9,_0x3f8e46,_0x182bd1){return _0x3e4cf9(_0x3f8e46,_0x182bd1);},'tAUPV':function _0x57beb8(_0x214817,_0x442923){return _0x214817+_0x442923;},'cvfEB':_0x5e58('0x1d0','dDiO'),'LrRin':_0x5e58('0x1d1','5u[M'),'TzGDv':_0x5e58('0x1d2','X]ON'),'QKjoV':_0x5e58('0x1d3','T%(3'),'TAreC':function _0x3b0440(_0x13906c,_0x46cc5b){return _0x13906c(_0x46cc5b);},'pUbof':_0x5e58('0x1d4','ApO#'),'dHSfA':function _0x58b2f4(_0x62023d,_0x1792d1){return _0x62023d(_0x1792d1);},'XwlRW':function _0x1f31b8(_0x1f5b78,_0x3fd5b8){return _0x1f5b78(_0x3fd5b8);},'HkoxS':_0x5e58('0x1d5','#w[J'),'qGOFY':function _0x6095e9(_0x1167d2){return _0x1167d2();},'nDUhZ':_0x5e58('0x1d6','0B*U'),'TkUzd':_0x5e58('0x1d7','&NFZ'),'lIaxk':function _0x483723(_0x3ca7a5,_0x2bc16b){return _0x3ca7a5(_0x2bc16b);},'eqbVr':'MXM','DUsJW':'狠心离开','yybOv':_0x5e58('0x1d8','2NCU'),'aoxOh':function _0x5a5123(_0x9f6b42){return _0x9f6b42();},'xGUug':function _0x35374b(_0x2108de,_0x3068a8){return _0x2108de(_0x3068a8);},'twWDd':_0x5e58('0x1d9','Y9)E'),'uunhI':function _0x1db77c(_0x1a55c7){return _0x1a55c7();}};if(_0x137496['SDZuB'](ui[_0x5e58('0x1da','X]ON')][_0x5e58('0x1db','W*MJ')],!![])){gz=_0x137496['vzfYH'](random,0x1,0xb4);_0x137496['vpspZ'](log,_0x137496[_0x5e58('0x1dc','&xi@')](gz,_0x137496['RlhGx']));if(gz>=0xaf){_0x137496[_0x5e58('0x1dd','z%L6')](检测页面);_0x137496[_0x5e58('0x1de','Yb@8')](页面操作);var _0xd11513=_0x137496[_0x5e58('0x1df','o1uA')](className,_0x5e58('0x1e0','#w[J'))[_0x5e58('0x1e1','T%(3')]('关注')['clickable'](!![])[_0x5e58('0x1e2','dDiO')](!![])[_0x5e58('0x1e3','&NFZ')](0x0,0x0,device[_0x5e58('0x1e4','5x%&')]/0x2,_0x137496[_0x5e58('0x1e5','A*M6')](device[_0x5e58('0x1e6','W*MJ')],0xa))['findOnce']();_0x137496[_0x5e58('0x1e7','f3xs')](sleep,0x7d0);if(_0x137496['sxXHy'](_0xd11513,null)){if(_0x137496[_0x5e58('0x1e8','*43I')](_0x137496[_0x5e58('0x1e9','@Saf')],_0x137496[_0x5e58('0x1ea','p@cE')])){Swipe(x1,heights,x2,heights,_0x137496[_0x5e58('0x1eb','LTGd')](random,0x320,0x640));}else{_0xd11513['click']();}}}}if(ui[_0x5e58('0x1ec','&$0%')][_0x5e58('0x1ed','X$DD')]&&_0x137496['DwRIW'](device['sdkInt'],0x15)){if(_0x137496[_0x5e58('0x1ee','0B*U')](_0x5e58('0x1ef','5u[M'),_0x137496['xyUtf'])){var _0x10456e=_0x137496['ullTV'](text,_0x5e58('0x1f0','p@cE'))[_0x5e58('0x1f1','chrf')]();if(_0x10456e!=null){_0x137496['lzwOi'](toastLog,_0x137496[_0x5e58('0x1f2','LTGd')]);_0x10456e['click']();}}else{pl=_0x137496['vzfYH'](random,0x1,0xc8);log(pl+'评论随机值');if(_0x137496[_0x5e58('0x1f3','^A4Q')](pl,0xc3)){var _0x56a131=_0x137496[_0x5e58('0x1f4','dDiO')][_0x5e58('0x1f5','zdyr')]('|'),_0x5ae745=0x0;while(!![]){switch(_0x56a131[_0x5ae745++]){case'0':检测页面();continue;case'1':if(_0x137496[_0x5e58('0x1f6','lpp5')](_0x49907d,null)){if(_0x5e58('0x1f7','W*MJ')===_0x5e58('0x1f8','f3xs')){var _0x212ec9=_0x137496['HXiiQ']['split']('|'),_0x19a752=0x0;while(!![]){switch(_0x212ec9[_0x19a752++]){case'0':if(plz==0x1){_0x137496[_0x5e58('0x1f9','&xi@')](setText,_0x137496[_0x5e58('0x1fa','#w[J')]);}continue;case'1':back();continue;case'2':_0x49907d[_0x5e58('0x1fb','WErm')]()[_0x5e58('0x1fc','xlHp')]();continue;case'3':var _0x8bed77=_0x137496['IEKwp'](className,'android.widget.Button')[_0x5e58('0x1fd','*43I')](!![])[_0x5e58('0x1fe',')IlH')](!![])['text']('发送')[_0x5e58('0x9c','Us6N')]();continue;case'4':if(plz==0x4){_0x137496['IEKwp'](setText,_0x5e58('0x1ff','o1uA'));}continue;case'5':sleep(0xbb8);continue;case'6':_0x137496[_0x5e58('0x200','Y9)E')](sleep,0x5dc);continue;case'7':if(_0x137496[_0x5e58('0x201','chrf')](plz,0x3)){setText(_0x5e58('0x202','%0CV'));}continue;case'8':_0x137496[_0x5e58('0x203','p@cE')](log,'4');continue;case'9':if(_0x137496['ZVWhG'](_0x8bed77,null)){if(_0x137496['DXujR']('iAf',_0x5e58('0x204','X$DD'))){_0x8bed77['click']();}else{while(!![]){toastLog('请实名');sleep(0xbb8);}}}continue;case'10':if(plz==0x5){_0x137496['rXqAv'](setText,_0x137496[_0x5e58('0x205','L$Ks')]);}continue;case'11':if(_0x137496[_0x5e58('0x201','chrf')](plz,0x2)){setText(_0x137496[_0x5e58('0x206','ztib')]);}continue;case'12':_0x137496[_0x5e58('0x207','2NCU')](sleep,0xbb8);continue;case'13':plz=_0x137496['vzfYH'](random,0x1,0x5);continue;case'14':_0x137496[_0x5e58('0x208','5u[M')](sleep,0x9c4);continue;}break;}}else{_0x137496[_0x5e58('0x209','chrf')](联众滑块);}}continue;case'2':var _0x49907d=className(_0x5e58('0x20a','i^1K'))['text'](_0x5e58('0x20b','ygwV'))['clickable'](![])[_0x5e58('0x20c','f3xs')](!![])[_0x5e58('0x20d',']Zf[')](0x1,_0x137496[_0x5e58('0x20e','3r7l')](device['height']*0xa,0xb),_0x137496['PZYGq'](device['width'],1.8),device['height']-0x1)[_0x5e58('0x20f','ztib')]();continue;case'3':sleep(0x3e8);continue;case'4':页面操作();continue;}break;}}}}if(ui[_0x5e58('0x210','&$0%')][_0x5e58('0x211','#w[J')]==!![]){if('tah'!==_0x5e58('0x212','5x%&')){sl=_0x137496[_0x5e58('0x213','ApO#')](random,0x1,0xc8);log(_0x137496[_0x5e58('0x214','WErm')](sl,_0x137496[_0x5e58('0x215','xlHp')]));if(_0x137496[_0x5e58('0x216','dDiO')](sl,0xaa)){if(_0x137496[_0x5e58('0x217',')IlH')]!==_0x5e58('0x218','L$Ks')){var _0x51023b=_0x137496['bVPFK'](textContains,_0x137496['TzGDv'])[_0x5e58('0x219','chrf')](![])[_0x5e58('0x21a','%0CV')]();if(_0x51023b!=null){if(_0x5e58('0x21b',']Zf[')!==_0x137496[_0x5e58('0x21c','L$Ks')]){r=0xa;log(q1);log(q2);_0x137496[_0x5e58('0x21d','&NFZ')](log,q3);_0x137496[_0x5e58('0x21e','p@cE')](log,q4);log(q5);if(q2!=null){var _0x36f1be=className(_0x5e58('0x21f','2NCU'))[_0x5e58('0x220','#w[J')](![])[_0x5e58('0x221','Us6N')](_0x137496[_0x5e58('0x222','C!^&')])[_0x5e58('0x223',')IlH')]();if(_0x36f1be!=null){v=Number(_0x36f1be[_0x5e58('0x224','&NFZ')]());if(_0x137496[_0x5e58('0x225',')IlH')](_0x137496[_0x5e58('0x226','d]D!')](isNaN,v),![])){vv=_0x137496[_0x5e58('0x227','dDiO')](vv,v);log(_0x137496['tAUPV'](_0x137496[_0x5e58('0x228','ztib')](_0x5e58('0x229','d]D!'),vv),'钻石'));}}sleep(0x3e8);}_0x137496[_0x5e58('0x22a','GHN$')](log,_0x137496[_0x5e58('0x22b','chrf')]);sleep(0x3e8);_0x137496['qGOFY'](back);}else{var _0x219a2d=textMatches(_0x137496[_0x5e58('0x22c','X]ON')])[_0x5e58('0x22d','ztib')](![])[_0x5e58('0x13e','X$DD')](_0x51023b[_0x5e58('0x22e','2NCU')]()['right'],_0x51023b[_0x5e58('0x22f','X$DD')]()['top'],device[_0x5e58('0x230','&xi@')],device[_0x5e58('0x37','z%L6')])[_0x5e58('0x15','3r7l')]();if(_0x219a2d!=null){if(_0x137496[_0x5e58('0x231','Wked')]!==_0x137496[_0x5e58('0x232',')IlH')]){_0x137496[_0x5e58('0x233','p@cE')](log,_0x219a2d);var _0x36c4d6=_0x137496['lIaxk'](clickable,!![])['boundsInside'](_0x219a2d[_0x5e58('0x234','ygwV')]()[_0x5e58('0x235','z%L6')],_0x219a2d[_0x5e58('0x236','ztib')]()[_0x5e58('0x237','dDiO')]-0x96,_0x219a2d[_0x5e58('0x238','[Frg')]()[_0x5e58('0x239','Us6N')]+0x64,_0x219a2d[_0x5e58('0x23a','GHN$')]()['bottom'])['findOnce']();if(_0x36c4d6!=null){if(_0x137496[_0x5e58('0x23b','@Saf')]===_0x5e58('0x23c','%0CV')){log(_0x36c4d6);_0x36c4d6[_0x5e58('0xcc','#Ljn')]();}else{zymp[_0x5e58('0x23d','X]ON')]();zymp['click']();}}}else{_0x137496['lIaxk'](toastLog,_0x5e58('0x23e','#w[J'));var _0x199a24=_0x137496[_0x5e58('0x23f','$Jkv')](textContains,_0x137496[_0x5e58('0x240','2NCU')])[_0x5e58('0x241','C!^&')](_0x137496[_0x5e58('0x242','&$0%')])[_0x5e58('0x243','C!^&')](!![])[_0x5e58('0x244','#w[J')]();if(_0x137496[_0x5e58('0x245','p@cE')](_0x199a24,null)){_0x137496[_0x5e58('0x246','C!^&')](log,_0x199a24);_0x137496[_0x5e58('0x247','Wked')](log,'5');_0x137496[_0x5e58('0x248','ppdB')](back);}}}}}}else{_0x137496['xGUug'](toastLog,_0x137496[_0x5e58('0x249','X$DD')]);_0x137496[_0x5e58('0x24a','ppdB')](exit);}}}else{强行停止[_0x5e58('0x24b','f3xs')]();}}}function 页面操作(){var _0x4c4280={'Wtxtf':function _0x3953e2(_0x2f41fd,_0x52ab00){return _0x2f41fd==_0x52ab00;},'ewoVm':_0x5e58('0x24c','5u[M'),'NBweZ':_0x5e58('0x24d','zdyr'),'IEgdJ':function _0x14f3fe(_0x1d16ad,_0x43283c){return _0x1d16ad!=_0x43283c;},'uisze':function _0x4fae5c(_0x21d713,_0x313ab2){return _0x21d713==_0x313ab2;},'TvgkZ':function _0x1ab12c(_0x1c1728,_0x1983fc){return _0x1c1728(_0x1983fc);},'tXYvd':function _0x526c3b(_0x160d44,_0x5c8206){return _0x160d44+_0x5c8206;},'tfYws':function _0x10bbbd(_0x4b858d,_0xc571c9){return _0x4b858d(_0xc571c9);},'onpeV':function _0x3d66af(_0x2a1172,_0x2a81ff){return _0x2a1172+_0x2a81ff;},'FtCwv':function _0x585946(_0x465f36,_0x2983b4){return _0x465f36(_0x2983b4);},'jKltG':function _0x26b999(_0x1c9f9f,_0x33ae17){return _0x1c9f9f(_0x33ae17);},'ZRXOv':function _0xfa9766(_0x5c9e43,_0x50156a){return _0x5c9e43/_0x50156a;},'NQMFW':function _0xaa67fe(_0x322bd8,_0x25ce9b){return _0x322bd8!=_0x25ce9b;},'iGqQy':function _0xd13360(_0x4ae61e,_0x4fa465){return _0x4ae61e!==_0x4fa465;},'RHASV':_0x5e58('0x24e','L$Ks'),'pdLCw':_0x5e58('0x24f','*43I'),'dtaQY':_0x5e58('0x250','&xi@'),'Paweb':function _0xc826b8(_0xd8c508){return _0xd8c508();},'LwAIe':function _0x4aa1f0(_0x2da2b7,_0x59dc9b){return _0x2da2b7(_0x59dc9b);}};if(_0x4c4280[_0x5e58('0x251','z6Qk')](jc,0x2)){if(_0x5e58('0x252','d]D!')===_0x4c4280['ewoVm']){var _0x20dc8=className(_0x4c4280['NBweZ'])['clickable'](![])[_0x5e58('0x253','LTGd')](_0x5e58('0x254','lpp5'))[_0x5e58('0x255','X$DD')]();if(_0x4c4280['IEgdJ'](_0x20dc8,null)){v=Number(_0x20dc8[_0x5e58('0x256','ppdB')]());if(_0x4c4280[_0x5e58('0x257','^A4Q')](_0x4c4280[_0x5e58('0x258','T%(3')](isNaN,v),![])){vv=_0x4c4280[_0x5e58('0x259','*43I')](vv,v);_0x4c4280['tfYws'](log,_0x4c4280[_0x5e58('0x25a','chrf')]('已抢:'+vv,'钻石'));}}_0x4c4280['FtCwv'](sleep,0x3e8);}else{var _0x199073=_0x4c4280['jKltG'](text,'推荐')[_0x5e58('0x25b','Wked')](0x0,0x0,device[_0x5e58('0x25c',']Zf[')]/0x2,_0x4c4280['ZRXOv'](device['height'],0x8))[_0x5e58('0x25d','p^1b')]();if(_0x4c4280[_0x5e58('0x25e','WErm')](_0x199073,null)){if(_0x4c4280[_0x5e58('0x25f',')IlH')](_0x5e58('0x260','2NCU'),'rQM')){var _0x1c2d64=_0x199073['parent']();if(_0x4c4280[_0x5e58('0x261','o1uA')](_0x1c2d64,null)){_0x1c2d64[_0x5e58('0x262','2NCU')]();}}else{app[_0x5e58('0x263','Wked')]({'data':_0x4c4280[_0x5e58('0x264','&NFZ')]});}}sleep(0x5dc);打开直播间();_0x4c4280[_0x5e58('0x265','z6Qk')](sleep,0xbb8);}}else if(jc==0x3){if(_0x5e58('0x266','2NCU')!=='NDz'){window[_0x5e58('0x267','&NFZ')]('不能删除sojson.v5');}else{_0x4c4280[_0x5e58('0x268','GHN$')](结束模块,'映客');sleep(0xbb8);app[_0x5e58('0x269','5u[M')]('映客');_0x4c4280[_0x5e58('0x26a','d]D!')](sleep,0x1388);while(!![]){if(_0x4c4280['pdLCw']===_0x5e58('0x26b','xlHp')){风之恋[_0x5e58('0x26c','Us6N')]();}else{var _0x36585d=text('推荐')[_0x5e58('0x17','&xi@')]();if(_0x4c4280['NQMFW'](_0x36585d,null)){toastLog(_0x4c4280[_0x5e58('0x26d','ztib')]);break;}sleep(0x7d0);}}_0x4c4280[_0x5e58('0x26e','zdyr')](打开直播间);_0x4c4280['LwAIe'](sleep,0xbb8);toastLog('成功进入直播画面');}}}function 打开直播间(){var _0x22720e={'fYZXy':_0x5e58('0x26f','ygwV'),'SjTpU':function _0xa6e615(_0x58c948,_0x1135b4){return _0x58c948/_0x1135b4;},'JJrYS':function _0x7a6ef6(_0x376f8f,_0x19c440){return _0x376f8f*_0x19c440;},'LrcAw':function _0x5bfc9e(_0x348ac1,_0x4ee578){return _0x348ac1(_0x4ee578);},'SdtSW':function _0x37c76e(_0x33405a,_0x513e31){return _0x33405a<_0x513e31;},'CKUte':_0x5e58('0x270','&$0%'),'BiJww':function _0x44f824(_0x855564,_0xaf7f82){return _0x855564!==_0xaf7f82;},'CEOtx':function _0x5d5aa3(_0x264905,_0x194f93){return _0x264905(_0x194f93);},'etHJS':function _0x5037f5(_0x491d11,_0x27234a){return _0x491d11-_0x27234a;},'bXYuk':function _0x5b8f8e(_0x411c3c,_0x3641c9){return _0x411c3c+_0x3641c9;},'ONNjp':function _0xd581b2(_0x4c3ccc,_0x59dddd){return _0x4c3ccc<_0x59dddd;},'HEHif':'qib','yqXJs':function _0x68918(_0x24319d,_0x3d58e9){return _0x24319d==_0x3d58e9;},'fAhjj':_0x5e58('0x271','i^1K'),'PAgji':function _0x4cc532(_0x6c816d,_0x58d603){return _0x6c816d-_0x58d603;},'preTj':function _0x4fd17e(_0x347db0,_0x26ba9f){return _0x347db0+_0x26ba9f;},'XaYea':function _0x38ee79(_0x1ca1b6,_0x16204c){return _0x1ca1b6(_0x16204c);},'iyuKl':'error','ZRSQc':function _0x11fe0d(_0x264376,_0x34a974){return _0x264376!=_0x34a974;},'HTuAb':'QDC','PFvZZ':_0x5e58('0x272','@Saf'),'smuFK':function _0x1bd3e5(_0x278965,_0x1a9baa){return _0x278965!=_0x1a9baa;},'VUnxN':'青少年弹窗','NYmYw':function _0x2ad3f3(_0x59f370,_0x2100d3){return _0x59f370(_0x2100d3);},'LTEQS':_0x5e58('0x273','ztib'),'zSHAV':function _0x32bf95(_0x1f2cbc,_0xdc41a4){return _0x1f2cbc==_0xdc41a4;},'MZCjQ':'undefined','LJbCs':function _0x3225a5(_0x4fdc91,_0x4fad38){return _0x4fdc91==_0x4fad38;},'lDGjd':function _0xa76c97(_0x5228a0,_0x195a8b){return _0x5228a0===_0x195a8b;},'PkMnO':function _0x1a79fb(_0x5af24c,_0x565d14){return _0x5af24c!=_0x565d14;},'Sndvg':function _0x1d6a1d(_0x52f4e6,_0xc90418){return _0x52f4e6(_0xc90418);},'enahe':function _0x4214fa(_0x151ae1,_0x2a4a51){return _0x151ae1(_0x2a4a51);},'CQYOS':function _0x471471(_0x443b4e,_0x2372ff){return _0x443b4e>=_0x2372ff;},'JuUnD':'kJi','zCujZ':_0x5e58('0x274','f3xs'),'gdlYx':_0x5e58('0x275','%0CV'),'uJnOZ':_0x5e58('0x276','&NFZ'),'ESOIY':function _0x10aafa(_0x244a59,_0x6b7055){return _0x244a59>=_0x6b7055;},'jYDih':function _0x4f1fa4(_0x13c736,_0x39f7a0){return _0x13c736/_0x39f7a0;},'iNWyx':_0x5e58('0x277','[Frg'),'nQuEm':function _0x2e4559(_0x31073f){return _0x31073f();},'vklaH':function _0x3ddc6c(_0x189835,_0x542bf2){return _0x189835(_0x542bf2);},'vKYEU':function _0x4806b1(_0x3f0020,_0x2c9bde){return _0x3f0020>_0x2c9bde;},'wdMAo':'YEB','nAafu':'http://quan.suning.com/getSysTime.do','PWyFu':function _0x5ef292(_0x2f582d,_0x1de139){return _0x2f582d(_0x1de139);}};time1=0x1;sb=0x1;红=null;在看=null;while(!![]){if(_0x22720e['fYZXy']===_0x5e58('0x278','#w[J')){log(_0x5e58('0x279','ygwV'));aaa=className(_0x5e58('0x27a','p@cE'))[_0x5e58('0x27b','L$Ks')](0x0,device['width']/0x2,device[_0x5e58('0x27c','ApO#')],_0x22720e[_0x5e58('0x27d','L$Ks')](_0x22720e[_0x5e58('0x27e','o1uA')](device[_0x5e58('0x140','p@cE')],0x4),0x5))[_0x5e58('0x27f','0B*U')]();if(aaa!=null){直播=aaa[_0x5e58('0x280','Wked')](_0x22720e['LrcAw'](className,_0x5e58('0x281',']Zf['))[_0x5e58('0x282','%0CV')](!![]));i=0x0;while(_0x22720e['SdtSW'](i,直播[_0x5e58('0x283','T%(3')])){直播间=直播[i];if(直播间!=null){在看=直播间[_0x5e58('0x284','[Frg')]()['findOne'](textEndsWith('在看'));红包标志1=直播间['children']()['find'](className(_0x22720e['CKUte'])[_0x5e58('0x173','5x%&')](![]));if(在看!=null&&红包标志1[_0x5e58('0x285','5x%&')]>0x1){j=0x0;while(j<红包标志1['length']){if(_0x22720e[_0x5e58('0x286','&xi@')](_0x5e58('0x287','%0CV'),_0x5e58('0x288','o1uA'))){_0x22720e[_0x5e58('0x289','Wked')](log,giftNumber);var _0x291dcb=_0x22720e['CEOtx'](clickable,!![])[_0x5e58('0x28a','L$Ks')](giftNumber[_0x5e58('0x28b','%0CV')]()['left'],_0x22720e['etHJS'](giftNumber[_0x5e58('0x28c','WErm')]()[_0x5e58('0x28d','C!^&')],0x96),_0x22720e[_0x5e58('0x28e','^A4Q')](giftNumber[_0x5e58('0x28f','$Jkv')]()[_0x5e58('0x290','$Jkv')],0x64),giftNumber[_0x5e58('0x291','z6Qk')]()[_0x5e58('0x292','3r7l')])[_0x5e58('0x293','p@cE')]();if(_0x291dcb!=null){log(_0x291dcb);_0x291dcb['click']();}}else{if(红包标志1[j]['bounds']()[_0x5e58('0x294','X$DD')]==在看[_0x5e58('0x295',']Zf[')]()[_0x5e58('0x296','d]D!')]&&_0x22720e[_0x5e58('0x297','&$0%')](红包标志1[j][_0x5e58('0x298','5u[M')]()[_0x5e58('0x299','A*M6')],在看[_0x5e58('0x23a','GHN$')]()[_0x5e58('0x29a','L$Ks')])){if(_0x22720e[_0x5e58('0x29b','xlHp')](_0x22720e['HEHif'],_0x5e58('0x29c','T%(3'))){var _0x2823db=bounds(红包标志1[j][_0x5e58('0x298','5u[M')]()[_0x5e58('0x29d','W*MJ')],红包标志1[j]['bounds']()[_0x5e58('0x29e','&NFZ')],红包标志1[j][_0x5e58('0x29f','Wked')]()[_0x5e58('0x2a0',')IlH')],红包标志1[j][_0x5e58('0x2a1','d]D!')]()[_0x5e58('0x2a2','^A4Q')])[_0x5e58('0x2a3','0B*U')]();if(_0x22720e[_0x5e58('0x2a4','5u[M')](_0x2823db[_0x5e58('0x2a5','WV5]')],0x1)){if('hPf'===_0x22720e[_0x5e58('0x2a6','d]D!')]){红=红包标志1[j];break;}else{var _0x21953b=textMatches(_0x5e58('0x2a7','$Jkv'))['clickable'](![])[_0x5e58('0x25b','Wked')](来聊聊天[_0x5e58('0x23a','GHN$')]()[_0x5e58('0x2a8','*43I')],来聊聊天['bounds']()['top'],device['width'],device['height'])[_0x5e58('0x255','X$DD')]();if(_0x21953b!=null){log(_0x21953b);var _0x3657d4=clickable(!![])['boundsInside'](_0x21953b[_0x5e58('0x2a9','p^1b')]()['left'],_0x22720e[_0x5e58('0x2aa','A*M6')](_0x21953b['bounds']()[_0x5e58('0x29a','L$Ks')],0x96),_0x22720e['preTj'](_0x21953b[_0x5e58('0x2ab','C!^&')]()[_0x5e58('0x290','$Jkv')],0x64),_0x21953b[_0x5e58('0x2ac','lpp5')]()[_0x5e58('0x2ad','GHN$')])[_0x5e58('0x160','dDiO')]();if(_0x3657d4!=null){log(_0x3657d4);_0x3657d4[_0x5e58('0x2ae','0B*U')]();}}}}}else{_0x22720e[_0x5e58('0x2af','o1uA')](toastLog,_0x22720e['iyuKl']);exit();}}j=j+0x1;}}if(_0x22720e['ZRSQc'](红,null)){if(_0x22720e[_0x5e58('0x2b0','ztib')](_0x22720e['HTuAb'],_0x22720e['HTuAb'])){var _0x38363b=textContains(_0x22720e['PFvZZ'])[_0x5e58('0xfe','X]ON')]();if(_0x22720e[_0x5e58('0x2b1','W*MJ')](_0x38363b,null)){toastLog(_0x22720e[_0x5e58('0x2b2','lpp5')]);我知道了['click']();}}else{_0x22720e[_0x5e58('0x2b3','WErm')](log,红+'>>\x0a>>\x0a>>\x0a>>>>>>>>>>>>>>>>>>>');直播间['click']();break;}}}}i=i+0x1;}}if(_0x22720e[_0x5e58('0x2b4','o1uA')](在看,null)&&红!=null){_0x22720e[_0x5e58('0x2b5','X$DD')](log,红+_0x5e58('0x2b6','X]ON'));log(_0x22720e['LTEQS']);break;}if(_0x22720e[_0x5e58('0x2b7','Y9)E')](typeof 红,_0x22720e[_0x5e58('0x2b8','chrf')])||_0x22720e[_0x5e58('0x2b9','f3xs')](红,null)){sb++;if(_0x22720e[_0x5e58('0x2ba','p@cE')](sb,0x3)){if(_0x22720e[_0x5e58('0x2bb','zdyr')](_0x5e58('0x2bc','ztib'),'JqE')){var _0x293809=text('取消')[_0x5e58('0x255','X$DD')]();if(_0x22720e['PkMnO'](_0x293809,null)){_0x22720e[_0x5e58('0x2bd',')IlH')](toastLog,_0x5e58('0x2be','chrf'));_0x293809[_0x5e58('0x24b','f3xs')]();}}else{刷新直播间();_0x22720e[_0x5e58('0x2bf','5u[M')](sleep,0xfa0);}}if(z<=0x7&&_0x22720e[_0x5e58('0x2c0','WV5]')](sb,0x3)){if(_0x22720e[_0x5e58('0x2c1','X]ON')](_0x5e58('0x2c2','T%(3'),_0x22720e[_0x5e58('0x2c3','5u[M')])){if(sb>=0x7){sb=0x1;}var _0x787c5a=_0x22720e['enahe'](scrollable,!![])[_0x5e58('0x2c4','Wked')](_0x22720e[_0x5e58('0x2c5','#w[J')])['boundsContains'](device[_0x5e58('0x2c6','xlHp')],device[_0x5e58('0x2c7','0B*U')],device[_0x5e58('0x2c8','chrf')],device['height'])[_0x5e58('0x2c9','T%(3')]();if(_0x787c5a!=null){if(_0x22720e[_0x5e58('0x2ca','&NFZ')](_0x5e58('0x2cb','GHN$'),_0x5e58('0x2cc','z%L6'))){log(私信);var _0x39f373=私信[_0x5e58('0xcb','WV5]')]();if(_0x39f373!=null){_0x39f373['click']();}}else{log(_0x787c5a);_0x787c5a['scrollForward']();}}sleep(0x1f4);}else{var _0x409a5f=text(_0x5e58('0x2cd','Wked'))[_0x5e58('0xba','0B*U')](!![])[_0x5e58('0x149','zdyr')](_0x5e58('0x2ce','ppdB'))[_0x5e58('0xfe','X]ON')]();var _0x1afc7e=_0x22720e[_0x5e58('0x2cf','d]D!')](text,_0x5e58('0x2d0','C!^&'))[_0x5e58('0x2d1','L$Ks')]();var _0x54fa6f=text(_0x22720e[_0x5e58('0x2d2','^A4Q')])['findOnce']();if(_0x409a5f!=null||_0x1afc7e!=null&&_0x22720e[_0x5e58('0x2d3','$Jkv')](_0x54fa6f,null)){log(原价);toastLog(_0x22720e[_0x5e58('0x2d4','WV5]')]);log('7');back();}}}else if(z>0x7&&_0x22720e[_0x5e58('0x2d5','%0CV')](sb,0x3)){if(sb>=0x7){sb=0x1;}var _0x787c5a=scrollable(!![])['className'](_0x22720e['zCujZ'])['boundsContains'](device[_0x5e58('0x2d6','@Saf')]/0x2,device[_0x5e58('0x2d7','i^1K')]/0x2,device[_0x5e58('0x10','o1uA')],_0x22720e[_0x5e58('0x2d8','0B*U')](device[_0x5e58('0x2d7','i^1K')],0x2))['findOnce']();if(_0x22720e['PkMnO'](_0x787c5a,null)){if(_0x22720e['BiJww'](_0x5e58('0x2d9','Us6N'),_0x22720e['iNWyx'])){_0x22720e['enahe'](log,_0x787c5a);_0x787c5a[_0x5e58('0x2da','d]D!')]();}else{_0x22720e[_0x5e58('0x2db','L$Ks')](刷新直播间);_0x22720e['enahe'](sleep,0xfa0);}}_0x22720e['enahe'](sleep,0x1f4);}}_0x22720e[_0x5e58('0x2dc','Yb@8')](sleep,0x3e8);time1++;if(_0x22720e[_0x5e58('0x2dd','T%(3')](time1,0x12)){if(_0x22720e[_0x5e58('0x2de','ApO#')]!=='YEB'){var _0x588908=http[_0x5e58('0x2df','d]D!')](_0x22720e[_0x5e58('0x2e0','*43I')]);var _0x3604b2=_0x588908[_0x5e58('0x2e1','d]D!')][_0x5e58('0x2e2','p^1b')]();return _0x3604b2[_0x5e58('0x2e3','ppdB')];}else{var _0x4fdcdd=_0x5e58('0x2e4','GHN$')['split']('|'),_0x585a5e=0x0;while(!![]){switch(_0x4fdcdd[_0x585a5e++]){case'0':_0x22720e[_0x5e58('0x2e5','@Saf')](结束模块,'映客');continue;case'1':while(!![]){var _0x514bae=text('推荐')[_0x5e58('0x2e6','2NCU')]();if(_0x514bae!=null){toastLog(_0x5e58('0x2e7','5x%&'));break;}_0x22720e[_0x5e58('0x2e8','f3xs')](sleep,0x7d0);}continue;case'2':sleep(0x7d0);continue;case'3':time1=0x1;continue;case'4':app[_0x5e58('0x2e9','f3xs')]('映客');continue;}break;}}}}else{sleep(_0x22720e['JJrYS'](second-0x4,0x44c));}}}function 二级线程(){var _0x2d007f={'PCYvE':_0x5e58('0x2ea','p@cE'),'LhtTe':function _0x4f9208(_0x4094a7,_0x4d22dd){return _0x4094a7!=_0x4d22dd;},'HpmmS':'dRd','kmQwr':function _0x3c6e0b(_0x14497f,_0x5a91a5){return _0x14497f(_0x5a91a5);},'tCxme':function _0x1e294b(_0x5ee74f){return _0x5ee74f();},'qGENf':function _0x224fb4(_0x1196c2,_0x4c4acc){return _0x1196c2<_0x4c4acc;},'ZrGKC':function _0x57478a(_0x3603e9,_0x53a9df){return _0x3603e9===_0x53a9df;},'RSiVP':_0x5e58('0x2eb','WV5]'),'AqjpJ':_0x5e58('0x2ec','WV5]'),'jjfzm':_0x5e58('0x2ed',')IlH'),'btTMg':function _0x3c6808(_0x4a4ceb,_0x499ac0){return _0x4a4ceb(_0x499ac0);},'CZRsV':_0x5e58('0x2ee','ztib'),'HNIml':_0x5e58('0x2ef','5x%&'),'LvYdD':function _0x17778d(_0x3be61d,_0x4aaf13){return _0x3be61d(_0x4aaf13);},'DjTPT':_0x5e58('0x2f0','5x%&'),'yhqQX':function _0x4dffad(_0x4b8365,_0x52bfda){return _0x4b8365/_0x52bfda;},'gaMil':'去认证','Ftazx':function _0xd62d0c(_0x349735,_0x311abb){return _0x349735!=_0x311abb;},'YHxzG':function _0x5c0308(_0x4ffe24,_0x87109a){return _0x4ffe24!==_0x87109a;},'buEEZ':'cBt','RUiIP':function _0x1ae81b(_0x978a33,_0x48ef17){return _0x978a33!=_0x48ef17;},'cvdLM':function _0x374a88(_0x19edb3,_0x68cb79){return _0x19edb3===_0x68cb79;},'feVbK':_0x5e58('0x2f1','p@cE'),'PikEt':function _0x55b429(_0x2ed155,_0x5c7812){return _0x2ed155(_0x5c7812);},'LtTaZ':function _0x33cccc(_0x1d66af,_0x6e2e84){return _0x1d66af!=_0x6e2e84;},'JThRu':'关闭应用','FqxSG':function _0x219e2f(_0x33fa15,_0xd2fe71){return _0x33fa15!==_0xd2fe71;},'zNseX':'eOj','nwotc':_0x5e58('0x2f2','o1uA'),'lagOJ':_0x5e58('0x2f3','d]D!'),'pOOYO':function _0x55d692(_0x1b963d,_0xaabea7){return _0x1b963d(_0xaabea7);},'ZpNfC':function _0x39772a(_0x371f31,_0x30ab42){return _0x371f31(_0x30ab42);},'sOdty':_0x5e58('0x2f4','ApO#'),'QXKZI':_0x5e58('0x2f5',']Zf['),'sLkYU':function _0x3cbeaa(_0x27b67a,_0x2560e0){return _0x27b67a(_0x2560e0);},'RJWXI':function _0x183590(_0x472731,_0xa92ab9){return _0x472731===_0xa92ab9;},'bLzEz':_0x5e58('0x2f6','2NCU'),'DcnOG':_0x5e58('0x2f7','zdyr'),'pvFPQ':_0x5e58('0x2f8',')IlH'),'HkMeG':function _0x21dcdb(_0x43bf9a,_0x346946){return _0x43bf9a(_0x346946);},'wIliQ':function _0x2a9545(_0x1873c4,_0x934183){return _0x1873c4(_0x934183);},'SnMZb':_0x5e58('0x2f9','Yb@8'),'xdLGF':function _0x2f8048(_0x3c66d2,_0x6a48b9){return _0x3c66d2(_0x6a48b9);},'PRNAN':_0x5e58('0x2fa',')IlH'),'Lbvzb':_0x5e58('0x2fb','zdyr'),'TfvpN':'给钱也不要','ZjWIi':function _0x1c0a09(_0x3fa424,_0x1b0795){return _0x3fa424!=_0x1b0795;},'kxCtn':function _0x3dae75(_0x3f7b05,_0x3dcd57){return _0x3f7b05!=_0x3dcd57;},'GDIIy':function _0x519afa(_0x42579b,_0x327739){return _0x42579b!=_0x327739;},'OspWR':function _0x3af876(_0x2d5fe5,_0x5b14e3){return _0x2d5fe5(_0x5b14e3);},'JrSkZ':function _0x49bc5c(_0x517d3b,_0x1bdfcc){return _0x517d3b===_0x1bdfcc;},'jovsO':_0x5e58('0x2fc','WErm'),'lWusu':_0x5e58('0x2fd','WV5]'),'RMIez':function _0x1262ff(_0x55b263,_0x1d4fe2){return _0x55b263*_0x1d4fe2;}};while(!![]){var _0x245609=_0x2d007f[_0x5e58('0x2fe','ygwV')]['split']('|'),_0x1e9520=0x0;while(!![]){switch(_0x245609[_0x1e9520++]){case'0':if(_0x2d007f[_0x5e58('0x2ff','2NCU')](_0x4bee64,null)){if(_0x2d007f['HpmmS']!==_0x2d007f[_0x5e58('0x300','ygwV')]){_0x2d007f[_0x5e58('0x301',')IlH')](log,关闭直播间);关闭直播间[_0x5e58('0x302','[Frg')]();}else{var _0x9bea1d=_0x2d007f[_0x5e58('0x303','0B*U')](find);if(_0x2d007f[_0x5e58('0x304','#Ljn')](_0x9bea1d[_0x5e58('0x305','LTGd')],0xf)){log(_0x4bee64);toastLog('2222');_0x2d007f[_0x5e58('0x306','o1uA')](log,'6');back();}}}continue;case'1':if(_0x550524!=null){if(_0x2d007f['ZrGKC'](_0x2d007f[_0x5e58('0x307','X]ON')],_0x5e58('0x308','Y9)E'))){back();}else{var _0x5952b2=_0x2d007f[_0x5e58('0x306','o1uA')](text,'取消')[_0x5e58('0x309','#Ljn')]();if(_0x5952b2!=null){if(_0x5e58('0x30a','&NFZ')===_0x5e58('0x30b','3r7l')){toastLog(_0x5e58('0x30c','dDiO'));_0x5952b2[_0x5e58('0x30d','p@cE')]();}else{联众滑块();}}}}continue;case'2':var _0x5138f4=textContains(_0x5e58('0x30e','zdyr'))[_0x5e58('0x30f','ppdB')]();continue;case'3':var _0x550524=_0x2d007f[_0x5e58('0x310','X]ON')](textContains,_0x2d007f[_0x5e58('0x311','3r7l')])[_0x5e58('0x9a','f3xs')]();continue;case'4':var _0x1432f5=textContains(_0x2d007f[_0x5e58('0x312','&$0%')])['findOnce']();continue;case'5':var _0xe28352=_0x2d007f[_0x5e58('0x313','5u[M')](text,_0x2d007f[_0x5e58('0x314','3r7l')])['clickable'](!![])['findOnce']();continue;case'6':var _0x49e3c1=_0x2d007f['btTMg'](textContains,'响应')[_0x5e58('0x13c','#Ljn')](![])[_0x5e58('0xca','*43I')]();continue;case'7':var _0x43547a=_0x2d007f[_0x5e58('0x315','GHN$')](textContains,_0x2d007f[_0x5e58('0x316','&NFZ')])[_0x5e58('0x317','T%(3')](_0x5e58('0x318','5u[M'))['clickable'](!![])[_0x5e58('0x15','3r7l')]();continue;case'8':var _0x4bee64=_0x2d007f[_0x5e58('0x319','#w[J')](className,_0x2d007f[_0x5e58('0x31a','#w[J')])[_0x5e58('0x31b','@Saf')](![])[_0x5e58('0x31c','i^1K')](_0x5e58('0x31d','5x%&'))[_0x5e58('0x31e','&$0%')](_0x2d007f[_0x5e58('0x31f','C!^&')](device[_0x5e58('0x27c','ApO#')],2.5),device[_0x5e58('0x320',')IlH')]/2.5,device[_0x5e58('0x321','ygwV')]/1.5,device[_0x5e58('0x322','d]D!')]/1.5)['findOnce']();continue;case'9':if(_0x5138f4!=null){var _0x5952b2=text('取消')[_0x5e58('0x293','p@cE')]();var _0x73774f=text(_0x2d007f[_0x5e58('0x323','d]D!')])[_0x5e58('0x309','#Ljn')]();if(_0x2d007f[_0x5e58('0x324','d]D!')](_0x5952b2,null)&&_0x2d007f['Ftazx'](_0x73774f,null)){while(!![]){if(_0x2d007f[_0x5e58('0x325','z6Qk')](_0x5e58('0x326','d]D!'),_0x2d007f[_0x5e58('0x327','i^1K')])){_0x2d007f[_0x5e58('0x328','5u[M')](log,打招呼);var _0xc420d4=打招呼['parent']();if(_0xc420d4!=null){_0xc420d4[_0x5e58('0x329','Yb@8')]();}}else{toastLog(_0x5e58('0x32a','z%L6'));sleep(0xbb8);}}}}continue;case'10':if(_0x2d007f[_0x5e58('0x32b','@Saf')](_0x44c89a,null)){if(_0x2d007f[_0x5e58('0x32c','%0CV')]('yCQ',_0x2d007f['feVbK'])){log(_0x44c89a);var _0x5f10e3=_0x2d007f['PikEt'](text,_0x5e58('0x32d','dDiO'))['boundsInside'](0x0,0x0,device[_0x5e58('0x32e','$Jkv')],device[_0x5e58('0x32f','&$0%')])[_0x5e58('0x98','zdyr')]();if(_0x2d007f[_0x5e58('0x330','&$0%')](_0x5f10e3,null)){_0x2d007f[_0x5e58('0x331','0B*U')](toastLog,_0x5e58('0x332','^A4Q'));scrollDown();}}else{toastLog(_0x5e58('0x333','&$0%'));exit();}}continue;case'11':var _0xc1b706=_0x2d007f[_0x5e58('0x334','lpp5')](text,'提示')[_0x5e58('0x335','Y9)E')]();continue;case'12':if(_0x49e3c1!=null){var _0x39dd87=text(_0x2d007f[_0x5e58('0x336','X$DD')])['clickable'](!![])[_0x5e58('0x25d','p^1b')]();if(_0x2d007f[_0x5e58('0x337','C!^&')](_0x39dd87,null)){if(_0x2d007f[_0x5e58('0x338','p@cE')](_0x2d007f[_0x5e58('0x339','chrf')],_0x5e58('0x33a','chrf'))){_0x39dd87['click']();}else{_0x2d007f[_0x5e58('0x33b','5x%&')](back);}}}continue;case'13':if(_0xc1b706!=null){if(_0x2d007f['nwotc']===_0x2d007f[_0x5e58('0x33c','o1uA')]){_0x2d007f[_0x5e58('0x33d','Us6N')](log,'抢');抢['click']();sleep(0xbb8);}else{var _0x73a426=_0x2d007f['pOOYO'](text,'残忍拒绝')[_0x5e58('0x98','zdyr')]();if(_0x2d007f[_0x5e58('0x33e','Yb@8')](_0x73a426,null)){toastLog(_0x5e58('0x33f','z%L6'));_0x73a426[_0x5e58('0x340','A*M6')]();}}}continue;case'14':_0x2d007f[_0x5e58('0x341','X]ON')](sleep,0x9c4);continue;case'15':if(_0x2d007f['LtTaZ'](_0xe28352,null)){if('xNB'===_0x5e58('0x342','^A4Q')){var _0x48d68b=_0x2d007f[_0x5e58('0x343','%0CV')](textContains,_0x5e58('0x344','^A4Q'))[_0x5e58('0x2c9','T%(3')]();if(_0x48d68b!=null){toastLog(_0x2d007f[_0x5e58('0x345','5u[M')]);_0xe28352[_0x5e58('0x346','Wked')]();}}else{log(_0x2d007f[_0x5e58('0x347','chrf')]);}}continue;case'16':var _0x5a7e91=_0x2d007f['sLkYU'](textContains,'原价')['clickable'](![])[_0x5e58('0x348','&xi@')](_0x5e58('0x349','WV5]'))[_0x5e58('0x18c','C!^&')]();continue;case'17':if(_0x43547a!=null){if(_0x2d007f[_0x5e58('0x34a','p@cE')](_0x5e58('0x34b','o1uA'),_0x2d007f[_0x5e58('0x34c','Wked')])){_0x39dd87['click']();}else{toastLog(_0x2d007f[_0x5e58('0x34d','2NCU')]);var _0xd581a2=textContains(_0x2d007f['pvFPQ'])[_0x5e58('0x34e','5u[M')](_0x2d007f['DjTPT'])[_0x5e58('0x34f','^A4Q')](!![])[_0x5e58('0x350','Yb@8')]();if(_0x2d007f['LtTaZ'](_0xd581a2,null)){if(_0x2d007f[_0x5e58('0x351','5u[M')]('jgk',_0x5e58('0x352','X]ON'))){var _0x45dfea=_0x2d007f[_0x5e58('0x353','2NCU')](clickable,!![])[_0x5e58('0x354','Yb@8')](直播[_0x5e58('0x355','0B*U')]()['left'],device['height']*0x7/0x8,直播[_0x5e58('0x356','WV5]')]()['right'],直播[_0x5e58('0x357','@Saf')]()[_0x5e58('0x358','p@cE')])['findOnce']();if(_0x45dfea!=null){_0x2d007f[_0x5e58('0x359','xlHp')](log,_0x45dfea);_0x45dfea[_0x5e58('0x129','@Saf')]();}}else{_0x2d007f[_0x5e58('0x35a','dDiO')](log,_0xd581a2);_0x2d007f[_0x5e58('0x35b','ygwV')](log,'5');back();}}}}continue;case'18':if(_0x5a7e91!=null){if('xoE'!==_0x2d007f['SnMZb']){_0x2d007f[_0x5e58('0x35c','&xi@')](toastLog,_0x5e58('0x1d9','Y9)E'));_0x2d007f[_0x5e58('0x35d','*43I')](exit);}else{var _0x30379c=text(_0x2d007f[_0x5e58('0x35e','z%L6')])['clickable'](!![])[_0x5e58('0x35f',']Zf[')](_0x5e58('0x360','i^1K'))[_0x5e58('0x361','&NFZ')]();var _0x5c299c=text(_0x2d007f[_0x5e58('0x362','lpp5')])[_0x5e58('0x363','&$0%')]();var _0x3db619=text(_0x2d007f[_0x5e58('0x364','Y9)E')])['findOnce']();if(_0x2d007f['ZjWIi'](_0x30379c,null)||_0x2d007f[_0x5e58('0x365','p^1b')](_0x5c299c,null)&&_0x2d007f['GDIIy'](_0x3db619,null)){log(_0x5a7e91);_0x2d007f[_0x5e58('0x366','Us6N')](toastLog,'3333');log('7');_0x2d007f[_0x5e58('0x367','X]ON')](back);}}}continue;case'19':if(_0x2d007f[_0x5e58('0x368',']Zf[')](_0x1432f5,null)){var _0x4adebc=text('继续')['clickable'](!![])[_0x5e58('0x369','[Frg')]();if(_0x4adebc!=null){if(_0x2d007f[_0x5e58('0x36a','$Jkv')](_0x2d007f['jovsO'],'hiH')){_0x4adebc[_0x5e58('0x36b','Y9)E')]();}else{log(give);give[_0x5e58('0x1a7',')IlH')]();}}}continue;case'20':var _0x44c89a=text(_0x2d007f[_0x5e58('0x36c','2NCU')])['boundsInside'](0x0,0x0,device[_0x5e58('0x36d','C!^&')],_0x2d007f['RMIez'](device[_0x5e58('0x36e','C!^&')],0x3)/0x5)[_0x5e58('0x21a','%0CV')]();continue;}break;}}}function 刷新直播间(){var _0x143487={'qUmty':function _0x5ded1a(_0x7b84e7,_0x397901){return _0x7b84e7<=_0x397901;},'ykIFL':function _0x4b2399(_0x1dc0ea,_0x3c711e){return _0x1dc0ea/_0x3c711e;},'kfHEX':function _0x3e04b2(_0x569c32,_0x5d2366){return _0x569c32/_0x5d2366;},'mxsLx':function _0x40cff9(_0x5d179d,_0x479c5b){return _0x5d179d!=_0x479c5b;},'RvVvm':function _0x3e9554(_0x162029,_0x156229){return _0x162029!==_0x156229;},'FjIbv':'JUW','aZXPQ':'zxG','gKFYG':function _0xf44057(_0x1e5377,_0x4b5121){return _0x1e5377!=_0x4b5121;},'IelKl':_0x5e58('0x36f','[Frg'),'gKCcp':function _0x2ffae4(_0x382ee7,_0x23f19c){return _0x382ee7(_0x23f19c);},'lcDpv':function _0x17eee9(_0x532521,_0x17121d){return _0x532521/_0x17121d;},'kuIWl':function _0x73ecb2(_0x4ee86b){return _0x4ee86b();},'dxAcJ':function _0x12689d(_0x5d034a,_0x5e1c32){return _0x5d034a>_0x5e1c32;},'pXKvq':function _0x218a5e(_0x5bda8a,_0x2daae8){return _0x5bda8a!==_0x2daae8;},'qopMh':'iiQ','OpYIp':function _0xd164db(_0x4ad28f,_0x36c6a3){return _0x4ad28f(_0x36c6a3);}};z=random(0x1,0xa);if(_0x143487[_0x5e58('0x370','z6Qk')](z,0x7)){var _0x375183=text('推荐')[_0x5e58('0x371','dDiO')](0x0,0x0,_0x143487['ykIFL'](device[_0x5e58('0x372','#Ljn')],0x2),_0x143487['kfHEX'](device['height'],0x8))['findOnce']();if(_0x143487['mxsLx'](_0x375183,null)){if(_0x143487['RvVvm'](_0x143487['FjIbv'],_0x143487[_0x5e58('0x373','&xi@')])){var _0x97b4c9=_0x375183[_0x5e58('0x374','dDiO')]();if(_0x143487[_0x5e58('0x375','#Ljn')](_0x97b4c9,null)){if(_0x143487[_0x5e58('0x376','*43I')](_0x5e58('0x377',']Zf['),_0x143487['IelKl'])){var _0x4f706d=_0x5e58('0x378','d]D!')[_0x5e58('0x379','$Jkv')]('|'),_0x391972=0x0;while(!![]){switch(_0x4f706d[_0x391972++]){case'0':if(_0x143487[_0x5e58('0x37a','Wked')](_0xff5a6b,null)){_0xff5a6b['click']();}continue;case'1':sleep(0x7d0);continue;case'2':检测页面();continue;case'3':var _0xff5a6b=_0x143487[_0x5e58('0x37b','xlHp')](className,_0x5e58('0x37c',')IlH'))[_0x5e58('0x37d','C!^&')]('关注')[_0x5e58('0x37e','LTGd')](!![])[_0x5e58('0x37f','WErm')](!![])[_0x5e58('0x380','i^1K')](0x0,0x0,_0x143487[_0x5e58('0x381','chrf')](device[_0x5e58('0x382','ztib')],0x2),device['height']/0xa)[_0x5e58('0x383','^A4Q')]();continue;case'4':_0x143487[_0x5e58('0x384','ppdB')](页面操作);continue;}break;}}else{_0x97b4c9[_0x5e58('0x385','WErm')]();_0x97b4c9[_0x5e58('0x9e','T%(3')]();}}}else{log(giftp);giftp['click']();}}}else if(_0x143487[_0x5e58('0x386','Y9)E')](z,0x7)){if(_0x143487[_0x5e58('0x387','chrf')](_0x143487[_0x5e58('0x388','$Jkv')],_0x5e58('0x389','p@cE'))){var _0x3dbe4a=_0x143487['OpYIp'](text,'发现')['boundsInside'](0x0,0x0,device[_0x5e58('0x38a','ppdB')]/1.5,_0x143487[_0x5e58('0x38b','Us6N')](device[_0x5e58('0x38c','X]ON')],0x8))['findOnce']();if(_0x3dbe4a!=null){var _0xc81734=_0x3dbe4a[_0x5e58('0x38d','i^1K')]();if(_0xc81734!=null){_0xc81734[_0x5e58('0x102','ppdB')]();_0xc81734['click']();}}}else{var _0x2afc7d=text('继续')['clickable'](!![])[_0x5e58('0x38e','ApO#')]();if(_0x143487[_0x5e58('0x38f','&xi@')](_0x2afc7d,null)){_0x2afc7d[_0x5e58('0x390','zdyr')]();}}}}function bezier_curves(_0xe2ff1c,_0x23c00b){var _0x169d8e={'oYGhy':function _0x18a892(_0x2fbac8,_0x2b0785){return _0x2fbac8-_0x2b0785;},'IAted':function _0x2b65ef(_0x2afe5c,_0x1412c6){return _0x2afe5c-_0x1412c6;},'pmgjq':function _0x54a305(_0x54cf3f,_0x5872af){return _0x54cf3f-_0x5872af;},'AVEig':function _0x12b818(_0x588603,_0x458cf3){return _0x588603-_0x458cf3;},'BPCkU':function _0x406112(_0x3407ed,_0x10a9b4){return _0x3407ed*_0x10a9b4;},'gmBQq':function _0x2bc77e(_0x1a6304,_0x1a1dfc){return _0x1a6304-_0x1a1dfc;},'sjyPO':function _0x2e5166(_0x5c14ac,_0xb7e047){return _0x5c14ac+_0xb7e047;},'LggbZ':function _0x1903f5(_0x568ccf,_0x170dce){return _0x568ccf+_0x170dce;},'Hcful':function _0x5d5dee(_0x45136d,_0x31a29d){return _0x45136d*_0x31a29d;},'pFwnp':function _0x382e3c(_0x4cb035,_0x54863b){return _0x4cb035*_0x54863b;}};cx=0x3*_0x169d8e[_0x5e58('0x391','p^1b')](_0xe2ff1c[0x1]['x'],_0xe2ff1c[0x0]['x']);bx=_0x169d8e[_0x5e58('0x392','ygwV')](0x3*_0x169d8e['pmgjq'](_0xe2ff1c[0x2]['x'],_0xe2ff1c[0x1]['x']),cx);ax=_0xe2ff1c[0x3]['x']-_0xe2ff1c[0x0]['x']-cx-bx;cy=0x3*_0x169d8e[_0x5e58('0x393','C!^&')](_0xe2ff1c[0x1]['y'],_0xe2ff1c[0x0]['y']);by=_0x169d8e[_0x5e58('0x394','5x%&')](0x3,_0xe2ff1c[0x2]['y']-_0xe2ff1c[0x1]['y'])-cy;ay=_0x169d8e[_0x5e58('0x395','lpp5')](_0x169d8e[_0x5e58('0x396','WV5]')](_0xe2ff1c[0x3]['y']-_0xe2ff1c[0x0]['y'],cy),by);tSquared=_0x169d8e['BPCkU'](_0x23c00b,_0x23c00b);tCubed=_0x169d8e[_0x5e58('0x397','dDiO')](tSquared,_0x23c00b);result={'x':0x0,'y':0x0};result['x']=_0x169d8e[_0x5e58('0x398','WErm')](_0x169d8e['LggbZ'](ax*tCubed,_0x169d8e[_0x5e58('0x399','T%(3')](bx,tSquared))+cx*_0x23c00b,_0xe2ff1c[0x0]['x']);result['y']=_0x169d8e['pFwnp'](ay,tCubed)+_0x169d8e[_0x5e58('0x39a','z6Qk')](by,tSquared)+cy*_0x23c00b+_0xe2ff1c[0x0]['y'];return result;}function sml_move(_0x4d2880,_0x58b8e6,_0x1d9198,_0x2a52b0,_0x5eda35){var _0x3bb650={'ZBfbx':_0x5e58('0x39b','5x%&'),'shMbX':function _0x48e306(_0x58b32a){return _0x58b32a();},'PegIw':function _0x8ab555(_0x25f844,_0x2d193d){return _0x25f844(_0x2d193d);},'GXdkA':'point.push(dx','KZsut':function _0x3c2988(_0x3c9f42,_0x101c69){return _0x3c9f42-_0x101c69;},'FyPdX':function _0x1dc5e6(_0x4606c1,_0x32a1a4){return _0x4606c1+_0x32a1a4;},'LqlJB':function _0x23fded(_0x151798,_0x31419b){return _0x151798<_0x31419b;},'uoAqP':function _0x468e50(_0x16eaa7,_0x6a1a0b){return _0x16eaa7(_0x6a1a0b);},'PDEmb':function _0x5d5447(_0x2ac401,_0x45243a,_0x15504e){return _0x2ac401(_0x45243a,_0x15504e);},'OsMJg':function _0x3dd99c(_0xa46a48,_0x514dff){return _0xa46a48(_0x514dff);},'CdIKA':function _0x4d1f45(_0x34fd5f,_0x217c9e,_0x821434){return _0x34fd5f(_0x217c9e,_0x821434);},'agLlH':function _0x3e85cc(_0x832c79,_0xb1854f){return _0x832c79(_0xb1854f);}};var _0x661af6='2|4|10|7|3|5|1|9|6|0|8'['split']('|'),_0x38e8cc=0x0;while(!![]){switch(_0x661af6[_0x38e8cc++]){case'0':log(xxy);continue;case'1':for(var _0x1090a8=0x0;_0x1090a8<0x4;_0x1090a8++){if(_0x5e58('0x39c','Us6N')!=='rrh'){toastLog(_0x3bb650[_0x5e58('0x39d','A*M6')]);_0x3bb650[_0x5e58('0x39e','X$DD')](scrollDown);}else{_0x3bb650[_0x5e58('0x39f','p^1b')](eval,_0x3bb650[_0x5e58('0x3a0','p^1b')]+_0x1090a8+')');}}continue;case'2':xxy=[_0x5eda35];continue;case'3':dx2={'x':random(_0x3bb650['KZsut'](_0x1d9198,0x64),_0x1d9198+0x64),'y':random(_0x2a52b0,_0x3bb650['FyPdX'](_0x2a52b0,0x32))};continue;case'4':point=[];continue;case'5':dx3={'x':_0x1d9198,'y':_0x2a52b0};continue;case'6':for(let _0x47e97a=0x0;_0x3bb650['LqlJB'](_0x47e97a,0x1);_0x47e97a+=0.08){xxyy=[_0x3bb650[_0x5e58('0x3a1','LTGd')](parseInt,_0x3bb650[_0x5e58('0x3a2','T%(3')](bezier_curves,point,_0x47e97a)['x']),_0x3bb650['OsMJg'](parseInt,_0x3bb650[_0x5e58('0x3a3','3r7l')](bezier_curves,point,_0x47e97a)['y'])];xxy['push'](xxyy);}continue;case'7':dx1={'x':_0x3bb650['CdIKA'](random,_0x4d2880-0x64,_0x3bb650[_0x5e58('0x3a4','%0CV')](_0x4d2880,0x64)),'y':_0x3bb650[_0x5e58('0x3a5','f3xs')](random,_0x58b8e6,_0x58b8e6+0x32)};continue;case'8':gesture[_0x5e58('0x3a6','ApO#')](null,xxy);continue;case'9':_0x3bb650[_0x5e58('0x3a7','&NFZ')](log,point[0x3]['x']);continue;case'10':dx0={'x':_0x4d2880,'y':_0x58b8e6};continue;}break;}}function 联众滑块(){var _0x5c209b={'aFmlA':function _0x352859(_0x44d6bf,_0x7f476e){return _0x44d6bf(_0x7f476e);},'LljZt':'android.widget.Image','dmavX':function _0x30555a(_0x2faa20,_0x3aaf4c){return _0x2faa20(_0x3aaf4c);},'NFJjs':function _0x11e935(_0x504df7,_0x5f5c78){return _0x504df7!=_0x5f5c78;},'QvBbc':function _0x5d82fd(_0x4070b7,_0x5f1f0b){return _0x4070b7-_0x5f1f0b;},'mKRuj':function _0x56b3b2(_0x2d8bdf,_0x47c86f){return _0x2d8bdf-_0x47c86f;},'mfKoS':function _0x595aa8(_0x5b8f91){return _0x5b8f91();},'ZeTTp':_0x5e58('0x3a8','xlHp'),'NPVoG':function _0x5c4b4c(_0x1c5e0a,_0x2d23d4){return _0x1c5e0a(_0x2d23d4);},'AvamS':function _0x3c7e13(_0x4842db,_0x166186){return _0x4842db(_0x166186);},'nCVXk':function _0xa68155(_0x24dc6c,_0x530483){return _0x24dc6c-_0x530483;},'hVnnw':function _0x5d99ab(_0x5b91fb,_0x5ae854){return _0x5b91fb(_0x5ae854);},'frFAD':function _0x2b1ac1(_0x34ac57){return _0x34ac57();},'GjLoU':function _0x241f0c(_0x4e1b97,_0x8fa99f){return _0x4e1b97(_0x8fa99f);},'JNREf':_0x5e58('0x3a9','&NFZ'),'fZUae':function _0x40b876(_0x2cb262,_0xf7b61c){return _0x2cb262!=_0xf7b61c;},'TQhUT':function _0x843e5d(_0x29a858,_0x5b5888,_0x4efd60){return _0x29a858(_0x5b5888,_0x4efd60);},'jGsKv':function _0x2aebbc(_0x3e0232,_0x199a5b){return _0x3e0232+_0x199a5b;},'LQgNZ':_0x5e58('0x3aa','5x%&'),'RPHIE':function _0x955f60(_0x12b660){return _0x12b660();},'wVlQc':_0x5e58('0x3ab','LTGd'),'QPcoF':function _0x12ead9(_0x3a768e,_0x4f7289,_0x1ec539,_0xf752ee){return _0x3a768e(_0x4f7289,_0x1ec539,_0xf752ee);},'gQuqT':'1|0|2|3|4|5','WyTCG':function _0x21f159(_0x1cb2b1,_0x346ec8){return _0x1cb2b1(_0x346ec8);},'SRUnZ':function _0xf8d69b(_0x3245da,_0x4ebcb8){return _0x3245da(_0x4ebcb8);},'NqRoD':function _0x4d3490(_0x298074,_0x2b8cd9){return _0x298074(_0x2b8cd9);},'SmkSZ':_0x5e58('0x3ac',']Zf['),'bKHQD':function _0x55f50a(_0x465ba0,_0x3cf0b2){return _0x465ba0>=_0x3cf0b2;},'mpVYu':_0x5e58('0x3ad','z%L6'),'HimAM':_0x5e58('0x3ae','WV5]'),'oBmzO':function _0x44db7b(_0x48189b,_0xd3cacc,_0x57e1ef,_0x409f44,_0x56de9d,_0x33d365){return _0x48189b(_0xd3cacc,_0x57e1ef,_0x409f44,_0x56de9d,_0x33d365);},'QXzOc':'http://quan.suning.com/getSysTime.do','Manfy':_0x5e58('0x3af','zdyr'),'nFYfo':function _0x15ffb4(_0x283483,_0x59cbf1){return _0x283483<_0x59cbf1;},'IKbct':'kkb','GtdkP':_0x5e58('0x3b0','@Saf'),'qdtyL':function _0x575095(_0x11fb47){return _0x11fb47();},'SYGRX':_0x5e58('0x3b1','ztib'),'TtmwJ':function _0x8d465b(_0x1d2784,_0x60c68c){return _0x1d2784(_0x60c68c);},'SPPGq':_0x5e58('0x3b2','&$0%')};var _0x93d709=_0x5c209b[_0x5e58('0x3b3','A*M6')](className,_0x5c209b['LljZt'])[_0x5e58('0x3b4','#Ljn')]('^[A-Za-z0-9]+$')['findOnce']();var _0x30f127=_0x5c209b[_0x5e58('0x3b5','f3xs')](className,_0x5e58('0x3b6','[Frg'))[_0x5e58('0x3b7','i^1K')](_0x5e58('0x3b8','GHN$'))[_0x5e58('0x363','&$0%')]();if(_0x5c209b[_0x5e58('0x3b9','@Saf')](_0x30f127,null)){log(_0x93d709['parent']());var _0x4e92a3=_0x93d709['parent']();var _0x22e97f=_0x4e92a3['bounds']()['left'];var _0xc076de=_0x4e92a3['bounds']()[_0x5e58('0x3ba','Yb@8')];var _0x27472d=_0x5c209b['QvBbc'](_0x4e92a3['bounds']()[_0x5e58('0x3bb','z%L6')],_0x4e92a3['bounds']()[_0x5e58('0x3bc','^A4Q')]);var _0x3cbb2e=_0x5c209b[_0x5e58('0x3bd','#Ljn')](_0x4e92a3[_0x5e58('0x28b','%0CV')]()['bottom'],_0x4e92a3[_0x5e58('0x3be','Y9)E')]()[_0x5e58('0x3bf','chrf')]);_0x5c209b[_0x5e58('0x3c0','@Saf')](log,_0x5e58('0x3c1','ygwV'));img111=images['clip'](_0x5c209b['mfKoS'](captureScreen),0x0,_0xc076de,_0x27472d,_0x3cbb2e);log(_0x5c209b[_0x5e58('0x3c2','$Jkv')]);}if(_0x5c209b[_0x5e58('0x3c3','[Frg')](_0x93d709,null)){var _0x3b55c9=_0x5e58('0x3c4','@Saf')[_0x5e58('0x1a4','#Ljn')]('|'),_0x58d487=0x0;while(!![]){switch(_0x3b55c9[_0x58d487++]){case'0':_0x5c209b['NPVoG'](log,'截图滑块');continue;case'1':_0x5c209b[_0x5e58('0x3c5','z6Qk')](log,_0x93d709['parent']());continue;case'2':var _0x58f95c=_0x93d709[_0x5e58('0x3c6','Yb@8')]();continue;case'3':var _0x4683d3=_0x58f95c[_0x5e58('0x298','5u[M')]()[_0x5e58('0xae','$Jkv')];continue;case'4':var _0x536892=_0x58f95c[_0x5e58('0xab','z%L6')]()['right']-_0x58f95c['bounds']()['left'];continue;case'5':var _0x7fc6e3=_0x5c209b['nCVXk'](_0x58f95c['bounds']()['bottom'],_0x58f95c[_0x5e58('0x3c7','^A4Q')]()['top']);continue;case'6':var _0x1051ae=_0x58f95c[_0x5e58('0x3c8','&NFZ')]()[_0x5e58('0x3c9','d]D!')];continue;case'7':_0x5c209b[_0x5e58('0x3ca','ApO#')](log,_0x5e58('0x3cb','X]ON'));continue;case'8':img111=images[_0x5e58('0x3cc','^A4Q')](_0x5c209b[_0x5e58('0x3cd','xlHp')](captureScreen),0x0,_0x4683d3,_0x536892,_0x7fc6e3);continue;}break;}}while(!![]){if('tJs'!==_0x5e58('0x3ce','o1uA')){var _0x13c548=_0x5c209b[_0x5e58('0x3cf','i^1K')](textContains,_0x5e58('0x3d0','&xi@'))[_0x5e58('0x3d1','ygwV')](0x3e8);var _0x3a8f61=descContains(_0x5c209b['JNREf'])[_0x5e58('0x3d2','3r7l')](0x3e8);if(_0x5c209b['fZUae'](_0x13c548,null)){heights=_0x13c548['bounds']()[_0x5e58('0x3d3','^A4Q')]()+_0x5c209b[_0x5e58('0x3d4','p@cE')](random,-0xa,0xa);break;}else if(_0x3a8f61!=null){heights=_0x5c209b[_0x5e58('0x3d5','p^1b')](_0x3a8f61[_0x5e58('0x28b','%0CV')]()[_0x5e58('0x3d6','WErm')](),_0x5c209b[_0x5e58('0x3d7','Yb@8')](random,-0xa,0xa));break;}}else{log(原价);toastLog(_0x5c209b[_0x5e58('0x3d8','LTGd')]);log('7');_0x5c209b[_0x5e58('0x3d9','3r7l')](back);}}username=_0x5c209b[_0x5e58('0x3da','^A4Q')];password=_0x5e58('0x3db','5x%&');var _0x105e96=_0x5c209b[_0x5e58('0x3dc','&NFZ')](_0x326ba4,username,password,img111)['data'][_0x5e58('0x3dd','Yb@8')];log(_0x105e96);if(typeof _0x105e96!=_0x5e58('0x3de','[Frg')){if(_0x105e96['indexOf']('|')!=-0x1){var _0x41c876=_0x5c209b['gQuqT']['split']('|'),_0x480a00=0x0;while(!![]){switch(_0x41c876[_0x480a00++]){case'0':var _0x498352=_0x5c209b[_0x5e58('0x3df','Wked')](parseInt,_0x105e96[_0x5e58('0x3e0','^A4Q')]('|')[0x1][_0x5e58('0x3e1','p^1b')](',')[0x0]);continue;case'1':var _0x705322=_0x5c209b[_0x5e58('0x3e2','d]D!')](parseInt,_0x105e96[_0x5e58('0x3e3','WV5]')]('|')[0x0][_0x5e58('0x3e4','GHN$')](',')[0x0]);continue;case'2':log(_0x705322);continue;case'3':_0x5c209b[_0x5e58('0x3e5','zdyr')](log,_0x498352);continue;case'4':_0x5c209b[_0x5e58('0x3e6','X]ON')](toastLog,_0x5c209b['SmkSZ']);continue;case'5':if(_0x5c209b['bKHQD'](device[_0x5e58('0x3e7','lpp5')],0x18)){if(_0x5c209b['mpVYu']!==_0x5c209b[_0x5e58('0x3e8','A*M6')]){_0x5c209b[_0x5e58('0x3e9','Us6N')](sml_move,_0x705322,heights,_0x498352,heights,random(0x320,0x640));}else{try{var _0x3213e9=http[_0x5e58('0x3ea','p@cE')](_0x5c209b[_0x5e58('0x3eb','Y9)E')]);var _0x2049ec=_0x3213e9['body'][_0x5e58('0x3ec','f3xs')]();return _0x2049ec[_0x5e58('0x3ed','zdyr')];}catch(_0xad5e56){_0x5c209b['NqRoD'](log,_0x5c209b['Manfy']);return 0x0;}}}else if(_0x5c209b['nFYfo'](device[_0x5e58('0x3ee','&NFZ')],0x18)){if(_0x5c209b[_0x5e58('0x3ef','z%L6')]===_0x5c209b[_0x5e58('0x3f0',')IlH')]){_0x5c209b[_0x5e58('0x3f1','p^1b')](抢红包);}else{Swipe(_0x705322,heights,_0x498352,heights,random(0x320,0x640));}}continue;}break;}}}else{if(_0x5c209b[_0x5e58('0x3f2','WV5]')]===_0x5e58('0x3f3','X$DD')){_0x5c209b[_0x5e58('0x3f4','WErm')](log,_0x5c209b['SPPGq']);}else{_0x5c209b['TtmwJ'](log,_0x5e58('0x3f5','&xi@'));loadtime=0x1;sleep(0x7d0);大哥();_0x5c209b[_0x5e58('0x3f6','T%(3')](回首页);_0x22e97f=0x0;}}function _0x326ba4(_0xa0d5aa,_0xa2b57a,_0x34210d){var _0x41bafe={'BauiP':'1|3|0|2|6|10|7|9|8|4|5','EYOgU':_0x5e58('0x3f7','p^1b'),'ORAiw':function _0x36bb0d(_0xc7f1f9,_0x510509){return _0xc7f1f9+_0x510509;},'KMJtA':_0x5e58('0x3f8','Yb@8'),'NOQdh':';\x20wv)\x20AppleWebKit/537.36\x20(KHTML,\x20like\x20Gecko)\x20Version/4.0\x20Chrome/66.0.3359.126\x20Mobile\x20Safari/537.36','rDLbK':_0x5e58('0x3f9','d]D!'),'Pgesz':'png','Lrhyj':function _0x2e45dc(_0x4836fe,_0x5c769f){return _0x4836fe===_0x5c769f;},'PglmS':'cSm','zdXNU':function _0x74694a(_0x373f79,_0x1c917c){return _0x373f79<_0x1c917c;},'WAxQB':function _0x736b67(_0x2a9395,_0xafd0ac){return _0x2a9395(_0xafd0ac);},'LKoTT':function _0x49e3f7(_0x189627,_0x54cc75){return _0x189627(_0x54cc75);},'WolDL':function _0xbdb783(_0x244c2e,_0x3b1064,_0x227f3d){return _0x244c2e(_0x3b1064,_0x227f3d);},'EXNGB':function _0x1cb035(_0x4c3fd0,_0x9d869c,_0x5af04b){return _0x4c3fd0(_0x9d869c,_0x5af04b);},'CLYsD':function _0x2c1ce5(_0x9387c5,_0x2714e8){return _0x9387c5-_0x2714e8;},'hIZth':function _0x3b764b(_0x417268,_0x43ca63){return _0x417268==_0x43ca63;},'eOSel':_0x5e58('0x3fa',')IlH'),'xweqP':_0x5e58('0x3fb','z%L6'),'yIWtF':_0x5e58('0x3fc','Yb@8')};var _0x15808a=_0x41bafe[_0x5e58('0x3fd','#w[J')]['split']('|'),_0x22935b=0x0;while(!![]){switch(_0x15808a[_0x22935b++]){case'0':try{n=http[_0x5e58('0x3fe','ztib')](_0x41bafe[_0x5e58('0x3ff','5u[M')],{'softwareId':0x45ac,'softwareSecret':_0x5e58('0x400','d]D!'),'username':_0xa0d5aa,'password':_0xa2b57a,'captchaData':_0x488c49,'captchaType':0x51e,'captchaMinLength':0x0,'captchaMaxLength':0x0,'workerTipsId':0x0},{'headers':{'User-Agent':_0x41bafe['ORAiw'](_0x5e58('0x401','&xi@')+_0x3706c1,';\x20')+_0x9fb135+_0x41bafe['KMJtA']+_0x529e69+_0x41bafe['NOQdh']}});}catch(_0x4bb930){return{'code':'-1','msg':_0x41bafe[_0x5e58('0x402','T%(3')],'data':{}};}continue;case'1':http[_0x5e58('0x403','#w[J')][_0x5e58('0x404',']Zf[')](0x7530);continue;case'2':d=n[_0x5e58('0x405','&$0%')][_0x5e58('0x406','Yb@8')](),p=d[_0x5e58('0x407','[Frg')],m=d[_0x5e58('0x408','&$0%')];continue;case'3':var _0x488c49=images[_0x5e58('0x409',']Zf[')](_0x34210d,format=_0x41bafe[_0x5e58('0x40a','d]D!')]),_0x3706c1=device[_0x5e58('0x40b','0B*U')],_0x9fb135=device['model'],_0x529e69=device[_0x5e58('0x40c','Us6N')];continue;case'4':if('0'==p){if(_0x41bafe[_0x5e58('0x40d','#w[J')](_0x5e58('0x40e','W*MJ'),_0x41bafe[_0x5e58('0x40f','5x%&')])){return{'code':p,'msg':m,'data':{'res':d[_0x5e58('0x410','X$DD')][_0x5e58('0x411','3r7l')]}};}else{var _0x7a6b4c=_0x5e58('0x412','f3xs')[_0x5e58('0x3e3','WV5]')]('|'),_0x221d22=0x0;while(!![]){switch(_0x7a6b4c[_0x221d22++]){case'0':dx0={'x':qx,'y':qy};continue;case'1':gesture['apply'](null,xxy);continue;case'2':for(var _0x166815=0x0;_0x41bafe[_0x5e58('0x413','$Jkv')](_0x166815,0x4);_0x166815++){_0x41bafe[_0x5e58('0x414','C!^&')](eval,'point.push(dx'+_0x166815+')');}continue;case'3':point=[];continue;case'4':dx3={'x':zx,'y':zy};continue;case'5':for(let _0x3393ca=0x0;_0x3393ca<0x1;_0x3393ca+=0.08){xxyy=[_0x41bafe[_0x5e58('0x415','xlHp')](parseInt,_0x41bafe[_0x5e58('0x416','ztib')](bezier_curves,point,_0x3393ca)['x']),parseInt(_0x41bafe[_0x5e58('0x417','z6Qk')](bezier_curves,point,_0x3393ca)['y'])];xxy['push'](xxyy);}continue;case'6':log(xxy);continue;case'7':xxy=[time];continue;case'8':dx2={'x':random(_0x41bafe[_0x5e58('0x418','p^1b')](zx,0x64),zx+0x64),'y':_0x41bafe['EXNGB'](random,zy,zy+0x32)};continue;case'9':dx1={'x':random(qx-0x64,qx+0x64),'y':_0x41bafe[_0x5e58('0x419','d]D!')](random,qy,_0x41bafe['ORAiw'](qy,0x32))};continue;case'10':log(point[0x3]['x']);continue;}break;}}}continue;case'5':return d;case'6':if(_0x5e58('0x41a','&xi@')==p)return{'code':p,'msg':m,'data':{}};continue;case'7':if(_0x41bafe[_0x5e58('0x41b','chrf')](_0x41bafe[_0x5e58('0x41c','#w[J')],p))return{'code':p,'msg':m,'data':{}};continue;case'8':if(_0x41bafe['hIZth'](_0x41bafe['xweqP'],p))return{'code':p,'msg':m,'data':{}};continue;case'9':if(_0x5e58('0x41d','5u[M')==p)return{'code':p,'msg':m,'data':{}};continue;case'10':if(_0x41bafe[_0x5e58('0x41e','T%(3')]==p)return{'code':p,'msg':m,'data':{}};continue;}break;}}}function 大哥(){var _0x5bda08={'TEJQI':function _0x5e3d8c(_0x434443,_0x43704e){return _0x434443(_0x43704e);},'tadmc':'ddM','zIOxb':_0x5e58('0x41f',']Zf['),'etRVt':function _0xa2945d(_0x49e113,_0x1ae717){return _0x49e113!=_0x1ae717;},'bqKss':_0x5e58('0x420','p^1b'),'tTOMB':_0x5e58('0x421','WErm'),'RCpeD':function _0x48d073(_0x385e1c,_0x170541){return _0x385e1c!=_0x170541;},'pRhBF':function _0x34bce3(_0x438f36,_0x2829d6){return _0x438f36===_0x2829d6;},'rFoaJ':_0x5e58('0x422','z%L6'),'Cmgjr':function _0x3e5143(_0x2635a0,_0x32e68d){return _0x2635a0(_0x32e68d);},'UyNAX':function _0x2f101c(_0xabd61c,_0xcc13e6){return _0xabd61c!=_0xcc13e6;},'NRtVm':function _0x3a6e21(_0xcd934e,_0x45a119){return _0xcd934e!==_0x45a119;},'yVqec':_0x5e58('0x423','*43I'),'YNmAs':function _0x10d213(_0x370f25,_0xc0ce68){return _0x370f25==_0xc0ce68;},'LFLrQ':_0x5e58('0x424','C!^&'),'NaDKk':function _0x356413(_0x3263aa,_0x495266){return _0x3263aa(_0x495266);},'vqnSk':'2222','OCguL':function _0x44fa6a(_0x405fb9){return _0x405fb9();},'ILZjP':function _0x512483(_0x58cf35,_0x1428ba){return _0x58cf35(_0x1428ba);},'MSXLZ':function _0x9996ac(_0x3ff138,_0x1c28f5){return _0x3ff138(_0x1c28f5);},'YRsnF':_0x5e58('0x425','Yb@8'),'cSgJN':function _0x4c055c(_0xc8033e,_0x4b2601){return _0xc8033e(_0x4b2601);},'dilBH':'风之恋','Opwsk':_0x5e58('0x426','L$Ks'),'TVOpA':'去认证','OXGcM':function _0x52bba5(_0x3918f4,_0x3d64ff){return _0x3918f4!=_0x3d64ff;},'UGSJv':_0x5e58('0x427','3r7l'),'gMRMo':function _0x55de4c(_0x195115,_0x197a03){return _0x195115(_0x197a03);},'LFAZl':'GjE','XkBcB':function _0x3a5b45(_0x2c63ec,_0x18083f){return _0x2c63ec!==_0x18083f;},'BbVNZ':function _0x1fbbff(_0x54a07c,_0x3574f0){return _0x54a07c>=_0x3574f0;},'ThGzJ':function _0x32fcd0(_0xd9c3a0,_0x54bdef){return _0xd9c3a0(_0x54bdef);},'nDbvj':function _0x4b16fd(_0x1e4cba,_0x53447e){return _0x1e4cba!=_0x53447e;},'sCldH':function _0x367308(_0x3edc73,_0x2ad21c){return _0x3edc73(_0x2ad21c);},'YNWsX':function _0x33f65c(_0x1f6964,_0x12e607){return _0x1f6964(_0x12e607);},'uCBeL':function _0x51de65(_0x380e44,_0xe7b46d){return _0x380e44(_0xe7b46d);},'LfzpG':function _0xe6a9da(_0x4b54ed,_0x4a1808){return _0x4b54ed!=_0x4a1808;},'upObm':function _0x14d366(_0x4d97f3,_0x2f564f){return _0x4d97f3!==_0x2f564f;},'NihEm':_0x5e58('0x428','WErm'),'EMlGZ':'tJi','HprSa':function _0xaffdc5(_0x33e692,_0x2eee97,_0x508692){return _0x33e692(_0x2eee97,_0x508692);},'YNGWQ':function _0x27849a(_0x521c7c,_0x49a567){return _0x521c7c(_0x49a567);},'DzfQk':_0x5e58('0x429','Wked'),'BdyCn':function _0x501556(_0xe51ef4,_0x57e00a){return _0xe51ef4(_0x57e00a);},'FSnXq':function _0x27833b(_0x3e64b8,_0x49b264){return _0x3e64b8*_0x49b264;},'CopRR':_0x5e58('0x42a','$Jkv'),'HHMpB':_0x5e58('0x42b','0B*U'),'bzZXa':function _0x1565be(_0x4cf39e,_0x402b0f,_0x477bb5){return _0x4cf39e(_0x402b0f,_0x477bb5);},'pKVyO':function _0x12fc05(_0x11a04b,_0x483b67){return _0x11a04b<_0x483b67;},'oBvIt':function _0xffec44(_0x11a29d,_0x23d912){return _0x11a29d!==_0x23d912;},'uHGla':_0x5e58('0x42c','5u[M'),'JJMWe':function _0x5ef369(_0x35704d,_0x202aa3){return _0x35704d(_0x202aa3);},'TngIK':_0x5e58('0x42d','T%(3'),'Jazvo':function _0x58b2d3(_0x5bca40,_0x37cff6){return _0x5bca40-_0x37cff6;},'yrUeE':function _0x3e2e51(_0x5d689f,_0x191c03){return _0x5d689f===_0x191c03;},'fTPRl':function _0x4a52f9(_0x3b08ad,_0x597902){return _0x3b08ad!=_0x597902;},'kugDp':_0x5e58('0x42e','o1uA'),'pHZuJ':function _0x5438c4(_0x3bcfc5,_0x15d273){return _0x3bcfc5+_0x15d273;},'sZQio':function _0x336caf(_0x1140c3,_0x479611){return _0x1140c3+_0x479611;},'vkbCC':'已抢:','BCCSZ':function _0x2d8513(_0x30ee25,_0x5e5333){return _0x30ee25(_0x5e5333);},'QYPwJ':function _0x4d3911(_0x36a649,_0x4b30a1){return _0x36a649<=_0x4b30a1;},'UDxjc':function _0x1c172e(_0x5ad951,_0x48ca69){return _0x5ad951===_0x48ca69;},'bscfU':_0x5e58('0x42f','X$DD'),'PoZYe':'NwF','watOb':function _0x5994d2(_0x163811,_0x458fe7){return _0x163811(_0x458fe7);},'lNPrR':function _0x4f8795(_0x24a4cc,_0x7eea9e){return _0x24a4cc!==_0x7eea9e;},'CBecK':_0x5e58('0x430','xlHp'),'tfrmu':'TTu','GwmaA':_0x5e58('0x431','ppdB'),'xeryG':_0x5e58('0x432',')IlH'),'CjjAV':function _0x2b1e41(_0x2ef236,_0xda146e){return _0x2ef236-_0xda146e;},'rvfTo':function _0x5593d5(_0x2f4aeb,_0x26f439){return _0x2f4aeb>_0x26f439;},'vtKsO':'5555','JTGeU':function _0x1aa57f(_0x5b0a17,_0x29ae83){return _0x5b0a17<=_0x29ae83;},'saSKU':function _0x41e77d(_0x14a4df,_0x2d1be6){return _0x14a4df(_0x2d1be6);},'keaTN':function _0x494db4(_0x26d264,_0x13cece){return _0x26d264-_0x13cece;},'hHQuR':_0x5e58('0x433','X]ON'),'mJNjh':_0x5e58('0x434','5x%&')};_0x5bda08[_0x5e58('0x435','z%L6')](log,'make'+device['model']);while(!![]){log(_0x5e58('0x436','chrf'));try{if(_0x5e58('0x437','ztib')!==_0x5bda08[_0x5e58('0x438','p^1b')]){app['startActivity']({'data':_0x5bda08[_0x5e58('0x439','z%L6')]});}else{var _0x2f9d32=zym2['parent']();if(_0x5bda08['etRVt'](_0x2f9d32,null)){_0x2f9d32[_0x5e58('0x30d','p@cE')]();_0x2f9d32['click']();}}}catch(_0x37dd4d){log(_0x37dd4d);}var _0x3cfa40=text(_0x5e58('0x43a','A*M6'))[_0x5e58('0x219','chrf')](!![])['findOne'](0x4e20);log(_0x5bda08[_0x5e58('0x43b','Us6N')]+_0x3cfa40);if(_0x5bda08[_0x5e58('0x43c','zdyr')](_0x3cfa40,null)){var _0xcdb508=text('关注')[_0x5e58('0x43d','2NCU')](!![])['findOnce']();log(_0x5bda08[_0x5e58('0x43e','ygwV')]);if(_0x5bda08[_0x5e58('0x43f','o1uA')](_0xcdb508,null)){_0xcdb508[_0x5e58('0x440','*43I')]();}_0x3cfa40[_0x5e58('0x441','GHN$')]();sleep(0x7d0);while(!![]){if(_0x5bda08[_0x5e58('0x442','ApO#')](_0x5e58('0x443','lpp5'),_0x5bda08['rFoaJ'])){return!![];}else{_0x5bda08[_0x5e58('0x444','i^1K')](log,'in');var _0xee137e=_0x5bda08['Cmgjr'](text,_0x5e58('0x43a','A*M6'))[_0x5e58('0xba','0B*U')](![])[_0x5e58('0xf5','o1uA')]();if(_0x5bda08[_0x5e58('0x445','#Ljn')](_0xee137e,null)){if(_0x5bda08[_0x5e58('0x446','WV5]')](_0x5e58('0x447','Y9)E'),_0x5bda08['yVqec'])){setText(_0x5e58('0x448','0B*U'));}else{break;}}else if(_0x5bda08[_0x5e58('0x449','X]ON')](_0xee137e,null)){if('ITF'!==_0x5bda08[_0x5e58('0x44a','Y9)E')]){_0x5bda08[_0x5e58('0x44b','5x%&')](log,升级);_0x5bda08['NaDKk'](toastLog,_0x5bda08[_0x5e58('0x44c','d]D!')]);log('6');_0x5bda08[_0x5e58('0x44d','o1uA')](back);}else{_0x3cfa40[_0x5e58('0x44e','&$0%')]();}}sleep(0x7d0);}}_0x5bda08[_0x5e58('0x44f','ppdB')](log,_0x5e58('0x450','*43I'));break;}else if(_0x3cfa40==null){_0x5bda08[_0x5e58('0x451','$Jkv')](log,_0x5bda08[_0x5e58('0x452','3r7l')]);结束模块('映客');}_0x5bda08['cSgJN'](sleep,0x3e8);}while(!![]){var _0x3cfa40=text(_0x5bda08['dilBH'])['clickable'](!![])[_0x5e58('0x17','&xi@')]();if(_0x3cfa40!=null){if(_0x5bda08[_0x5e58('0x453',']Zf[')]!==_0x5bda08[_0x5e58('0x454','p^1b')]){var _0x52a1b5=text('取消')['findOnce']();var _0x3c12a2=_0x5bda08['cSgJN'](text,_0x5bda08[_0x5e58('0x455','5x%&')])[_0x5e58('0xfe','X]ON')]();if(_0x52a1b5!=null&&_0x5bda08[_0x5e58('0x456','WV5]')](_0x3c12a2,null)){while(!![]){_0x5bda08[_0x5e58('0x457','&xi@')](toastLog,_0x5bda08[_0x5e58('0x458','p@cE')]);_0x5bda08['gMRMo'](sleep,0xbb8);}}}else{_0x3cfa40[_0x5e58('0x459','%0CV')]();}}var _0x1a755b=text('私信')[_0x5e58('0xf1','5u[M')]();if(_0x1a755b!=null){if(_0x5bda08[_0x5e58('0x45a','Us6N')](_0x5e58('0x45b','GHN$'),_0x5bda08[_0x5e58('0x45c','zdyr')])){log(_0x1a755b);var _0x5b3fc7=_0x1a755b[_0x5e58('0xa2','GHN$')]();if(_0x5b3fc7!=null){if(_0x5bda08[_0x5e58('0x45d','C!^&')](_0x5e58('0x45e','[Frg'),_0x5e58('0x45f','T%(3'))){open=0x0;}else{_0x5b3fc7[_0x5e58('0x302','[Frg')]();}}}else{if(_0x5bda08[_0x5e58('0x460','ygwV')](sb,0x7)){sb=0x1;}var _0x26ae0e=_0x5bda08['ThGzJ'](scrollable,!![])[_0x5e58('0x461','d]D!')](_0x5e58('0x462','[Frg'))[_0x5e58('0x463','$Jkv')](device[_0x5e58('0x464','WErm')],device[_0x5e58('0x11','ApO#')],device[_0x5e58('0x465','X]ON')],device[_0x5e58('0x466','dDiO')])[_0x5e58('0x1b2','Wked')]();if(_0x5bda08[_0x5e58('0x467',']Zf[')](_0x26ae0e,null)){_0x5bda08[_0x5e58('0x468','o1uA')](log,_0x26ae0e);_0x26ae0e[_0x5e58('0x469','*43I')]();}_0x5bda08['YNWsX'](sleep,0x1f4);}}var _0x12dfc3=text(_0x5e58('0x46a','z6Qk'))[_0x5e58('0x244','#w[J')]();if(_0x5bda08[_0x5e58('0x46b','&NFZ')](_0x12dfc3,null)){_0x5bda08[_0x5e58('0x46c','WErm')](log,_0x12dfc3);var _0xa50311=_0x12dfc3[_0x5e58('0x46d','^A4Q')]();if(_0xa50311!=null){_0xa50311[_0x5e58('0x329','Yb@8')]();}}sleep(0x7d0);var _0x38e236=text('1')['clickable'](![])[_0x5e58('0x335','Y9)E')]();var _0x445ede=text('10')[_0x5e58('0x128','&xi@')](![])[_0x5e58('0x38','@Saf')]();if(_0x5bda08[_0x5e58('0x46e','z6Qk')](_0x38e236,null)&&_0x5bda08[_0x5e58('0x46f','Wked')](_0x445ede,null)){if(_0x5bda08[_0x5e58('0x470','%0CV')](_0x5e58('0x471','dDiO'),'xdv')){红包[_0x5e58('0x472','p^1b')]();}else{break;}}else if(_0x5bda08['YNmAs'](_0x38e236,null)||_0x445ede==null){if(_0x5bda08['upObm'](_0x5bda08[_0x5e58('0x473','d]D!')],_0x5bda08[_0x5e58('0x474','#Ljn')])){var _0x57530c=text('送礼搭讪')[_0x5e58('0x475','Us6N')](![])[_0x5e58('0x476','d]D!')]();if(_0x57530c!=null){var _0x4c3098=clickable(!![])['boundsContains'](_0x57530c['bounds']()[_0x5e58('0x477','5x%&')],_0x57530c['bounds']()['top'],_0x57530c[_0x5e58('0x478','5x%&')]()[_0x5e58('0x479','W*MJ')],_0x57530c[_0x5e58('0x2ab','C!^&')]()[_0x5e58('0x47a','W*MJ')])['boundsInside'](0xa,device['height']/0x2,device[_0x5e58('0x47b','A*M6')],device[_0x5e58('0x47c','Y9)E')])[_0x5e58('0x1b2','Wked')]();if(_0x4c3098!=null){log(_0x4c3098);_0x4c3098[_0x5e58('0x340','A*M6')]();}}else{if(_0x5bda08[_0x5e58('0x470','%0CV')](_0x5e58('0x47d',')IlH'),_0x5e58('0x47e','Wked'))){xxyy=[parseInt(_0x5bda08[_0x5e58('0x47f','WV5]')](bezier_curves,point,i)['x']),_0x5bda08[_0x5e58('0x480','z%L6')](parseInt,bezier_curves(point,i)['y'])];xxy[_0x5e58('0x481',']Zf[')](xxyy);}else{var _0x1ba270=_0x5bda08[_0x5e58('0x482','xlHp')](textContains,_0x5bda08[_0x5e58('0x483','[Frg')])[_0x5e58('0x484','xlHp')]();if(_0x5bda08[_0x5e58('0x485','L$Ks')](_0x1ba270,null)){_0x5bda08['OCguL'](back);}}}}else{setText(_0x5e58('0x486',')IlH'));}}_0x5bda08[_0x5e58('0x487','GHN$')](sleep,0x7d0);}v=_0x5bda08['FSnXq'](vv,0.15);while(!![]){if(_0x5bda08['CopRR']!==_0x5e58('0x488','T%(3')){var _0x4ef460=_0x5bda08[_0x5e58('0x489','$Jkv')](textContains,_0x5bda08[_0x5e58('0x48a','Us6N')])['findOnce']();if(_0x4ef460!=null){if('MCt'===_0x5e58('0x48b','GHN$')){_0x5bda08['BdyCn'](toastLog,_0x5bda08[_0x5e58('0x48c','i^1K')]);_0x5bda08[_0x5e58('0x48d','2NCU')](sleep,0xbb8);}else{mq++;_0x5bda08[_0x5e58('0x48e','5u[M')](click,'取消',0x0);break;}}log('v:'+v);if(_0x5bda08[_0x5e58('0x48f','X]ON')](v,0xa)){var _0x2984f9=text('1')[_0x5e58('0x490','L$Ks')](![])[_0x5e58('0x132','W*MJ')](0x1f4);if(_0x2984f9!=null){if(_0x5bda08[_0x5e58('0x491','LTGd')](_0x5bda08[_0x5e58('0x492','GHN$')],_0x5bda08['uHGla'])){b[_0x5e58('0x493','i^1K')]();}else{var _0x4ea875=_0x5bda08['JJMWe'](clickable,!![])[_0x5e58('0x494','3r7l')](_0x2984f9[_0x5e58('0xab','z%L6')]()[_0x5e58('0x495','T%(3')],_0x2984f9['bounds']()[_0x5e58('0x496','zdyr')],_0x2984f9[_0x5e58('0x497','ApO#')]()[_0x5e58('0x498','2NCU')],_0x2984f9[_0x5e58('0x28c','WErm')]()[_0x5e58('0x499','L$Ks')])[_0x5e58('0x49a','3r7l')]();log(_0x4ea875);mq=0x1;while(!![]){if(_0x5bda08[_0x5e58('0x491','LTGd')]('ClJ',_0x5bda08[_0x5e58('0x49b',')IlH')])){发送按钮[_0x5e58('0x262','2NCU')]();}else{_0x4ea875[_0x5e58('0x27','lpp5')]();v=_0x5bda08[_0x5e58('0x49c','p@cE')](v,0x1);var _0x4ef460=_0x5bda08['JJMWe'](textContains,_0x5e58('0x49d','ApO#'))[_0x5e58('0x361','&NFZ')]();if(_0x4ef460!=null){if(_0x5bda08[_0x5e58('0x49e','ygwV')]('ZNd','ZNd')){mq++;click('取消',0x0);break;}else{var _0x2079fa='2|6|9|8|0|7|3|1|4|5'['split']('|'),_0x375b13=0x0;while(!![]){switch(_0x2079fa[_0x375b13++]){case'0':log(q4);continue;case'1':log(_0x5e58('0x49f','W*MJ'));continue;case'2':r=0xa;continue;case'3':if(_0x5bda08['fTPRl'](q2,null)){var _0x277cb1=className(_0x5bda08['kugDp'])[_0x5e58('0x4a0','[Frg')](![])[_0x5e58('0x4a1','X$DD')](_0x5e58('0x4a2','ztib'))[_0x5e58('0xf5','o1uA')]();if(_0x277cb1!=null){v=Number(_0x277cb1[_0x5e58('0x37d','C!^&')]());if(isNaN(v)==![]){vv=_0x5bda08[_0x5e58('0x4a3','o1uA')](vv,v);log(_0x5bda08[_0x5e58('0x4a4',')IlH')](_0x5bda08[_0x5e58('0x4a5','Us6N')](_0x5bda08[_0x5e58('0x4a6','f3xs')],vv),'钻石'));}}_0x5bda08['JJMWe'](sleep,0x3e8);}continue;case'4':sleep(0x3e8);continue;case'5':back();continue;case'6':_0x5bda08[_0x5e58('0x4a7','2NCU')](log,q1);continue;case'7':_0x5bda08[_0x5e58('0x4a8','%0CV')](log,q5);continue;case'8':log(q3);continue;case'9':log(q2);continue;}break;}}}if(_0x5bda08['QYPwJ'](v,0x0)){break;}if(mq>0x1){if(_0x5bda08[_0x5e58('0x4a9','3r7l')](_0x5bda08[_0x5e58('0x4aa','WErm')],_0x5bda08[_0x5e58('0x4ab','dDiO')])){var _0xcda40e=text('推荐')[_0x5e58('0x4ac','Y9)E')](0x0,0x0,device[_0x5e58('0x4ad','%0CV')]/0x2,device[_0x5e58('0x11','ApO#')]/0x8)['findOnce']();if(_0xcda40e!=null){var _0x21befd=_0xcda40e[_0x5e58('0x4ae',']Zf[')]();if(_0x21befd!=null){_0x21befd[_0x5e58('0x440','*43I')]();_0x21befd[_0x5e58('0x340','A*M6')]();}}}else{break;}}_0x5bda08[_0x5e58('0x4af','i^1K')](sleep,random(0x7d0,0xbb8));}}}}}else if(v>=0xa){if(_0x5bda08[_0x5e58('0x4b0','dDiO')](_0x5bda08[_0x5e58('0x4b1','chrf')],'Xtl')){var _0x57ea14=text('10')['clickable'](![])[_0x5e58('0x4b2','z%L6')](0x1f4);if(_0x57ea14!=null){if(_0x5bda08['lNPrR'](_0x5bda08[_0x5e58('0x4b3','T%(3')],'UdQ')){var _0x2431c1=clickable(!![])[_0x5e58('0x4b4','A*M6')](_0x57ea14['bounds']()['left'],_0x57ea14[_0x5e58('0x4b5',')IlH')]()[_0x5e58('0x4b6','p^1b')],_0x57ea14[_0x5e58('0x356','WV5]')]()[_0x5e58('0x4b7','@Saf')],_0x57ea14[_0x5e58('0x2ac','lpp5')]()[_0x5e58('0x358','p@cE')])['find']();log(_0x2431c1);mq=0x1;while(!![]){if(_0x5bda08[_0x5e58('0x4b8','d]D!')]!==_0x5bda08[_0x5e58('0x4b9','GHN$')]){_0x2431c1['click']();v=_0x5bda08[_0x5e58('0x4ba','&NFZ')](v,0xa);var _0x4ef460=textContains('钻石不足')[_0x5e58('0x476','d]D!')]();if(_0x5bda08[_0x5e58('0x4bb','3r7l')](_0x4ef460,null)){mq++;click('取消',0x0);break;}if(v<0xa){break;}if(_0x5bda08[_0x5e58('0x4bc','LTGd')](mq,0x1)){break;}sleep(_0x5bda08['bzZXa'](random,0x7d0,0xbb8));}else{sb=0x1;}}}else{toastLog(_0x5bda08[_0x5e58('0x4bd','#w[J')]);取消[_0x5e58('0x67',']Zf[')]();}}}else{私信p[_0x5e58('0x440','*43I')]();}}if(typeof mq!=_0x5e58('0x4be','zdyr')){log(v);if(_0x5bda08[_0x5e58('0x4bf','Yb@8')](v,0x0)||mq>0x1){if('caC'!=='caC'){_0x5bda08[_0x5e58('0x4c0','&xi@')](log,子滑块[_0x5e58('0x38d','i^1K')]());var _0x204782=子滑块[_0x5e58('0xa1','o1uA')]();var _0x85e2d1=_0x204782['bounds']()[_0x5e58('0x4c1','ztib')];var _0x214c6e=_0x204782[_0x5e58('0xa5','p@cE')]()['top'];var _0x157a16=_0x204782['bounds']()[_0x5e58('0x4c2','ygwV')]-_0x204782[_0x5e58('0x23a','GHN$')]()[_0x5e58('0x4c3','&xi@')];var _0xfb6640=_0x5bda08['keaTN'](_0x204782[_0x5e58('0x4c4','T%(3')]()[_0x5e58('0x4c5',')IlH')],_0x204782[_0x5e58('0x478','5x%&')]()[_0x5e58('0x4c6','p@cE')]);log(_0x5bda08[_0x5e58('0x4c7','#Ljn')]);img111=images['clip'](captureScreen(),0x0,_0x214c6e,_0x157a16,_0xfb6640);_0x5bda08['saSKU'](log,_0x5bda08[_0x5e58('0x4c8','0B*U')]);}else{vv=0x0;break;}}}sleep(0x1388);}else{if(红包!=null){红包['click']();}}}}function delt(){var _0x1d6612={'WgkFo':function _0xaa4d7f(_0x29b499,_0x29cf50){return _0x29b499>_0x29cf50;},'XsBNe':function _0x12f439(_0x3116da){return _0x3116da();},'SnmdN':_0x5e58('0x4c9','chrf')};var _0x4902e8=_0x3e6f29(0x125f3b3c4a40);if(_0x4902e8){toastLog(_0x1d6612['SnmdN']);exit();}function _0x3e6f29(_0x87765a){if(_0x1d6612[_0x5e58('0x4ca','5u[M')](_0x1d6612['XsBNe'](_0xc1dd9d),_0x87765a)){return!![];}else{return![];}}function _0xc1dd9d(){var _0x4c82e6={'beVbx':_0x5e58('0x4cb','@Saf'),'NtFBN':'http://quan.suning.com/getSysTime.do','qjvhg':function _0x437869(_0x3cd2e9,_0x1d6774){return _0x3cd2e9(_0x1d6774);}};if(_0x4c82e6[_0x5e58('0x4cc','ppdB')]!==_0x5e58('0x4cd','&xi@')){try{var _0x174110=http[_0x5e58('0x4ce','W*MJ')](_0x4c82e6[_0x5e58('0x4cf','%0CV')]);var _0x2819be=_0x174110[_0x5e58('0x405','&$0%')][_0x5e58('0x4d0','A*M6')]();return _0x2819be[_0x5e58('0x4d1','5u[M')];}catch(_0x30fdb6){_0x4c82e6[_0x5e58('0x4d2','5u[M')](log,_0x5e58('0x4d3','A*M6'));return 0x0;}}else{timel=0x0;}}}function 回首页(){var _0x32285a={'NYAQV':function _0x25ba83(_0x49150e,_0x6584fc){return _0x49150e(_0x6584fc);},'qzkKn':'android.widget.TextView','LuEcF':function _0x3f4c68(_0x2c9c15,_0x32e63d){return _0x2c9c15!=_0x32e63d;},'gyqNg':function _0x540308(_0x1cd616,_0x1a1768){return _0x1cd616==_0x1a1768;},'UUOjk':function _0x3034f3(_0x2384d5){return _0x2384d5();},'kCthF':function _0x158d05(_0x48afaf,_0x131763){return _0x48afaf(_0x131763);},'FPwSi':function _0x40504f(_0x5d71f7,_0x11c359){return _0x5d71f7===_0x11c359;},'GtcHv':'Sog','aztAP':function _0x2fef1a(_0x5a7c7e,_0x5c0c00){return _0x5a7c7e>=_0x5c0c00;},'LWoPJ':function _0x3a25f2(_0x4bffa9,_0x45f38b){return _0x4bffa9/_0x45f38b;},'ciTcs':function _0x5683aa(_0x2089a1,_0x3cd1e4){return _0x2089a1/_0x3cd1e4;},'GDsjG':function _0x384641(_0x4aa829,_0x1b7837){return _0x4aa829(_0x1b7837);},'oeEvh':function _0x150709(_0x4a63cc,_0x8f0fda){return _0x4a63cc(_0x8f0fda);}};while(!![]){var _0x533c5b=_0x32285a[_0x5e58('0x4d4','chrf')](text,'推荐')[_0x5e58('0x4d5','3r7l')](![])['findOnce']();var _0x15a20d=_0x32285a['NYAQV'](text,'直播')['className'](_0x32285a['qzkKn'])['findOnce']();if(_0x15a20d!=null&&_0x533c5b!=null){toastLog(_0x5e58('0x4d6','WErm'));break;}else if(_0x32285a[_0x5e58('0x4d7','dDiO')](_0x15a20d,null)&&_0x32285a[_0x5e58('0x4d8','z6Qk')](_0x533c5b,null)){var _0xaf7d82=_0x32285a[_0x5e58('0x4d9','xlHp')](clickable,!![])[_0x5e58('0x4da',')IlH')](_0x15a20d[_0x5e58('0x4db','X]ON')]()[_0x5e58('0x29d','W*MJ')],device[_0x5e58('0xf','Yb@8')]*0x7/0x8,_0x15a20d[_0x5e58('0xa3','&xi@')]()[_0x5e58('0x4dc','0B*U')],_0x15a20d[_0x5e58('0xab','z%L6')]()[_0x5e58('0x4dd','Wked')])['findOnce']();if(_0xaf7d82!=null){_0x32285a['NYAQV'](log,_0xaf7d82);_0xaf7d82[_0x5e58('0x4de','d]D!')]();}}else{var _0x46c137=_0x32285a['NYAQV'](packageName,_0x5e58('0x4df','[Frg'))[_0x5e58('0xb9','WV5]')]();if(_0x46c137!=null){_0x32285a[_0x5e58('0x4e0','L$Ks')](back);}_0x32285a[_0x5e58('0x4e1','ygwV')](sleep,0x7d0);var _0x527f3e=_0x32285a[_0x5e58('0x4e2','X$DD')](textContains,'离开')['clickable'](!![])['findOnce']();if(_0x32285a[_0x5e58('0x4e3','#Ljn')](_0x527f3e,null)){_0x527f3e[_0x5e58('0x1fc','xlHp')]();}}_0x32285a[_0x5e58('0x4e4','#w[J')](sleep,0x7d0);var _0x46c137=packageName('com.meelive.ingkee')['findOnce']();if(_0x32285a[_0x5e58('0x4e5','Wked')](_0x46c137,null)){if(_0x32285a[_0x5e58('0x4e6','o1uA')]('BLa',_0x32285a[_0x5e58('0x4e7','X]ON')])){if(_0x32285a['aztAP'](sb,0x7)){sb=0x1;}var _0x4c3f30=_0x32285a['kCthF'](scrollable,!![])[_0x5e58('0x4e8','f3xs')](_0x5e58('0x4e9','%0CV'))['boundsContains'](_0x32285a['LWoPJ'](device[_0x5e58('0x4ea','z6Qk')],0x2),_0x32285a[_0x5e58('0x4eb','zdyr')](device[_0x5e58('0x4ec','lpp5')],0x2),device[_0x5e58('0x4ed','WV5]')],_0x32285a[_0x5e58('0x4ee','W*MJ')](device[_0x5e58('0x466','dDiO')],0x2))[_0x5e58('0x1f1','chrf')]();if(_0x4c3f30!=null){_0x32285a[_0x5e58('0x4ef','%0CV')](log,_0x4c3f30);_0x4c3f30[_0x5e58('0x4f0','5x%&')]();}_0x32285a[_0x5e58('0x4f1','z6Qk')](sleep,0x1f4);}else{app[_0x5e58('0x4f2','T%(3')]('映客');}}}}rewq=0x1;if(!requestScreenCapture()){toast('请求截图失败');exit();}vv=0x0;threads[_0x5e58('0x4fd','LTGd')](function(){二级线程();});loadtime=0x1;swith=0x0;回首页();sleep(0x7d0);打开直播间();sleep(0xbb8);x=0x0;secrandom=random(0xfa0,0x1b58);while(!![]){cs=0x1;csl=random(0x2,0x4);while(!![]){cs++;log(_0x5e58('0x4fe',']Zf[')+cs);if(cs>csl){识别红包();log(_0x5e58('0x4ff','WV5]')+fhz);if(fhz!=0x1){break;}if(fhz==0x1){抢红包();}}检测页面();if(jc==0x1){var _0x16b89d=_0x5e58('0x500','xlHp')['split']('|'),_0x330fc9=0x0;while(!![]){switch(_0x16b89d[_0x330fc9++]){case'0':识别红包();continue;case'1':qqq=0x1;continue;case'2':log(_0x5e58('0x501','Y9)E')+fhz);continue;case'3':sleep(0x7d0);continue;case'4':while(!![]){toastLog('我在看直播'+qqq);识别红包();log(_0x5e58('0x502','^A4Q')+fhz);if(fhz==0x1){抢红包();}sleep(0x7d0);if(qqq>=random(0x3,0x5)){break;}qqq++;}continue;case'5':if(fhz!=0x1){scrollDown();}continue;case'6':if(fhz==0x1){抢红包();}continue;case'7':模拟人();continue;}break;}}else if(jc==0x2){刷新直播间();sleep(0x7d0);打开直播间();sleep(0xbb8);}else if(jc==0x3){结束模块('映客');sleep(0x7d0);app['launchApp']('映客');while(!![]){var 推荐=text('推荐')[_0x5e58('0x1f1','chrf')]();if(推荐!=null){toastLog(_0x5e58('0x503','p@cE'));break;}sleep(0x7d0);}}sleep(0x3e8);}while(!![]){检测页面();if(jc==0x1){var 关闭直播间=className('android.widget.ImageView')['clickable'](!![])[_0x5e58('0x504','L$Ks')]('映客')['boundsInside'](device[_0x5e58('0x505','5u[M')]*0x3/0x4,device[_0x5e58('0x506','p^1b')]*0x3/0x4,device[_0x5e58('0x507','W*MJ')],device['height'])[_0x5e58('0x25d','p^1b')]();if(关闭直播间!=null){log(关闭直播间);关闭直播间[_0x5e58('0x103','&NFZ')]();}}else if(jc=0x2){刷新直播间();sleep(0x7d0);打开直播间();sleep(0xbb8);检测页面();if(jc=0x1){break;}}else if(jc==0x3){结束模块('映客');sleep(0x7d0);app[_0x5e58('0x508','WErm')]('映客');}}if(vv>=0x14){log(_0x5e58('0x509','^A4Q'));loadtime=0x1;sleep(0x7d0);大哥();回首页();x=0x0;}};if(!(typeof encode_version!=='undefined'&&encode_version===_0x5e58('0x50a','Us6N'))){window[_0x5e58('0x267','&NFZ')](_0x5e58('0x50b','Us6N'));};encode_version = 'sojson.v5';
    
        });
    
    });
    
    }
    


//=====================================================================================================================
//=============================蛙蛙赚====================================================================================
ui.wwzyx.click(function(){

        if(钥匙==1){
            toast("你已激活，欢迎使用！");
            threads.start(蛙蛙赚脚本);
        }else{
            toast("你未激活，5秒后进入体验！");
            threads.start(蛙蛙赚测试脚本);
        }


});

function 蛙蛙赚脚本(){
    toastLog("请同意截图权限")
    sleep(1000)
    if(!requestScreenCapture())
    {
    toast("请求截图失败");
    }
    toastLog("蛙蛙赚正式脚本开始")
    F = 0
    aaajjj=0
    aaawww=0
    abc=0
    you=0
    var w=device.width,h=device.height;
    重来: while (true) {
        if(aaawww == 6){
            sleep (1000)
            领取任务 = className("android.view.ViewGroup").clickable(true).depth(12).findOne()
            领取任务.click()
        }else{
            app.launchApp("抖音短视频")
            toastLog("正在找抖音关注坐标,请手动进入抖音主页")
            首页=text("首页").findOne(9000)
            首页zb=首页.bounds()
            首页zbx=首页zb.centerX()
            首页zby=首页zb.centerY()
            click(首页zb.centerX(),首页zb.centerY())
            sleep(2000)
            swipe(w*0.9, h/2, w*0.1, h/2, 500);
            while(true){
                sleep(3000)
                关注1=id("ckn").findOnce()
                关注2=id("d82").findOnce()
                关注3=id("d76").findOnce()
                if(关注1!=null||关注2!=null||关注3!=null){
                    if(关注1!=null){
                        关注zb = 关注1.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby)
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else
                    {
                        if(关注2!=null)
                        {
                        关注zb = 关注2.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby) 
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                        }else
                        {
                        关注zb = 关注3.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby) 
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                        }
                    }
                }else{
                    toastLog("未找到关注坐标，正在换视频")
                    swipe(w*0.1, h/2, w*0.9, h/2, 500);
                    sleep(3000)
                    swipe(w/2, h*0.8, w/2, h*0.2, 500);
                    sleep(3000)
                    swipe(w*0.9, h/2, w*0.1, h/2, 500);
                    sleep(3000)
                }
            }
            
            sleep(2000)
            launchApp("蛙蛙赚")
            toastLog("打开蛙蛙赚")
    
    
            //=======================================第一次循环=============================================================
             if (F == 0) 
             {
                toastLog("蛙蛙赚初始化，请手动进入首页")
                sleep(10000)
                click(w*0.1, h*0.9)
                sleep (1000)
                抖音任务 = text("大量任务").find()
                抖音任务zb = 抖音任务[0].bounds()
                click(抖音任务zb.centerX(),抖音任务zb.centerY())
                sleep (1000)
                领取任务 = className("android.view.ViewGroup").clickable(true).depth(12).findOne()
                领取任务.click()
                toastLog("初始化完成")
                F++
            }
        }
            


        
    //=======================================主循环=============================================================
    返回: while(true){
            sleep(3000)
            检查任务 = textContains("剩余时间").findOnce()
            if(检查任务!= null){
                关注任务 = text("逗音关注").findOnce()
                点赞任务 = text("逗音点赞").findOnce()

                // if(F>3){
                //     launchApp("全享通");
                //     alert("提示", "测试结束，欢迎进行购买使用");
                //     exit();
                // }
                

                if(点赞任务 != null || 关注任务 != null){
                    if (点赞任务 != null){
                        toastLog("识别为 点赞任务");
                        点赞();
                        continue 返回
                    }
                    if (关注任务 != null){
                        toastLog("识别为 关注任务");
                        关注123();
                        continue 返回
                    }
                }else{
                    oastLog("不做套餐和评论，放弃任务");
                    click(670,100)
                    sleep(1000)
                    放弃任务=className("android.widget.TextView").text("放弃任务").findOne()
                    放弃任务zb = 放弃任务.bounds()
                    click(放弃任务zb.centerX(),放弃任务zb.centerY())
                    sleep(1000);
                    aaawww=6;
                    continue 重来
                }
            }else
            {
                toastLog("重新领取");
                aaawww=6;
                sleep(1000);
                continue 重来
            }
        }
    }
    
    function 关注123(){
        if(abc==1){
            上传截图();
            sleep(2000);
            abc=0
        }else{
            点击复制= text("点击复制").findOnce()
            点击复制zb = 点击复制.bounds()
            click(点击复制zb.centerX(),点击复制zb.centerY())
            waitForPackage("com.ss.android.ugc.aweme")
            sleep(4000);
            视频有效性检测()
            sleep(3000);
            if(you==0){
                you=1
                放弃任务()
            }else{
                swipe(w*0.9, h/2, w*0.1, h/2, 500);
                toastLog("开始关注");
                sleep(2000);
                click(关注zbx,关注zby)
                toastLog("关注成功");
                sleep(1000);
                截屏();
                sleep(2000);
                swipe(w*0.1, h*0.8, w*0.9, h*0.8, 500);
                back();
                sleep(500);
                back();
                sleep(500);
                recents ()
                sleep(1000)
                recents ()
                sleep(1000);
                上传截图();
                sleep(2000);
            }
        }
    }

    function 点赞(){
        if(abc==1){
            上传截图();
            abc=0
            sleep(2000);
        }else{
            点击复制= text("点击复制").findOnce()
            点击复制zb = 点击复制.bounds()
            click(点击复制zb.centerX(),点击复制zb.centerY())
            waitForPackage("com.ss.android.ugc.aweme")
            sleep(3000);
            视频有效性检测()
            sleep(4000);
            if(you==0){
                you=1
                放弃任务()
            }else{
            toastLog("开始点赞");
            click(w/2,h/2);
            sleep(100);
            click(w/2,h*0.48);
            sleep(100);
            click(w/2,h*0.46);
            sleep(100);
            click(w/2,h*0.44);
            toastLog("点赞成功");
            截屏();
            sleep(2000);
            back();
            recents ()
            sleep(1000)
            recents ()
            sleep(1000);
            上传截图();
            sleep(2000);
            }
        }
    }

    function 截屏()
    {
        toastLog("开始截图")
        sleep(1000)
        files.ensureDir("/sdcard/Camera/AAAAA/")
        var im = captureScreen();
        var path = "/sdcard/Camera/AAAAA/A攒攒任务截图.png"
        im.saveTo(path);
        media.scanFile(path);
        sleep(3000)
        toastLog("截图完成");
    } 
        
    function 上传截图()
    {
        toastLog("开始上传截图")
        sleep(2000)
        click(w*0.7,h/2);
        sleep(1000)
        click(w*0.25,h*0.3);
        上传完成=className("android.widget.TextView").text("上传成功").depth(17).findOne(10000)
        if(上传完成!=null){
            提交任务=className("android.widget.TextView").text("提交任务").depth(16).findOne()
            提交任务zb=提交任务.bounds()
            click(提交任务zb.centerX(),提交任务zb.centerY())
        }
        toastLog("上传完成")
        sleep(1000)
        toastLog("全享通已为您成功执行了"+F+"个任务");
        F++
        sleep(2000)
        领取任务 = className("android.view.ViewGroup").clickable(true).depth(12).findOne()
        领取任务.click()
        toastLog("再次领取任务")

    }

    function 视频有效性检测()
    {
        chetime=1
        while(true)
        {
            you=1
            toastLog("检测视频有效性")
            var img=captureScreen()
            var a=(colors.toString(images.pixel(img, device.width/2, device.height/2)))
            var b=(colors.toString(images.pixel(img, device.width/2, device.height/4)))
            var c=(colors.toString(images.pixel(img, device.width/2, device.height*3/4)))
            if(a=="#ff000000" && b=="#ff000000" && c=="#ff000000")
            {
                chetime++
                if(chetime>2)
                {
                    you=0
                    toastLog("问题视频")
                    break
                }

            }
            else{
                toastLog("视频有效")
                break
            }
            sleep(2500)
        }

    }

    function 放弃任务()
    {
                        back();
            recents ()
            sleep(1000)
            recents ()
            sleep(1000);
        click(670,100)
        sleep(1000)
        放弃任务=className("android.widget.TextView").text("放弃任务").findOne()
        放弃任务zb = 放弃任务.bounds()
        click(放弃任务zb.centerX(),放弃任务zb.centerY())
        sleep(1000);
    }

}

function 蛙蛙赚测试脚本(){
    sleep(5000)
    toastLog("请同意截图权限")
    sleep(1000)
    if(!requestScreenCapture())
    {
    toast("请求截图失败");
    }

    toastLog("蛙蛙赚测试脚本开始")
    F = 0
    aaajjj=0
    aaawww=0
    abc=0
    you=0
    var w=device.width,h=device.height;
    重来: while (true) {
        if(aaawww==6){
            sleep (1000)
            领取任务 = className("android.view.ViewGroup").clickable(true).depth(12).findOne()
            领取任务.click()
        }else{
            app.launchApp("抖音短视频")
            toastLog("正在找抖音关注坐标,请手动进入抖音主页")
            首页=text("首页").findOne(9000)
            首页zb=首页.bounds()
            首页zbx=首页zb.centerX()
            首页zby=首页zb.centerY()
            click(首页zb.centerX(),首页zb.centerY())
            sleep(2000)
            swipe(w*0.9, h/2, w*0.1, h/2, 500);
            while(true){
                sleep(3000)
                关注1=id("ckn").findOnce()
                关注2=id("d82").findOnce()
                关注3=id("d76").findOnce()
                if(关注1!=null||关注2!=null||关注3!=null){
                    if(关注1!=null){
                        关注zb = 关注1.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby)
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else
                    {
                        if(关注2!=null)
                        {
                        关注zb = 关注2.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby) 
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                        }else
                        {
                        关注zb = 关注3.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby) 
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                        }
                    }
                }else{
                    toastLog("未找到关注坐标，正在换视频")
                    swipe(w*0.1, h/2, w*0.9, h/2, 500);
                    sleep(3000)
                    swipe(w/2, h*0.8, w/2, h*0.2, 500);
                    sleep(3000)
                    swipe(w*0.9, h/2, w*0.1, h/2, 500);
                    sleep(3000)
                }
            }
            
            sleep(2000)
            launchApp("蛙蛙赚")
            toastLog("打开蛙蛙赚")
    
    
            //=======================================第一次循环=============================================================
             if (F == 0) 
             {
                toastLog("蛙蛙赚初始化，请手动进入首页")
                sleep(10000)
                click(w*0.1, h*0.9)
                sleep (1000)
                抖音任务 = text("大量任务").find()
                抖音任务zb = 抖音任务[0].bounds()
                click(抖音任务zb.centerX(),抖音任务zb.centerY())
                sleep (1000)
                领取任务 = className("android.view.ViewGroup").clickable(true).depth(12).findOne()
                领取任务.click()
                toastLog("初始化完成")
                F++
            }
        }
            


        
    //=======================================主循环=============================================================
    返回: while(true){
            sleep(3000)
            检查任务 = textContains("剩余时间").findOnce()
            if(检查任务!= null){
                关注任务 = text("逗音关注").findOnce()
                点赞任务 = text("逗音点赞").findOnce()

                if(F>3){
                    launchApp("全享通");
                    alert("提示", "测试结束，欢迎进行购买使用");
                    exit();
                }
                

                if(点赞任务 != null || 关注任务 != null){
                    if (点赞任务 != null){
                        toastLog("识别为 点赞任务");
                        点赞();
                        continue 返回
                    }
                    if (关注任务 != null){
                        toastLog("识别为 关注任务");
                        关注123();
                        continue 返回
                    }
                }else{
                    oastLog("不做套餐和评论，放弃任务");
                    click(670,100)
                    sleep(1000)
                    放弃任务=className("android.widget.TextView").text("放弃任务").findOne()
                    放弃任务zb = 放弃任务.bounds()
                    click(放弃任务zb.centerX(),放弃任务zb.centerY())
                    sleep(1000);
                    aaawww=6
                    continue 重来
                }
            }else
            {
                toastLog("重新领取");
                aaawww=6;
                sleep(1000);
                continue 重来
            }
        }
    }
    
    function 关注123(){
        if(abc==1){
            上传截图();
            sleep(2000);
            abc=0
        }else{
            点击复制= text("点击复制").findOnce()
            点击复制zb = 点击复制.bounds()
            click(点击复制zb.centerX(),点击复制zb.centerY())
            waitForPackage("com.ss.android.ugc.aweme")
            sleep(3000);
            视频有效性检测()
            sleep(4000);
            if(you==0){
                you=1
                放弃任务()
            }else{
                swipe(w*0.9, h/2, w*0.1, h/2, 500);
                toastLog("开始关注");
                sleep(2000);
                click(关注zbx,关注zby)
                toastLog("关注成功");
                sleep(1000);
                截屏();
                sleep(2000);
                swipe(w*0.1, h*0.8, w*0.9, h*0.8, 500);
                back();
                sleep(500);
                back();
                sleep(500);
                recents ()
                sleep(1000)
                recents ()
                sleep(1000);
                上传截图();
                sleep(2000);
            }
        }
    }

    function 点赞(){
        if(abc==1){
            上传截图();
            abc=0
            sleep(2000);
        }else{
            点击复制= text("点击复制").findOnce()
            点击复制zb = 点击复制.bounds()
            click(点击复制zb.centerX(),点击复制zb.centerY())
            waitForPackage("com.ss.android.ugc.aweme")
            sleep(3000);
            视频有效性检测()
            sleep(4000);
            if(you==0){
                you=1
                放弃任务()
            }else{
            toastLog("开始点赞");
            click(w/2,h/2);
            sleep(100);
            click(w/2,h*0.48);
            sleep(100);
            click(w/2,h*0.46);
            sleep(100);
            click(w/2,h*0.44);
            toastLog("点赞成功");
            截屏();
            sleep(2000);
            back();
            recents ()
            sleep(1000)
            recents ()
            sleep(1000);
            上传截图();
            sleep(2000);
            }
        }
    }

    function 截屏()
    {
        toastLog("开始截图")
        sleep(1000)
        files.ensureDir("/sdcard/Camera/AAAAA/")
        var im = captureScreen();
        var path = "/sdcard/Camera/AAAAA/A攒攒任务截图.png"
        im.saveTo(path);
        media.scanFile(path);
        sleep(3000)
        toastLog("截图完成");
    } 
        
    function 上传截图()
    {
        toastLog("开始上传截图")
        sleep(2000)
        click(w*0.7,h/2);
        sleep(1000)
        click(w*0.25,h*0.3);
        上传完成=className("android.widget.TextView").text("上传成功").depth(17).findOne(10000)
        if(上传完成!=null){
            提交任务=className("android.widget.TextView").text("提交任务").depth(16).findOne()
            提交任务zb=提交任务.bounds()
            click(提交任务zb.centerX(),提交任务zb.centerY())
        }
        toastLog("上传完成")
        sleep(1000)
        toastLog("全享通已为您成功执行了"+F+"个任务");
        F++
        sleep(2000)
        领取任务 = className("android.view.ViewGroup").clickable(true).depth(12).findOne()
        领取任务.click()
        toastLog("再次领取任务")

    }

    function 视频有效性检测()
    {
        chetime=1
        while(true)
        {
            you=1
            toastLog("检测视频有效性")
            var img=captureScreen()
            var a=(colors.toString(images.pixel(img, device.width/2, device.height/2)))
            var b=(colors.toString(images.pixel(img, device.width/2, device.height/4)))
            var c=(colors.toString(images.pixel(img, device.width/2, device.height*3/4)))
            if(a=="#ff000000" && b=="#ff000000" && c=="#ff000000")
            {
                chetime++
                if(chetime>2)
                {
                    you=0
                    toastLog("问题视频")
                    break
                }

            }
            else{
                toastLog("视频有效")
                break
            }
            sleep(2500)
        }

    }

    function 放弃任务()
    {
            back();
            recents ()
            sleep(1000)
            recents ()
            sleep(1000);
        click(670,100)
        sleep(1000)
        放弃任务=className("android.widget.TextView").text("放弃任务").findOne()
        放弃任务zb = 放弃任务.bounds()
        click(放弃任务zb.centerX(),放弃任务zb.centerY())
        sleep(1000);
    }

}


//=====================================================================================================================
//=============================秘乐====================================================================================
ui.mlyx.click(function(){

        threads.start(秘乐更新脚本);
        toast("此脚本免费，欢迎使用！");

});


function 秘乐更新脚本(){
    console.show();
    var w=device.width,h=device.height;
    var i=1;
    分钟数= ui.mlfz.getText(); 
    sleep(1000);
    console.setSize(450, 450);
    log("正在打开秘乐短视频")
    app.launchApp("秘乐短视频");
    while(true)
    {
        var 首页=text("首页").findOnce()
        if(首页!=null)
        {
            log("成功进入")
            break
        }
        sleep(1000)
    }
    sleep(3000)
    首页zb = 首页.bounds()
    click(首页zb.centerX(),首页zb.centerY())
    log("获取屏幕高度---->"+h);
    sleep(1000)
    log("获取屏幕宽度---->"+w);
    sleep(1000)
    if(分钟数==0){
        log("开始无限时间刷视频")
    }else{
        log("开始刷"+分钟数+"分钟视频")
    }
    sleep(1000)
    while(true)
    {
        for(j=0;j<4;j++){
            swipe(w*0.2, h*0.9, w*0.2, h*0.1, 500);  //滑动
            sleep(random(14000,16000));
        }
        if(i==分钟数){
            break
        }
        log("已刷"+i+"分钟视频")
        i++

    }
    log("完成"+i+"分钟视频")
    log("欢迎下次使用")
}



//=====================================================================================================================
//=============================魔视====================================================================================
ui.msyx.click(function(){
    if(钥匙==1){
        threads.start(魔视更新脚本);
        toast("你已激活，欢迎使用！");
    }else{
        alert("提示", "此脚本暂无测试，请激活设备");
    }

});

   
function 魔视更新脚本(){
   
    console.show();
    sleep(1000);
    console.setSize(450, 450);
    var w=device.width,h=device.height;
    var i=1;
    分钟数= ui.msfz.getText(); 
    log("正在打开魔视")
    app.launchApp("魔视");
    while(true)
    {
        var 推荐=text("推荐").findOnce()
        log("等待进入首页")
        if(推荐!=null)
        {
            toastLog("成功进入")
            break
        }
        sleep(2500)
    }

    while(true)
    {
        var 分享=id("view_press_like").findOnce()
        var 点赞=id("collect").clickable(true).findOnce()
        log("请手动进入视频")
        if(分享!=null)
        {
            var 分享父=分享.parent()
            if(分享父!=null)
            {
                分享父.click()
            }
        }
        if(点赞!=null)
        {
            toastLog("进入视频成功")
            break
        }
        sleep(2500)
    }
    log("获取屏幕高度---->"+h);
    sleep(1000)
    log("获取屏幕宽度---->"+w);
    sleep(1000)
    if(分钟数==0){
        log("开始无限时间刷视频")
    }else{
        log("开始刷"+分钟数+"分钟视频")
    }
    sleep(1000)
    
    while(true)
    {
        for(j=0;j<4;j++){
            广告监测=className("android.widget.ImageView").depth("7").findOnce()
            if(广告监测!=null){
                广告监测zb = 广告监测.bounds()
                click(广告监测zb.centerX(),广告监测zb.centerY())
                log("关闭弹出广告")
            }
            swipe(w*0.2, h*0.9, w*0.2, h*0.2, 500);  //滑动
            sleep(random(14000,16000));
        }
        if(i==分钟数){
            break
        }
        log("已刷"+i+"分钟视频")
        i++

    }
    log("完成"+i+"分钟视频")
    log("欢迎下次使用")
}



//=====================================================================================================================
//=============================牛角====================================================================================
ui.njyx.click(function(){
    if(钥匙==1){
        threads.start(牛角脚本);
        toast("你已激活，欢迎使用！");
    }else{
        threads.start(牛角测试脚本);
        toast("你未激活，5秒后进入体验！");
    }

});

function 牛角脚本(){
    
    var window = floaty.window(
        <vertical>
            <horizontal>
            <button id="ok" text="开始"/>
            <button id="ok2" text="停止"/>
            </horizontal>
        </vertical>
    );
    window.exitOnClose();
    window.setPosition(1, 400)
    
    window.ok.on("click", ()=>{
        window.ok.text("启动中")
        threads.start(牛角更新脚本)
    });
    
    window.ok2.on("click", ()=>{
        exit()
    });
    setInterval(()=>{}, 1000);

}
function 牛角更新脚本(){
    
 log("牛角正式脚本开始")

 console.show();
 console.setSize(450, 450);
 launch("com.yincheng.njread");//开牛角
 log("正在打开--->牛角免费小说");
 log("等待10秒")
 sleep(5000);
 log("请手动关闭所有广告弹窗");
 sleep(5000);
 j=0

 var w=device.width,h=device.height;
 var i=1;
 log("获取屏幕高度---->"+h);
 log("获取屏幕宽度---->"+w);
 sleep(5000);
 while(true)
{
    var 书库=textContains("金币").findOnce()
    var 找书=textContains("找书").findOnce()
    if(书库!=null||找书!=null)
    {
        toastLog("进入app")
        sleep(1000)
        break
    }
    sleep(2000)
}
 log("开始初始化")
 福利=id("home_gift").findOne(1000)
 福利.click()
 填写 =textContains("去填写").findOne(1000)
 if(填写 !=null){
     填写.click()
     邀请码 =id("invite_code_content").findOne(1000)
     邀请码.click()
     setText("zcj8nj")
     完成=text("完成").findOne(1000)
     完成.click()
     sleep(1000)
     书库=text("书库").findOne(1000)
     书库zb=书库.bounds()
     click(书库zb.centerX(),书库zb.centerY())
 }else{
     书库=text("书库").findOne(1000)
     书库zb=书库.bounds()
     click(书库zb.centerX(),书库zb.centerY())
 }
 sleep(1000)
 log("初始化完成")

 while(true)
 {
     var title=textContains("读完可赚").findOnce()
     if(title!=null)
     {
         var titlep=title.parent()
         var 书籍简介=text("书籍简介").findOnce()
         if(titlep!=null)
         {
             titlep.click()
             toastLog("打开小说,等待APP响应……")
             sleep(1000)
         }
         if(书籍简介!=null)
         {
             toastLog("进入小说")
             sleep(2000)
             break
         }
     }
     sleep(3000)
 }
 a1=textContains("开始阅读").findOnce()
 a2=textContains("继续阅读").findOnce()
 
 if(a1!=null){
     进入阅读zb=a1.bounds()
     click(进入阅读zb.centerX(),进入阅读zb.centerY())
 }else{
     进入阅读zb=a2.bounds()
     click(进入阅读zb.centerX(),进入阅读zb.centerY())
 }
 
 toast("开始自动阅读");
 sleep(6000)
 while (true)
 {
     广告=id("tt_splash_skip_btn").findOnce()
     if(广告!=null){
         广告.click()
     }else{
         // VolumeDown()
         swipe(w*0.9, h*0.2, w*0.6, h*0.3, 200);  //滑动
         sleep(10000);
         j++
     }
     if(j%6==1){
         log("已阅读"+i+"分钟");
         i++;
     }
}

}

function 牛角测试脚本(){
    sleep(5000)
    var window = floaty.window(
        <vertical>
            <horizontal>
            <button id="ok" text="开始"/>
            <button id="ok2" text="停止"/>
            </horizontal>
        </vertical>
    );
    window.exitOnClose();
    window.setPosition(1, 400)
    
    window.ok.on("click", ()=>{
        window.ok.text("启动中")
        threads.start(牛角测试脚本更新)
    });
    
    window.ok2.on("click", ()=>{
        exit()
    });
    setInterval(()=>{}, 1000);

}
function 牛角测试脚本更新(){

    log("牛角测试脚本开始")
    log("你有半小时的体验时间")
    console.show();
    console.setSize(450, 450);
    launch("com.yincheng.njread");//开牛角
    log("正在打开--->牛角免费小说");
    log("等待10秒")
    sleep(5000);
    log("请手动关闭所有广告弹窗");
    sleep(5000);
    var w=device.width,h=device.height;
    var i=1;
    var j=1;
    log("获取屏幕高度---->"+h);
    log("获取屏幕宽度---->"+w);
    sleep(5000);
    while(true)
   {
       var 书库=textContains("金币").findOnce()
       var 找书=textContains("找书").findOnce()
       if(书库!=null||找书!=null)
       {
           toastLog("进入app")
           sleep(1000)
           break
       }
       sleep(2000)
   }
    log("开始初始化")
    福利=id("home_gift").findOne(1000)
    福利.click()
    填写 =textContains("去填写").findOne(1000)
    if(填写 !=null){
        填写.click()
        邀请码 =id("invite_code_content").findOne(1000)
        邀请码.click()
        setText("zcj8nj")
        完成=text("完成").findOne(1000)
        完成.click()
        sleep(1000)
        书库=text("书库").findOne(1000)
        书库zb=书库.bounds()
        click(书库zb.centerX(),书库zb.centerY())
    }else{
        sleep(1000)
        书库=text("书库").findOne(1000)

    }
    sleep(1000)
    log("初始化完成")
   
    while(true)
    {
        var title=textContains("读完可赚").findOnce()
        if(title!=null)
        {
            var titlep=title.parent()
            var 书籍简介=text("书籍简介").findOnce()
            if(titlep!=null)
            {
                titlep.click()
                toastLog("打开小说,等待APP响应……")
                sleep(1000)
            }
            if(书籍简介!=null)
            {
                toastLog("进入小说")
                sleep(2000)
                break
            }
        }
        sleep(3000)
    }
    a1=textContains("开始阅读").findOnce()
    a2=textContains("继续阅读").findOnce()
    a3=id("btn_read_book_hint2").findOne()
    
    if(a1!=null){
        进入阅读zb=a1.bounds()
        click(进入阅读zb.centerX(),进入阅读zb.centerY())
    }else{
        if(a2!=null){
            进入阅读zb=a2.bounds()
            click(进入阅读zb.centerX(),进入阅读zb.centerY())
        }else{
            a3.click
        }

    }
    
    log("开始自动阅读");
    sleep(6000)
    while (true)
    {
        广告=id("tt_video_ad_close_layout").findOnce()
        if(广告!=null){
            广告.click()
        }else{
            // VolumeDown()
            swipe(w*0.9, h*0.2, w*0.6, h*0.3, 200);  //滑动
            sleep(10000);
            j++
        }
        if(j%6==1){
            log("已阅读"+i+"分钟");
            i++;
        }
        if(i==30){
            launchApp("全享通");
            alert("提示", "测试结束，欢迎进行购买使用");
            exit();
        }
   }
   
}


ui.njyxroot.click(function(){
    if(钥匙==1){
        threads.start(牛角root脚本);
        toast("你已激活，欢迎使用！");
    }else{
        alert("提示", "此脚本暂无测试，请激活设备");
    }

});

function 牛角root脚本(){
    
    var window = floaty.window(
        <vertical>
            <horizontal>
            <button id="ok" text="开始"/>
            <button id="ok2" text="停止"/>
            </horizontal>
        </vertical>
    );
    window.exitOnClose();
    window.setPosition(1, 400)
    
    window.ok.on("click", ()=>{
        window.ok.text("启动中")
        threads.start(牛角root更新脚本)
    });
    
    window.ok2.on("click", ()=>{
        exit()
    });
    setInterval(()=>{}, 1000);

}
function 牛角root更新脚本(){
    
 log("牛角正式脚本开始")

 console.show();
 console.setSize(450, 450);
 launch("com.yincheng.njread");//开牛角
 log("正在打开--->牛角免费小说");
 log("等待10秒")
 sleep(5000);
 log("请手动关闭所有广告弹窗");
 sleep(5000);
j=0

 var w=device.width,h=device.height;
 var i=1;
 log("获取屏幕高度---->"+h);
 log("获取屏幕宽度---->"+w);
 sleep(5000);
 while(true)
{
    var 书库=textContains("金币").findOnce()
    var 找书=textContains("找书").findOnce()
    if(书库!=null||找书!=null)
    {
        toastLog("进入app")
        sleep(1000)
        break
    }
    sleep(2000)
}
 log("开始初始化")
 福利=id("home_gift").findOne(1000)
 福利.click()
 填写 =textContains("去填写").findOne(1000)
 if(填写 !=null){
     填写.click()
     邀请码 =id("invite_code_content").findOne(1000)
     邀请码.click()
     setText("zcj8nj")
     完成=text("完成").findOne(1000)
     完成.click()
     sleep(1000)
     书库=text("书库").findOne(1000)
     书库zb=书库.bounds()
     click(书库zb.centerX(),书库zb.centerY())
 }else{
     书库=text("书库").findOne(1000)
     书库zb=书库.bounds()
     click(书库zb.centerX(),书库zb.centerY())
 }
 sleep(1000)
 log("初始化完成")

 while(true)
 {
     var title=textContains("读完可赚").findOnce()
     if(title!=null)
     {
         var titlep=title.parent()
         var 书籍简介=text("书籍简介").findOnce()
         if(titlep!=null)
         {
             titlep.click()
             toastLog("打开小说,等待APP响应……")
             sleep(1000)
         }
         if(书籍简介!=null)
         {
             toastLog("进入小说")
             sleep(2000)
             break
         }
     }
     sleep(3000)
 }
 a1=textContains("开始阅读").findOnce()
 a2=textContains("继续阅读").findOnce()
 
 if(a1!=null){
     进入阅读zb=a1.bounds()
     click(进入阅读zb.centerX(),进入阅读zb.centerY())
 }else{
     进入阅读zb=a2.bounds()
     click(进入阅读zb.centerX(),进入阅读zb.centerY())
 }
 
 toast("开始自动阅读");
 sleep(6000)
 while (true)
 {
     广告=id("tt_splash_skip_btn").findOnce()
     if(广告!=null){
         广告.click()
     }else{
         VolumeDown()
         sleep(10000);
         j++
     }
     if(j%6==1){
         log("已阅读"+i+"分钟");
         i++;
     }
}

}
//======================================================================================================================
//=============================攒攒阅读===================================================================================

ui.zzyd.click(function(){
    if(钥匙==1){
        threads.start(攒攒阅读脚本);
        toast("你已激活，欢迎使用！");
    }else{
        toast("你未激活，5秒后进入体验！");
        sleep(5000)
        threads.start(攒攒阅读脚本测试);
    }

});


function 攒攒阅读脚本(){
    console.show()
    sleep(1000)
    console.setSize(450, 450)
    var w=device.width,h=device.height;
    F=0
    log("正在打开微信")
    launchApp("微信")
    sleep (5000)
    log("开始添加微信机器人")
    通讯录=text("通讯录").findOne(5000)
    通讯录zb = 通讯录.bounds()
    click(通讯录zb.centerX(),通讯录zb.centerY())
    sleep (1000)
    通讯录=desc("更多功能按钮").findOne(5000)
    通讯录zb = 通讯录.bounds()
    click(通讯录zb.centerX(),通讯录zb.centerY())
    sleep (1000)
    添加好友=text("添加朋友").findOne(5000)
    添加好友zb = 添加好友.bounds()
    click(添加好友zb.centerX(),添加好友zb.centerY())
    sleep(1000)
    搜索=text("微信号/手机号").findOne(5000)
    搜索zb = 搜索.bounds()
    click(搜索zb.centerX(),搜索zb.centerY())
    sleep (1000)
    setText("qxgzs6")
    搜索到=text("搜索:qxgzs6").findOne(5000)
    搜索到zb = 搜索到.bounds()
    click(搜索到zb.centerX(),搜索到zb.centerY())
    sleep(2000)
    添加=text("添加到通讯录").findOnce()
    发信息=className("android.widget.TextView").depth("13").findOnce()
    if(添加!=null){
        添加=text("添加到通讯录").findOne(5000)
        添加zb = 添加.bounds()
        click(添加zb.centerX(),添加zb.centerY())
        sleep (1000)
        发送=text("发送").findOne(5000)
        发送zb = 发送.bounds()
        click(发送zb.centerX(),发送zb.centerY())
        sleep (1000)
        log("添加成功")
        发信息=className("android.widget.TextView").depth("13").findOne(10000)
        发信息zb = 发信息.bounds()
        click(发信息zb.centerX(),发信息zb.centerY())
    }else{
        发信息=className("android.widget.TextView").depth("13").findOne(10000)
        log("已添加机器人")
        发信息zb = 发信息.bounds()
        click(发信息zb.centerX(),发信息zb.centerY())
    }
    sleep (1000)
    setText("http://suo.im/64qOX1")
    sleep (1000)
    发送=text("发送").findOne(5000)
    发送zb = 发送.bounds()
    click(发送zb.centerX(),发送zb.centerY())
    log("请手动点击链接")
    do{toast("请手动点击链接");sleep(1000)}while(text("AA【享全影】机器人").findOnce()!=null){log("点击成功！开始挂机~");sleep(2000)}
    允许=textContains("允许").findOnce()
    if(允许!=null){
    允许zb = 允许.bounds()
    click(允许zb.centerX(),允许zb.centerY())
    }
    sleep(1000)
    log("开始阅读挂机赚钱~");
    sleep(2000)
    while(true){
        while(text("开始阅读").findOnce()!=null){
            开始阅读=text("开始阅读").findOne(5000)
            开始阅读zb = 开始阅读.bounds()
            click(开始阅读zb.centerX(),开始阅读zb.centerY())
            log("点击开始阅读"); 
            sleep(2000)
        }   
        if(text("停止阅读").findOnce()==null){
            while(true){
                for(i=0;i<14;i++){
                    swipe(w/2, h*0.9, w/2, h*0.1, 300);
                    sleep(800)
                }
                F++
                back()
                log("全享通已为您成功执行了"+F+"个任务")
                sleep(2000)
                do{sleep(1000)
                    if(text("开始阅读").findOnce()!=null){
                        break
                    }  
                }while(text("停止阅读").findOnce()==null){
                    break;
                }
            }
        }
        // if(F==5){
        //     launchApp("全享通");
        //     alert("提示", "测试结束，欢迎进行购买使用");
        //     exit();
        // }
    
    }
}


function 攒攒阅读脚本测试(){
    console.show()
    sleep(1000)
    console.setSize(450, 450)
    var w=device.width,h=device.height;
    F=0
    log("正在打开微信")
    launchApp("微信")
    sleep (5000)
    log("开始添加微信机器人")
    sleep (1000)
    通讯录=desc("更多功能按钮").findOne(5000)
    通讯录zb = 通讯录.bounds()
    click(通讯录zb.centerX(),通讯录zb.centerY())
    sleep (1000)
    添加好友=text("添加朋友").findOne(5000)
    添加好友zb = 添加好友.bounds()
    click(添加好友zb.centerX(),添加好友zb.centerY())
    sleep(1000)
    搜索=text("微信号/手机号").findOne(5000)
    搜索zb = 搜索.bounds()
    click(搜索zb.centerX(),搜索zb.centerY())
    sleep (1000)
    setText("qxgzs6")
    搜索到=text("搜索:qxgzs6").findOne(5000)
    搜索到zb = 搜索到.bounds()
    click(搜索到zb.centerX(),搜索到zb.centerY())
    sleep(2000)
    添加=text("添加到通讯录").findOnce()
    发信息=className("android.widget.TextView").depth("13").findOnce()
    if(添加!=null){
        添加=text("添加到通讯录").findOne(5000)
        添加zb = 添加.bounds()
        click(添加zb.centerX(),添加zb.centerY())
        sleep (1000)
        发送=text("发送").findOne(5000)
        发送zb = 发送.bounds()
        click(发送zb.centerX(),发送zb.centerY())
        sleep (1000)
        log("添加成功")
        发信息=className("android.widget.TextView").depth("13").findOne(10000)
        发信息zb = 发信息.bounds()
        click(发信息zb.centerX(),发信息zb.centerY())
    }else{
        发信息=className("android.widget.TextView").depth("13").findOne(10000)
        log("已添加机器人")
        发信息zb = 发信息.bounds()
        click(发信息zb.centerX(),发信息zb.centerY())
    }
    sleep (1000)
    setText("http://suo.im/64qOX1")
    sleep (1000)
    发送=text("发送").findOne(5000)
    发送zb = 发送.bounds()
    click(发送zb.centerX(),发送zb.centerY())
    log("请手动点击链接")
    do{toast("请手动点击链接");sleep(1000)}while(text("AA【享全影】机器人").findOnce()!=null){log("点击成功！开始挂机~");sleep(2000)}
    允许=textContains("允许").findOnce()
    if(允许!=null){
    允许zb = 允许.bounds()
    click(允许zb.centerX(),允许zb.centerY())
    }
    sleep(1000)
    log("开始阅读挂机赚钱~");
    sleep(2000)
    while(true){
        while(text("开始阅读").findOnce()!=null){
            开始阅读=text("开始阅读").findOne(5000)
            开始阅读zb = 开始阅读.bounds()
            click(开始阅读zb.centerX(),开始阅读zb.centerY())
            log("点击开始阅读"); 
            sleep(2000)
        }   
        if(text("停止阅读").findOnce()==null){
            while(true){
                for(i=0;i<14;i++){
                    swipe(w/2, h*0.9, w/2, h*0.1, 300);
                    sleep(800)
                }
                F++
                back()
                log("全享通已为您成功执行了"+F+"个任务")
                sleep(2000)
                do{sleep(1000)
                    if(text("开始阅读").findOnce()!=null){
                        break
                    }  
                }while(text("停止阅读").findOnce()==null){
                    break;
                }
            }
        }
        if(F==5){
            launchApp("全享通");
            alert("提示", "测试结束，欢迎进行购买使用");
            exit();
        }
    
    }
}

//=====================================================================================================================
//=============================长豆短视频测试====================================================================================
ui.cdyx.click(function(){
    if(钥匙==1){
        toast("你已激活，欢迎使用！");
        threads.start(长豆短视频正式脚本);
    }else{
        toast("你未激活，5秒后进入体验！");
        threads.start(长豆短视频测试脚本);
    }

});
function 长豆短视频正式脚本(){
    
    var window = floaty.window(
        <vertical>
            <horizontal>
            <button id="ok" text="开始"/>
            <button id="ok2" text="停止"/>
            </horizontal>
        </vertical>
    );
    window.exitOnClose();
    window.setPosition(1, 400)
    
    window.ok.on("click", ()=>{
        window.ok.text("启动中")
        threads.start(长豆短视频正式脚本更新)
    });
    
    window.ok2.on("click", ()=>{
        exit()
    });
    setInterval(()=>{}, 1000);

}
function 长豆短视频正式脚本更新(){

    log("长豆短视频正式脚本开始")
    log("你有半小时的体验时间")
    console.show();
    console.setSize(450, 450);
    launch("com.zf.shuashua");//开牛角
    log("正在打开--->长豆短视频");
    log("等待10秒")
    sleep(5000);
    var w=device.width,h=device.height;
    var i=1;
    var j=1;
    log("获取屏幕高度---->"+h);
    log("获取屏幕宽度---->"+w);
    sleep(5000);
    while(true)
   {
        首页=text("首页").findOnce()
       if(首页!=null)
       {
           toastLog("成功进入app")
           sleep(1000)
           break
       }
       sleep(2000)
   }
log("软件初始化")
我的 =textContains("我的").findOne(1000)
我的zb=我的.bounds()
click(我的zb.centerX(),我的zb.centerY())
sleep(1000)
while(true){
    swipe(w*0.5, h*0.9, w*0.5, h*0.5, 500);
    邀请码=text("补填邀请码").findOnce()
    if(邀请码!=null){
        sleep(1000)
        break
    }
    swipe(w*0.5, h*0.9, w*0.5, h*0.5, 500);
    sleep(1000)
}
邀请码zb=邀请码.bounds()
click(邀请码zb.centerX(),邀请码zb.centerY())
className("android.widget.EditText").findOne().parent().click()
setText("MTWZ0AD6D")
sleep(1000)
提交=text("提交领奖励").findOne()
提交.click()
sleep(5000)
className("android.widget.ImageButton").findOne().click()
首页 =textContains("首页").findOne(1000)
首页zb=首页.bounds()
click(首页zb.centerX(),首页zb.centerY())
log("初始化完成")
log("开始刷视频")
i=0
while (true)
    {
        for(var j=0;j<4;j++){
            sleep(3000);
            swipe(w/2, h*0.9, w/2, h*0.1, 500); //滑动
            sleep(12000);
        }
        i++
        log("已养号"+i+"分钟");
        if((i+2)%2==1){
        log("开始随机点赞");
        sleep(100)
        click(w/2,h*0.48);
        sleep(20)
        click(w/2,h*0.46);
        sleep(2000)
        click(w/2,h*0.44);
        sleep(20)
        click(w/2,h*0.44);
        sleep(20)
        click(w/2,h*0.44);
            sleep(1000)
        }
        if((i+2)%3==1){
            log("开始随机关注");
            sleep(1000)
            id("recycler").findOne().children().forEach(child => {
                var target = child.findOne(id("iv_fllow"));
                target.click();
                });
            sleep(1000)
        }
            
}


}

function 长豆短视频测试脚本(){
    sleep(5000)
    var window = floaty.window(
        <vertical>
            <horizontal>
            <button id="ok" text="开始"/>
            <button id="ok2" text="停止"/>
            </horizontal>
        </vertical>
    );
    window.exitOnClose();
    window.setPosition(1, 400)
    
    window.ok.on("click", ()=>{
        window.ok.text("启动中")
        threads.start(长豆短视频测试脚本更新)
    });
    
    window.ok2.on("click", ()=>{
        exit()
    });
    setInterval(()=>{}, 1000);

}
function 长豆短视频测试脚本更新(){

    log("长豆短视频测试脚本开始")
    log("你有半小时的体验时间")
    console.show();
    console.setSize(450, 450);
    launch("com.zf.shuashua");//开牛角
    log("正在打开--->长豆短视频");
    log("等待10秒")
    sleep(5000);
    var w=device.width,h=device.height;
    var i=1;
    var j=1;
    log("获取屏幕高度---->"+h);
    log("获取屏幕宽度---->"+w);
    sleep(5000);
    while(true)
   {
        首页=text("首页").findOnce()
       if(首页!=null)
       {
           toastLog("成功进入app")
           sleep(1000)
           break
       }
       sleep(2000)
   }
log("软件初始化")
我的 =textContains("我的").findOne(1000)
我的zb=我的.bounds()
click(我的zb.centerX(),我的zb.centerY())
sleep(1000)
while(true){
    swipe(w*0.5, h*0.9, w*0.5, h*0.5, 500);
    邀请码=text("补填邀请码").findOnce()
    if(邀请码!=null){
        sleep(1000)
        break
    }
    swipe(w*0.5, h*0.9, w*0.5, h*0.5, 500);
    sleep(1000)
}
邀请码zb=邀请码.bounds()
click(邀请码zb.centerX(),邀请码zb.centerY())
className("android.widget.EditText").findOne().parent().click()
setText("MTWZ0AD6D")
sleep(1000)
提交=text("提交领奖励").findOne()
提交.click()
sleep(5000)
className("android.widget.ImageButton").findOne().click()
首页 =textContains("首页").findOne(1000)
首页zb=首页.bounds()
click(首页zb.centerX(),首页zb.centerY())
log("初始化完成")
log("开始刷视频")
i=0
while (true)
    {
        for(var j=0;j<4;j++){
            sleep(3000);
            swipe(w/2, h*0.9, w/2, h*0.1, 500); //滑动
            sleep(12000);
        }
        i++
        log("已刷视频"+i+"分钟");
        if((i+2)%2==1){
        log("开始随机点赞");
        sleep(100)
        click(w/2,h*0.48);
        sleep(20)
        click(w/2,h*0.46);
        sleep(2000)
        click(w/2,h*0.44);
        sleep(20)
        click(w/2,h*0.44);
        sleep(20)
        click(w/2,h*0.44);
            sleep(1000)
        }

        if(i==30){
            launchApp("全享通");
            alert("提示", "测试结束，欢迎进行购买使用");
            exit();
        }
            
}


}

//============================================================================================================================
//=======================================小龙虾协议=========================================================================

ui.join2.on("click", () =>{
    var content1=ui["setName"].getText()+"";
    storage.put("setName",content1);
    var content2=ui["setPassword"].getText()+"";
    storage.put("setPassword",content2);

    fx=storage.get("fx")
    if(钥匙==1 || fx==1){
        storage.put("fx", 0);
        toast("你已激活，欢迎使用！");
        threads.start(function() {
            小龙虾协议();
        });
    }else{
        threads.start(function() {
            小龙虾协议测试();
        });
        toast("你未激活，5秒后进入体验！");
    }

});
function 小龙虾协议(){
    sleep(2000)
    toastLog("请同意截图权限")
sleep(1000)
if(!requestScreenCapture())
{
toast("请求截图失败");
}
toast("小龙虾协议正式脚本开始")
sleep(1000)
toast("正在打开>>抖音")
launchApp("抖音短视频")
sleep (3000)
toast("正在登陆>>小龙虾")
sleep (1000)

http.get("www.baidu.com").statusCode

var 返回数据 = http.get("http://tg.cst2020.cn/", {
headers: {
    'Accept-Language': 'zh-cn,zh;q=0.5',
    'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
}
});
var 返回头cookie = (返回数据.headers["Set-Cookie"]); //Httpget返回请求头数组["头数组标题"]
var 正则条件 = /tguser=([\s\S]*?); /;   //正则表达式条件
var cookie数组 = 正则条件.exec(返回头cookie);  //正则.exec(匹配要检索的字符串返回一串数组)
全局_登陆cookie = (cookie数组[1]);
w=device.width,h=device.height;
youxiao=1
F=0
var username = ui.setName.text();
var password = ui.setPassword.text();
var 返回数据 = http.post("http://tg.cst2020.cn/tg/Login/in", {
'Accept-Language': 'zh-cn,zh;q=0.5',
'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
'cookie': "'" + 全局_登陆cookie + "'",
'username': username,
'password': password
});
ccc=返回数据.body.string()
ccc = JSON.stringify(ccc)
判断1=ccc.indexOf("无效")
判断2=ccc.indexOf("错误")
if(判断1 != -1 || 判断2 != -1 ){
    toast("》》登录失败《《");
    exit();
}else{
    toast("》》登录成功《《");
}
var 返回头cookie = (返回数据.headers["Set-Cookie"]);
var 正则条件 = /tguser=([\s\S]*?); /;
var cookie数组 = 正则条件.exec(返回头cookie);
全局_用户cookie = (cookie数组[1]);
sleep (1000)
Cookie='UM_distinctid=1705e6f1eced0-069f387b114a9d-2d48783b-38400-1705e6f1ecf341; CNZZDATA1278270599=2057786939-1582128505-%7C1582128505; tguser=' + 全局_用户cookie
养号=0

显示余额()

while(true){
    while(true){
        养号++
        var temp=http.get('http://tg.cst2020.cn/tg/DouYin/taskList?tp=2',
        {
            "headers":
            {
                'Accept-Language': 'zh-cn,zh;q=0.5',
                'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                'cookie': Cookie
        }}).body.json();
        zzz = JSON.stringify(temp)
        判断=zzz.indexOf("点赞")
        if(判断!=-1){
            toast("获取到任务，开始跳转")
            break
        }
        toast("未找到任务，两秒后刷新")
        sleep(random(2000, 5000))
        if(养号%6==5){
            toast("》》》养号切视频《《《")
            launchApp("抖音短视频")
            sleep(3000)
            swipe(w*0.5, h*0.8, w*0.5, h*0.2, 500);
        }
    }
    
    wwww=temp.result.dataList
    wwww = JSON.stringify(wwww)
    id=wwww.substring(8, 14);
    var temp1=http.get('http://tg.cst2020.cn/tg/DouYin/getTaskData?id='+id+'_2',
    {
        "headers":
        {                
            'Accept-Language': 'zh-cn,zh;q=0.5',
            'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
            'cookie': Cookie
        }}).body.json();
    uid=temp1.result.copytxt
    uid = JSON.stringify(uid)
    uid=uid.split("video/")[1]
    uid=uid.split("/?region")[0]

    提交任务()
    var tmp = "snssdk1128://aweme/detail/" + uid + "?refer=web&gd_label=click_wap_detail_download_feature"
    app.startActivity({
        data: tmp
    });

    sleep(2000)
    toast("进入成功")
    视频有效性()
    sleep(4000)
    if(youxiao==1){
        sleep(2000);
        var x = device.width / 2
        var y = device.height / 2
        if (x > 10 && y > 10) {} else 
        {
            x = 500
            y = 500
        }
        toast("开始随机时间点赞")
        sleep(2000)
        for (var o = 1; o < random(2, 5); o++) {
            sleep(2000)
            toast("看视频" + o * 2 + "秒")
        }
        click(x, y)
        sleep(50)
        click(x, y)
        sleep(3000)
        toast("点赞结束");
        sleep(1000)
        F++
        toast("》全享通已为您成功执行了"+F+"个任务《")
        sleep(1000)
        back()           
        sleep(1000)
    }else{
        youxiao=1
        back()
    }

    // if(F==3){
    //     launchApp("全享通");
    //     alert("提示", "测试结束，欢迎进行购买使用");
    //     exit();
    // }

    if(F%10==0){
        显示余额()
    }

}

function 提交任务() {
    var 返回数据 = http.get('http://tg.cst2020.cn/tg/DouYin/copyTaskData?id='+id+'_2', {
        headers: {
            'Accept-Language': 'zh-cn,zh;q=0.5',
            'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
            'cookie': Cookie
        }
    });
    var 返回json = 返回数据.body.json();
    if (返回json.msg == "任务无效" || 返回json.msg == "您操作太频繁，请稍后再试") {
        id = null;
    } else {
        toast("任务ID" + id + "提交成功")
        全局_得到任务 = true;
        sleep(2000);
    }
};


function 视频有效性()
{
    chetime=1
    while(true)
    {
        you=1
        toast("检测视频有效性")
        var img=captureScreen()
        var a=(colors.toString(images.pixel(img, device.width/2, device.height/2)))
        var b=(colors.toString(images.pixel(img, device.width/2, device.height/4)))
        var c=(colors.toString(images.pixel(img, device.width/2, device.height*3/4)))
        if(a=="#ff000000" && b=="#ff000000" && c=="#ff000000")
        {
            chetime++
            if(chetime>2)
            {
                youxiao=0
                toast("》问题视频《")
                break
            }

        }
        else{
            toast("》视频有效《")
            break
        }
        sleep(1000)
    }

}
function 显示余额(){
    var 返回数据 = http.get("http://tg.cst2020.cn/tg/Home/index", {
        headers: {
            "Accept-Language":"zh-CN,en-US;q=0.9",
            'User-Agent': "Mozilla/5.0 (Linux; Android 7.1.2; V1938CT Build/N2G48C; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/68.0.3440.70 Mobile Safari/537.36",
            'cookie': Cookie
        }
    });
    var text = (返回数据.body.string());
    var 正则条件 = /今日收益([\s\S]*?)余额提现/;
    var 正则条件2 = /margin-left:8px">([\s\S]*?)<span/;
    var 余额数组 = 正则条件.exec(text);
    var 余额数组2 = 正则条件2.exec(余额数组);
    全局_可提现金额 = 余额数组2[1];

toast("目前可提现金额:"+全局_可提现金额);
}
}
function 小龙虾协议测试(){
    sleep(5000)
    toastLog("请同意截图权限")
sleep(1000)
if(!requestScreenCapture())
{
toast("请求截图失败");
}
toast("小龙虾协议测试脚本开始")
sleep(1000)
toast("正在打开>>抖音")
launchApp("抖音短视频")
sleep (3000)
toast("正在登陆>>小龙虾")
sleep (1000)

http.get("www.baidu.com").statusCode

var 返回数据 = http.get("http://tg.cst2020.cn/", {
headers: {
    'Accept-Language': 'zh-cn,zh;q=0.5',
    'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
}
});
var 返回头cookie = (返回数据.headers["Set-Cookie"]); //Httpget返回请求头数组["头数组标题"]
var 正则条件 = /tguser=([\s\S]*?); /;   //正则表达式条件
var cookie数组 = 正则条件.exec(返回头cookie);  //正则.exec(匹配要检索的字符串返回一串数组)
全局_登陆cookie = (cookie数组[1]);
w=device.width,h=device.height;
youxiao=1
F=0
var username = ui.setName.text();
var password = ui.setPassword.text();
var 返回数据 = http.post("http://tg.cst2020.cn/tg/Login/in", {
'Accept-Language': 'zh-cn,zh;q=0.5',
'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
'cookie': "'" + 全局_登陆cookie + "'",
'username': username,
'password': password
});
ccc=返回数据.body.string()
ccc = JSON.stringify(ccc)
判断1=ccc.indexOf("无效")
判断2=ccc.indexOf("错误")
if(判断1 != -1 || 判断2 != -1 ){
    toast("》》登录失败《《");
    exit();
}else{
    toast("》》登录成功《《");
}
var 返回头cookie = (返回数据.headers["Set-Cookie"]);
var 正则条件 = /tguser=([\s\S]*?); /;
var cookie数组 = 正则条件.exec(返回头cookie);
全局_用户cookie = (cookie数组[1]);
sleep (1000)
Cookie='UM_distinctid=1705e6f1eced0-069f387b114a9d-2d48783b-38400-1705e6f1ecf341; CNZZDATA1278270599=2057786939-1582128505-%7C1582128505; tguser=' + 全局_用户cookie
养号=0

显示余额()

while(true){
    while(true){
        养号++
        var temp=http.get('http://tg.cst2020.cn/tg/DouYin/taskList?tp=2',
        {
            "headers":
            {
                'Accept-Language': 'zh-cn,zh;q=0.5',
                'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                'cookie': Cookie
        }}).body.json();
        zzz = JSON.stringify(temp)
        判断=zzz.indexOf("点赞")
        if(判断!=-1){
            toast("获取到任务，开始跳转")
            break
        }
        toast("未找到任务，两秒后刷新")
        sleep(random(2000, 5000))
        if(养号%6==5){
            toast("》》》养号切视频《《《")
            launchApp("抖音短视频")
            sleep(3000)
            swipe(w*0.5, h*0.8, w*0.5, h*0.2, 500);
        }
    }
    
    wwww=temp.result.dataList
    wwww = JSON.stringify(wwww)
    id=wwww.substring(8, 14);
    var temp1=http.get('http://tg.cst2020.cn/tg/DouYin/getTaskData?id='+id+'_2',
    {
        "headers":
        {                
            'Accept-Language': 'zh-cn,zh;q=0.5',
            'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
            'cookie': Cookie
        }}).body.json();
    uid=temp1.result.copytxt
    uid = JSON.stringify(uid)
    uid=uid.split("video/")[1]
    uid=uid.split("/?region")[0]

    提交任务()
    var tmp = "snssdk1128://aweme/detail/" + uid + "?refer=web&gd_label=click_wap_detail_download_feature"
    app.startActivity({
        data: tmp
    });

    sleep(2000)
    toast("进入成功")
    视频有效性()
    sleep(4000)
    if(youxiao==1){
        sleep(2000);
        var x = device.width / 2
        var y = device.height / 2
        if (x > 10 && y > 10) {} else 
        {
            x = 500
            y = 500
        }
        toast("开始随机时间点赞")
        sleep(2000)
        for (var o = 1; o < random(2, 5); o++) {
            sleep(2000)
            toast("看视频" + o * 2 + "秒")
        }
        click(x, y)
        sleep(50)
        click(x, y)
        sleep(3000)
        toast("点赞结束");
        sleep(1000)
        F++
        toast("》全享通已为您成功执行了"+F+"个任务《")
        sleep(1000)
        back()           
        sleep(1000)
    }else{
        youxiao=1
        back()
    }

    if(F==3){
        launchApp("全享通");
        alert("提示", "测试结束，欢迎进行购买使用");
        exit();
    }

    if(F%10==0){
        显示余额()
    }

}

function 提交任务() {
    var 返回数据 = http.get('http://tg.cst2020.cn/tg/DouYin/copyTaskData?id='+id+'_2', {
        headers: {
            'Accept-Language': 'zh-cn,zh;q=0.5',
            'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
            'cookie': Cookie
        }
    });
    var 返回json = 返回数据.body.json();
    if (返回json.msg == "任务无效" || 返回json.msg == "您操作太频繁，请稍后再试") {
        id = null;
    } else {
        toast("任务ID" + id + "提交成功")
        全局_得到任务 = true;
        sleep(2000);
    }
};


function 视频有效性()
{
    chetime=1
    while(true)
    {
        you=1
        toast("检测视频有效性")
        var img=captureScreen()
        var a=(colors.toString(images.pixel(img, device.width/2, device.height/2)))
        var b=(colors.toString(images.pixel(img, device.width/2, device.height/4)))
        var c=(colors.toString(images.pixel(img, device.width/2, device.height*3/4)))
        if(a=="#ff000000" && b=="#ff000000" && c=="#ff000000")
        {
            chetime++
            if(chetime>2)
            {
                youxiao=0
                toast("》问题视频《")
                break
            }

        }
        else{
            toast("》视频有效《")
            break
        }
        sleep(1000)
    }

}
function 显示余额(){
    var 返回数据 = http.get("http://tg.cst2020.cn/tg/Home/index", {
        headers: {
            "Accept-Language":"zh-CN,en-US;q=0.9",
            'User-Agent': "Mozilla/5.0 (Linux; Android 7.1.2; V1938CT Build/N2G48C; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/68.0.3440.70 Mobile Safari/537.36",
            'cookie': Cookie
        }
    });
    var text = (返回数据.body.string());
    var 正则条件 = /今日收益([\s\S]*?)余额提现/;
    var 正则条件2 = /margin-left:8px">([\s\S]*?)<span/;
    var 余额数组 = 正则条件.exec(text);
    var 余额数组2 = 正则条件2.exec(余额数组);
    全局_可提现金额 = 余额数组2[1];

toast("目前可提现金额:"+全局_可提现金额);
}
}

//======================================================================================================================
//=============================小龙虾===================================================================================
ui.xlxyx.click(function(){
    if(钥匙==1){
        threads.start(小龙虾脚本);
        toast("你已激活，欢迎使用！");
    }else{
        threads.start(小龙虾测试);
        toast("你未激活，5秒后进入体验！");
    }

});

function 小龙虾脚本(){
    
    var window = floaty.window(
        <vertical>
            <horizontal>
            <button id="ok" text="开始"/>
            <button id="ok2" text="停止"/>
            </horizontal>
        </vertical>
    );
    window.exitOnClose();
    window.setPosition(1, 400)
    
    window.ok.on("click", ()=>{
        window.ok.text("启动中")
        threads.start(小龙虾更新脚本)
    });
    
    window.ok2.on("click", ()=>{
        exit()
    });
    setInterval(()=>{}, 1000);

}

function 小龙虾更新脚本(){
    toastLog("请同意截图权限")
    sleep(1000)
    if(!requestScreenCapture())
    {
    toast("请求截图失败");
    }
    log("小龙虾正式脚本开始")
    console.show()
    sleep(1000)
    console.setSize(450, 450)
    F = 0
    M = 0
    J = 0
    AAA=0
    aaa=1;
    while (true) {
        launchApp("小龙虾")
        sleep(1000)  
    
         if (F == 0) {
            log("初始余额，请手动进入小龙虾主页")
            sleep(5000)
              
              while (true) {
                oooo =textContains("登录").findOne()
                o1 = textContains("元").findOne()

                    if (oooo != null ||o1 != null) {
                        des = o1.text()
                        log("今日收益："+des)
                        sleep(2000)
                        while (true) {
                            if(textContains("抖音高收益任务").exists()){
                                log("执行抖音任务")
                                textContains("抖音高收益任务").findOne().click()
                                 sleep(1000)
                                 break;  
                            }
                         }
                        F++
                        sleep(1000);
                        break;
                }
            }
        }

//检测任务
    返回: while (true) {
    sleep(2000)
    AAA=0
    a1 = text("暂时没有任务").findOnce()
    a2 = desc("暂时没有任务").findOnce()



    if(text("今日收益").exists()){
        log("返回是小龙虾主页,重新执行任务")
        text("抖音任务 抖音高收益任务 ").findOne().click()
        抖音任务二次检测=text("抖音任务 抖音高收益任务 ").findOnce()
        while(抖音任务二次检测!= null){
            text("抖音任务 抖音高收益任务 ").findOne().click()
            sleep(800)
            抖音任务二次检测=text("抖音任务 抖音高收益任务 ").findOnce()
        }
        sleep(1000)
    }else{
         if (a1 != null || a2 != null) 
        {    
             while (true) {
                log("没有任务，正在重新获取")
                if(aaa==1){
                    text("点赞").findOne().click();
                    aaa=0;
                    F=1;
                    continue 返回
                }else{
                    text("任务").findOne().click();
                    aaa=1;
                    F=1;
                    continue 返回
                }
            }
        }
        else 
        {
            // a1 = text("暂时没有任务").findOnce()
            // a2 = desc("暂时没有任务").findOnce()
    
            // if (a1 != null || a2 != null) {
            //     swipe(500, 1000, 500, 300, 600)
            //     log("二次检测")
            //     continue 返回
            // }
            while (true) {
                log("获取到任务")
                sleep(300);
                d1 = textContains("0.016元 点赞").findOnce()
                d2 = textContains("0.015元 点赞").findOnce()
                d3 = textContains("0.014元 点赞").findOnce()
                a1 = text("暂时没有任务").findOnce()
                if(a1 != null){
                    log("任务消失重新检测")
                    AAA=1
                    continue 返回
                }
                if (d1 != null) {
                    d1.click();
                    AAA=2
                }
                if (d2 != null) {
                    AAA=2
                    d2.click();
                }
                if (d3 != null) {
                    AAA=2
                    d3.click();
                }
                if(AAA==2){
                    c1 = text("复制").findOne(1000)
                    if(c1== null){
                        log("点击失败，再次点击")
                        AAA=1
                        continue 返回
                    }else{
                        break;
                    }
                }
                log("任务消失重新检测")
                text("任务").findOne().click();
                AAA=1
                continue 返回
            }
            

            
        }
        while (true) {
            c1 = text("复制").findOnce()
            if (c1 != null) {
                log("已复制");
                c1.click();
                sleep(1000)
                失效检测=textContains("复制成功，打开抖音App").findOnce()
                if(失效检测!=null){
                    break;
                }else{
                    二次检测1=textContains("无效").findOnce()
                    二次检测2=textContains("频繁").findOnce()
                    if(二次检测1!=null ||二次检测2!=null ){
                        log("任务失效，重新检测")
                        text("点赞").findOne().click();
                        AAA=1
                        break
                    }

                }
                log("任务消失重新检测")
                text("任务").findOne().click();
                AAA=1
                continue 返回
            }
            
        
        }

        if(AAA==1){
            text("点赞").findOne().click();
            continue 返回
        }else{break}


    }

    }

//进入任务


sleep(1000);
log("打开抖音");
launchApp("抖音短视频");
qw1 = text("前往").findOne(3000)
qw2 = text("打开看看").findOne(3000)
if(qw1){
    qw=qw1
}else{
    qw=qw2
}
var w=device.width,h=device.height;
var i=1;
if (qw) {
        log("任务正常")
        qw.click()
        sleep(1000)
        视频有效性()
        sleep(6000)
        if(you==0){
            you=1
            back()
            sleep(500)
            toastLog("放弃，返回小龙虾");
            launchApp("小龙虾")
        }else{
        toastLog("开始点赞");
        //点赞
        click(w/2,h/2);
        sleep(80)
        click(w/2,h*0.48);
        sleep(80)
        click(w/2,h*0.46);
        sleep(80)
        click(w/2,h*0.44);
        sleep(2000)
        swipe(w*0.9, h/2, w*0.1, h/2, 500);
        sleep(2000)
        swipe(w*0.1, h/2, w*0.9, h/2, 500);
        sleep(1000)
        click(w/2,h*0.42);
        sleep(80)
        click(w/2,h*0.40);
        sleep(80)
        click(w/2,h*0.38);
        sleep(80)
        toastLog("点赞结束");
        sleep(3000)
        back()
        sleep(500)
        launchApp("小龙虾")
        M++
        J++
        F++
        log("全享通已为您成功执行了"+J+"个任务")
        }

    } else {
        log("没有找到任务页面")
        launchApp("小龙虾")   
    }
}


function 视频有效性()
{
    chetime=1
    while(true)
    {
        you=1
        toastLog("检测视频有效性")
        var img=captureScreen()
        var a=(colors.toString(images.pixel(img, device.width/2, device.height/2)))
        var b=(colors.toString(images.pixel(img, device.width/2, device.height/4)))
        var c=(colors.toString(images.pixel(img, device.width/2, device.height*3/4)))
        if(a=="#ff000000" && b=="#ff000000" && c=="#ff000000")
        {
            chetime++
            if(chetime>2)
            {
                you=0
                toastLog("问题视频")
                break
            }

        }
        else{
            toastLog("视频有效")
            break
        }
        sleep(2500)
    }

}
}



function 小龙虾测试(){
    sleep(5000)
    var window = floaty.window(
        <vertical>
            <horizontal>
            <button id="ok" text="开始"/>
            <button id="ok2" text="停止"/>
            </horizontal>
        </vertical>
    );
    window.exitOnClose();
    window.setPosition(1, 400)
    
    window.ok.on("click", ()=>{
            window.ok.text("启动中")
            threads.start(小龙虾测试脚本)
    });
    
    window.ok2.on("click", ()=>{
        exit()
    });
    setInterval(()=>{}, 1000);

}

function 小龙虾测试脚本(){
    toastLog("请同意截图权限")
    sleep(1000)
    if(!requestScreenCapture())
    {
    toast("请求截图失败");
    }
    log("小龙虾测试脚本开始")
    console.show()
    sleep(1000)
    console.setSize(450, 450)
    F = 0
    M = 0
    J = 0
    AAA=0
    aaa=1;
    while (true) {
        launchApp("小龙虾")
        sleep(1000)  
    
         if (F == 0) {
            log("初始余额，请手动进入小龙虾主页")
            sleep(5000)
              
              while (true) {
                oooo =textContains("登录").findOne()
                o1 = textContains("元").findOne()

                    if (oooo != null ||o1 != null) {
                        des = o1.text()
                        log("今日收益："+des)
                        sleep(2000)
                        while (true) {
                            if(textContains("抖音高收益任务").exists()){
                                log("执行抖音任务")
                                textContains("抖音高收益任务").findOne().click()
                                 sleep(1000)
                                 break;  
                            }
                         }
                        F++
                        sleep(1000);
                        break;
                }
            }
        }

//检测任务
    返回: while (true) {
    sleep(1000)
    AAA=0
    a1 = text("暂时没有任务").findOnce()
    a2 = desc("暂时没有任务").findOnce()
    if(text("今日收益").exists()){
        log("返回是小龙虾主页,重新执行任务")
        text("抖音任务 抖音高收益任务 ").findOne().click()
        sleep(1000)
    }else{
        // if(F>1){
        //     log("刷新掉无效任务")
        //     text("任务").findOne().click();
        //     sleep(1000);
        // }
         if (a1 != null || a2 != null) 
        {

            swipe(500, 1000, 500, 300, 500)
    
             while (true) {
                log("没有任务，正在重新获取")
                if(aaa==1){
                    text("点赞").findOne().click();
                    aaa=0;
                    F=1;
                    continue 返回
                }else{
                    text("任务").findOne().click();
                    aaa=1;
                    F=1;
                    continue 返回
                }
            }
        }
        else 
        {
            // a1 = text("暂时没有任务").findOnce()
            // a2 = desc("暂时没有任务").findOnce()
    
            // if (a1 != null || a2 != null) {
            //     swipe(500, 1000, 500, 300, 600)
            //     log("二次检测")
            //     continue 返回
            // }
            while (true) {
                log("获取到任务")
                sleep(300);
                d1 = textContains("0.016元 点赞").findOnce()
                d2 = textContains("0.015元 点赞").findOnce()
                d3 = textContains("0.014元 点赞").findOnce()
                a1 = text("暂时没有任务").findOnce()
                if(a1 != null){
                    log("任务消失重新检测")
                    AAA=1
                    continue 返回
                }
                if (d1 != null) {
                    d1.click();
                    AAA=2
                }
                if (d2 != null) {
                    AAA=2
                    d2.click();
                }
                if (d3 != null) {
                    AAA=2
                    d3.click();
                }
                if(AAA==2){
                    c1 = text("复制").findOne(1000)
                    if(c1== null){
                        log("点击失败，再次点击")
                        AAA=1
                        continue 返回
                    }else{
                        break;
                    }
                }
                log("任务消失重新检测")
                AAA=1
                continue 返回
            }
            

            
        }
        while (true) {
            c1 = text("复制").findOnce()
            c2 = desc("复制").findOnce()
            if (c1 != null) {
                log("已复制");
                c1.click();
                sleep(1000)
                失效检测=textContains("复制成功，打开抖音App").findOnce()
                if(失效检测!=null){
                    break;
                }else{
                    log("任务失效，重新检测")
                    text("点赞").findOne().click();
                    AAA=1
                    break
                }
            }
            if (c2 != null) {
                log("已复制");
                c2.click();
                sleep(1000)
                失效检测=textContains("复制成功，打开抖音App").findOnce()
                if(失效检测!=null){
                    break;
                }else{
                    log("视频失效，重新检测")
                    AAA=1
                    break
                }
            }
            
        
        }
        if(AAA==1){
            text("点赞").findOne().click();
            continue 返回
        }else{break}


    }

    }

//进入任务


sleep(1000);
log("打开抖音");
app.launchApp("抖音短视频");
qw1 = text("前往").findOne(3000)
qw2 = text("打开看看").findOne(3000)
if(qw1){
    qw=qw1
}else{
    qw=qw2
}
var w=device.width,h=device.height;
var i=1;
if (qw) {
        log("任务正常")
        qw.click()
        sleep(1000)
        视频有效性()
        sleep(6000)
        toastLog("开始点赞");
        //点赞
        click(w/2,h/2);
        sleep(100)
        click(w/2,h*0.48);
        sleep(100)
        click(w/2,h*0.46);
        sleep(100)
        click(w/2,h*0.44);
        sleep(2000)
        swipe(w*0.9, h/2, w*0.1, h/2, 500);
        sleep(2000)
        swipe(w*0.1, h/2, w*0.9, h/2, 500);
        sleep(1000)
        click(w/2,h*0.42);
        sleep(100)
        click(w/2,h*0.40);
        sleep(100)
        click(w/2,h*0.38);
        sleep(100)
        click(w/2,h*0.36);
        sleep(100)
        click(w/2,h*0.34);
        toastLog("点赞结束");
        sleep(3000)
        back()
        sleep(500)
        launchApp("小龙虾")
        M++
        J++
        F++
        log("全享通已为您成功执行了"+J+"个任务")
    } else {
        log("没有找到任务页面")
        launchApp("小龙虾")   
    }

    if(J==3){
        launchApp("全享通");
        alert("提示", "测试结束，欢迎进行购买使用");
        exit();
    }

}


function 视频有效性()
{
    chetime=1
    while(true)
    {
        you=1
        toastLog("检测视频有效性")
        var img=captureScreen()
        var a=(colors.toString(images.pixel(img, device.width/2, device.height/2)))
        var b=(colors.toString(images.pixel(img, device.width/2, device.height/4)))
        var c=(colors.toString(images.pixel(img, device.width/2, device.height*3/4)))
        if(a=="#ff000000" && b=="#ff000000" && c=="#ff000000")
        {
            chetime++
            if(chetime>2)
            {
                you=0
                toastLog("问题视频")
                break
            }

        }
        else{
            toastLog("视频有效")
            break
        }
        sleep(2500)
    }

}
}


//======================================================================================================================
//=============================攒攒=====================================================================================

ui.zzyx.click(function(){
    if(钥匙==1){
        threads.start(攒攒脚本);
        toast("你已激活，欢迎使用！");
    }else{
        toast("你未激活，5秒后进入体验！");
        threads.start(攒攒测试脚本);
    }

})

function 攒攒脚本(){
    toastLog("请同意截图权限")
    sleep(1000)
    if(!requestScreenCapture())
    {
    toast("请求截图失败");
    }
    toastLog("攒攒正式脚本开始")
    F = 0
    aaajjj=0
    aaawww=0
    abc=0
    you=0
    var w=device.width,h=device.height;
    重来: while (true) {
        if(aaawww == 6){
            launchApp("攒攒")
            sleep(4000)
            toastLog("开始执行抖音任务")
            D音任务 = textContains("D音任务").findOne(9000)
            D音任务zb=D音任务.bounds()
            click(D音任务zb.centerX(),D音任务zb.centerY())
            sleep(2000)
            toastLog("进入抖音任务")
            领取任务1 = text("领取任务").depth(14).findOnce()
            领取任务2 = text("领取任务").findOne()
            if(领取任务1!= null){
                log("领取任务")
                领取任务1.click()
            }else{
                log("领取任务")
                领取任务2.click()
            }
            sleep(6000)
            检查类型 = text("类型").findOnce()
            if(检查类型!= null){
                sleep(1000);
                aaajjj=0
                toastLog("有任务啦！！！")
            }
            aaajjj++
            if(aaajjj==3){
                aaajjj=0
                back()
            }
        }else{
            app.launchApp("抖音短视频")
            toastLog("正在找抖音关注坐标,请手动进入抖音主页")
            首页=text("首页").findOne(9000)
            首页zb=首页.bounds()
            首页zbx=首页zb.centerX()
            首页zby=首页zb.centerY()
            click(首页zb.centerX(),首页zb.centerY())
            sleep(2000)
            swipe(w*0.9, h/2, w*0.1, h/2, 500);
            while(true){
                sleep(3000)
                关注1=className("android.widget.Button").depth("14").findOnce()
                关注2=id("d82").findOnce()
                关注3=id("d76").findOnce()
                关注4=id("ckn").findOnce()
                关注5=className("android.widget.TextView").depth("15").findOnce()
                if(关注1||关注2||关注3||关注4||关注5){
                    if(关注1!=null){
                        关注zb = 关注1.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby)
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else if(关注2!=null){
                        关注zb = 关注2.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby) 
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else if(关注3!=null){
                        关注zb = 关注3.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby) 
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else if(关注4!=null){
                        关注zb = 关注4.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby) 
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else{
                        关注zb = 关注5.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby) 
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break  
                    }
                }else{
                    toastLog("未找到关注坐标，正在换视频")
                    swipe(w*0.1, h/2, w*0.9, h/2, 500);
                    sleep(3000)
                    swipe(w/2, h*0.8, w/2, h*0.2, 500);
                    sleep(3000)
                    swipe(w*0.9, h/2, w*0.1, h/2, 500);
                    sleep(3000)
                }
            }
            
            sleep(2000)
            launchApp("攒攒")
            toastLog("打开攒攒")
    
    
            //=======================================第一次循环=============================================================
             if (F == 0) 
             {
                toastLog("攒攒初始化")
                 while (true) 
                {
                    sleep(4000)
                    toastLog("开始执行抖音任务")
                    D音任务 = textContains("D音任务").findOne(9000)
                    D音任务zb=D音任务.bounds()
                    click(D音任务zb.centerX(),D音任务zb.centerY())
                    sleep(2000)
                    toastLog("进入抖音任务")
                    领取任务1 = text("领取任务").depth(14).findOnce()
                    领取任务2 = text("领取任务").findOne()
                    if(领取任务1!= null){
                        log("领取任务")
                        领取任务1.click()
                    }else{
                        log("领取任务")
                        领取任务2.click()
                    }
                    sleep(6000)
                    检查类型 = textContains("类型").findOnce()
                    if(检查类型!= null){
                        F++
                        sleep(1000);
                        toastLog("初始化结束")
                        break;
                    }else{
                        back()
                    }
                }
            }


        }
    //=======================================主循环=============================================================
    返回: while(true){
            sleep(3000)
            检查类型 = textContains("类型").findOnce()
            if(检查类型!= null){
                特价关注任务 = textContains("类型").findOnce().parent().parent().findOne(textContains("特价关注"))
                特价点赞任务 = textContains("类型").findOnce().parent().parent().findOne(textContains("特价点赞"))
                关注任务 = textContains("类型").findOnce().parent().parent().findOne(textContains("关注"))
                点赞任务 = textContains("类型").findOnce().parent().parent().findOne(textContains("点赞"))

                // if(F>3){
                //     launchApp("全享通");
                //     alert("提示", "测试结束，欢迎进行购买使用");
                //     exit();
                // }
                

                if(特价点赞任务 != null ||特价关注任务 !=null|| 点赞任务 != null || 关注任务 != null){
                    if (特价点赞任务 != null){
                        toastLog("识别为 特价点赞任务");
                        点赞();
                        continue 返回
                    }
                    if (特价关注任务 != null){
                        toastLog("识别为 特价关注任务");
                        关注123();
                        continue 返回
                    }
                    if (点赞任务 != null){
                        toastLog("识别为 点赞任务");
                        点赞();
                        continue 返回
                    }
                    if (关注任务 != null){
                        toastLog("识别为 关注任务");
                        关注123();
                        continue 返回
                    }
                }
            }else
            {
                toastLog("无任务1.5秒后重新领取");
                aaawww=6;
                sleep(1000);
                continue 重来
            }
        }
    }
    
    function 关注123(){
        if(abc==1){
            上传截图();
            sleep(2000);
            abc=0
        }else{
            开始任务=textContains("直接做任务").findOne(5000)
            开始任务.click()
            qw1 = text("前往").findOne(5000)
            qw2 = text("打开看看").findOne(5000)
            if(qw1){
                qw=qw1
            }else{
                qw=qw2
            }
            qw.click()

            sleep(3000);
            视频有效性检测()
            sleep(4000);
            if(you==0){
                you=1
                back();
                sleep(1000)
                launchApp("攒攒")
                sleep(2000)
                放弃任务=textContains("放弃任务").findOnce()
                log(放弃任务)
                放弃任务.click()
                sleep(1000)
                确定=text("确定").findOnce()
                log(确定)
                确定.click()
                sleep(3000)
            }else{
                toastLog("开始关注");
                swipe(w*0.9, h/2, w*0.1, h/2, 500);
                sleep(2000);
                click(关注zbx,关注zby)
                sleep(2000);
                swipe(w*0.1, h*0.8, w*0.9, h*0.8, 500);
                toastLog("关注成功");
                截屏();
                back();
                launchApp("攒攒")
                sleep(1000);
                上传截图();
                sleep(2000);
            }
        }
    }

    function 点赞(){
        if(abc==1){
            上传截图();
            abc=0
            sleep(2000);
        }else{
            开始任务=textContains("直接做任务").findOne(5000)
            开始任务.click()
            qw1 = text("前往").findOne(5000)
            qw2 = text("打开看看").findOne(5000)
            if(qw1){
                qw=qw1
            }else{
                qw=qw2
            }
            qw.click()

            sleep(3000);
            视频有效性检测()
            sleep(4000);
            if(you==0){
                you=1
                back();
                sleep(1000)
                launchApp("攒攒")
                sleep(2000)
                放弃任务=textContains("放弃任务").findOnce()
                log(放弃任务)
                放弃任务.click()
                sleep(1000)
                确定=text("确定").findOnce()
                log(确定)
                确定.click()
                sleep(3000)
            }else{
            toastLog("开始点赞");
            click(w/2,h/2);
            sleep(100);
            click(w/2,h*0.48);
            sleep(100);
            click(w/2,h*0.46);
            sleep(100);
            click(w/2,h*0.44);
            toastLog("点赞成功");
            截屏();
            sleep(2000);
            back();
            launchApp("攒攒")
            sleep(1000);
            上传截图();
            sleep(2000);
            }
        }
    }

    function 截屏()
    {
        toastLog("开始截图")
        sleep(1000)
        files.ensureDir("/sdcard/Camera/AAAAA/")
        var im = captureScreen();
        var path = "/sdcard/Camera/AAAAA/A攒攒任务截图.png"
        im.saveTo(path);
        media.scanFile(path);
        sleep(3000)
        toastLog("截图完成");
    } 
        
    function 上传截图()
    {
        
        sleep(3000)
        任务截图= text("任务截图").findOnce()
        if(任务截图==null){
            abc=1
        }else{
            toastLog("开始上传截图");
            while(true){
                任务截图= text("任务截图").findOne(6000)
                任务截图zb= 任务截图.bounds()
                任务截图.click()
                sleep(1000)
                相册目录= id("category_btn").findOnce()
                if(相册目录!=null){               
                    相册目录= className("android.widget.Button").text("所有图片").findOnce()
                    检测进入相册=className("android.widget.TextView").text("所有图片").findOnce()
                    while(检测进入相册==null){
                        相册目录.click();
                        sleep(500);
                        检测进入相册=className("android.widget.TextView").text("所有图片").findOnce()
                    }
                    sleep(500)
                    while(true){
                        相册 = text("AAAAA").findOnce()
                        if(相册){
                            sleep(1000)
                            break
                        }
                        swipe(w*0.2, h*0.9, w*0.2, h*.5, 500);
                        sleep(1000)
                    }
                    相册zb=相册.bounds()
                    click(相册zb.centerX(),相册zb.centerY())
                    sleep(500)
                    img=className("android.widget.FrameLayout").clickable(false).boundsInside(0,0, device.width/2.9, device.height).findOnce()
                    imgzb=img.bounds()
                    click(imgzb.centerX(),imgzb.centerY())
                    sleep(1000)
                    确认选中 = textContains("1/1").findOne(2000)
                    确认选中zb=确认选中.bounds()
                    click(确认选中zb.centerX(),确认选中zb.centerY())
                    toastLog("已上传截图")
                }else{
                    相册= text("相册").findOne(6000)
                    相册zb= 相册.bounds()
                    click(相册zb.centerX(),相册zb.centerY())
                    sleep(500)
                    子相册= text("相册").findOne(6000)
                    子相册zb= 子相册.bounds()
                    click(子相册zb.centerX(),子相册zb.centerY())
                    sleep(500)
                    while(true){
                        A相册 = text("AAAAA").findOnce()
                        if(A相册 !=null){
                            sleep(1000)
                            break
                        }
                        swipe(w*0.2, h*0.9, w*0.2, h*.5, 500);
                        sleep(1000)
                    }
                    A相册zb= A相册.bounds()
                    click(A相册zb.centerX(),A相册zb.centerY())
                    选中= descContains("图片").findOne()
                    选中zb=选中.bounds()
                    click(选中zb.centerX(),选中zb.centerY())
                } 
                sleep(8000)
                var img=captureScreen()
                var a=(colors.toString(images.pixel(img, 任务截图zb.centerX(),任务截图zb.centerY())))
                if(a=="#ffefeff4"){
                    toastLog("提交失败，重新获取");
                    back();
                    领取任务1 = text("领取任务").depth(14).findOnce()
                    领取任务2 = text("领取任务").findOne()
                    if(领取任务1!= null){
                        log("领取任务")
                        领取任务1.click()
                    }else{
                        log("领取任务")
                        领取任务2.click()
                    }
                }else
                {
                    提交任务1=text("提交任务 ").findOnce()
                    提交任务2=text("提交任务").findOnce()
                    if(提交任务1){
                        提交任务1.click()
                    }else{
                        提交任务2.click()
                    }
                    toastLog("全享通已为您成功执行了"+F+"个任务");
                    F++
                }
                break
            }
        }   
    }

    function 视频有效性检测()
    {
        chetime=1
        while(true)
        {
            you=1
            toastLog("检测视频有效性")
            var img=captureScreen()
            var a=(colors.toString(images.pixel(img, device.width/2, device.height/2)))
            var b=(colors.toString(images.pixel(img, device.width/2, device.height/4)))
            var c=(colors.toString(images.pixel(img, device.width/2, device.height*3/4)))
            if(a=="#ff000000" && b=="#ff000000" && c=="#ff000000")
            {
                chetime++
                if(chetime>2)
                {
                    you=0
                    toastLog("问题视频")
                    break
                }

            }
            else{
                toastLog("视频有效")
                break
            }
            sleep(2500)
        }

    }
}

function 攒攒测试脚本(){
    sleep(5000)
    toastLog("请同意截图权限")
    sleep(1000)
    if(!requestScreenCapture())
    {
    toast("请求截图失败");
    }
    toastLog("攒攒测试脚本开始")
    F = 0
    aaajjj=0
    aaawww=0
    abc=0
    you=0
    var w=device.width,h=device.height;
    重来: while (true) {
        if(aaawww == 6){
            launchApp("攒攒")
            sleep(4000)
            toastLog("开始执行抖音任务")
            D音任务 = textContains("D音任务").findOne(9000)
            D音任务zb=D音任务.bounds()
            click(D音任务zb.centerX(),D音任务zb.centerY())
            sleep(2000)
            toastLog("进入抖音任务")
            领取任务1 = text("领取任务").depth(14).findOnce()
            领取任务2 = text("领取任务").findOne()
            if(领取任务1!= null){
                log("领取任务")
                领取任务1.click()
            }else{
                log("领取任务")
                领取任务2.click()
            }
            sleep(6000)
            检查类型 = text("类型").findOnce()
            if(检查类型!= null){
                sleep(1000);
                aaajjj=0
                toastLog("有任务啦！！！")
            }
            aaajjj++
            if(aaajjj==3){
                aaajjj=0
                back()
            }
        }else{
            app.launchApp("抖音短视频")
            toastLog("正在找抖音关注坐标,请手动进入抖音主页")
            首页=text("首页").findOne(9000)
            首页zb=首页.bounds()
            首页zbx=首页zb.centerX()
            首页zby=首页zb.centerY()
            click(首页zb.centerX(),首页zb.centerY())
            sleep(2000)
            swipe(w*0.9, h/2, w*0.1, h/2, 500);
            while(true){
                sleep(3000)
                关注1=className("android.widget.Button").depth("14").findOnce()
                关注2=id("d82").findOnce()
                关注3=id("d76").findOnce()
                关注4=id("ckn").findOnce()
                关注5=className("android.widget.TextView").depth("15").findOnce()
                if(关注1||关注2||关注3||关注4||关注5){
                    if(关注1!=null){
                        关注zb = 关注1.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby)
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else if(关注2!=null){
                        关注zb = 关注2.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby) 
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else if(关注3!=null){
                        关注zb = 关注3.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby) 
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else if(关注4!=null){
                        关注zb = 关注4.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby) 
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else{
                        关注zb = 关注5.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby) 
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break  
                    }
                }else{
                    toastLog("未找到关注坐标，正在换视频")
                    swipe(w*0.1, h/2, w*0.9, h/2, 500);
                    sleep(3000)
                    swipe(w/2, h*0.8, w/2, h*0.2, 500);
                    sleep(3000)
                    swipe(w*0.9, h/2, w*0.1, h/2, 500);
                    sleep(3000)
                }
            }
            
            sleep(2000)
            launchApp("攒攒")
            toastLog("打开攒攒")
    
    
            //=======================================第一次循环=============================================================
             if (F == 0) 
             {
                toastLog("攒攒初始化")
                 while (true) 
                {
                    sleep(4000)
                    toastLog("开始执行抖音任务")
                    D音任务 = textContains("D音任务").findOne(9000)
                    D音任务zb=D音任务.bounds()
                    click(D音任务zb.centerX(),D音任务zb.centerY())
                    sleep(2000)
                    toastLog("进入抖音任务")
                    领取任务1 = text("领取任务").depth(14).findOnce()
                    领取任务2 = text("领取任务").findOne()
                    if(领取任务1!= null){
                        log("领取任务")
                        领取任务1.click()
                    }else{
                        log("领取任务")
                        领取任务2.click()
                    }
                    sleep(6000)
                    检查类型 = textContains("类型").findOnce()
                    if(检查类型!= null){
                        F++
                        sleep(1000);
                        toastLog("初始化结束")
                        break;
                    }else{
                        back()
                    }
                }
            }


        }
    //=======================================主循环=============================================================
    返回: while(true){
            sleep(3000)
            检查类型 = textContains("类型").findOnce()
            if(检查类型!= null){
                特价关注任务 = textContains("类型").findOnce().parent().parent().findOne(textContains("特价关注"))
                特价点赞任务 = textContains("类型").findOnce().parent().parent().findOne(textContains("特价点赞"))
                关注任务 = textContains("类型").findOnce().parent().parent().findOne(textContains("关注"))
                点赞任务 = textContains("类型").findOnce().parent().parent().findOne(textContains("点赞"))

                if(F>3){
                    launchApp("全享通");
                    alert("提示", "测试结束，欢迎进行购买使用");
                    exit();
                }
                

                if(特价点赞任务 != null ||特价关注任务 !=null|| 点赞任务 != null || 关注任务 != null){
                    if (特价点赞任务 != null){
                        toastLog("识别为 特价点赞任务");
                        点赞();
                        continue 返回
                    }
                    if (特价关注任务 != null){
                        toastLog("识别为 特价关注任务");
                        关注123();
                        continue 返回
                    }
                    if (点赞任务 != null){
                        toastLog("识别为 点赞任务");
                        点赞();
                        continue 返回
                    }
                    if (关注任务 != null){
                        toastLog("识别为 关注任务");
                        关注123();
                        continue 返回
                    }
                }
            }else
            {
                toastLog("无任务1.5秒后重新领取");
                aaawww=6;
                sleep(1000);
                continue 重来
            }
        }
    }
    
    function 关注123(){
        if(abc==1){
            上传截图();
            sleep(2000);
            abc=0
        }else{
            开始任务=textContains("直接做任务").findOne(5000)
            开始任务.click()
            qw1 = text("前往").findOne(5000)
            qw2 = text("打开看看").findOne(5000)
            if(qw1){
                qw=qw1
            }else{
                qw=qw2
            }
            qw.click()

            sleep(3000);
            视频有效性检测()
            sleep(4000);
            if(you==0){
                you=1
                back();
                sleep(1000)
                launchApp("攒攒")
                sleep(2000)
                放弃任务=textContains("放弃任务").findOnce()
                log(放弃任务)
                放弃任务.click()
                sleep(1000)
                确定=text("确定").findOnce()
                log(确定)
                确定.click()
                sleep(3000)
            }else{
                toastLog("开始关注");
                swipe(w*0.9, h/2, w*0.1, h/2, 500);
                sleep(2000);
                click(关注zbx,关注zby)
                sleep(2000);
                swipe(w*0.1, h*0.8, w*0.9, h*0.8, 500);
                toastLog("关注成功");
                截屏();
                back();
                launchApp("攒攒")
                sleep(1000);
                上传截图();
                sleep(2000);
            }
        }
    }

    function 点赞(){
        if(abc==1){
            上传截图();
            abc=0
            sleep(2000);
        }else{
            开始任务=textContains("直接做任务").findOne(5000)
            开始任务.click()
            qw1 = text("前往").findOne(5000)
            qw2 = text("打开看看").findOne(5000)
            if(qw1){
                qw=qw1
            }else{
                qw=qw2
            }
            qw.click()

            sleep(3000);
            视频有效性检测()
            sleep(4000);
            if(you==0){
                you=1
                back();
                sleep(1000)
                launchApp("攒攒")
                sleep(2000)
                放弃任务=textContains("放弃任务").findOnce()
                log(放弃任务)
                放弃任务.click()
                sleep(1000)
                确定=text("确定").findOnce()
                log(确定)
                确定.click()
                sleep(3000)
            }else{
            toastLog("开始点赞");
            click(w/2,h/2);
            sleep(100);
            click(w/2,h*0.48);
            sleep(100);
            click(w/2,h*0.46);
            sleep(100);
            click(w/2,h*0.44);
            toastLog("点赞成功");
            截屏();
            sleep(2000);
            back();
            launchApp("攒攒")
            sleep(1000);
            上传截图();
            sleep(2000);
            }
        }
    }

    function 截屏()
    {
        toastLog("开始截图")
        sleep(1000)
        files.ensureDir("/sdcard/Camera/AAAAA/")
        var im = captureScreen();
        var path = "/sdcard/Camera/AAAAA/A攒攒任务截图.png"
        im.saveTo(path);
        media.scanFile(path);
        sleep(3000)
        toastLog("截图完成");
    } 
        
    function 上传截图()
    {
        
        sleep(3000)
        任务截图= text("任务截图").findOnce()
        if(任务截图==null){
            abc=1
        }else{
            toastLog("开始上传截图");
            while(true){
                任务截图= text("任务截图").findOne(6000)
                任务截图zb= 任务截图.bounds()
                任务截图.click()
                sleep(1000)
                相册目录= id("category_btn").findOnce()
                if(相册目录!=null){               
                    相册目录= className("android.widget.Button").text("所有图片").findOnce()
                    检测进入相册=className("android.widget.TextView").text("所有图片").findOnce()
                    while(检测进入相册==null){
                        相册目录.click();
                        sleep(500);
                        检测进入相册=className("android.widget.TextView").text("所有图片").findOnce()
                    }
                    sleep(500)
                    while(true){
                        相册 = text("AAAAA").findOnce()
                        if(相册){
                            sleep(1000)
                            break
                        }
                        swipe(w*0.2, h*0.9, w*0.2, h*.5, 500);
                        sleep(1000)
                    }
                    相册zb=相册.bounds()
                    click(相册zb.centerX(),相册zb.centerY())
                    sleep(500)
                    img=className("android.widget.FrameLayout").clickable(false).boundsInside(0,0, device.width/2.9, device.height).findOnce()
                    imgzb=img.bounds()
                    click(imgzb.centerX(),imgzb.centerY())
                    sleep(1000)
                    确认选中 = textContains("1/1").findOne(2000)
                    确认选中zb=确认选中.bounds()
                    click(确认选中zb.centerX(),确认选中zb.centerY())
                    toastLog("已上传截图")
                }else{
                    相册= text("相册").findOne(6000)
                    相册zb= 相册.bounds()
                    click(相册zb.centerX(),相册zb.centerY())
                    sleep(500)
                    子相册= text("相册").findOne(6000)
                    子相册zb= 子相册.bounds()
                    click(子相册zb.centerX(),子相册zb.centerY())
                    sleep(500)
                    while(true){
                        A相册 = text("AAAAA").findOnce()
                        if(A相册 !=null){
                            sleep(1000)
                            break
                        }
                        swipe(w*0.2, h*0.9, w*0.2, h*.5, 500);
                        sleep(1000)
                    }
                    A相册zb= A相册.bounds()
                    click(A相册zb.centerX(),A相册zb.centerY())
                    选中= descContains("图片").findOne()
                    选中zb=选中.bounds()
                    click(选中zb.centerX(),选中zb.centerY())
                } 
                sleep(8000)
                var img=captureScreen()
                var a=(colors.toString(images.pixel(img, 任务截图zb.centerX(),任务截图zb.centerY())))
                if(a=="#ffefeff4"){
                    toastLog("提交失败，重新获取");
                    back();
                    领取任务1 = text("领取任务").depth(14).findOnce()
                    领取任务2 = text("领取任务").findOne()
                    if(领取任务1!= null){
                        log("领取任务")
                        领取任务1.click()
                    }else{
                        log("领取任务")
                        领取任务2.click()
                    }
                }else
                {
                    提交任务1=text("提交任务 ").findOnce()
                    提交任务2=text("提交任务").findOnce()
                    if(提交任务1){
                        提交任务1.click()
                    }else{
                        提交任务2.click()
                    }
                    toastLog("全享通已为您成功执行了"+F+"个任务");
                    F++
                }
                break
            }
        }   
    }

    function 视频有效性检测()
    {
        chetime=1
        while(true)
        {
            you=1
            toastLog("检测视频有效性")
            var img=captureScreen()
            var a=(colors.toString(images.pixel(img, device.width/2, device.height/2)))
            var b=(colors.toString(images.pixel(img, device.width/2, device.height/4)))
            var c=(colors.toString(images.pixel(img, device.width/2, device.height*3/4)))
            if(a=="#ff000000" && b=="#ff000000" && c=="#ff000000")
            {
                chetime++
                if(chetime>2)
                {
                    you=0
                    toastLog("问题视频")
                    break
                }

            }
            else{
                toastLog("视频有效")
                break
            }
            sleep(2500)
        }

    }
}


//======================================================================================================================
//=============================攒攒协议=====================================================================================


ui.zzxy.click(function(){

    if(钥匙==1){
            攒攒协议();
        toast("你已激活，欢迎使用！");
    }else{
        alert("提示", "此脚本暂无测试，请激活设备");
    }
})


function 攒攒协议(){
    "ui"; //更多精彩内容请联系群主加入精英群，微信shenlong6898 或zxkj6898
    F=0
    yanghao=0
    var storage = storages.create("全享通自动挂机赚QQ1651669686");
    var storage = storages.create("攒攒@qq1651669686");
    var storage = storages.create("攒攒@qq906824840");
    Account = storage.get("account_save");
    Password = storage.get("password_save");
    Set1checked = storage.get("set1checked_save");
    Set2checked = storage.get("set2checked_save");
    Set3checked = storage.get("set3checked_save");
    Set4checked = storage.get("set4checked_save");
    Set5checked = storage.get("set5checked_save");
    Set6checked = storage.get("set6checked_save");
    Tasklimit = storage.get("tasklimit_save");
    Tasktime = storage.get("tasktime_save");
    Douyin = storage.get("douyin_save");
    if (typeof Account == "undefined") {
        Account = ""
    }
    if (typeof Password == "undefined") {
        Password = ""
    }
    if (typeof Set1checked == "undefined") {
        Set1checked = true
    }
    if (typeof Set2checked == "undefined") {
        Set2checked = false
    }
    if (typeof Set3checked == "undefined") {
        Set3checked = false
    }
    if (typeof Set4checked == "undefined") {
        Set4checked = false
    }
    if (typeof Set5checked == "undefined") {
        Set5checked = false
    }
    if (typeof Set6checked == "undefined") {
        Set6checked = false
    }
    if (typeof Tasklimit == "undefined") {
        Tasklimit = 999
    }
    if (typeof Tasktime == "undefined") {
        Tasktime = 5
    }
    if (typeof Douyin == "undefined") {
        Douyin = ""
    }
    ui.layout(
        <scroll w="*" h="*" paddingLeft="5" paddingRight="5" paddingTop="5" paddingBottom="5" >
            <vertical paddingLeft="3" paddingRight="3" >
                <appbar>
                    <toolbar id="bt" title="攒攒协议"  textColor="#ff2525" textStyle="bold" />
                </appbar>
                <horizontal  h="5dp"></horizontal>
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
                    <horizontal margin="10 5" gravity="center_vertical">
                        <input id="account" size="15" hint="请输入账号" textColor="black" layout_weight="2" text="{{Account}}" />
                        <input id="password" size="15" hint="请输入密码" password="true" textColor="black" text="{{Password}}" layout_weight="2" />
                        <button id="login" textColor="black" layout_weight="1" text="登录" />
                    </horizontal>
                </card>
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
                    <horizontal margin="10 5" gravity="center_vertical">
                        <input id="douyin" size="8" hint="抖音个人链接" textColor="black" layout_weight="5" text="{{Douyin}}" />
                        <button id="f5douyin" size="10" textColor="black" layout_weight="1" text="刷新抖音信息" />
                    </horizontal>
                </card>
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
                    <horizontal margin="10 5" gravity="center_vertical">
                        <text id="wallet" textColor="black" layout_weight="1" text="金豆:" />
                        <text id="today_count" textColor="black" layout_weight="1" text="今日完成:" />
                        <button id="f5" textColor="black" layout_weight="1" text="刷新信息" />
                    </horizontal>
                </card>

                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
                    <horizontal margin="10 5" gravity="center_vertical">
                        <text textColor="black" size="12" text="任务次数:" layout_weight="1" />
                        <input id="tasklimit" size="12" hint="请输入任务次数" gravity="center" textColor="black" text="{{Tasklimit}}" layout_weight="1" />
                        <text textColor="black" size="12" text="任务延时(s):" layout_weight="1" />
                        <input id="tasktime" size="12" hint="请输入任务延时" gravity="center" textColor="black" text="{{Tasktime}}" layout_weight="1" />
                    </horizontal>
                </card>
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
                    <vertical paddingLeft="3" paddingRight="3" >
                        <horizontal margin="5 5 5 5" gravity="center_vertical">
                            <checkbox id="set1" size="13" textColor="black" checked="{{Set1checked}}" layout_weight="1" text="关注任务" />
                            <checkbox id="set2" size="13" textColor="black" checked="{{Set2checked}}" layout_weight="1" text="特价任务" />
                            <checkbox id="set3" size="13" textColor="black" checked="{{Set3checked}}" layout_weight="1" text="坐标点击" />
                        </horizontal>
                        <horizontal margin="5 0 5 0 " gravity="center_vertical">
                            <checkbox id="set4" size="13" textColor="black" checked="{{Set4checked}}" layout_weight="1" text="重新读取" />
                            <checkbox id="set5" size="13" textColor="black" checked="{{Set5checked}}" layout_weight="1" text="检测有效" />
                            <checkbox id="set6" size="13" textColor="black" checked="{{Set6checked}}" layout_weight="1" text="首页补赞" />
                        </horizontal>
                    </vertical>
                </card>
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
                    <button id="ok" textColor="black" margin="10 0" text="开始运行" style="Widget.AppCompat.Button.Borderless.Colored" />
                </card>
                <card w="*" h="300" cardCornerRadius="7dp"
                    cardElevation="7dp" margin="10 5" gravity="center_vertical" textSize="13sp" alpha="1">
                    <com.stardust.autojs.core.console.ConsoleView id="console" h="*" />
                </card>
            </vertical>
        </scroll>
    )
    
    ;var encode_version = 'sojson.v5', iyvto = '__0x6fde2',  __0x6fde2=['W8KtwoPCrcKp','NsKzcTvDg3zDmg/Cl8K+w7jDosKfPsKpPA==','dMKTwqfChg==','w6vDk1vDjSB0w6XCt8OiwrXCisONwpLCqUw=','bcKbwoZGFA==','worDnWzDulo=','IyMRVMKs','6L275YeO6ZSC6K6p','wqTDt8OMwrRh','5oq86Z6Q5puk56SvwrA=','I3bDhl8Q','WcOPw6/Ctgs=','wpsTRjZp','UjrClMKMw4I=','54Gt6Len5pak6YWASA==','wrUGwqNZfw==','TMKHwojCucKE','wromQ1XDqQ==','SnLDtzrCllZFOcOC','WMKwwoU7wr0TVC3Dqw==','5Li26IGJ5Yqf6ZiJQsO/wqEDdsKJaTR5','5aOL5pq6woXmrInohKvmnrzku7HlhL3otKDoh73mnavvvY7lp47mnYLkvbPmmarkup/kuLDkvpTlno3mlonotovkup/nmJfCq+mBveS7suS/meW+meWNpuiAqOW2v+e5mOS5muW+j+S4gwPlurjku4PovYrkuIrohqTmnJHnmZblronlhqjmgK7mlJrmspDkvJ7orIXjgLg=','YcOPJMKNfFDCmxvCpj4=','wpPDvMOnK8OKCBY=','IVjDkT0Iw7XCjMOND3Rc','wpXDksOQNA==','d8Obw5g=','NwhMw68=','wpDDh8OLK8KBwoHDssKgUMO3','GivDrQ==','QH7Co8Ow','w5/Dj8OYO1IUw6J9WMOp','w5nCr8OgJsOaIFEQwo8=','w5sHMw==','wrnDncOPFw==','R8K+woEv','R8KFOggAworDrA==','wrkPZEfDiTYew6UKw4s=','D3nCq8KhJjJ1w5rDlA==','wpLCo8OX','JcK0w7dTwoo/wok=','O8KJwqQNZ8K5SsKew4I=','DsKZwqc=','dMKOwqxY','woAAYlHDixAD','GcKwS8Kbw4fCn8K1w78fw4U=','wogUIcKTw7FhPsKVwpw=','wrkbYg==','MUcDeg==','csOaw4sIVsO1wrk=','woPDrMKcAMKTRcOqSMOgaw==','O8O0IELDhw5dw4HCpQ==','wpgffQ==','wqjDq8OAwrknwrk5Uj3DhsKgdnTDpcOM','wovDj8OVNMKFwrLDrQ==','KBlOw6E0','wrTDn3fDtXU=','f8KMASQU','woPClMOtJ8OV','woJnw59Cw5c=','wp9gwpXCjEA=','woQ5dhbDmA==','Og8fSMKrSXxydsK5wrvDkl80w4N6Q8KebFfDjg==','XgbCqcKr','NsK7aTDDvnvDiw==','C8K/w7dmwow5wpDCkQYoA8OPY8KE','w6EVwqQBw70=','UsO/w5U3Vw==','MwBP','wr7Dh2rDq0A=','wrzDvkE2PA==','wrbCg8O5BMOP','wpIbwqxIVA==','wqo6YQRg','GXHDnCMJ','wq3ChsOuYcK4','wo/CmMOtMcOX','w6YLwp0bw44=','wovDpFw0Kg==','w5QKwpQKw7k=','Bk3DiDs+w77CqcOMKnxRwr8=','wpbDusOnPMOqChY=','RcO0w6LCrx0=','BsKhXjzDng==','G8KRZDXCjEwnwq8=','wq8rdRZI','MsO7w6U0w5RlbMKkeMKmDMKY','wqoCf1fDhw==','wpPDv8OgO8OO','woV+wobCmF0=','wpbDmxYsw7cUHw==','DcKJwqdZAsOJKMKEdQ==','Px52','wpoqHxYqwq7CvnE0w5dE','w4ETMcKWw6o/a8ORwoLDpzdO','w4gwwrE=','GcKpw6ZE','OsKZw5k=','YMK5wqXCkMK0','GsKDwqZjBMOL','GMK/w7tC','wrjDnMK6w6gGKA==','GMKtQw==','wonCvMOvf8Ke','w7McPsKZwpY=','NHDDoFoCCAvCucOvUQ==','LjgK','eMOZP8Kg','UsOdw5PCsS8=','a8Kfwq5WKg==','IMOxw7Esw7h9a8K+fsKQAcKEw4zDosKR','w54BIsKF','dMOmw7LCkg==','OMKaZAHCpw==','UcOaGcKdQQ==','BMK9cQfDnA==','wpzDkmsj','PMKkwotoDw==','woEqChIsw6fDjj06w4NITcKDwrzCsXfCscKDwqjDrDPCoXQHdTtqQcKXKMOjw4LCjADDgFB0OkPClMOIw6Qxw4/Dl8OCPMKSwq1DOMO1RD1FJ8KdwpvDlsOyHHUILsOUI2VZdXTDosOxL1xbw6o=','G8K0ScKEw4PCv8K/','5ZyC5ou16Zyi77+T6Ky65bye572y5aSw55aa5rWV776h','KAxWw4svw5bCuEA1FkrDhMK6w4PDiBxY','wqHDjko/IQ==','a8O3Mm3Dj0gawpTCrlVOw7JHFsO6N8O2DiZrwrZVQsOVw4nCmA==','wrVIFMKEw6IUXA==','w7YXwpgRw5E=','AVjDnCYP','Q8K8wqQywpE=','OsKzcTXCn3vDixLDl8KRw5PDtcKAHsKVBAFxcwnChSNmWcKJw5E=','wqBIEMKgw6YWXcOvYMOOwqlxeMK2','w4I7JMKxwo0=','aMONJcKhXQ==','wow2SBtBdgnCgVw=','QcKqGxss','O8KOwr1KCQ==','wrbDhDEMw4o=','wqNMEMKJ','wrI3woZd','GRN1','NsKkYT7DpA==','EsKaXybDkw==','bMOrNkE=','w6oawoYYw5U=','woDCucOHDQ==','wp/Dhxcx','wrM9wpNK','bcOuw6PClyZkw6pI'];(function(_0x1443dc,_0x49bf6d){var _0x54c571=function(_0x4d84d6){while(--_0x4d84d6){_0x1443dc['push'](_0x1443dc['shift']());}};_0x54c571(++_0x49bf6d);}(__0x6fde2,0x1ce));var _0x5514=function(_0x3c4614,_0x23c56a){_0x3c4614=_0x3c4614-0x0;var _0x41e255=__0x6fde2[_0x3c4614];if(_0x5514['initialized']===undefined){(function(){var _0x824b83=typeof window!=='undefined'?window:typeof process==='object'&&typeof require==='function'&&typeof global==='object'?global:this;var _0x543755='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x824b83['atob']||(_0x824b83['atob']=function(_0x213aa9){var _0x4307b2=String(_0x213aa9)['replace'](/=+$/,'');for(var _0x456200=0x0,_0x1592b9,_0x405747,_0x4c84e0=0x0,_0x848961='';_0x405747=_0x4307b2['charAt'](_0x4c84e0++);~_0x405747&&(_0x1592b9=_0x456200%0x4?_0x1592b9*0x40+_0x405747:_0x405747,_0x456200++%0x4)?_0x848961+=String['fromCharCode'](0xff&_0x1592b9>>(-0x2*_0x456200&0x6)):0x0){_0x405747=_0x543755['indexOf'](_0x405747);}return _0x848961;});}());var _0x3ea462=function(_0x4e3786,_0x568fb7){var _0x34bd59=[],_0x5a4572=0x0,_0xae5a4b,_0x4df1cd='',_0x587479='';_0x4e3786=atob(_0x4e3786);for(var _0x3d7ed7=0x0,_0x539ce2=_0x4e3786['length'];_0x3d7ed7<_0x539ce2;_0x3d7ed7++){_0x587479+='%'+('00'+_0x4e3786['charCodeAt'](_0x3d7ed7)['toString'](0x10))['slice'](-0x2);}_0x4e3786=decodeURIComponent(_0x587479);for(var _0x50a278=0x0;_0x50a278<0x100;_0x50a278++){_0x34bd59[_0x50a278]=_0x50a278;}for(_0x50a278=0x0;_0x50a278<0x100;_0x50a278++){_0x5a4572=(_0x5a4572+_0x34bd59[_0x50a278]+_0x568fb7['charCodeAt'](_0x50a278%_0x568fb7['length']))%0x100;_0xae5a4b=_0x34bd59[_0x50a278];_0x34bd59[_0x50a278]=_0x34bd59[_0x5a4572];_0x34bd59[_0x5a4572]=_0xae5a4b;}_0x50a278=0x0;_0x5a4572=0x0;for(var _0x1e1ae0=0x0;_0x1e1ae0<_0x4e3786['length'];_0x1e1ae0++){_0x50a278=(_0x50a278+0x1)%0x100;_0x5a4572=(_0x5a4572+_0x34bd59[_0x50a278])%0x100;_0xae5a4b=_0x34bd59[_0x50a278];_0x34bd59[_0x50a278]=_0x34bd59[_0x5a4572];_0x34bd59[_0x5a4572]=_0xae5a4b;_0x4df1cd+=String['fromCharCode'](_0x4e3786['charCodeAt'](_0x1e1ae0)^_0x34bd59[(_0x34bd59[_0x50a278]+_0x34bd59[_0x5a4572])%0x100]);}return _0x4df1cd;};_0x5514['rc4']=_0x3ea462;_0x5514['data']={};_0x5514['initialized']=!![];}var _0x36c183=_0x5514['data'][_0x3c4614];if(_0x36c183===undefined){if(_0x5514['once']===undefined){_0x5514['once']=!![];}_0x41e255=_0x5514['rc4'](_0x41e255,_0x23c56a);_0x5514['data'][_0x3c4614]=_0x41e255;}else{_0x41e255=_0x36c183;}return _0x41e255;};log('本软件仅用于交流学习，如作他用所受的法律责任一概与作者无关');ui['console'][_0x5514('0x1','YFL#')](runtime[_0x5514('0x2','bHX&')]);let c=new android['util'][(_0x5514('0x3','nzFE'))]();let Log=android[_0x5514('0x4','f[4T')][_0x5514('0x5','L05r')];c['put'](Log['VERBOSE'],new java[(_0x5514('0x6','M%8V'))]['Integer'](colors[_0x5514('0x7','f[4T')]('#dfc0c0c0')));c[_0x5514('0x8','rapS')](Log['DEBUG'],new java[(_0x5514('0x9','^xk!'))]['Integer'](colors[_0x5514('0xa','glPr')](_0x5514('0xb',']cX]'))));c[_0x5514('0xc','nmqg')](Log[_0x5514('0xd','bHX&')],new java[(_0x5514('0xe','Fd6v'))][(_0x5514('0xf','$2uc'))](colors[_0x5514('0x10','H]A6')](_0x5514('0x11','^xk!'))));c[_0x5514('0x12','5nDF')](Log['WARN'],new java['lang'][(_0x5514('0x13','L8Za'))](colors[_0x5514('0x7','f[4T')](_0x5514('0x14','HLGZ'))));c[_0x5514('0x15','cySx')](Log['ERROR'],new java[(_0x5514('0x16','HLGZ'))][(_0x5514('0x17','H]A6'))](colors[_0x5514('0x18','Hu5R')](_0x5514('0x19','nmqg'))));c[_0x5514('0x1a','H]A6')](Log['ASSERT'],new java[(_0x5514('0x1b','HhVm'))][(_0x5514('0x1c','L05r'))](colors[_0x5514('0x1d','YACH')](_0x5514('0x1e','OefB'))));function 结束模块(_0x586819){var _0x19f33f={'IzKnU':'6|7|5|1|8|4|10|9|3|11|12|2|0','iWZlM':function _0x4e3da1(_0x5b3ace,_0x253527){return _0x5b3ace(_0x253527);},'qgOIs':'结束运行','aBNSt':function _0x5caceb(_0x267fc3,_0x2c5bee){return _0x267fc3!=_0x2c5bee;},'lAWCv':'Ypf','XTFhL':_0x5514('0x1f','H]A6'),'wzgVI':_0x5514('0x20','U5wf'),'FQusC':function _0x5cd4d4(_0x182ae0,_0x4bcee1){return _0x182ae0(_0x4bcee1);},'qhuKJ':_0x5514('0x21','f[4T'),'iKjZf':function _0x2ded62(_0x1b23b9,_0x47fbdf){return _0x1b23b9===_0x47fbdf;},'cOGrx':function _0x49e3e9(_0x4ebbe8,_0x5042a5){return _0x4ebbe8(_0x5042a5);},'TUZpn':function _0x468eb3(_0x16699b,_0x4511ed){return _0x16699b+_0x4511ed;},'SbMzG':function _0x38f9e9(_0x470fd9,_0x5ae080){return _0x470fd9+_0x5ae080;},'kYllr':'点赞数量:','WJmwR':function _0x4e256e(_0x3e1a94){return _0x3e1a94();},'mNNEv':'关注数量:','VsYho':'android.widget.Button','FsbSU':function _0x2bdb12(_0x3af343,_0x8709d2){return _0x3af343(_0x8709d2);},'yrzwv':'finish-end'};var _0x40f78e=_0x19f33f['IzKnU'][_0x5514('0x22','M%8V')]('|'),_0xcc9974=0x0;while(!![]){switch(_0x40f78e[_0xcc9974++]){case'0':sleep(0x7d0);continue;case'1':while(!![]){var _0x309db2=_0x19f33f[_0x5514('0x23','ZS&J')](text,_0x19f33f[_0x5514('0x24','$2uc')])['findOnce']();var _0x36fc4b=textEndsWith('停止')['findOnce']();if(_0x309db2!=null||_0x19f33f[_0x5514('0x25','5nDF')](_0x36fc4b,null)){if(_0x19f33f[_0x5514('0x26','O(DI')]===_0x19f33f['XTFhL']){_0x292509[_0x5514('0x27','5*N@')]();}else{_0x19f33f['iWZlM'](log,_0x19f33f['wzgVI']);break;}}sleep(0x3e8);}continue;case'2':home();continue;case'3':_0x19f33f[_0x5514('0x28','aY9B')](sleep,0x7d0);continue;case'4':var _0x292509=className(_0x5514('0x29','6q2x'))[_0x5514('0x2a','L92l')]('结束运行')[_0x5514('0x2b','*rLH')](0x5dc);continue;case'5':app['openAppSetting'](_0x5afc24);continue;case'6':_0x19f33f['FQusC'](log,_0x19f33f['qhuKJ']);continue;case'7':var _0x5afc24=app[_0x5514('0x2c','L8Za')](_0x586819);continue;case'8':sleep(0x7d0);continue;case'9':if(_0x292509!=null){_0x292509[_0x5514('0x2d','xNl&')]();}else if(_0x19f33f['aBNSt'](_0x5305b6,null)){if(_0x19f33f[_0x5514('0x2e','L05r')](_0x5514('0x2f','M%8V'),'EKU')){_0x19f33f[_0x5514('0x30','ZS&J')](toastLog,_0x19f33f[_0x5514('0x31','fjP0')](_0x19f33f[_0x5514('0x32','5nDF')](_0x19f33f[_0x5514('0x33','VLIe')](_0x19f33f['TUZpn'](_0x19f33f[_0x5514('0x34','IRaG')]('抖音昵称:',万赞检测()['昵称'])+'\x0a',_0x19f33f[_0x5514('0x35','nzFE')]),_0x19f33f[_0x5514('0x36',']cX]')](万赞检测)['点赞'])+'\x0a',_0x19f33f[_0x5514('0x37','5nDF')]),_0x19f33f[_0x5514('0x36',']cX]')](万赞检测)['关注']));}else{_0x5305b6[_0x5514('0x38','4$Qd')]();}}continue;case'10':var _0x5305b6=_0x19f33f[_0x5514('0x39','fjP0')](className,_0x19f33f[_0x5514('0x3a','xNl&')])[_0x5514('0x3b','nzFE')]('停止')[_0x5514('0x3c','bHX&')](0x5dc);continue;case'11':while(!![]){var _0x219767=_0x19f33f[_0x5514('0x3d','MtNx')](className,_0x19f33f[_0x5514('0x3e','*rLH')])['text']('确定')[_0x5514('0x3f','zn1P')]();var _0x5305b6=className(_0x19f33f[_0x5514('0x40','IRaG')])[_0x5514('0x41','GCmi')]('停止')['findOnce']();if(_0x219767!=null){_0x219767[_0x5514('0x42','H]A6')]();break;}else if(_0x19f33f['aBNSt'](_0x5305b6,null)){_0x5305b6[_0x5514('0x43','bHX&')]();break;}sleep(0x3e8);}continue;case'12':_0x19f33f['FsbSU'](log,_0x19f33f[_0x5514('0x44','5*N@')]);continue;}break;}}ui[_0x5514('0x45','H&C2')][_0x5514('0x46','cySx')](c);function 万赞检测(){var _0x301c9f={'aYgdg':function _0x34f952(_0x172236,_0x181041){return _0x172236>_0x181041;},'gqhux':_0x5514('0x47','M%8V'),'XnynR':function _0x53810b(_0x38dc52,_0xa7b961){return _0x38dc52==_0xa7b961;},'jBjQc':'vnT','QZSMg':function _0x485eb6(_0x568850,_0xd70f59){return _0x568850==_0xd70f59;},'ygGzA':_0x5514('0x48','ASej'),'EbnPd':'undefined','UARTE':function _0x544697(_0x4fe6c5,_0x50bbf9){return _0x4fe6c5!=_0x50bbf9;},'CpISR':function _0x1e5494(_0x415c91,_0x47b774){return _0x415c91==_0x47b774;},'TovSm':function _0x20aba0(_0x4c2704,_0x332303){return _0x4c2704+_0x332303;},'BHXrb':function _0x4ac184(_0x2f3097,_0x5ae0dc){return _0x2f3097+_0x5ae0dc;},'IeQys':_0x5514('0x49','nmqg'),'YOgpc':'sec_uid=','hcKzC':function _0x28a78c(_0x19d769,_0xc30249){return _0x19d769(_0xc30249);},'iIcFI':'Location','zguoN':function _0x2ff64e(_0x1f5e1e,_0x4ad4af){return _0x1f5e1e!=_0x4ad4af;},'OAUvK':function _0x16c35c(_0x1b225e,_0x2fd587){return _0x1b225e!=_0x2fd587;},'fvfjU':_0x5514('0x4a','4$Qd'),'FGlFe':function _0x51d2fb(_0x6a4d8e,_0x2e4d55){return _0x6a4d8e+_0x2e4d55;},'ZMAYz':_0x5514('0x4b','L8Za'),'utDyJ':function _0x2cba18(_0x236ab7,_0x4b095b){return _0x236ab7!==_0x4b095b;},'WUAcb':_0x5514('0x4c','L8Za'),'xBjnh':function _0x26efbc(_0xc6a68d,_0x41f4f1){return _0xc6a68d+_0x41f4f1;}};if(_0x301c9f[_0x5514('0x4d','4HZO')](ui[_0x5514('0x4e','cySx')][_0x5514('0x4f','L8Za')]()[_0x5514('0x50','T&HM')],0xa)){if(_0x5514('0x51','zn1P')!==_0x301c9f['gqhux']){try{var _0x3645f9='5|3|9|11|6|2|8|7|4|12|10|1|0'[_0x5514('0x52',']cX]')]('|'),_0x1a0b13=0x0;while(!![]){switch(_0x3645f9[_0x1a0b13++]){case'0':if(temp&&_0x301c9f[_0x5514('0x53','nmqg')](temp[_0x5514('0x54','^Q65')],0xc8)){if(_0x301c9f['jBjQc']!==_0x5514('0x55','6q2x')){temp=temp['body'][_0x5514('0x56','YFL#')]();if(_0x301c9f[_0x5514('0x57','MtNx')](temp[_0x301c9f['ygGzA']],0x0)){var _0x61a536='1|3|4|2|0'[_0x5514('0x58','HLGZ')]('|'),_0x2b40a0=0x0;while(!![]){switch(_0x61a536[_0x2b40a0++]){case'0':return douyindata;case'1':douyindata={};continue;case'2':douyindata['关注']=temp['user'][_0x5514('0x59','GCmi')];continue;case'3':douyindata['昵称']=temp[_0x5514('0x5a','nmqg')]['nickname'];continue;case'4':douyindata['点赞']=temp['user']['favoriting_count'];continue;}break;}}else{console[_0x5514('0x5b','MtNx')](douyindata);}}else{if(typeof 点赞0!=_0x301c9f[_0x5514('0x5c','zn1P')]&&_0x301c9f['UARTE'](typeof 关注0,_0x301c9f['EbnPd'])){if(_0x301c9f[_0x5514('0x5d','YFL#')](gettask['data']['type'],0x1)){点赞=_0x301c9f[_0x5514('0x5e','*rLH')](点赞0,0x1);}if(gettask['data'][_0x5514('0x5f','fjP0')]==0x1){关注=关注0+0x1;}}log(err);}}continue;case'1':temp=http['get'](_0x301c9f[_0x5514('0x60','cySx')](_0x5514('0x61','ASej'),_0x304429));continue;case'2':var _0x282b83=new URL(_0x7e2f69)['openConnection']();continue;case'3':var _0x7e2f69=_0x7e2f69[_0x5514('0x62','Hu5R')](_0x5514('0x63','L92l'),'');continue;case'4':_0x282b83[_0x5514('0x64','M%8V')](0x1388);continue;case'5':var _0x7e2f69=ui[_0x5514('0x4e','cySx')]['text']();continue;case'6':importClass(_0x301c9f[_0x5514('0x65','fjP0')]);continue;case'7':_0x282b83[_0x5514('0x66','OefB')](![]);continue;case'8':log(_0x282b83);continue;case'9':_0x7e2f69=_0x7e2f69[_0x5514('0x67','K%Rd')](/\s*/g,'');continue;case'10':var _0x304429=_0xf99f33[_0x5514('0x68','4$Qd')](_0x301c9f['YOgpc'])[0x1][_0x5514('0x69','nzFE')]('&timestamp')[0x0];continue;case'11':_0x301c9f[_0x5514('0x6a','Fd6v')](importClass,_0x5514('0x6b','*rLH'));continue;case'12':var _0xf99f33=_0x282b83[_0x5514('0x6c','K%Rd')](_0x301c9f[_0x5514('0x6d','nmqg')]);continue;}break;}}catch(_0x5a2432){if(_0x301c9f[_0x5514('0x6e','YFL#')](typeof 点赞0,_0x5514('0x6f','IRaG'))&&_0x301c9f[_0x5514('0x70','$2uc')](typeof 关注0,_0x301c9f[_0x5514('0x71','cySx')])){if(_0x301c9f[_0x5514('0x72','H&C2')](gettask[_0x5514('0x73','K%Rd')][_0x5514('0x74','VLIe')],0x1)){if(_0x5514('0x75','M%8V')!==_0x301c9f[_0x5514('0x76','*rLH')]){点赞=_0x301c9f[_0x5514('0x77','*rLH')](点赞0,0x1);}else{点赞=_0x301c9f['FGlFe'](点赞0,0x1);}}if(gettask['data'][_0x5514('0x78','OefB')]==0x1){关注=关注0+0x1;}}_0x301c9f[_0x5514('0x79','xNl&')](log,_0x5a2432);}}else{temp=temp[_0x5514('0x7a','5nDF')][_0x5514('0x7b','H&C2')]();if(temp[_0x301c9f['ygGzA']]==0x0){douyindata={};douyindata['昵称']=temp[_0x5514('0x7c','VLIe')][_0x5514('0x7d','MtNx')];douyindata['点赞']=temp[_0x301c9f[_0x5514('0x7e','4HZO')]][_0x5514('0x7f','*rLH')];douyindata['关注']=temp[_0x5514('0x80','4HZO')][_0x5514('0x81','1#(]')];return douyindata;}else{console['warn'](douyindata);}}}else{if(_0x301c9f[_0x5514('0x82','HLGZ')]('VCZ',_0x301c9f[_0x5514('0x83','ZS&J')])){关注=_0x301c9f[_0x5514('0x84','6q2x')](关注0,0x1);}else{toastLog(_0x5514('0x85','fjP0'));}}};ui.f5douyin.click(function () {
    threads.start(function () {
        toastLog("读取成功!")
    })
});if(!(typeof encode_version!==_0x5514('0x90','cC)*')&&encode_version===_0x5514('0x91','Fd6v'))){window['alert'](_0x5514('0x92','L05r'));};encode_version = 'sojson.v5';
    
    ui.login.click(function () {
        threads.start(function () {
            function 攒攒登录(username, loginpw) {
                function MD5(string) {
                    res = java.math.BigInteger(1, java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(string).getBytes())).toString(16);
                    while (res.length < 32) res = "0" + res;
                    return res;
                }
                return http.post("http://zcore.zqzan.com/app/account/login", { username: username, loginpw: MD5(loginpw + "Uk&s23^ruk@") }).body.json()
            }
            var a = 攒攒登录(ui.account.text(), ui.password.text())
            ccc = JSON.stringify(a)
            判断=ccc.indexOf("成功")
            if(判断 == -1 ){
                toastLog("登陆失败，检查是否登录频繁")
            }else{
                token = a.data.token
                toastLog("登陆成功")
            }
    
    
        })
    })
    
    function getinfo() {
    
    ;var encode_version = 'sojson.v5', iorsv = '__0x6fde0',  __0x6fde0=['EMOiLmkaPRTDmcKdwpjDh0DCo8KxEWTDhUXClWfCnsKsSj/Dgx46w5dXwr7DsC/Dm8K+KMKPPQjCvHvCkA==','w7/DvcKcwpw=','w4E2dsOm','w5/DhsKVThzDuxV0w58=','w5gqc8O7w5MIw750Dw==','w47Cs8KyUSU='];(function(_0x22a001,_0x4fde63){var _0x2a6ce7=function(_0x37ac3a){while(--_0x37ac3a){_0x22a001['push'](_0x22a001['shift']());}};_0x2a6ce7(++_0x4fde63);}(__0x6fde0,0xd8));var _0x2a30=function(_0x341dc1,_0x56d0b4){_0x341dc1=_0x341dc1-0x0;var _0xa02498=__0x6fde0[_0x341dc1];if(_0x2a30['initialized']===undefined){(function(){var _0x34a549=typeof window!=='undefined'?window:typeof process==='object'&&typeof require==='function'&&typeof global==='object'?global:this;var _0x3ecee7='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x34a549['atob']||(_0x34a549['atob']=function(_0x4981b9){var _0x41a45b=String(_0x4981b9)['replace'](/=+$/,'');for(var _0x3e4859=0x0,_0x2dff08,_0x5a2d63,_0x659afd=0x0,_0x3df958='';_0x5a2d63=_0x41a45b['charAt'](_0x659afd++);~_0x5a2d63&&(_0x2dff08=_0x3e4859%0x4?_0x2dff08*0x40+_0x5a2d63:_0x5a2d63,_0x3e4859++%0x4)?_0x3df958+=String['fromCharCode'](0xff&_0x2dff08>>(-0x2*_0x3e4859&0x6)):0x0){_0x5a2d63=_0x3ecee7['indexOf'](_0x5a2d63);}return _0x3df958;});}());var _0x749770=function(_0x31ce2f,_0x30af5d){var _0x1312a2=[],_0x3fe328=0x0,_0x23ba3f,_0x6241ac='',_0x695aa='';_0x31ce2f=atob(_0x31ce2f);for(var _0x5f58ce=0x0,_0x1bd206=_0x31ce2f['length'];_0x5f58ce<_0x1bd206;_0x5f58ce++){_0x695aa+='%'+('00'+_0x31ce2f['charCodeAt'](_0x5f58ce)['toString'](0x10))['slice'](-0x2);}_0x31ce2f=decodeURIComponent(_0x695aa);for(var _0xc60eb5=0x0;_0xc60eb5<0x100;_0xc60eb5++){_0x1312a2[_0xc60eb5]=_0xc60eb5;}for(_0xc60eb5=0x0;_0xc60eb5<0x100;_0xc60eb5++){_0x3fe328=(_0x3fe328+_0x1312a2[_0xc60eb5]+_0x30af5d['charCodeAt'](_0xc60eb5%_0x30af5d['length']))%0x100;_0x23ba3f=_0x1312a2[_0xc60eb5];_0x1312a2[_0xc60eb5]=_0x1312a2[_0x3fe328];_0x1312a2[_0x3fe328]=_0x23ba3f;}_0xc60eb5=0x0;_0x3fe328=0x0;for(var _0x2eb2c9=0x0;_0x2eb2c9<_0x31ce2f['length'];_0x2eb2c9++){_0xc60eb5=(_0xc60eb5+0x1)%0x100;_0x3fe328=(_0x3fe328+_0x1312a2[_0xc60eb5])%0x100;_0x23ba3f=_0x1312a2[_0xc60eb5];_0x1312a2[_0xc60eb5]=_0x1312a2[_0x3fe328];_0x1312a2[_0x3fe328]=_0x23ba3f;_0x6241ac+=String['fromCharCode'](_0x31ce2f['charCodeAt'](_0x2eb2c9)^_0x1312a2[(_0x1312a2[_0xc60eb5]+_0x1312a2[_0x3fe328])%0x100]);}return _0x6241ac;};_0x2a30['rc4']=_0x749770;_0x2a30['data']={};_0x2a30['initialized']=!![];}var _0x5395b9=_0x2a30['data'][_0x341dc1];if(_0x5395b9===undefined){if(_0x2a30['once']===undefined){_0x2a30['once']=!![];}_0xa02498=_0x2a30['rc4'](_0xa02498,_0x56d0b4);_0x2a30['data'][_0x341dc1]=_0xa02498;}else{_0xa02498=_0x5395b9;}return _0xa02498;};info=null;try{var infotemp=http['get'](_0x2a30('0x0','lzL^'),{'headers':{'user-agent':ua(),'Token':token}});if(infotemp!=null){info=infotemp[_0x2a30('0x1','eCkq')][_0x2a30('0x2','ydKR')]();log(info);}}catch(_0x1f9ba3){log(_0x1f9ba3);};if(!(typeof encode_version!==_0x2a30('0x3','M]de')&&encode_version===_0x2a30('0x4','ydKR'))){window[_0x2a30('0x5','J9@P')]('不能删除sojson.v5');};encode_version = 'sojson.v5';
    }
    
    ;var encode_version = 'sojson.v5', xlnnd = '__0x6fddf',  __0x6fddf=['w4jCnWhPU8O8CmTCk8K3wpnDr8Kyw5U9MmQvBQMXLMKUw4A/wpLCoMO4wqDCsAUEOMOkFsKuWsODwpk=','wojDsMKOFsK+wrfDkBHChsOBw4HDrVYCGsKywpfCrG/Dg8KgAw==','esOJwo3DtlA=','XRplwrvDgQ==','w7TDoFh2aQ==','ck1aFw==','IjvCng==','w6jCicOjGlkv','IjPCmMOV','w6XDrcOdw7rDgk8=','w6LDuMO7wog=','w6nDgTfDsw==','KsO9w7XCrMOtXw==','esKqPiw=','ADjCqMO7woU=','wp/DqRzCoD4=','w53CpcO3Ow==','PwTCsMOqwoHDiCDDhEF7wr05w4w=','a8OUwo9hYMKc','dWNiw5M=','w6zDgyDDt0jCth81','NsOow50=','w6nDvcOIw5/DqA==','OTwrwrwe','XCTCnsOW','AcODHRLDnA==','ATxnw70N','OcOmOVRi','a8KYw64kwrg=','f8OSwpE=','cUlaIi0mZQ==','KQfCrMOxwr4=','RnJSw7Eg','w4LDiktzU20=','CcK3Vz9dO2rDqBDCmcOqB8KyeMK3Yxozw4fCu8KrWW3Ds3nCjXl0YGvCrxrCmE7CvcKtwpbDl8KpBMKBwpE2FMKBfA/Cu8O8','WsOvwqppcg==','w7cvw44+Ag==','DWHCjHjCvg==','wrnCvMOgO8KL','w7fDvMOJw6fDmA==','O8KuwrTCplcVR8OiwoI=','Blp2wown','5LmL6IKv5YuM6ZuQcDXDgcOqw5p+wqYjwpw=','6L2r5YWe5oqE6Z2G','w4zCqMOd','wrvCg8Or','UcKIA8OfwoY=','6Lyf5Yed5ou56Z6U','wqfDlwJJwpDCssKvw5XDkmnCrsK/w5Z/wpjDlcKrRMKkE8OxMQNf','BmfChnnCncK2w5rCtQ==','YRPCtcO3wqg=','U8OOwqRPYA==','5oit6ZyL55+m6KeW6aK2','5ZS65q2Bcw==','w5cAw6dFwpnCs8OfQcKNXMOGfSs=','L8O+w67CosOnSsKrwqtA','PRwCwr4Dd0MT','YEVdHyYnZcOFARrCucOlwqQ=','AcOKw5/ClMOu','RBJ4wrnDgQ==','S8OVwpfDnXM=','MsO6Rj7DoQ==','wpTCi39/VcO+UEDDrcKTwrXDm8Kaw7IHM2djd113NsKlwp1o','w6pqQMO7HA==','w4HDlUN5w7pkwpLCtVrCv8KZwrPDvA==','w7DCg8OwHkQ=','wqrDtTUywoI=','w5DDk1lMcg==','TMO/wpA=','LQTCtsOwwqjDjg==','w6LDusOYw73DlFk=','w4RUYg==','F8OvJ3Biwpc=','A8O2Tg/Dpw==','ayVVwoLDh8K6','ORoYwq4jdA==','woTDtDPCvjo=','T8Kbw6wJwrRv','dUBHFS8=','WFVcw4gs','VBdcw4Y2QlHCmcKfwoN0D8KhwpF8w7ktBcOuYsOowqkJRsOl','TMKyVgLDp8KPwpFXacKYwqXDtgDDoMKHS8O/wrtIwoQeRcKVdBw3JwvCnMK/OcKtw5fClnrCjE4Vw61xdg=='];(function(_0x9f2f58,_0x227082){var _0x1a9a0b=function(_0x18e420){while(--_0x18e420){_0x9f2f58['push'](_0x9f2f58['shift']());}};_0x1a9a0b(++_0x227082);}(__0x6fddf,0xcf));var _0x84d0=function(_0x2bb926,_0x3b9605){_0x2bb926=_0x2bb926-0x0;var _0x1d707b=__0x6fddf[_0x2bb926];if(_0x84d0['initialized']===undefined){(function(){var _0x2785f9=typeof window!=='undefined'?window:typeof process==='object'&&typeof require==='function'&&typeof global==='object'?global:this;var _0xb198c1='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x2785f9['atob']||(_0x2785f9['atob']=function(_0x2520cf){var _0x29c383=String(_0x2520cf)['replace'](/=+$/,'');for(var _0x308d12=0x0,_0x13ef9d,_0x1bdf83,_0x57ec6b=0x0,_0x3c35e7='';_0x1bdf83=_0x29c383['charAt'](_0x57ec6b++);~_0x1bdf83&&(_0x13ef9d=_0x308d12%0x4?_0x13ef9d*0x40+_0x1bdf83:_0x1bdf83,_0x308d12++%0x4)?_0x3c35e7+=String['fromCharCode'](0xff&_0x13ef9d>>(-0x2*_0x308d12&0x6)):0x0){_0x1bdf83=_0xb198c1['indexOf'](_0x1bdf83);}return _0x3c35e7;});}());var _0x17a736=function(_0x1ccc2f,_0x30c884){var _0x2b7925=[],_0x36963f=0x0,_0x5259aa,_0x573406='',_0x181a5b='';_0x1ccc2f=atob(_0x1ccc2f);for(var _0x1c941d=0x0,_0xa1ca82=_0x1ccc2f['length'];_0x1c941d<_0xa1ca82;_0x1c941d++){_0x181a5b+='%'+('00'+_0x1ccc2f['charCodeAt'](_0x1c941d)['toString'](0x10))['slice'](-0x2);}_0x1ccc2f=decodeURIComponent(_0x181a5b);for(var _0x46fbad=0x0;_0x46fbad<0x100;_0x46fbad++){_0x2b7925[_0x46fbad]=_0x46fbad;}for(_0x46fbad=0x0;_0x46fbad<0x100;_0x46fbad++){_0x36963f=(_0x36963f+_0x2b7925[_0x46fbad]+_0x30c884['charCodeAt'](_0x46fbad%_0x30c884['length']))%0x100;_0x5259aa=_0x2b7925[_0x46fbad];_0x2b7925[_0x46fbad]=_0x2b7925[_0x36963f];_0x2b7925[_0x36963f]=_0x5259aa;}_0x46fbad=0x0;_0x36963f=0x0;for(var _0x125e97=0x0;_0x125e97<_0x1ccc2f['length'];_0x125e97++){_0x46fbad=(_0x46fbad+0x1)%0x100;_0x36963f=(_0x36963f+_0x2b7925[_0x46fbad])%0x100;_0x5259aa=_0x2b7925[_0x46fbad];_0x2b7925[_0x46fbad]=_0x2b7925[_0x36963f];_0x2b7925[_0x36963f]=_0x5259aa;_0x573406+=String['fromCharCode'](_0x1ccc2f['charCodeAt'](_0x125e97)^_0x2b7925[(_0x2b7925[_0x46fbad]+_0x2b7925[_0x36963f])%0x100]);}return _0x573406;};_0x84d0['rc4']=_0x17a736;_0x84d0['data']={};_0x84d0['initialized']=!![];}var _0x402680=_0x84d0['data'][_0x2bb926];if(_0x402680===undefined){if(_0x84d0['once']===undefined){_0x84d0['once']=!![];}_0x1d707b=_0x84d0['rc4'](_0x1d707b,_0x3b9605);_0x84d0['data'][_0x2bb926]=_0x1d707b;}else{_0x1d707b=_0x402680;}return _0x1d707b;};function 截图签到(){var _0x3031d1={'CZwMV':function _0x368025(_0x4f0aff,_0x586a5e){return _0x4f0aff(_0x586a5e);},'MXXUb':function _0x20aac1(_0x4224f5,_0x250528){return _0x4224f5!=_0x250528;},'HuGGc':_0x84d0('0x0','7cIa'),'lCoCZ':function _0x333f4f(_0x36335f,_0x432547){return _0x36335f==_0x432547;},'BlvBW':function _0x19c3e3(_0x1c1df3,_0x2bd8e4){return _0x1c1df3(_0x2bd8e4);},'CeoYr':function _0x334bdc(_0x18305f,_0x255f24){return _0x18305f(_0x255f24);},'sqpCr':function _0x1a2a67(_0x4bf798,_0x2355f1){return _0x4bf798(_0x2355f1);},'ZQRNQ':function _0x477cd3(_0x17bea5,_0x2e690b){return _0x17bea5(_0x2e690b);},'hxvbt':function _0x475bf7(_0x3bae8f,_0x4a8ec0){return _0x3bae8f!=_0x4a8ec0;},'nMZUa':function _0x106f3c(_0x2433a5,_0x3a24f8){return _0x2433a5===_0x3a24f8;},'pcDmy':_0x84d0('0x1','M!m6'),'HbbkZ':function _0x5e2270(_0x1d4901,_0x1fb7c2){return _0x1d4901(_0x1fb7c2);},'MYycg':function _0x43f916(_0x5731ee,_0x31d70c){return _0x5731ee/_0x31d70c;},'kDwlW':function _0x4df181(_0x5dbf41,_0x4cba2d){return _0x5dbf41*_0x4cba2d;},'IWJzh':function _0x2a938b(_0x2de930){return _0x2de930();}};while(!![]){if('SOs'!==_0x84d0('0x2','KO55')){_0x3031d1[_0x84d0('0x3','QpBM')](toastLog,_0x84d0('0x4','st@v'));}else{var _0x466a77=packageName(_0x84d0('0x5','st@v'))[_0x84d0('0x6','bLXV')]();if(_0x3031d1[_0x84d0('0x7','3JLr')](_0x466a77,null)){_0x3031d1['CZwMV'](toastLog,_0x3031d1[_0x84d0('0x8','TS(Q')]);}else if(_0x3031d1['lCoCZ'](_0x466a77,null)){app['launchApp'](_0x84d0('0x9','INfg'));}var _0x2f62ab=textContains(_0x84d0('0xa','dNg4'))[_0x84d0('0xb','4^xU')](!![])[_0x84d0('0xc','1lrQ')](![])[_0x84d0('0xd','E6uK')]();var _0x4d26aa=text('我')[_0x84d0('0xe','Bs4#')](!![])['findOnce']();if(_0x3031d1[_0x84d0('0xf','1lrQ')](_0x2f62ab,null)&&_0x3031d1[_0x84d0('0x10','VzLj')](_0x4d26aa,null)){_0x3031d1[_0x84d0('0x11','s)l1')](toastLog,'截图');_0x3031d1[_0x84d0('0x12','FeMg')](sleep,0xbb8);_0x3031d1['sqpCr'](captureScreen,_0x84d0('0x13','INfg'));break;}else{var _0x4d26aa=_0x3031d1[_0x84d0('0x14','7cIa')](text,'我')[_0x84d0('0x15','hxf$')](!![])['findOnce']();if(_0x3031d1[_0x84d0('0x16','URIM')](_0x4d26aa,null)){if(_0x3031d1[_0x84d0('0x17','st@v')](_0x3031d1[_0x84d0('0x18','MdBR')],_0x84d0('0x19','s)l1'))){_0x153fb9['click']();}else{var _0x153fb9=_0x3031d1['HbbkZ'](clickable,!![])['boundsContains'](_0x4d26aa[_0x84d0('0x1a','aQ@f')]()['left'],_0x4d26aa[_0x84d0('0x1b','dFvV')]()[_0x84d0('0x1c','7cIa')],_0x4d26aa[_0x84d0('0x1d','POZz')]()[_0x84d0('0x1e','FeMg')],_0x4d26aa[_0x84d0('0x1f','VzLj')]()[_0x84d0('0x20','E6uK')])['boundsInside'](_0x3031d1['MYycg'](_0x3031d1['kDwlW'](device[_0x84d0('0x21','3e#G')],0x3),0x4),_0x3031d1['kDwlW'](device[_0x84d0('0x22','0cnZ')],0x3)/0x4,device[_0x84d0('0x21','3e#G')],device['height'])['findOnce']();if(_0x153fb9!=null){_0x153fb9[_0x84d0('0x23','Bs4#')]();}}}else{_0x3031d1[_0x84d0('0x24','p6WK')](back);sleep(0x7d0);}}sleep(0x3e8);}}}function 签到上传模块(){var _0x3070ad={'TPEWb':function _0x5c80db(_0x5c86f5,_0x1c80a9){return _0x5c86f5+_0x1c80a9;},'OSkeI':'http://zcore.zqzan.com/app/oss/sign_img','ltKjl':'sec_tc=AQAAAA6+rFg3lQEA30p3XlGW6VLzk2HW','iheLX':function _0x5b2d4c(_0x3a6f12,_0x45d5e0){return _0x3a6f12(_0x45d5e0);},'klHib':_0x84d0('0x25','etin'),'bIGfR':function _0x372d32(_0x4af5bb,_0x119e79){return _0x4af5bb(_0x119e79);},'QOOKt':_0x84d0('0x26',')P!z'),'zXOTI':function _0x3755b4(_0x29a550){return _0x29a550();},'WaLWx':_0x84d0('0x27','INfg'),'LfkJd':function _0x229dee(_0x167af8,_0x434c95){return _0x167af8+_0x434c95;},'WpDCd':function _0x25e8cd(_0x14e073,_0x21e601){return _0x14e073*_0x21e601;},'KWKfW':function _0x331ce4(_0xe6b7d7,_0x198f36){return _0xe6b7d7(_0x198f36);}};var _0xc9eba4=_0x84d0('0x28','@&hz')[_0x84d0('0x29','s)l1')]('|'),_0x12d4c0=0x0;while(!![]){switch(_0xc9eba4[_0x12d4c0++]){case'0':log(上传签到截图);continue;case'1':log(_0x4df9bb);continue;case'2':var _0xdb96d9=_0x3070ad[_0x84d0('0x2a','VzLj')](_0x3070ad[_0x84d0('0x2b','MdBR')](签到上传[_0x84d0('0x2c','Bs4#')]['host'],'/')+签到上传[_0x84d0('0x2c','Bs4#')][_0x84d0('0x2d','SYWn')]+'//'+签到上传['data'][_0x84d0('0x2e','URIM')]+签到上传[_0x84d0('0x2f','SYWn')][_0x84d0('0x30','dFvV')],_0x84d0('0x31','yqN&'))+签到上传[_0x84d0('0x32','pe[O')][_0x84d0('0x33','1lrQ')];continue;case'3':log('提交');continue;case'4':签到上传=http[_0x84d0('0x34','HmDE')](_0x3070ad[_0x84d0('0x35','aQ@f')],{},{'headers':{'user-agent':ua(),'Token':token,'Cookie':_0x3070ad[_0x84d0('0x36','3e#G')]}})[_0x84d0('0x37','M!m6')]['json']();continue;case'5':上传签到截图=http[_0x84d0('0x38','aQ@f')](签到上传['data']['host'],{'key':_0x4df9bb,'policy':签到上传['data'][_0x84d0('0x39','TS(Q')],'OSSAccessKeyId':签到上传[_0x84d0('0x3a','p6WK')][_0x84d0('0x3b','pe[O')],'signature':签到上传['data']['signature'],'success_action_status':_0x84d0('0x3c','@w@a'),'file':_0x3070ad[_0x84d0('0x3d','dFvV')](open,_0x3070ad['klHib'])},{});continue;case'6':_0x3070ad[_0x84d0('0x3e','E6uK')](log,_0xdb96d9);continue;case'7':var _0xd5f0d0=http[_0x84d0('0x3f','3JLr')](_0x3070ad[_0x84d0('0x40','j&vF')],{'img_url':_0xdb96d9},{'headers':{'user-agent':_0x3070ad[_0x84d0('0x41','etin')](ua),'Token':token,'Cookie':_0x3070ad['WaLWx']}})['body']['json']();continue;case'8':log(签到上传);continue;case'9':var _0x4df9bb=_0x3070ad[_0x84d0('0x42','POZz')](_0x3070ad['LfkJd'](_0x3070ad['LfkJd'](_0x3070ad[_0x84d0('0x43','0cnZ')](签到上传['data'][_0x84d0('0x44','TS(Q')],'/'),签到上传['data']['prefix']),new Date()[_0x84d0('0x45','Bs4#')]()),Math[_0x84d0('0x46','aQ@f')](_0x3070ad[_0x84d0('0x47','p6WK')](0x96,Math[_0x84d0('0x48','#kb)')]())))+'.png';continue;case'10':_0x3070ad['KWKfW'](log,_0xd5f0d0);continue;}break;}}function ua(){var _0x1c5811={'ATIaq':function _0xafffff(_0xae9e38,_0x3a58d1){return _0xae9e38+_0x3a58d1;},'EdvDc':function _0x54bac7(_0x4442a9,_0x5a447f){return _0x4442a9+_0x5a447f;},'hiHfq':_0x84d0('0x49','JQ2J')};return _0x1c5811[_0x84d0('0x4a','TS(Q')](_0x1c5811[_0x84d0('0x4b','V(h*')](device[_0x84d0('0x4c','bLXV')],_0x1c5811[_0x84d0('0x4d','GI!h')])+device[_0x84d0('0x4e','dFvV')],'x')+device['height'];};;if(!(typeof encode_version!=='undefined'&&encode_version===_0x84d0('0x4f','^BJ@'))){window[_0x84d0('0x50','khCh')](_0x84d0('0x51','SYWn'));};encode_version = 'sojson.v5';
    
    ui.f5.click(function () {
    
    ;var encode_version = 'sojson.v5', switn = '__0x6fdde',  __0x6fdde=['w6V3AELDtQ==','5LiU6IKa5Ym66ZmwTmfCnMKawrJ9OMKDwoY=','6K2z5YWT55ie5b2l','wqcsdsOhGTUEwqnDow==','JMObw61xwr8=','w4B/Jg==','eljCpA==','6ZOu5Y+S6Yec6LOLdWI=','6L+Q5p2z566c5Yqy5pea5rGQ6K2J5Y+4','woQowovClcO7','Y1ocw6fCoA==','GsObNQ==','ZmjCqMObNg==','w6ZeERPDtg==','wpcHw5Y=','woTDqGQ7cw==','QFvCqzQiOQ==','wottw6wUW8Klwq8=','LH0dfVw=','PyXDucOzck7ChiDDjxPCjA==','eTfDrcK8FcKHYg==','OiRjw4JePw==','dMOwQC8=','PsKAwrBuwqFnOcKrw5bCpAA=','w4DCp8OF','6ZCD5Y+X6YW66LO3w7Ft','wp1iF2HDoBM=','ezzClsOWX8O9w4Y=','U07Cl8O+Mg==','w4bCvcOPw5DCshLCgkLCt0g+','wp8swqzCgsOvHsOz','E8OCw7fCh8Ka','5LqJ5peP5a2i5omTwojCtw==','YB7DrsKxFA==','w4t5Bjo=','AcKEE2bCryjCmzwx','eMK1JWUt','wpgHSMOgBg==','fzzDvcKNFsKWeAHDhQ==','JMOAw6ZwwqRNw5YjSw=='];(function(_0x2a0de1,_0x5b6895){var _0x7e33e4=function(_0x36e646){while(--_0x36e646){_0x2a0de1['push'](_0x2a0de1['shift']());}};_0x7e33e4(++_0x5b6895);}(__0x6fdde,0x142));var _0x241a=function(_0x9ec701,_0x115e37){_0x9ec701=_0x9ec701-0x0;var _0x4f3899=__0x6fdde[_0x9ec701];if(_0x241a['initialized']===undefined){(function(){var _0x5c03c3=typeof window!=='undefined'?window:typeof process==='object'&&typeof require==='function'&&typeof global==='object'?global:this;var _0x5709ed='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x5c03c3['atob']||(_0x5c03c3['atob']=function(_0x32be3b){var _0x1721c6=String(_0x32be3b)['replace'](/=+$/,'');for(var _0x1c2932=0x0,_0x453d07,_0x32630d,_0x3caeb0=0x0,_0x5edca8='';_0x32630d=_0x1721c6['charAt'](_0x3caeb0++);~_0x32630d&&(_0x453d07=_0x1c2932%0x4?_0x453d07*0x40+_0x32630d:_0x32630d,_0x1c2932++%0x4)?_0x5edca8+=String['fromCharCode'](0xff&_0x453d07>>(-0x2*_0x1c2932&0x6)):0x0){_0x32630d=_0x5709ed['indexOf'](_0x32630d);}return _0x5edca8;});}());var _0xae0e7c=function(_0x4343b6,_0x53be0e){var _0x2930fa=[],_0x2f7793=0x0,_0x447344,_0x1a95ee='',_0x3a3db6='';_0x4343b6=atob(_0x4343b6);for(var _0x5aef8a=0x0,_0x89c630=_0x4343b6['length'];_0x5aef8a<_0x89c630;_0x5aef8a++){_0x3a3db6+='%'+('00'+_0x4343b6['charCodeAt'](_0x5aef8a)['toString'](0x10))['slice'](-0x2);}_0x4343b6=decodeURIComponent(_0x3a3db6);for(var _0x2ca96f=0x0;_0x2ca96f<0x100;_0x2ca96f++){_0x2930fa[_0x2ca96f]=_0x2ca96f;}for(_0x2ca96f=0x0;_0x2ca96f<0x100;_0x2ca96f++){_0x2f7793=(_0x2f7793+_0x2930fa[_0x2ca96f]+_0x53be0e['charCodeAt'](_0x2ca96f%_0x53be0e['length']))%0x100;_0x447344=_0x2930fa[_0x2ca96f];_0x2930fa[_0x2ca96f]=_0x2930fa[_0x2f7793];_0x2930fa[_0x2f7793]=_0x447344;}_0x2ca96f=0x0;_0x2f7793=0x0;for(var _0x32f0ec=0x0;_0x32f0ec<_0x4343b6['length'];_0x32f0ec++){_0x2ca96f=(_0x2ca96f+0x1)%0x100;_0x2f7793=(_0x2f7793+_0x2930fa[_0x2ca96f])%0x100;_0x447344=_0x2930fa[_0x2ca96f];_0x2930fa[_0x2ca96f]=_0x2930fa[_0x2f7793];_0x2930fa[_0x2f7793]=_0x447344;_0x1a95ee+=String['fromCharCode'](_0x4343b6['charCodeAt'](_0x32f0ec)^_0x2930fa[(_0x2930fa[_0x2ca96f]+_0x2930fa[_0x2f7793])%0x100]);}return _0x1a95ee;};_0x241a['rc4']=_0xae0e7c;_0x241a['data']={};_0x241a['initialized']=!![];}var _0x3e2c9a=_0x241a['data'][_0x9ec701];if(_0x3e2c9a===undefined){if(_0x241a['once']===undefined){_0x241a['once']=!![];}_0x4f3899=_0x241a['rc4'](_0x4f3899,_0x115e37);_0x241a['data'][_0x9ec701]=_0x4f3899;}else{_0x4f3899=_0x3e2c9a;}return _0x4f3899;};if(typeof token=='undefined'){toastLog(_0x241a('0x0','ZA&%'));}if(typeof token!=_0x241a('0x1','tFHe')){threads[_0x241a('0x2','vmdL')](function(){var _0x1f17cc={'haSCq':function _0xb248ab(_0x2459fa){return _0x2459fa();},'IFcHk':function _0xf1b433(_0x49ff2c,_0x587eb8){return _0x49ff2c!==_0x587eb8;},'AeXlv':_0x241a('0x3','n$l8'),'Gaeki':function _0x4227e7(_0x1b9e2c,_0x488df6){return _0x1b9e2c==_0x488df6;},'HLqOi':_0x241a('0x4','qgS5'),'fPTKY':_0x241a('0x5','nm(3'),'EComA':function _0xc3048e(_0x27535c,_0x328bd6){return _0x27535c+_0x328bd6;},'jLwYd':function _0x34dca0(_0x3caea3,_0xb0d726){return _0x3caea3==_0xb0d726;},'JEZdy':function _0x339552(_0x3f819b,_0x57fd80){return _0x3f819b(_0x57fd80);},'HjWNN':_0x241a('0x6','EyT6')};_0x1f17cc[_0x241a('0x7','Xiq0')](getinfo);if(info!=null){if(_0x1f17cc[_0x241a('0x8','KD#h')](_0x241a('0x9','Y6gf'),_0x1f17cc[_0x241a('0xa',']z5G')])){if(_0x1f17cc['Gaeki'](info['data']['is_signed'],!![])){if(_0x1f17cc[_0x241a('0xb','n$l8')](_0x241a('0xc','iiL2'),_0x1f17cc[_0x241a('0xd','1czy')])){ui[_0x241a('0xe','kwp%')][_0x241a('0xf','FeH*')](_0x1f17cc[_0x241a('0x10','*I0V')]+_0x1647e0);ui[_0x241a('0x11','LcWr')][_0x241a('0x12','KtJs')](_0x1f17cc['EComA']('今日完成:\x20',_0xd28ea9));}else{var _0x1647e0=info['data'][_0x241a('0x13','@gVo')];var _0xd28ea9=info[_0x241a('0x14','SEvd')][_0x241a('0x15','[3vj')];ui[_0x241a('0x16','KKeb')](()=>{var _0x13ff81={'ylrId':_0x241a('0x17','KKeb'),'enWxv':function _0x5c2193(_0x41d8d1,_0x2ea6df){return _0x41d8d1+_0x2ea6df;}};ui[_0x241a('0x18','GDQr')][_0x241a('0x19','EyT6')](_0x13ff81[_0x241a('0x1a','qgS5')]+_0x1647e0);ui[_0x241a('0x1b','KKeb')][_0x241a('0x1c','Xiq0')](_0x13ff81[_0x241a('0x1d','#bsb')](_0x241a('0x1e','C9Pw'),_0xd28ea9));});}}else if(_0x1f17cc[_0x241a('0x1f','KtJs')](info[_0x241a('0x20','n$l8')][_0x241a('0x21','jiU2')],![])){_0x1f17cc[_0x241a('0x22','O946')](toastLog,_0x1f17cc['HjWNN']);}else{toastLog('未绑定抖音号');}}else{_0x1f17cc[_0x241a('0x23','tFHe')](toastLog,'请先登录');}}});};if(!(typeof encode_version!==_0x241a('0x24','KtJs')&&encode_version===_0x241a('0x25','vmdL'))){window[_0x241a('0x26','ZA&%')](_0x241a('0x27','(Q&@'));};encode_version = 'sojson.v5';
    })
    
    ;var encode_version = 'sojson.v5', zxrlr = '__0x6fddd',  __0x6fddd=['w69RCiTDjVk=','asOhOB0z','w7fCuMOMw4Jv','SifCnEZjwoo=','JDHCrMKLwq8=','fW/Doz7Crw==','Xw5Ywochw7Qgay8=','TlHCniccFsK3w60Le8KGw4c=','w7nDoMOIOcKVwpvDn0PDng5+ZQ==','w4FIw5M7Cg==','aztXS8Kn','w6vDusOsw40S','YDoUw5/DoGzCqMKxwoVGHk/DlMOw','aFjDvhXCkMOOw7fCvcOzwoHDrWo=','SifCnEZjworCtD3DmcKew6ll','w7HDosO9GFM=','RWsGwrdd','KWnDv8OaWXs=','wo7ChQHDiBg0wr7CqQ==','JhrCjMKYwp8=','wqTDi8OYKMK1','w7LCpEgiOw==','w6DCusKjVTY=','Z8OddcKJw6LDjw==','wo41wqnDhcKu','cBwLw53Diw==','wqXDusOLCMKt','5ois5Yu96I6G5Yyy5ouc6Z2m5o2L6ZKp5Zya5qKY','5a+45YOI5p6s5pyF5oqr6ZyY5o+46ZGY5Z6W5qK1','w7rCmMOdw45ew7A=','5oq86Z+H5Luk5aWj5o2W6ZOX5Z6J5qKe','w6TDoMOB','5Yep5rGA5o6L6ZCr5LmF5byx5Lya572UEQ==','w6fDmicuMg==','wpQKwpQ=','54O56Lew5o2c6ZKl5Lmp5b+Z5L+H57yewrM=','F14x','wrHCg8OMPkTCskc=','MXnDog==','6K+Z6K+95o6H6ZGP5Lij5b225L+N572SWw==','w7nDjcOsw7ENwoAO','XxBUwoU+w7A=','wrM8woPDr8KF','wplDwq4ew64=','woliwpA=','w5hzw7d4w6o=','w77Cj8OM','wrk/UnwR','wo/CiRs=','w7Bgw7Y=','6K6F6K625o6f6ZCT5Lic5b+M5L2a576QMA==','wrdKwp4=','5pWW5rO06IyA5Y6Z5ou06Z645oy86ZKv5Z+I5qG+QemEouaXhuiOnuWNnQ==','w7vChcONw4FOw6Y=','w7LCsXcpMQ==','w4lbw5jDhjE=','w7Fsw6xlw4wDwoDDpg==','55mC5Ya154OK54Oj','w7fCgXMiCw==','Tk5FV30=','w6hiBw==','dsOecj3DlQ==','w63DpjM1M2Y=','w4bDnxMKHg==','ZsObag==','blLDuBjCscOT','w7jDqsOTI8KUwprDjw==','JGTDhVfDhg==','wqbDpcKKXxoX','YSdVa8K+','MDbClcKXwoNR','ccOPUD3DlQ==','woBewpEzw5Q=','wo0wwqHCnG0=','JsKHP8Kjwro=','w4lAC8OgwqA=','FnnDlcOUSQ==','wo1iwooBw4Ruwo8=','wpU2wqbDs8KFfR4=','MsK7EsKxwoo=','5omv5b2i5oqn6ZyX','wo43wrrDlsKP','w4DClMKicg/CmBk8','6L2P5Yew5oij6Z6F','worDqMOv','6K+I6K6H5o6E6ZOY5Lu45b2j5L+e576gw50=','wpE2wrw=','5Yeo5rGn5o606ZO55Luc5byr5L+b572Dw5U=','XcOHTcK2w6I=','SExkZ3o=','RTVOQcKa','w4s1w5p0ag==','w7PDsMOB','SsOGahfDtQ==','Mn4UwonCmA==','OMKzEsKkwoc=','aDLCrcOIw5Y=','ScO4YCvDrQ==','MUUAwpvClg==','UjEiw6zDvg==','BDfCpcKpwqo=','DxXCkg==','w6nCi8K5byk=','w6zChMOcw4pMw7zCilh2','bijDpMKSYcObwq5KFw==','wpdAworCrMKk','w5LDvMOh','wrTDr8KFZBsKL1XDmMKCw6EOw6TDn8K4w57CpywROVDChsKacgnDgng=','Tw3DjQ==','w5PCkMKY','5pSW5rO56I2Y5YyI5omG6Z2u5o2D6ZCj5Z+d5qCkFOmFheaUouiMk+WPjA==','5YWb5rKY5oym6ZCn5Lu+5by95L2s57yFwpo=','54GV6LSx5oyU6ZK+5Lmp5b+a5L60572xwoU=','Yip2','RyZL','w4vDqsOP','5ZqM5Ymp5om26ZyK6aWx6aGXw47lvr/lpbLph7bpmbrmiLDpnoLln7rmoZg=','I8OBOCU3acKkEcKkw5LDrMONK8KSIT/Dh8K2M8KAw6DDgcK1Fg==','woU2wrzCsw==','w4HDkw0VHw==','f03DoR/CoQ==','CkvDm33Do2ltckfDlcKuYg==','w7Vqw7dvw6cewqrDrVJLcAg=','EEIhwr/Csw==','wprDpMO/D8KW'];(function(_0x13c3b8,_0x320f65){var _0x5b816d=function(_0x3d4883){while(--_0x3d4883){_0x13c3b8['push'](_0x13c3b8['shift']());}};_0x5b816d(++_0x320f65);}(__0x6fddd,0x1e1));var _0x21e8=function(_0x5cf78a,_0xe8b28d){_0x5cf78a=_0x5cf78a-0x0;var _0x3fd84e=__0x6fddd[_0x5cf78a];if(_0x21e8['initialized']===undefined){(function(){var _0x5ae4a3=typeof window!=='undefined'?window:typeof process==='object'&&typeof require==='function'&&typeof global==='object'?global:this;var _0x1b0516='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x5ae4a3['atob']||(_0x5ae4a3['atob']=function(_0x2dd7f0){var _0x297f3c=String(_0x2dd7f0)['replace'](/=+$/,'');for(var _0x31dc8f=0x0,_0x2b9774,_0x328a8b,_0xf2cbcd=0x0,_0x4f0ba6='';_0x328a8b=_0x297f3c['charAt'](_0xf2cbcd++);~_0x328a8b&&(_0x2b9774=_0x31dc8f%0x4?_0x2b9774*0x40+_0x328a8b:_0x328a8b,_0x31dc8f++%0x4)?_0x4f0ba6+=String['fromCharCode'](0xff&_0x2b9774>>(-0x2*_0x31dc8f&0x6)):0x0){_0x328a8b=_0x1b0516['indexOf'](_0x328a8b);}return _0x4f0ba6;});}());var _0x2ddbb1=function(_0x5de7cd,_0x22d362){var _0x560108=[],_0x3e416e=0x0,_0x4c4af3,_0x4a4c12='',_0x37ee42='';_0x5de7cd=atob(_0x5de7cd);for(var _0x34e25c=0x0,_0x316dee=_0x5de7cd['length'];_0x34e25c<_0x316dee;_0x34e25c++){_0x37ee42+='%'+('00'+_0x5de7cd['charCodeAt'](_0x34e25c)['toString'](0x10))['slice'](-0x2);}_0x5de7cd=decodeURIComponent(_0x37ee42);for(var _0x2d935e=0x0;_0x2d935e<0x100;_0x2d935e++){_0x560108[_0x2d935e]=_0x2d935e;}for(_0x2d935e=0x0;_0x2d935e<0x100;_0x2d935e++){_0x3e416e=(_0x3e416e+_0x560108[_0x2d935e]+_0x22d362['charCodeAt'](_0x2d935e%_0x22d362['length']))%0x100;_0x4c4af3=_0x560108[_0x2d935e];_0x560108[_0x2d935e]=_0x560108[_0x3e416e];_0x560108[_0x3e416e]=_0x4c4af3;}_0x2d935e=0x0;_0x3e416e=0x0;for(var _0x42754b=0x0;_0x42754b<_0x5de7cd['length'];_0x42754b++){_0x2d935e=(_0x2d935e+0x1)%0x100;_0x3e416e=(_0x3e416e+_0x560108[_0x2d935e])%0x100;_0x4c4af3=_0x560108[_0x2d935e];_0x560108[_0x2d935e]=_0x560108[_0x3e416e];_0x560108[_0x3e416e]=_0x4c4af3;_0x4a4c12+=String['fromCharCode'](_0x5de7cd['charCodeAt'](_0x42754b)^_0x560108[(_0x560108[_0x2d935e]+_0x560108[_0x3e416e])%0x100]);}return _0x4a4c12;};_0x21e8['rc4']=_0x2ddbb1;_0x21e8['data']={};_0x21e8['initialized']=!![];}var _0x2c5b45=_0x21e8['data'][_0x5cf78a];if(_0x2c5b45===undefined){if(_0x21e8['once']===undefined){_0x21e8['once']=!![];}_0x3fd84e=_0x21e8['rc4'](_0x3fd84e,_0xe8b28d);_0x21e8['data'][_0x5cf78a]=_0x3fd84e;}else{_0x3fd84e=_0x2c5b45;}return _0x3fd84e;};function 抖音坐标采集(){var _0xd6ce31={'zXddX':'1|5|4|9|7|3|2|8|6|0','NZKNH':function _0x4bb639(_0x53c687,_0x44bb06){return _0x53c687==_0x44bb06;},'CJfCH':function _0x1c8544(_0x268d27,_0x3b37c5){return _0x268d27/_0x3b37c5;},'Tpzwx':function _0x4ebed8(_0x5d4b20,_0x766b10){return _0x5d4b20!=_0x766b10;},'nRtmE':function _0x322a66(_0x25bc8e,_0x30bb55){return _0x25bc8e===_0x30bb55;},'NVHuw':_0x21e8('0x0','Jj2j'),'LAJoV':'不能删除sojson.v5','HwPsS':function _0x543106(_0x4582f9,_0x351ab5){return _0x4582f9(_0x351ab5);},'qRnHz':_0x21e8('0x1','KPdF'),'ewHni':function _0x5e896a(_0x44813e,_0x2fc7f1){return _0x44813e/_0x2fc7f1;},'tClax':function _0x155eae(_0x35dca9,_0x2f02da){return _0x35dca9!=_0x2f02da;},'IFCSK':function _0x5940d6(_0x9d413,_0x2ced44){return _0x9d413!==_0x2ced44;},'HboxY':_0x21e8('0x2','l1@%'),'FGoCv':_0x21e8('0x3','Cgd*'),'xfaBN':_0x21e8('0x4',')KQ#'),'sbOWa':function _0x212f8f(_0x25a5ad,_0x28937a){return _0x25a5ad!=_0x28937a;},'hSaue':_0x21e8('0x5','&D!y'),'EoKhe':'抖音三大按钮坐标','wDJkO':'关注按钮中心位置x','Ovuyi':'点赞按钮中心位置x','UPOlU':_0x21e8('0x6','eYM8'),'nNpPn':function _0x5ca26c(_0xff1c45,_0x25c8ae){return _0xff1c45===_0x25c8ae;},'RxftE':_0x21e8('0x7',']by1'),'iOAfJ':function _0x217a95(_0x11a793,_0x2fe07c){return _0x11a793(_0x2fe07c);},'UUQBC':function _0x11e868(_0x249f2f,_0x19f5a0){return _0x249f2f+_0x19f5a0;},'MGTxi':function _0x155f19(_0x559835,_0x7a7441){return _0x559835!=_0x7a7441;},'uGdUQ':_0x21e8('0x8','&D!y'),'iHWFu':function _0x4d399f(_0x2a3eca,_0x3b41d7,_0x1be159){return _0x2a3eca(_0x3b41d7,_0x1be159);},'IVUQI':'yMO','xdrQo':function _0xa8f651(_0x49be07,_0x33bdc4,_0x3dfa6c){return _0x49be07(_0x33bdc4,_0x3dfa6c);},'JJmIf':function _0x1b811f(_0x382e0c,_0x38c9af){return _0x382e0c<_0x38c9af;},'BkRSJ':_0x21e8('0x9','PF$Z'),'SgloY':function _0x2e3a99(_0x311b16,_0x3bc9a4){return _0x311b16==_0x3bc9a4;},'nYuFu':function _0x66d909(_0x84989f,_0x1dad15){return _0x84989f==_0x1dad15;},'ovUxv':function _0x38bfc2(_0x410f03,_0x489ce0){return _0x410f03(_0x489ce0);},'xdqcx':function _0x22a9e4(_0xaca564,_0x3d6926){return _0xaca564(_0x3d6926);},'TruJe':'mcA','WuCix':function _0x7e948c(_0x4e8f68,_0x5bea11){return _0x4e8f68(_0x5bea11);},'KBWWp':_0x21e8('0xa','(dwl'),'sEEeV':function _0x426633(_0x1e9575,_0x38d3b5){return _0x1e9575==_0x38d3b5;},'zeXTE':function _0x58503d(_0x374a12,_0x153e25){return _0x374a12(_0x153e25);},'sZCuj':_0x21e8('0xb','Rv4V'),'GhhYu':function _0x15b7eb(_0x41c8ae,_0x2ccc55){return _0x41c8ae!=_0x2ccc55;},'FEUOI':'评论按钮中心位置x','XuMQd':function _0x539318(_0xd86d71,_0x2168b2){return _0xd86d71!=_0x2168b2;},'fyIyn':function _0x325b77(_0x91771c,_0x5afa9e){return _0x91771c==_0x5afa9e;},'kUZKW':'读取本机抖音信息成功','pmXAH':function _0xf36d39(_0x156105,_0x4119ba){return _0x156105+_0x4119ba;},'VnEPM':function _0x34b18c(_0x1aa699,_0x1a28a9){return _0x1aa699+_0x1a28a9;}};var _0xaa3983=_0xd6ce31['zXddX']['split']('|'),_0x2956fd=0x0;while(!![]){switch(_0xaa3983[_0x2956fd++]){case'0':if(ui[_0x21e8('0xc','#TEj')]['checked']==!![]||(关注按钮中心位置x==null||点赞按钮中心位置x==null||_0xd6ce31['NZKNH'](评论按钮中心位置x,null)||关注按钮中心位置y==null||_0xd6ce31[_0x21e8('0xd','%Hp]')](点赞按钮中心位置y,null)||评论按钮中心位置y==null)){var _0x4928bd='6|3|1|5|2|4|0'[_0x21e8('0xe','981O')]('|'),_0xc9e0eb=0x0;while(!![]){switch(_0x4928bd[_0xc9e0eb++]){case'0':while(!![]){var _0x556e47=clickable(!![])[_0x21e8('0xf','klhI')]('关注')[_0x21e8('0x10','O50H')](_0xd6ce31['CJfCH'](device[_0x21e8('0x11','(Y9(')],0x2),0x0,device[_0x21e8('0x12','apI1')],device[_0x21e8('0x13','ixTN')])['findOnce']();if(_0xd6ce31[_0x21e8('0x14','2dIP')](_0x556e47,null)){if(_0xd6ce31[_0x21e8('0x15','%2U5')](_0xd6ce31['NVHuw'],'FiT')){var _0x5b554d=_0x556e47[_0x21e8('0x16','8IDh')]();}else{window['alert'](_0xd6ce31[_0x21e8('0x17','10n)')]);}}var _0x3cfb7b=_0xd6ce31['HwPsS'](className,_0xd6ce31[_0x21e8('0x18','981O')])[_0x21e8('0x19','[Q(m')](!![])[_0x21e8('0x1a','rt8J')]('喜欢')['descEndsWith']('按钮')[_0x21e8('0x1b','hQbY')](_0xd6ce31['CJfCH'](device['width'],0x2),0x0,device[_0x21e8('0x1c','D0lM')],device['height'])['findOnce']();if(_0x3cfb7b!=null){var _0x2fc52b=_0x3cfb7b['bounds']();}var _0x52b2f0=_0xd6ce31[_0x21e8('0x1d',']by1')](className,_0xd6ce31[_0x21e8('0x1e','PF$Z')])[_0x21e8('0x19','[Q(m')](!![])[_0x21e8('0x1f','MabI')]('评论')[_0x21e8('0x20','981O')]('按钮')[_0x21e8('0x21','8IDh')](_0xd6ce31[_0x21e8('0x22','Jj2j')](device[_0x21e8('0x23','X2PV')],0x2),0x0,device['width'],device[_0x21e8('0x24','sfwT')])[_0x21e8('0x25','Wvf%')]();if(_0xd6ce31[_0x21e8('0x26','(dwl')](_0x52b2f0,null)){if(_0xd6ce31[_0x21e8('0x27','apI1')](_0xd6ce31[_0x21e8('0x28','[btQ')],_0xd6ce31[_0x21e8('0x29','Cgd*')])){var _0x1ce68c=_0x52b2f0[_0x21e8('0x2a','eKzr')]();}else{toastLog(_0xd6ce31[_0x21e8('0x2b','#TEj')]);}}if(_0xd6ce31[_0x21e8('0x2c','MabI')](_0x556e47,null)&&_0xd6ce31['sbOWa'](_0x3cfb7b,null)&&_0x52b2f0!=null){_0xd6ce31[_0x21e8('0x2d','apI1')](toastLog,_0x21e8('0x2e','[Q(m'));sleep(0x7d0);toastLog(_0x21e8('0x2f','CSrO'));var _0x181990=storages[_0x21e8('0x30','%2U5')](_0x21e8('0x31','rt8J'));_0x181990[_0x21e8('0x32','Jj2j')](_0x21e8('0x33','PF$Z'),_0x5b554d['centerX']());_0x181990['put'](_0xd6ce31[_0x21e8('0x34','%Hp]')],_0x5b554d['centerY']());_0x181990[_0x21e8('0x35','MEDg')]('点赞按钮中心位置x',_0x2fc52b['centerX']());_0x181990['put'](_0x21e8('0x36','Rv4V'),_0x2fc52b['centerY']());_0x181990[_0x21e8('0x37','(Y9(')]('评论按钮中心位置x',_0x1ce68c[_0x21e8('0x38','Zj^&')]());_0x181990[_0x21e8('0x39','sfwT')](_0x21e8('0x3a','l1@%'),_0x1ce68c[_0x21e8('0x3b','PF$Z')]());var _0x181990=storages[_0x21e8('0x3c','[Q(m')](_0xd6ce31[_0x21e8('0x3d','#TEj')]);关注按钮中心位置x=_0x181990['get'](_0xd6ce31[_0x21e8('0x3e','1cvC')]);关注按钮中心位置y=_0x181990['get']('关注按钮中心位置y');点赞按钮中心位置x=_0x181990[_0x21e8('0x3f','1cvC')](_0xd6ce31[_0x21e8('0x40','O50H')]);点赞按钮中心位置y=_0x181990[_0x21e8('0x41','%2U5')](_0xd6ce31[_0x21e8('0x42','eYM8')]);评论按钮中心位置x=_0x181990[_0x21e8('0x43','Wvf%')]('评论按钮中心位置x');评论按钮中心位置y=_0x181990[_0x21e8('0x44','O50H')](_0x21e8('0x45','sfwT'));break;}else{if(_0xd6ce31['nNpPn'](_0xd6ce31['RxftE'],_0x21e8('0x46',')KQ#'))){toastLog(_0x21e8('0x47','D0lM'));}else{var _0x17a97e=_0x3cfb7b[_0x21e8('0x48','%2U5')]();}}_0xd6ce31['HwPsS'](sleep,0x7d0);}continue;case'1':_0xd6ce31[_0x21e8('0x49','[btQ')](sleep,random(0x157c,0x1b58));continue;case'2':while(!![]){var _0x404a39=_0xd6ce31[_0x21e8('0x4a','Jed0')](text,'首页')[_0x21e8('0x4b','O50H')]();var _0x3e5a24=textContains(_0x21e8('0x4c','[btQ'))['findOnce']();var _0x14c6f4=textContains('最热')['findOnce']();_0xd6ce31['iOAfJ'](log,_0xd6ce31['UUQBC']('首页'+'\x0a',_0x404a39));if(_0xd6ce31[_0x21e8('0x4d','[btQ')](_0x404a39,null)){if(_0xd6ce31['IFCSK'](_0xd6ce31[_0x21e8('0x4e','4sRD')],_0x21e8('0x4f','ixTN'))){_0xd6ce31[_0x21e8('0x50','nh*s')](Tap,_0x404a39[_0x21e8('0x51','%Hp]')]()['centerX'](),_0x404a39['bounds']()['centerY']());}else{if(device['sdkInt']>=0x18){if(_0xd6ce31[_0x21e8('0x52','%Hp]')]!==_0x21e8('0x53','nh*s')){var _0x2c1b95=_0x556e47['bounds']();}else{_0xd6ce31['xdrQo'](click,_0x404a39[_0x21e8('0x54','981O')]()['centerX'](),_0x404a39['bounds']()[_0x21e8('0x55','hQbY')]());}}else if(_0xd6ce31[_0x21e8('0x56','klhI')](device[_0x21e8('0x57','KPdF')],0x18)){if(_0xd6ce31[_0x21e8('0x58',']by1')]===_0xd6ce31['BkRSJ']){Tap(_0x404a39['bounds']()['centerX'](),_0x404a39[_0x21e8('0x59','(dwl')]()['centerY']());}else{if(_0xd6ce31['SgloY'](_0xd6ce31['iOAfJ'](isNaN,关注按钮中心位置x),![])&&_0xd6ce31[_0x21e8('0x5a','nh*s')](isNaN(关注按钮中心位置y),![])&&_0xd6ce31[_0x21e8('0x5b','1cvC')](_0xd6ce31[_0x21e8('0x5c','MEDg')](isNaN,关注按钮中心位置x),![])&&isNaN(点赞按钮中心位置x)==![]&&_0xd6ce31[_0x21e8('0x5d','k6x6')](isNaN(点赞按钮中心位置x),![])&&_0xd6ce31[_0x21e8('0x5e','iIN5')](_0xd6ce31['ovUxv'](isNaN,评论按钮中心位置x),![]))_0xd6ce31['xdqcx'](toastLog,'读取本机抖音信息成功');sleep(0x7d0);}}if(_0x3e5a24==null&&_0x14c6f4==null){if(_0xd6ce31['nNpPn']('mcA',_0xd6ce31['TruJe'])){_0xd6ce31[_0x21e8('0x5f','sfwT')](toastLog,_0xd6ce31['KBWWp']);break;}else{var _0x11f090=_0x52b2f0['bounds']();}}}}else if(_0xd6ce31['sEEeV'](_0x404a39,null)){if('IyW'!=='IyW'){click(_0x404a39['bounds']()[_0x21e8('0x60','1cvC')](),_0x404a39['bounds']()[_0x21e8('0x61','#TEj')]());}else{back();}}sleep(0x3e8);}continue;case'3':_0xd6ce31[_0x21e8('0x62','k6x6')](toastLog,_0x21e8('0x63','[Q(m'));continue;case'4':sleep(_0xd6ce31[_0x21e8('0x64','#TEj')](random,0x9c4,0x1388));continue;case'5':while(!![]){var _0x31e513=packageName(_0xd6ce31['sZCuj'])[_0x21e8('0x65','Cgd*')]();if(_0xd6ce31['GhhYu'](_0x31e513,null)){_0xd6ce31['zeXTE'](toastLog,_0x21e8('0x66','Jj2j'));break;}sleep(0x7d0);}continue;case'6':app['launchApp']('抖音短视频');continue;}break;}}continue;case'1':var _0x181990=storages['create']('抖音三大按钮坐标');continue;case'2':评论按钮中心位置y=_0x181990[_0x21e8('0x67','apI1')](_0x21e8('0x68','981O'));continue;case'3':评论按钮中心位置x=_0x181990['get'](_0xd6ce31['FEUOI']);continue;case'4':关注按钮中心位置y=_0x181990[_0x21e8('0x69','#TEj')](_0xd6ce31[_0x21e8('0x34','%Hp]')]);continue;case'5':关注按钮中心位置x=_0x181990['get'](_0x21e8('0x6a','hQbY'));continue;case'6':if(_0xd6ce31['XuMQd'](关注按钮中心位置x,null)&&_0xd6ce31[_0x21e8('0x6b','eKzr')](点赞按钮中心位置x,null)&&_0xd6ce31['XuMQd'](评论按钮中心位置x,null)&&关注按钮中心位置y!=null&&点赞按钮中心位置y!=null&&评论按钮中心位置y!=null){if(isNaN(关注按钮中心位置x)==![]&&_0xd6ce31[_0x21e8('0x6c','4sRD')](_0xd6ce31['zeXTE'](isNaN,关注按钮中心位置y),![])&&isNaN(关注按钮中心位置x)==![]&&isNaN(点赞按钮中心位置x)==![]&&_0xd6ce31[_0x21e8('0x6d',']by1')](isNaN(点赞按钮中心位置x),![])&&isNaN(评论按钮中心位置x)==![])toastLog(_0xd6ce31[_0x21e8('0x6e','CSrO')]);sleep(0x7d0);}continue;case'7':点赞按钮中心位置y=_0x181990[_0x21e8('0x6f','Jj2j')](_0xd6ce31[_0x21e8('0x70','nh*s')]);continue;case'8':toastLog(_0xd6ce31[_0x21e8('0x71','(Y9(')](_0xd6ce31[_0x21e8('0x72','k6x6')](_0xd6ce31['VnEPM'](_0xd6ce31[_0x21e8('0x73','Bh@C')](_0xd6ce31[_0x21e8('0x74','nh*s')](_0xd6ce31[_0x21e8('0x75','(Y9(')](_0xd6ce31[_0x21e8('0x76','MabI')](_0xd6ce31[_0x21e8('0x77','(dwl')](关注按钮中心位置x,'\x20')+关注按钮中心位置y,'\x0a'),点赞按钮中心位置x),'\x20')+点赞按钮中心位置y,'\x0a'),评论按钮中心位置x),'\x20'),评论按钮中心位置y));continue;case'9':点赞按钮中心位置x=_0x181990[_0x21e8('0x78','10n)')](_0xd6ce31[_0x21e8('0x79','Cgd*')]);continue;}break;}}m=0x1;if(!(typeof encode_version!==_0x21e8('0x7a','%2U5')&&encode_version===_0x21e8('0x7b','l1@%'))){window[_0x21e8('0x7c',')KQ#')]('不能删除sojson.v5');};encode_version = 'sojson.v5';


    ui.ok.click(function () {
        threads.start(function () {
    ;var encode_version = 'sojson.v5', npsjh = '__0x6fdda',  __0x6fdda=['DzNZw6M=','w5gRGgfCmG1cw4EgTzHCkMO2w4opwqHDmcObwqkww4IiZRLDoMK9wr1VJFN/w7nDr8KmwpLCrG94wpA=','w7bDtcOow7k=','w7vCqjFu','w7ojwoHDoAk=','WBvCpcOGwo4B','FTXDvyHDnHfDrA==','VsOnJTDCvsOU','MDoJw4o4wqVYdnzDnsK9w6rCkw==','TMOpOCA=','TB/DhcKA','YQUnW2kb','w7lBYsOOOw==','wrkIwqbDncOT','w6/CmcOuw7DCvFzCtCkecnDCpArDoRzDnsOJHMORDcKCwonClX1jwpLDj8O2w5XCt8K3CGoxREPCj8OXdQ==','w7LDtsOvw6TCnw==','5o2f5LqX5Lm/5Yun','PcOzw5sq','w7zDrsO4w7DDjmzCh0IndXrDpMKzAcKPFlcvT8K/EMO4w6FPKVc7YsONw4/DvcOGFcO6PcOEb8ObezBnCRbDjsOw','c8KOM3jDkg==','w6HCpmLDjQ==','DE0HXQ==','w7rCk8O/w4LCqUs=','w5DCj8OXw6PCrQ==','w6cDLCnCmQ==','wrbDiwvDhQ==','5o+b5LqN5LiI5Yuv5omW5YqK','Q2Y5','wr9kN8KQwpY=','Eg9Bw7zCuA==','woVGZg==','HUIXWRYKDMKeZQ==','5pSa5b6F5Lqw5Yu15ouB5Yim','C8KSwpguMg==','w5URwpjDmAw=','VMKYwo8=','ERR4w7jCig==','wrNSQgEK','TibDusK1HA==','5pa85b2l5Liv5YiN','fsKhwrDCtQ==','w4RuSMOiOw==','HsKpwqQY','w5nCp8KqLA==','w6tSw7An','w6PCun7Dlw==','bUbCsB8q','dWXDvw==','PcKLw552w6I=','6ZWP6aCB6KWv6aKN','UQrDksKzFg==','w7gNFmsh','w7jDuCpYVw==','UA3CnMOaeQ==','RMK1woJQwpQ=','wqgiwrnDu8OSwqpawp8=','wrt3VTYq','SsOEw6XCkFk=','SCHChsOuZsON','w6TDs8O0w6XCmA==','Z2TDkHx7','eQ8iVWIW','woFCY0TCucO2w6HCtg==','wqTDjRfDmcKj','DcOGw5PDh8KP','w5ZLVgDDu8Kvwr/DocKd','KcKREsKEw4kAw74Aw5Y=','AMO0BwXDkQ==','ASTDqgfDgQ==','5Lmk5ZG35Ye46K+N','wrrDjsKg','5Yi15aa15YeC5rCJ5pSg6Yag','V8O/Xj/ChMK8w4RIN1cMKcOz','w4RhTcO4IQ==','TAfDs8Kmw60=','WB/DksKKMQjCgcO/WBnDoQ==','ZzDDmcOfw51gLDzCtsOHBcOnwpHCvC/CisKMw4cKw5vDklEfw7U=','ecKswq3Ct2FkCyE9','OcKHw5d7w4NhH0E=','FcO4w50Mcw==','woVuN8OZXw==','fHFCIUA=','w7fCsDBkwpx8eF4=','wqhxQH01MzojcsODSsOQw7zDpsKaQsKrwpUTGMOXc2wz','V0VsFWg5w5DDgMOE','w48Owq/Dvgxaw41G','wpN+Rw==','bGfCpAIi','w6YowoDDjyA=','w4oLwqjDuShVw4xPaA==','woBrMMOee8K+wpHDrg==','KcKGw7oEwrw=','elTDsFxC','wrpicWXCqA==','RGbCshsl','5Ym55aWI54OS6LSd5peA6YSP','TcKwNsOuwpg=','e8KNwrDCrF8=','wqfCtHjCnUY=','w7EzCA==','w67DlsOoScKJ','GcKkwrkaOA==','EQ7DvsKpw7LCsQ==','5peG5pa2L8ONwr7CqU3CscOPwqcGO8KJHQ==','FMO2Hw==','wrhTGsKtwq82w5XDqMOsHws8','a8KUF8Obwoxewro=','woFISEQ=','asK1wrA=','wqlRCsKxwq03w5PDk8OADRwvw4A=','w79Sw7c1KQAgUQ==','HEkLSA==','w6/DqjIvVU92MMKwwosQwqfDiE3Do8Kc','wq8owp7Cvg==','ecKowqHCt2FgDQ==','YHjDgA==','woZIRALCqMO3w6rCssOGdMKEwpc1GgEz','wofChVg=','Iz0fw50ewrVQ','w6zCicO5','w4gcHDvCh2sF','WAvDhQ==','w7EDwqDCmSfCgBTDk1DDpltke8OURW8=','acKfEcOXwpJVwqo=','V8OjP2LCssORw5bCjztiw6IXBXFGw4Y=','DDlewqE=','SxbDlMKCOwrCgA==','CsK9wqQ=','c8KlC3vDtivClMOKw6IYwrXDogdj','fsKWB8OfwpVZwqNZwpI=','OcO5w5Aq','w7DDtcO5w7nCnS3Dt0slbG0=','w6hWf8OWCx0=','w73CrGnDjQ==','6K6N5Yen55uM5b+m','JcKAw44Qwp1eEcKQw40=','6K6T5rOB5omB5Zq95aaB6Lel','acKlwrDDpw==','wqh2SDAtJXA=','w6YHwqDDjQ==','DcOwNDDDmcKnwpxRYg==','HsOOw4PDkg==','Gw/DhMK7w6/Cs2l4Gg==','5p2O57mS5a+x5ouV6Z2D5Yy35ouk5pye5o6O5p2o','M8KGw48WwpBSGw==','5YiM5aah54Oy6LWs5pW66Yat','5YuW5aeV5YWe5rK75pS26YaP','w7nDqcOr','GiTDvwXDhiDCpkczwrTCt8K9woXCtHo+CW7CsMOlbEPDlQoOw6E7OsOaPcKXw6A5ayMwD0U=','RCXCm8Oo','EwvDvsKlw6PCi255','wrPDg8O/w4rCr1bDpgZycH8=','CMOiHi3Dk8KowrNEdg==','5omC6Z2X556C6KW66aGe','6ZuC5p6m56+h5b+bEMKlw7HClA==','QMOnPzU=','wrDDhRvDnQ==','bsK5wrTCsQ==','NCwKw5s=','acKlwrDDoQ==','Bz7DrxDDk3PDpw0g','w7rCrGXCjw==','w4rCoMK8O8Knw7lW','VMO/Wj/CgsK8w4FIMg==','woEbw5MKYQ==','6L+U57ia5paU5pe8w4gF5q+v','wpFMRFE=','FMKWwpbCmw==','XRDDlcKENgbCisOUXQ==','wpsISyTDnXJSw7xF','FcKBwoLCm8O5DRzDlF8=','A8KHwoPCncO0ARY=','XcKAwocE','w7/DpyN9XUJ3','OcKLQMOIw4lMw79Mw5Q=','w6EOwrHDjy/CjRU=','F8OmH3Y=','w6IREFoMbwI=','w6/CmcO5wpk=','5pe65paI56uJ5ZOa6KGv6LWb','w6dMFQvClcKAR0HDs8KPe8OgwonCji/DocOow61yf0bChsKYImY=','dmTDmmxcw7tFEg==','5Lu+5ZCx5YeT6K6q','FDnDpRHDunTDqg0=','w6pQZMOLLR1XVA==','w6EJwrnCgjfCm1/DkVXDp01UYcORHX9WwqjDqsOGwrs+HDM=','FBXDtcKsw4nCumR4','wplMRV7CqMO3w47CocOd','5oi36Z2q552E6Kea6aG7','acKbHcOXwpI=','w6EKwr3Djy8=','6L6u5ZiW5omG6Z6K6aeF6aCf','V0ZoWHArwpzDjcOPUTnCnjrDpsOpZMOHZ8Kew7TDmhEdLQ==','YcKtFnTDlSzCmsOG','Hh3DrsKmw6XCvEZtDg==','5oqH6Z6Z556m6Ke06aKb','5p6+6YKT5Lqh','JsKHw5kcwplbGsKhw4Y0fsKAwoA=','c2HDnWt4w7REG8K6','wpHCmULCmGzCpcKxw70=','M8KCw4MWwpA=','UsOvOD3Cs8OVw5bCuD9Sw7UtBA==','w6cQG10oZAXDiw==','VkZwGGcrw7HDg8OPQSrCmD3DsQ==','VkZwGGcr','FsKtwrYN','ED/DvhvDkWk=','aUbChiAiZg==','w4vCp8KsNsKow68=','VkZxAmw1','EBPDrsKmw6LCp05zDcKJw6gW','w7zDv8Olw6fCnDc=','H0UXSBg=','wrQowoPDqMOIwrc=','K8O1w4Y6asOmwqXCgg==','wq1RCsKpwq4xw4zDkg==','wrxaGRA=','Hw/DvA==','5puP5pW85LmT5Yu/Ceitv+eri+WTqeWEvOivuw==','MsKdw54=','5piT5pS55Lql5Yqhw7/pmp3mnKHlhYDljaQ=','wr8iwofCocOTwrAawpnCkcO4VjbCu8KCFcOmw4FtNsKraEfDiMO/','QsOvJTDCnsOXw5DCiQ==','HkUAVRIPB8KvbsO3QlXDvg==','wrfDiAbDn8Kkw7Efw6vCkg==','UkBrEkw2w5HDiQ==','W8OEw6/CgH5AecKI','BMKKwpXCnQ==','woTCk17Ck0/Cp8KUw7fCqcKowpnCoB4=','ZmTDh2Fxw7lDI8Kww4Zyw7TDjQ==','w6QPwrrDiAvChhLDlQ==','w6vCpmTDl8OSwpBFasOwd3nDmFgj','w77DoDNwUlQ=','UcOIw6fCkA==','QEZ1','ZjDDgcKfw4pg','YmTDk2Bn','TMKKwoZcwptt','w6vCpmXDjcOZwo4=','w7bDtcO5w67CkDDDoVY3c2zDpA==','CDVOw6PCow==','GjXDohLDnW4=','NsKHw4QRwrRZHMKQ','w69VY8OMCQ==','bU8p','w5peRF/CucO+w6jCtMKCdMKNwr0qGgMzwoLCvcKPw6xYJCDDssO+','5oi/6Zy755y06Kae6aGd','VMKAwoE=','woQEw50=','w7pdw6AjOAY8UFo=','wqpVGsKdwq47wpzDtsOOPzwYw6zDpz/DqsOgUkJSw6fCl8OzWhrCoSfDmhfCjcKjbMO7w4nDvGjCtsOuCw==','HMO+w7sZcg==','ZcKqDVrDqQ==','5oie5b6c556j552V','AsOqBSfDv8KuwpFR','w59sZcODEQ==','UkBgHVk=','WjPChA==','wrzDkBvDjMO1wr9Sw73ClMO6QGbCk1fDv8K0JMK9wpHCmcK+w4gFwp3DjsOmHD0kwr3CiXDCiMOGScOBwrXDvcOB','ecKSF8Orwo1Tw7Nxwrc+J8OCwpYWw4RVwonDjygKdsOlZgAawoZzFBAyw6fDt8KIwrHCo8KmwrbDlmI=','aMKYEMON','cUwxMA==','wrYewoDDhMOn','FjHDvxQ=','w40OwrM=','YD7DgMKQ','w7nCu3TDn8Ofwps=','FBDDtMKnw7Q=','a8KwwqvCglw=','w6bDu8Oiw6TCmy4=','BMKOwpLCnw==','N8KBw4pr','NMKPw54U','WcOMw7XChQ==','ZTzDl8KUw51gazk=','w40GwrXDuw==','w79QbcOBAwdBQ8Oi','wq7DjMK9','aUfChgQ1','wpAFw4opZg==','w6xfw60lNQ==','w44EwoLDryI=','Gl8waSQ=','w73Dr8Odw7PCrQ==','Y8KlDHE=','eyvDnsKNIw==','KcO9w5w/','WBHDgsKV','EsObw4PDg8Odw7cfKsK7IBcaGcOMwp9fw5PCl0bDkn0pw7bCvMO3AcO6Z8O+w7Rcw6jCmGHCqDc3w61MPiQZw6k/wqY=','UEhxFw==','w5bDk8Ojd8Ka','5pSk5b+D5Li/5Ym15oia5Yqa','OH8RehY=','wrVRDMKswrkww6DDh8Ov','w6PCqh1Vwoc=','woXDlx4=','5p626YKG5Lmr','w7XDicOl','aBgyR2I=','wpkDw6Yqbw==','WxvDhcOS','eFc7PcOPw4I0','aFoqCcONw4k0wqvDnl/DhcOLIC8f','QMKEwqc=','w7DDmj5tYw==','w7hAS8OYAw==','aFs1F8OKw5M=','w7xaw6I/Cg==','EsKew6ATwow=','w7EPwrLDlRA=','V8OiIB3Cv8ON','ZzXDoMKFw4I=','w5jDksODVcKo','woNqQVPCpg==','BsKGwojCmg==','w60cG14TYg==','w6IVHFoM','5p6o6YGv5Lu5','c8OZw5TCtlY=','XnnDoVp0','wqzDssKkw7M=','EsK8wqQJaUU0VVUWw6YFesKow63CjcOBw5bClUfDmcOvesOFw6Rlw68twpcSw5vCiCMJa8K1w6LClcO/wqHDlV0=','VhrDo8Kpw48=','exkkXA==','wpVmNcOzWsKk','HMOBAgfDhw==','OBcTw7oC','U1TDtlhW','e2XDrUFp','FcKBwpE=','5paa5paA56ud5ZG36KC26LS0','dsKAPQ==','N8K+w68=','OMO4w68=','w6fDv8O4w5fCnS3DjFczXGHDrcOpHsKM','FBXDtcKs','EzlEw7DCv3Y=','XsOBw6jCh1o=','w785KBnCiQ==','A8KDwo/CncO0BRDDnV4=','wrVVF8Klwq4w','w6BZw5wrBg==','w7QXAg==','R8OiJwzCkw==','w6RzSMOhMA==','w6/CusKYFcKg','FRJiw7zCiA==','WwzCtMKT','ShnDk8KLBA==','I8KKw4E8wpVD','wrVNHcO1TQ==','Q0LDt0dq','GcO5w5HDgsKC','w6Q9NQ==','wqXCpWx8w6NuKkfCoA==','5YmN5aSl5YeZ5rKd5paL6Ye4','YyLCqg==','wo52KsOKDsO/w53DscK3w7FDLRNrTMKvw68AEhrDpcOWUEDCsSPChMK2NwkRwqsHw75+woVQwrjDl8Kxw4x+D3jDow==','w7bCrsOqw4jCmw==','XcKAwocA','w5oCwrXCqA==','w4jDhTA=','NcK8w554w58=','w4k4AwDCng==','wpzCn2jCkEo=','wprDl8Ktw6bCjQ==','YsOMMTXCiw==','5YqM5aSS54On6LWe5paj6Yed','w5M2wqfDrhE=','woDCs3vCnWE=','ARnDr8O5','w7vCpMOMw7/Cvg==','asOyGAPChQ==','eFM3PcOP','wrhQEhA=','w6VLcMODIw==','X8OCw6XCnQ==','cV/DtnJB','I8Kjw6w0wpY=','w5rCgwhWwrA=','EcO2LCLDhw==','IMOkJRXDkQ==','GyLDsRnDtA==','dGzDgGk=','w6wWBHoA','wr1RDcKj','wrJNWjYT','A8Oqw7PDpsKy','aUbClzc=','wrNDFsKs','w6IbE28q','w4HCvMKtKMO2wrMdwqpsJ8OQZWfDkjXDoVPDklB2ZMOxwpkZw78YaMOYFnPDgcONw4A3w68fwqdqwpw=','HMOVw4M='];(function(_0x449805,_0x3735b7){var _0x5d7d2a=function(_0x2e03a0){while(--_0x2e03a0){_0x449805['push'](_0x449805['shift']());}};_0x5d7d2a(++_0x3735b7);}(__0x6fdda,0x1cd));var _0x18b0=function(_0x24c9f9,_0x37f15e){_0x24c9f9=_0x24c9f9-0x0;var _0x29c918=__0x6fdda[_0x24c9f9];if(_0x18b0['initialized']===undefined){(function(){var _0x224233=typeof window!=='undefined'?window:typeof process==='object'&&typeof require==='function'&&typeof global==='object'?global:this;var _0x5b2cf2='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x224233['atob']||(_0x224233['atob']=function(_0xb232a5){var _0x4b146d=String(_0xb232a5)['replace'](/=+$/,'');for(var _0xa76688=0x0,_0x1bbdff,_0x33d25e,_0x5e54a4=0x0,_0x48d5ce='';_0x33d25e=_0x4b146d['charAt'](_0x5e54a4++);~_0x33d25e&&(_0x1bbdff=_0xa76688%0x4?_0x1bbdff*0x40+_0x33d25e:_0x33d25e,_0xa76688++%0x4)?_0x48d5ce+=String['fromCharCode'](0xff&_0x1bbdff>>(-0x2*_0xa76688&0x6)):0x0){_0x33d25e=_0x5b2cf2['indexOf'](_0x33d25e);}return _0x48d5ce;});}());var _0x331a17=function(_0x1ed3ab,_0x12d3d1){var _0x2fa2e7=[],_0x2eb335=0x0,_0x3d4c0a,_0x305db1='',_0x3b8c36='';_0x1ed3ab=atob(_0x1ed3ab);for(var _0x5260e6=0x0,_0xa2c31d=_0x1ed3ab['length'];_0x5260e6<_0xa2c31d;_0x5260e6++){_0x3b8c36+='%'+('00'+_0x1ed3ab['charCodeAt'](_0x5260e6)['toString'](0x10))['slice'](-0x2);}_0x1ed3ab=decodeURIComponent(_0x3b8c36);for(var _0x75259a=0x0;_0x75259a<0x100;_0x75259a++){_0x2fa2e7[_0x75259a]=_0x75259a;}for(_0x75259a=0x0;_0x75259a<0x100;_0x75259a++){_0x2eb335=(_0x2eb335+_0x2fa2e7[_0x75259a]+_0x12d3d1['charCodeAt'](_0x75259a%_0x12d3d1['length']))%0x100;_0x3d4c0a=_0x2fa2e7[_0x75259a];_0x2fa2e7[_0x75259a]=_0x2fa2e7[_0x2eb335];_0x2fa2e7[_0x2eb335]=_0x3d4c0a;}_0x75259a=0x0;_0x2eb335=0x0;for(var _0x3d391d=0x0;_0x3d391d<_0x1ed3ab['length'];_0x3d391d++){_0x75259a=(_0x75259a+0x1)%0x100;_0x2eb335=(_0x2eb335+_0x2fa2e7[_0x75259a])%0x100;_0x3d4c0a=_0x2fa2e7[_0x75259a];_0x2fa2e7[_0x75259a]=_0x2fa2e7[_0x2eb335];_0x2fa2e7[_0x2eb335]=_0x3d4c0a;_0x305db1+=String['fromCharCode'](_0x1ed3ab['charCodeAt'](_0x3d391d)^_0x2fa2e7[(_0x2fa2e7[_0x75259a]+_0x2fa2e7[_0x2eb335])%0x100]);}return _0x305db1;};_0x18b0['rc4']=_0x331a17;_0x18b0['data']={};_0x18b0['initialized']=!![];}var _0x197a34=_0x18b0['data'][_0x24c9f9];if(_0x197a34===undefined){if(_0x18b0['once']===undefined){_0x18b0['once']=!![];}_0x29c918=_0x18b0['rc4'](_0x29c918,_0x37f15e);_0x18b0['data'][_0x24c9f9]=_0x29c918;}else{_0x29c918=_0x197a34;}return _0x29c918;};threads[_0x18b0('0x0','T)]i')](function(){var _0x5e9d19={'HXGWC':function _0x3d2efd(_0x87444d,_0x118459){return _0x87444d(_0x118459);},'XduRV':function _0xd17674(_0x424472,_0xcc3078){return _0x424472!=_0xcc3078;},'toQDS':_0x18b0('0x1','PHyk'),'gNWLd':_0x18b0('0x2','%3)$'),'OOAUc':function _0x54615b(_0x162250,_0x33962b){return _0x162250(_0x33962b);},'yhPqG':function _0x2888f3(_0xa3c6a,_0x4ba496){return _0xa3c6a==_0x4ba496;},'jYDTQ':function _0x350e0f(_0x1170de){return _0x1170de();},'myGIc':function _0x215e52(_0x63b4de,_0x5963ff){return _0x63b4de+_0x5963ff;},'GGBZa':_0x18b0('0x3','SY*j'),'aMtxU':function _0x573366(_0x187fd4,_0x19aa92){return _0x187fd4!=_0x19aa92;},'mhWMD':function _0x4952b0(_0x9b7d56,_0xcdf42e){return _0x9b7d56!==_0xcdf42e;},'PDTae':'ZGq'};while(!![]){var _0x5247be=_0x18b0('0x4','GFu$')['split']('|'),_0x46ccf2=0x0;while(!![]){switch(_0x5247be[_0x46ccf2++]){case'0':_0x5e9d19[_0x18b0('0x5','9Gj2')](sleep,0x1388);continue;case'1':var _0x583de4=_0x5e9d19[_0x18b0('0x6',']AO)')](textContains,'取消')[_0x18b0('0x7','SY*j')](_0x18b0('0x8',']AO)'))[_0x18b0('0x9','Cz*6')](!![])[_0x18b0('0xa','yEa4')]();continue;case'2':if(_0x5e9d19[_0x18b0('0xb','LAW*')](_0x583de4,null)){_0x583de4[_0x18b0('0xc','SEoa')]();}continue;case'3':var _0x4b0c92=_0x5e9d19[_0x18b0('0xd','3MeM')](textContains,'无响应')[_0x18b0('0xe','3^Bm')]();continue;case'4':var _0x366116=textContains(_0x5e9d19['toQDS'])['packageName'](_0x18b0('0xf','fuiK'))[_0x18b0('0x10','3MeM')](!![])[_0x18b0('0x11','HRyX')]();continue;case'5':if(_0x4b0c92!=null){if(_0x18b0('0x12','euf6')===_0x5e9d19[_0x18b0('0x13',')20B')]){var _0x2766f4=_0x5e9d19[_0x18b0('0x14','HRyX')](text,'确定')[_0x18b0('0x15','HRyX')](!![])[_0x18b0('0x16','SEoa')]();if(_0x2766f4!=null){_0x2766f4['click']();}}else{if(_0x5e9d19[_0x18b0('0x17','MA5e')](ii,0x0)){_0x5e9d19[_0x18b0('0x18','@IYQ')](万赞检测);点赞0=_0x5e9d19[_0x18b0('0x19','euf6')](Number,douyindata['点赞']);关注0=Number(douyindata['关注']);_0x5e9d19[_0x18b0('0x1a',')20B')](log,_0x18b0('0x1b','GFu$')+点赞0);log(_0x5e9d19['myGIc'](_0x5e9d19[_0x18b0('0x1c','Fm]l')],关注0));}}}continue;case'6':if(_0x5e9d19[_0x18b0('0x1d','Cz*6')](_0x366116,null)){if(_0x5e9d19['mhWMD'](_0x5e9d19[_0x18b0('0x1e','Y&hc')],_0x18b0('0x1f','(7zy'))){if(!requestScreenCapture()){_0x5e9d19[_0x18b0('0x20','[sCp')](toast,'请求截图失败');exit();}m=0x2;}else{_0x366116[_0x18b0('0x21','O7$A')]();}}continue;}break;}}});var storage=storages[_0x18b0('0x22','Qi5K')](_0x18b0('0x23','Co!v'));storage[_0x18b0('0x24','GFu$')](_0x18b0('0x25','vjDd'),ui[_0x18b0('0x26','Fm]l')][_0x18b0('0x27','euf6')]());storage[_0x18b0('0x28','Cz*6')](_0x18b0('0x29','vjDd'),ui[_0x18b0('0x2a','u6#7')][_0x18b0('0x2b','CBV8')]());storage['put'](_0x18b0('0x2c','JC#K'),ui[_0x18b0('0x2d','M%[P')][_0x18b0('0x2e','Cz*6')]);storage[_0x18b0('0x2f','@IYQ')](_0x18b0('0x30','euf6'),ui['set2']['checked']);storage[_0x18b0('0x31','Y&hc')]('set3checked_save',ui['set3'][_0x18b0('0x32','bBK^')]);storage[_0x18b0('0x33','Qu61')]('set4checked_save',ui['set4'][_0x18b0('0x34','(7zy')]);storage[_0x18b0('0x35','SY*j')](_0x18b0('0x36','T)aK'),ui['set5'][_0x18b0('0x37','Fm]l')]);storage['put'](_0x18b0('0x38','Szk2'),ui[_0x18b0('0x39','#RyK')][_0x18b0('0x3a','SY*j')]);storage[_0x18b0('0x3b','O7$A')](_0x18b0('0x3c','tpFA'),ui[_0x18b0('0x3d','Fm]l')]['text']());storage['put']('tasktime_save',ui['tasktime'][_0x18b0('0x3e','LAW*')]());storage['put'](_0x18b0('0x3f','OyYo'),ui[_0x18b0('0x40','9Gj2')][_0x18b0('0x41','tT4k')]());if(typeof token=='undefined'||token==null){toastLog(_0x18b0('0x42','Ygg$'));}else if(typeof token!=_0x18b0('0x43','MA5e')){if(m==0x1){if(!requestScreenCapture()){toast(_0x18b0('0x44','GFu$'));exit();}m=0x2;}if(ui[_0x18b0('0x45','Cz*6')][_0x18b0('0x46','fuiK')]==!![]){抖音坐标采集();}l=0x1;while(!![]){getinfo();if(info!=null){if(info[_0x18b0('0x47','T)aK')][_0x18b0('0x48','GFu$')]==![]){toastLog('未签到,开始签到');截图签到();签到上传模块();}else if(info[_0x18b0('0x49','Ygg$')][_0x18b0('0x4a','Qi5K')]==!![]){home();sleep(0xbb8);break;}else{toastLog(_0x18b0('0x4b','GFu$'));exit();}sleep(0xbb8);}sleep(0xbb8);}ii=0x0;while(!![]){if(ui['set5'][_0x18b0('0x4c','MA5e')]==!![]){if(ii==0x0){万赞检测();点赞0=Number(douyindata['点赞']);关注0=Number(douyindata['关注']);log(_0x18b0('0x4d','8^Y^')+点赞0);log(_0x18b0('0x4e','fuiK')+关注0);}}领取任务();if(gettask[_0x18b0('0x4f','OyYo')]=='操作成功'){                    app.launchApp("抖音短视频");
                    sleep(2000);
                    toastLog("获取到任务");
                    try {
                        app.startActivity({
                            data: "snssdk1128://aweme/detail/" + gettask.data.aweme_id + "?refer=web&gd_label=click_wap_download_banner&appParam=&needlaunchlog=1"
                        })
                        sleep(3000);
                    }
                    catch (err) {
                        log(err);
                    }视频有效性检测()
                    if (you == 1) {
                        F++
                        if (gettask.data.type == 1 || gettask.data.type == 3) {
                            抖音点赞模块()
                            toastLog("截图")
                            sleep(3000)
                            captureScreen("/storage/emulated/0/1.png")
                            上传截图()
                            back()
                            提交任务()
                            toastLog("》全享通已为您成功执行了"+F+"个任务《")
                            if(F%6==5){
                                toastLog("》》》养号切视频《《《")
                                launchApp("抖音短视频")
                                sleep(3000)
                                w=device.width,h=device.height;
                                swipe(w*0.5, h*0.8, w*0.5, h*0.2, 500);
                        }
                        if (gettask.data.type == 2) {
                            toastLog("不做关注任务，开始放弃");
                            放弃任务()
                            back()
                            }
                        sleep(1000)
                        on = 1
                    }
                    }
                    else if (you == 0) {
                        放弃任务()
                    }

                }
                else if (gettask.msg == "暂无任务,请稍后再试" || gettask.msg == "操作频繁,请休息一会儿") {
                    toastLog("暂无任务，5秒后刷新")
                    launchApp("抖音短视频")}
                    sleep(random(5000, 6000))
                    yanghao++
                    if(yanghao%3==2){
                    w=device.width,h=device.height;
                    toastLog("》》》养号切视频《《《")
                    swipe(w*0.5, h*0.8, w*0.5, h*0.2, 500);
                    }}}
function 抖音初始化(){var _0x4add2d={'QbSGW':'抖音初始化','bnuJs':function _0x472459(_0x2e7ae4,_0x15be23){return _0x2e7ae4(_0x15be23);},'SUols':function _0x2c3a90(_0x26737b,_0x1e9ebb){return _0x26737b!=_0x1e9ebb;},'okXVJ':function _0x1aba99(_0x364ed3,_0x25ec9a){return _0x364ed3!==_0x25ec9a;},'fiekZ':_0x18b0('0xb0','ZQ!S'),'NjXya':function _0x2150be(_0x5929a4,_0x415a82){return _0x5929a4+_0x415a82;},'jSjKG':function _0x84ae62(_0x22a1e6,_0x381e67){return _0x22a1e6+_0x381e67;},'qpoVV':function _0x15be2e(_0x42fc1c,_0x50aff3){return _0x42fc1c*_0x50aff3;},'RFzBG':_0x18b0('0xb1','euf6'),'LbVCf':function _0x5ecf33(_0x50c5fa,_0x4a540d){return _0x50c5fa>=_0x4a540d;},'rsCUT':_0x18b0('0xb2',']omv'),'AlceA':function _0x1c530a(_0x34cdca,_0x198c7c){return _0x34cdca==_0x198c7c;},'bjjMk':function _0x198352(_0x5847d6,_0x8e36e7){return _0x5847d6===_0x8e36e7;},'iuQsY':_0x18b0('0xb3','QzLH'),'yzzrE':_0x18b0('0xb4','#Cet'),'gowKp':_0x18b0('0xb5','u6#7'),'wJJkp':function _0x584502(_0x17c72a){return _0x17c72a();},'BYIZv':_0x18b0('0xb6','vjDd'),'UWGzg':function _0x3fc458(_0x4eaa17){return _0x4eaa17();},'PSbFf':function _0x19a550(_0x33166c,_0xb73b5d){return _0x33166c(_0xb73b5d);}};time=0x1;while(!![]){toastLog(_0x4add2d[_0x18b0('0xb7','LAW*')]);var _0x3826a1=_0x4add2d[_0x18b0('0xb8','tpFA')](textContains,_0x18b0('0xb9','LAW*'))[_0x18b0('0xba','GFu$')]();var _0x3478cf=text('前往')['findOnce']();if(_0x4add2d[_0x18b0('0xbb','9Gj2')](_0x3826a1,null)){if(_0x4add2d['okXVJ'](_0x4add2d[_0x18b0('0xbc','3MeM')],_0x18b0('0xbd','YTbD'))){sleep(0x3e8);_0x3826a1['click']();break;}else{上传=http['post'](_0x18b0('0xbe','Co!v'),{},{'headers':{'user-agent':ua(),'Token':token,'Cookie':_0x18b0('0xbf','Fm]l')}})[_0x18b0('0xc0','Fm]l')][_0x18b0('0xc1','ZQ!S')]();key=_0x4add2d['NjXya'](_0x4add2d['NjXya'](_0x4add2d[_0x18b0('0xc2','M%[P')](上传[_0x18b0('0xc3','T)]i')][_0x18b0('0xc4','HRyX')],'/')+上传[_0x18b0('0xc5',']AO)')][_0x18b0('0xc6','tT4k')],new Date()['getTime']()),Math[_0x18b0('0xc7','Qi5K')](_0x4add2d[_0x18b0('0xc8','Cz*6')](0x96,Math[_0x18b0('0xc9','OyYo')]())))+'.png';var _0x1beac8=http['postMultipart'](上传[_0x18b0('0xca','QlSY')][_0x18b0('0xcb','yEa4')],{'key':key,'policy':上传[_0x18b0('0xcc','MA5e')]['policy'],'OSSAccessKeyId':上传[_0x18b0('0xcd','2(UN')][_0x18b0('0xce',']AO)')],'signature':上传[_0x18b0('0xcf','HRyX')][_0x18b0('0xd0','9Gj2')],'success_action_status':_0x18b0('0xd1','Qu61'),'file':_0x4add2d[_0x18b0('0xd2',')20B')](open,_0x4add2d['RFzBG'])},{});_0x4add2d[_0x18b0('0xd3','#Cet')](log,_0x1beac8);}}if(_0x3478cf!=null){sleep(0x3e8);_0x3478cf[_0x18b0('0xd4','u6#7')]();break;}sleep(0x9c4);time++;if(_0x4add2d[_0x18b0('0xd5','T)aK')](time,0xa)){结束模块(_0x4add2d[_0x18b0('0xd6','CBV8')]);break;}if(time==0x3||_0x4add2d['AlceA'](time,0x6)){if(_0x4add2d['bjjMk'](_0x4add2d[_0x18b0('0xd7','OyYo')],_0x4add2d['yzzrE'])){try{toastLog('放弃任务');if(gettask[_0x18b0('0xd8','tpFA')]['id']!=null||_0x4add2d[_0x18b0('0xd9','SY*j')](typeof gettask[_0x18b0('0xda','LAW*')]['id'],_0x4add2d['gowKp'])){var _0x4cc55b=http[_0x18b0('0xdb','SY*j')](_0x18b0('0xdc','Ygg$'),{'doit_id':gettask[_0x18b0('0xdd','3MeM')]['id']},{'headers':{'user-agent':_0x4add2d[_0x18b0('0xde','[sCp')](ua),'Token':token,'Cookie':_0x4add2d['BYIZv']}})['body']['json']();log(_0x4cc55b);toastLog(_0x18b0('0xdf','Cz*6'));}}catch(_0x3b21cb){log(_0x3b21cb);}}else{_0x4add2d['UWGzg'](home);_0x4add2d[_0x18b0('0xe0','CBV8')](sleep,0x7d0);app[_0x18b0('0xe1','vjDd')](_0x4add2d[_0x18b0('0xe2','3^Bm')]);}}sleep(0x5dc);}}        function 抖音点赞模块() {
            sleep(2000);
        var x = device.width / 2
        var y = device.height / 2
        if (x > 10 && y > 10) {} else 
        {
            x = 500
            y = 500
        }
        toast("开始随机时间点赞")
        sleep(2000)
        for (var o = 1; o < random(2, 5); o++) {
            sleep(2000)
            toast("看视频" + o * 2 + "秒")
        }
        click(x, y)
        sleep(50)
        click(x, y)
        sleep(3000)
        toast("点赞结束");
        }function 抖音关注模块(){var _0x7c6a1a={'rgwkd':function _0x5a9006(_0x43be24,_0x14f5c8){return _0x43be24===_0x14f5c8;},'ITJlw':function _0x18f4c1(_0x402e09,_0x24a950){return _0x402e09(_0x24a950);},'TMQAe':function _0x5e4b50(_0x35990b,_0x431e74){return _0x35990b(_0x431e74);},'ojXmX':function _0x2dd48d(_0x13cde8,_0xc34bf7){return _0x13cde8===_0xc34bf7;},'cdlXB':_0x18b0('0x105','QlSY'),'hJBNR':function _0x2aa14b(_0x13aad6,_0x4e63f6){return _0x13aad6(_0x4e63f6);},'FrAMl':_0x18b0('0x106','O7$A'),'jNHkC':function _0x215461(_0x495c21,_0x318e50){return _0x495c21>_0x318e50;},'bgbjT':function _0xa81656(_0x3a4648,_0x440d10){return _0x3a4648>=_0x440d10;},'SOCOy':function _0x1b5e89(_0x4445b8,_0xdb76d4){return _0x4445b8+_0xdb76d4;},'yuqeb':'QZo','FfYwM':_0x18b0('0x107','tpFA'),'cVfqe':function _0x775e54(_0x12d286,_0x509232,_0x253ed9){return _0x12d286(_0x509232,_0x253ed9);},'DscJO':function _0x46eb4f(_0x3fe38f,_0x25bbf1){return _0x3fe38f(_0x25bbf1);}};toastLog('关注');sleep(0xbb8);if(ui['set3']['checked']==![]){if(_0x7c6a1a['rgwkd'](_0x18b0('0x108','yEa4'),_0x18b0('0x109','Ygg$'))){back();_0x7c6a1a['ITJlw'](sleep,0x7d0);}else{auto[_0x18b0('0x10a','OyYo')](function(_0x52d11c){return!![];});w=0x1;while(!![]){var _0x58722b=desc('关注')['clickable'](!![])[_0x18b0('0x10b','Qi5K')]();i=0x0;while(i<_0x58722b[_0x18b0('0x10c','#RyK')]){_0x58722b[i][_0x18b0('0x10d','2(UN')]();i++;}var _0x560a1d=_0x7c6a1a[_0x18b0('0x10e','(7zy')](desc,'关注')[_0x18b0('0x10f','QlSY')](!![])['find']();if(_0x560a1d[_0x18b0('0x110','vjDd')]>0x0){if(_0x7c6a1a[_0x18b0('0x111','u6#7')](_0x18b0('0x112','PHyk'),_0x7c6a1a[_0x18b0('0x113','Szk2')])){break;}else{_0x7c6a1a[_0x18b0('0x114','9Gj2')](toastLog,_0x7c6a1a[_0x18b0('0x115',']omv')]);}}w++;if(_0x7c6a1a[_0x18b0('0x116','#RyK')](w,0x3)){break;}_0x7c6a1a['hJBNR'](sleep,0x3e8);}}}else if(ui[_0x18b0('0x117','YTbD')]['checked']==!![]){if(_0x7c6a1a[_0x18b0('0x118','SY*j')](device[_0x18b0('0x119','MA5e')],0x18)){click(_0x7c6a1a[_0x18b0('0x11a','SEoa')](关注按钮中心位置x,random(-0xf,+0xf)),关注按钮中心位置y+random(-0xf,+0xf));}else if(device['sdkInt']<0x18){if(_0x7c6a1a['yuqeb']!==_0x7c6a1a['FfYwM']){Tap(_0x7c6a1a[_0x18b0('0x11b','@IYQ')](关注按钮中心位置x,random(-0xf,+0xf)),关注按钮中心位置y+_0x7c6a1a[_0x18b0('0x11c','Ygg$')](random,-0xf,+0xf));}else{确定[_0x18b0('0x79','Fm]l')]();}}}_0x7c6a1a['DscJO'](sleep,0xbb8);}function 领取任务(){var _0x59cdb3={'jRggS':function _0x17bc71(_0x1267a9,_0x5ef432){return _0x1267a9==_0x5ef432;},'IBtUd':_0x18b0('0x11d','(7zy'),'bLzXr':function _0x2c9737(_0x336b33,_0x2adc1c){return _0x336b33===_0x2adc1c;},'koDli':_0x18b0('0x11e','3^Bm'),'FJzaZ':function _0x528a1e(_0x7cc0bc,_0x30bdaf){return _0x7cc0bc(_0x30bdaf);},'zQftR':function _0x2ba28a(_0x2dbf73,_0x22b48f){return _0x2dbf73(_0x22b48f);},'wCWaB':_0x18b0('0x11f','MA5e'),'gXAPv':function _0x533331(_0x2c8ca9,_0x1eacc7){return _0x2c8ca9!==_0x1eacc7;},'NtSWT':'icd','irzlA':function _0x2a99d1(_0x109ade,_0x2a1dbb){return _0x109ade!=_0x2a1dbb;},'aRBzR':function _0x4ee1d3(_0x36f0e0,_0x17f821){return _0x36f0e0!==_0x17f821;},'sMFAm':_0x18b0('0x120','YTbD'),'KZVVc':'Hss','uuGaw':function _0x56e716(_0x81b947,_0x33ebe8){return _0x81b947(_0x33ebe8);},'DgNVa':'放弃任务','moqCg':function _0x1edee2(_0x9ba593,_0x1711c3){return _0x9ba593!=_0x1711c3;},'ySweU':'undefined','yEDUU':_0x18b0('0x121','SEoa'),'cjKSe':'sec_tc=AQAAAIs2YwuUFwgA30p3Xm4W1ldPJCD1','cbfVM':function _0x4e2a37(_0x286728,_0xcb552f){return _0x286728(_0xcb552f);}};if(_0x59cdb3[_0x18b0('0x122','Qu61')](ui[_0x18b0('0x123','QzLH')]['checked'],!![])){b_discount=!![];}else if(ui[_0x18b0('0x124','HRyX')][_0x18b0('0x46','fuiK')]==![]){if(_0x18b0('0x125','JC#K')!==_0x59cdb3['IBtUd']){b_discount=![];}else{抖音坐标采集();}}if(_0x59cdb3[_0x18b0('0x126','yEa4')](ui['set1']['checked'],!![])){if(_0x59cdb3[_0x18b0('0x127','(7zy')]('yET','GdI')){var _0x68be6c=_0x59cdb3[_0x18b0('0x128','Y&hc')]['split']('|'),_0x2f42bd=0x0;while(!![]){switch(_0x68be6c[_0x2f42bd++]){case'0':关注0=_0x59cdb3[_0x18b0('0x129','%3)$')](Number,douyindata['关注']);continue;case'1':_0x59cdb3[_0x18b0('0x12a','Szk2')](log,_0x18b0('0x12b','3^Bm')+点赞0);continue;case'2':点赞0=_0x59cdb3[_0x18b0('0x12c','HRyX')](Number,douyindata['点赞']);continue;case'3':log(_0x59cdb3[_0x18b0('0x12d','Y&hc')]+关注0);continue;case'4':万赞检测();continue;}break;}}else{access=0x3;}}else if(ui[_0x18b0('0x12e','Qi5K')]['checked']==![]){access=0x1;}try{if(_0x59cdb3[_0x18b0('0x12f','Qu61')](_0x59cdb3[_0x18b0('0x130','Szk2')],'icd')){以后再说[_0x18b0('0x131','ZQ!S')]();}else{var _0x17f8f8=http[_0x18b0('0x132','5KM!')]('http://zcore.zqzan.com/app/douyin/pull/one',{'b_discount':b_discount,'access':access,'exam_status':'0'},{'headers':{'user-agent':ua(),'Token':token}});if(_0x59cdb3[_0x18b0('0x133','9Gj2')](_0x17f8f8,null)){gettask=_0x17f8f8[_0x18b0('0x134','2(UN')][_0x18b0('0xc1','ZQ!S')]();}}}catch(_0x804535){if(_0x59cdb3[_0x18b0('0x135','@IYQ')](_0x59cdb3[_0x18b0('0x136','MA5e')],_0x59cdb3[_0x18b0('0x137','3^Bm')])){_0x59cdb3['uuGaw'](log,_0x804535);}else{_0x59cdb3[_0x18b0('0x138','GFu$')](toastLog,_0x59cdb3[_0x18b0('0x139','GFu$')]);if(_0x59cdb3[_0x18b0('0x13a','T)]i')](gettask[_0x18b0('0x13b','@IYQ')]['id'],null)||_0x59cdb3[_0x18b0('0x13c','PHyk')](typeof gettask[_0x18b0('0x13d','vjDd')]['id'],_0x59cdb3[_0x18b0('0x13e','fuiK')])){var _0x12bf6c=http['post'](_0x59cdb3[_0x18b0('0x13f','Ygg$')],{'doit_id':gettask[_0x18b0('0xc5',']AO)')]['id']},{'headers':{'user-agent':ua(),'Token':token,'Cookie':_0x59cdb3['cjKSe']}})[_0x18b0('0x140',')20B')][_0x18b0('0x141','vjDd')]();log(_0x12bf6c);_0x59cdb3[_0x18b0('0x142','PHyk')](toastLog,'放弃任务成功');}}}}function 上传截图(){var _0x5bcb03={'BNfmb':_0x18b0('0x143',']omv'),'xEULM':function _0x3bd16f(_0x359fd1,_0x18f9ce){return _0x359fd1+_0x18f9ce;},'uxhaY':_0x18b0('0x144','QzLH'),'eELRs':function _0x4c49db(_0x2870c1,_0x1c5b9c){return _0x2870c1(_0x1c5b9c);},'fXgTc':'/storage/emulated/0/1.png','RRcLa':function _0x258654(_0x425765,_0x794b6b){return _0x425765(_0x794b6b);}};try{上传=http[_0x18b0('0x145','#RyK')](_0x5bcb03['BNfmb'],{},{'headers':{'user-agent':ua(),'Token':token,'Cookie':_0x18b0('0x146','(7zy')}})[_0x18b0('0x147','OyYo')][_0x18b0('0x148','3^Bm')]();key=_0x5bcb03[_0x18b0('0x149','T)aK')](_0x5bcb03['xEULM'](上传['data']['dir']+'/',上传['data'][_0x18b0('0x14a','YTbD')])+new Date()[_0x18b0('0x14b','T)]i')]()+Math['floor'](0x96*Math[_0x18b0('0x14c','Szk2')]()),'.png');var _0x21871d=http[_0x18b0('0x14d','bBK^')](上传['data'][_0x18b0('0x14e','Szk2')],{'key':key,'policy':上传[_0x18b0('0x14f','SY*j')][_0x18b0('0x150','8^Y^')],'OSSAccessKeyId':上传[_0x18b0('0xc3','T)]i')]['accessid'],'signature':上传[_0x18b0('0x14f','SY*j')]['signature'],'success_action_status':_0x5bcb03[_0x18b0('0x151','9Gj2')],'file':_0x5bcb03[_0x18b0('0x152','M%[P')](open,_0x5bcb03['fXgTc'])},{});log(_0x21871d);}catch(_0x5656fd){_0x5bcb03['RRcLa'](log,_0x5656fd);}}function 提交任务(){var _0x103f8b={'flcdk':function _0x593b3d(_0x136f88,_0x835f85){return _0x136f88(_0x835f85);},'tJKhH':function _0x3cde81(_0x552c86,_0x523755){return _0x552c86+_0x523755;},'fTNRL':function _0x2b831f(_0x26302f,_0x332f22){return _0x26302f+_0x332f22;},'LsZLe':function _0x95a793(_0x3321c7){return _0x3321c7();},'LwUqu':_0x18b0('0x153','Qu61'),'uitgW':'YLT','mSkks':'提交失败','bUcxg':function _0x1a0d62(_0x17a510,_0xbbbbd8){return _0x17a510+_0xbbbbd8;}};_0x103f8b[_0x18b0('0x154','OyYo')](toastLog,_0x18b0('0x155','u6#7'));try{temp=http[_0x18b0('0x156','LAW*')](_0x18b0('0x157','OyYo'),{'doit_id':gettask['data']['id'],'shot_img':_0x103f8b[_0x18b0('0x158','tpFA')](_0x103f8b['fTNRL'](上传[_0x18b0('0xcf','HRyX')][_0x18b0('0x159','tT4k')],'/'),key)+上传[_0x18b0('0x15a','CBV8')][_0x18b0('0x15b','Qu61')]},{'headers':{'Token':token,'user-agent':_0x103f8b[_0x18b0('0x15c','Qu61')](ua),'Cookie':_0x103f8b[_0x18b0('0x15d','(7zy')]}})[_0x18b0('0x15e','Co!v')]['json']();log(temp);toastLog(_0x18b0('0x15f',')20B'));}catch(_0x30017c){if(_0x18b0('0x160','ZQ!S')!==_0x103f8b['uitgW']){log(_0x103f8b[_0x18b0('0x161','vjDd')](_0x103f8b[_0x18b0('0x162','#RyK')],_0x30017c));}else{点赞=_0x103f8b['bUcxg'](点赞0,0x1);}}}function 放弃任务(){var _0x113bba={'qZHWa':function _0x230fb8(_0x202dcc,_0x1c6792){return _0x202dcc!==_0x1c6792;},'WwLtH':_0x18b0('0x163','fuiK'),'TPGnz':function _0x5c470d(_0x3bd65a,_0x1652cf,_0x186b3f){return _0x3bd65a(_0x1652cf,_0x186b3f);},'nHRoA':function _0x251135(_0x310d11,_0x2af803){return _0x310d11+_0x2af803;},'xLoRL':function _0xa37638(_0x1b4390,_0x3eff3a,_0x5cc061){return _0x1b4390(_0x3eff3a,_0x5cc061);},'fXKTL':function _0x1833be(_0x36e5ac,_0x39db16,_0x33efa1){return _0x36e5ac(_0x39db16,_0x33efa1);},'HWBMY':function _0x50721f(_0x468409,_0x3ba79b){return _0x468409!=_0x3ba79b;},'CpfgT':_0x18b0('0x164','CBV8'),'foCQl':_0x18b0('0x165','Szk2')};try{if(_0x113bba[_0x18b0('0x166','O7$A')](_0x113bba[_0x18b0('0x167','T)aK')],_0x18b0('0x168','Cz*6'))){_0x113bba['TPGnz'](Tap,_0x113bba[_0x18b0('0x169','#RyK')](关注按钮中心位置x,_0x113bba[_0x18b0('0x16a','fuiK')](random,-0xf,+0xf)),关注按钮中心位置y+_0x113bba[_0x18b0('0x16b','SY*j')](random,-0xf,+0xf));}else{toastLog(_0x18b0('0x16c','T)aK'));if(gettask[_0x18b0('0x16d','Cz*6')]['id']!=null||_0x113bba[_0x18b0('0x16e','9Gj2')](typeof gettask[_0x18b0('0x16f','O7$A')]['id'],_0x113bba['CpfgT'])){var _0x5dc24c=http[_0x18b0('0x170',']omv')]('http://zcore.zqzan.com/app/douyin/giveup/task',{'doit_id':gettask[_0x18b0('0x171','u6#7')]['id']},{'headers':{'user-agent':ua(),'Token':token,'Cookie':'sec_tc=AQAAAIs2YwuUFwgA30p3Xm4W1ldPJCD1'}})['body'][_0x18b0('0x172','tT4k')]();log(_0x5dc24c);toastLog(_0x113bba[_0x18b0('0x173',')20B')]);}}}catch(_0x2f04dc){log(_0x2f04dc);}}function 视频有效性检测(){var _0x11416a={'ytcRF':_0x18b0('0x174','@IYQ'),'dwlFa':function _0x444541(_0x3cb29c,_0x5eb80f){return _0x3cb29c(_0x5eb80f);},'pIsSw':_0x18b0('0x175','yEa4'),'jPqbk':function _0x505e0b(_0x4a8e21){return _0x4a8e21();},'sGabK':function _0x941341(_0x3657ac,_0x1192f8){return _0x3657ac/_0x1192f8;},'xpyiz':function _0x38c6e3(_0x473ef5,_0x50ea3b){return _0x473ef5==_0x50ea3b;},'nzfJb':_0x18b0('0x176','[sCp')};chetime=0x1;while(!![]){if(_0x11416a[_0x18b0('0x177','SY*j')]!==_0x11416a[_0x18b0('0x178','PHyk')]){b_discount=!![];}else{you=0x1;_0x11416a[_0x18b0('0x179','JC#K')](log,_0x11416a[_0x18b0('0x17a','3YF9')]);var _0x3678d4=_0x11416a[_0x18b0('0x17b','QzLH')](captureScreen);log('finish');var _0x493ec5=colors[_0x18b0('0x17c','M%[P')](images[_0x18b0('0x17d','fuiK')](_0x3678d4,_0x11416a['sGabK'](device[_0x18b0('0x17e','2(UN')],0x2),device[_0x18b0('0x17f','3YF9')]/0x2));var _0x12da3d=colors['toString'](images[_0x18b0('0x180','OyYo')](_0x3678d4,device[_0x18b0('0x181','@IYQ')]/0x2,_0x11416a['sGabK'](device[_0x18b0('0x182','8^Y^')],0x4)));var _0x1af733=colors[_0x18b0('0x183','euf6')](images[_0x18b0('0x184','Co!v')](_0x3678d4,device[_0x18b0('0x185','Ygg$')]/0x2,device['height']*0x3/0x4));if(_0x11416a['xpyiz'](_0x493ec5,'#ff000000')&&_0x12da3d==_0x18b0('0x186','euf6')&&_0x1af733==_0x18b0('0x187','Fm]l')){chetime++;if(chetime>0x2){you=0x0;toastLog(_0x11416a['nzfJb']);break;}}else{break;}_0x11416a[_0x18b0('0x188','GFu$')](sleep,0x9c4);}}};encode_version = 'sojson.v5';
        })
    })
    


}



























    //无障碍
    ui.autoService.on("check", function (checked) {
        // 用户勾选无障碍服务的选项时，跳转到页面让用户去开启
        toast("请开启全享通无障碍");
        if (checked && auto.service == null) {
            app.startActivity({
                action: "android.settings.ACCESSIBILITY_SETTINGS"
            });
        }
        if (!checked && auto.service != null) {
            auto.service.disableSelf();
        }
        installService = checked;
    });
    
   


//创建选项菜单(右上角)
ui.emitter.on("create_options_menu", menu=>{
    menu.add("声明");
    menu.add("帮助");
    menu.add("关于");
    menu.add("本机识别码");
    menu.add("如何开启悬浮窗");
});
//监听选项菜单点击
ui.emitter.on("options_item_selected", (e, item)=>{
    switch(item.getTitle()){
        case "声明":
        alert("声明", "本软件仅供学习交流，如作他用所受的法律责任一概与作者无关");
        break;
        case "帮助":
        alert("提示", "本软件兼容大部分手机机型，请先自行测试，模拟器请在雷电安卓模拟器4.0版(安卓7.0以上)以上运行，音量上键停止所有脚本");
            break;
        case "关于":
            alert("关于", "D全享通 v4.3.1");
            break;
        case "本机识别码":
            dialogs.build({
            title: "本机识别码",
            content: "唯一标识【"+设备号+"】\n点击复制发送给客服获取激活码",
            negative: "取消",
            neutral: "复制",
            }).on("neutral", ()=>{
                //监听中性键
                setClip(设备号);
                toast("复制成功"+设备号);
            }).show();
            break;
        case "如何开启悬浮窗":
        alert("悬浮窗权限打开", "Oppo手机:[手机管家]→[隐私权限]→[悬浮窗权限管理]\nVIVO手机:[设置]→[更多设置]→[权限管理]\n华为手机:[设置]→[应用]→[权限管理]→[全享通]→[悬浮窗]\n魅族手机:[手机管家]→[ 应用权限管理]→[全享通]→开启桌面悬浮窗\n小米手机:[安全中心]→[应用权限管理]→[全享通]→[允许显示悬浮窗]\n三星手机:[设置]→[应用程序]→[应用程序管理器]→[右上角更多]→[可出现在顶部的应用程序]\n联想手机:[安全中心]→[权限管理]→[显示悬浮窗]→允许全享通显示悬浮窗");
        break;
    }
    e.consumed = true;
});
activity.setSupportActionBar(ui.toolbar);

//设置滑动页面的标题
ui.viewpager.setTitles(["点赞关注", "阅读翻页", "直播抢包", "常用工具"]);
//让滑动页面和标签栏联动
ui.tabs.setupWithViewPager(ui.viewpager);

//让工具栏左上角可以打开侧拉菜单
ui.toolbar.setupWithDrawer(ui.drawer);

ui.menu.setDataSource([
  {
      title: "软件更新",
      icon: "@drawable/ic_favorite_black_48dp"
  },
  {
    title: "更新说明",
    icon: "@drawable/ic_android_black_48dp"
},
  {
      title: "退出",
      icon: "@drawable/ic_exit_to_app_black_48dp"
  }
]);

ui.menu.on("item_click", item => {
    switch(item.title){
        case "软件更新":
        app.openUrl("https://www.lanzous.com/b073j1n4d");
        break;
        case "更新说明":
        app.openUrl("http://note.youdao.com/noteshare?id=4a13198fffbb9113789063d20b27629b");
        break;
        case "退出":
            ui.finish();
            break;
    }
})







//=========================================================================================================================
//=================================================代理更新登录密码==========================================================
//=========================================================================================================================

function 代理(ds) {
    if(ds==0){
        url = "https://share.weiyun.com/5lhYZ5E";
    }
    if(ds==1){
        url = "https://share.weiyun.com/5qRzIwC";
    }
    if(ds==2){
        url = "https://share.weiyun.com/5XvSxOv";
    }
    r = http.postJson(url, {});
    var html = r.body.string();
    var moid=html.split("window.syncData = ")[1].split('shareInfo":')[1].split("};")[0]
    var obj = JSON.parse(moid);
    var result=obj.note_list[0].html_content;
    return result;
}






function 更新密码(){
    //=========================================================================================================================
    //=================================================更新摧毁密码=============================================================
        var url = "https://share.weiyun.com/5hTBgjc";
        r = http.postJson(url, {});
        var html = r.body.string();
        var moid=html.split("window.syncData = ")[1].split('shareInfo":')[1].split("};")[0]
        var obj = JSON.parse(moid);
        var cuihui=obj.note_list[0].html_content;
        hhhhhh="<p>摧毁代理旧版：7</p>"

    mm = ui.mm.getText();
    mmp="<p>"+mm+"</p>"; 
    
    if(cuihui != hhhhhh){
        dialogs.build({
            title: "通知",
            content: "此版本已失效，请下载最新版本",
            negative: "取消",
            neutral: "到浏览器下载",
        }).on("neutral", ()=>{
            app.openUrl("https://www.lanzous.com/b073j1n4d");
        }).on("check", (checked)=>{
            log(checked);
        }).show();
    }else{
        if(mm == 密码 || mm == 密码原||代理(0)==mmp || 代理(1)==mmp || 代理(2)==mmp ){
            钥匙=1;
            alert("提示", "连接服务器成功！恭喜你，获得全部功能");
        }else
        {
            alert("提示", "登录密码有误，连接服务器失败！");
        }
    }
    }
    
    ui.qr.click(function(){
        var content=ui["mm"].getText()+"";
        storage.put("mm",content);
        if(钥匙==1){
            toast("你已激活");
        }else{
            threads.start(更新密码);
            toast("等待密码识别");
        }
    })
    
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
