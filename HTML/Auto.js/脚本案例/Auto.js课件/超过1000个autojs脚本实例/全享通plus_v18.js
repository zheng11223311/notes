
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";


/**
autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
1群:168196007
2群:830810438
3群:571854376
4群:63732194
5群:592916456
//autojs源码提取,加密打包,代码解密,还原.微信:shenlong6898
*/


代理=0
代理名称="全享通plus"

//代理名称="全享通plus代理体验版"
//代理名称="黑码网赚全自动"

if(代理名称!="全享通plus"){
    代理=1
}
激活=0
组合=0
progressDialog=null;
var jihuomaStorage = storages.create("jihuoma");



//填写你后台的公钥
public_key="MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCR7kYIfmYAFbuWzQEVkvj5bGLMHCRN5s5G+yQ7IDmqNFScdP869snui5ezffYvf3pCOwhOg87CvDCjxY5Pj4AyWDoQg/6ObMjlMa3BlSwjbHGKLFzVCYr6ZtseUXS8ghtJIF7Lrmo1ieOOCuETYQIn1ARy/YlegZ5wVEmF31fy6wIDAQAB";
//填写你后台的私钥
private_key="MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAI8iYB5hOjkxYqO/xI7Vwg+UYWYkbN3M2Jv6VJ5eC6gX2udCy/cqgrXjofPCoV5jnc98MSv44CfhGKt2etb4KgRdrFJd7apprFz1ExXcBKdiBMLHyXo+/YUwF45mA6NBITLhZpRgwyDtauuxe6V2AinzoiRzyl94jOb/6vVGFGibAgMBAAECgYBZcuYWljRIobA/HQy9JqDME7J6nrDaO7XyZBKVlbg7KA1JENlecVaWTNdc+njV//MTQ02HaVTMF0PPg49o4FWAzAq0ZtYPwBu08UhRDMiQwGZ0yOXzwGaEWO0qG2kgmr5j2Sg5iqxn/uzPZROyOtJunTNuvNllBgTArkjQu+t04QJBANd6kLbFBB/8yMuWqoFq55ZH6Gqe0E74QCkgmNo9q33UQEUBkyJVdUlxSNmFY0UTMCaBh3AFiaGnJXRV0Pt+hc0CQQCqDQzTX2nrGuH2pe8PVUhtm8Rw2foUqPS5DDE5JSCEhpZOAu2sgIFwykRY+vA3p69SQKq23E0Hnbts+GHxWcAHAkBALSnytYT//erT8ADCYNOux6XqM3i5PGjnluTPgzSTWmb15n0q6abwA8R9vKOPTCK4JTXwYEXYlo6qMnD2pn01AkBdA2xbhZoC3h5w8gxT37sRMR1++MvAVzYcrZ2S+0rREmjOXO2x6Exk7E38Oa4BUzgjjnmSMef0XYNyNF4mTIgrAkEA1aLacBbO+0eKyfNigEqFb1IP16AK3UcaKnDWcmFyCPxw8nVvM46Omt5Twj4VZQlXwB4Z8yDSQmPNEzz2hWbNRQ=="
//填写后台ID
jihuoma_appId="390";
//填写后台包名
jihuoma_pkg="com.qxt666";
//版本号
jihuoma_version="19";
//运行脚本路径，假设运行当前目录下的main2.js，则可以这样写./main2.js
// run_path="./main2.js";
//如果你的脚本涉及到网络状态变更，请设置为false
jihuoma_keep_check=false;
//如果你的脚本涉及到设备基础信息变更如imei，请设置为false
jihuoma_bindPhone=false;

var cacheCode=jihuomaStorage.get(jihuoma_appId+jihuoma_pkg+"code","");

//版本更新检查
threads.start(function () {
    var r = http.get("https://www.lanzous.com/iaf8brg");
    html = r.body.string()
    网络版本号 = html.match(new RegExp("--" + "(\\S*)" + "--"))[1]
    开启 = html.search("全享通开启")
    关闭 = html.search("全享通关闭")
    下载链接 = html.match(new RegExp("下载地址：" + "(\\S*)" + "!!"))[1]
    var 更新说明网址 = http.get("https://www.lanzous.com/iaf8bsh");
    htmll = 更新说明网址.body.string()
    if(htmll.match(new RegExp("1、" + "(\\S*)" + "<br />"))[1]!=""){
        更新说明 = "1、"+htmll.match(new RegExp("1、" + "(\\S*)" + "<br />"))[1]+"\n"
    }
    if(htmll.match(new RegExp("2、" + "(\\S*)" + "<br />"))[1]!=""){
        更新说明 += "2、"+htmll.match(new RegExp("2、" + "(\\S*)" + "<br />"))[1]+"\n"
    }
    if(htmll.match(new RegExp("3、" + "(\\S*)" + "<br />"))[1]!=""){
        更新说明 += "3、"+htmll.match(new RegExp("3、" + "(\\S*)" + "<br />"))[1]+"\n"
    }
    if(htmll.match(new RegExp("4、" + "(\\S*)" + "<br />"))[1]!=""){
        更新说明 += "4、"+htmll.match(new RegExp("4、" + "(\\S*)" + "<br />"))[1]+"\n"
    }
    if(htmll.match(new RegExp("5、" + "(\\S*)" + "！！"))[1]!=""){
        更新说明 += "5、"+htmll.match(new RegExp("5、" + "(\\S*)" + "！！"))[1]+"\n"
    }
    if (parseInt(网络版本号)>parseInt(jihuoma_version) && 开启 > 0) {
        var releaseNotes = "更新内容：\n" + 更新说明+"\n注意：版本更新后，如不能自动点击，请重启手机"
        dialogs.build({
            title: "发现新版本",
            content: releaseNotes,
            positive: "到浏览器下载",
        })
            .on("positive", () => {
                ui.finish();
                app.openUrl(下载链接);
                exit()
            }).show();
    for(i=10;i>0;i--){
        toastLog("强制升级中->此版本"+i+"秒后自动关闭！")
        sleep(1000)
    }
    exit()
    }
})

//判断无障碍服务有没有开启
let installService = false;

var color = "#009688";

ui.layout(
    <drawer id="drawer">
        <vertical>
            <appbar>
                <toolbar id="toolbar" textStyle="bold" title={代理名称}/>
                <tabs id="tabs"/>
            </appbar>
            <vertical bg="#FFEFD5">
            <horizontal  gravity="center_vertical">
                    <text marginLeft="10dp" textSize="15dp" textStyle="bold">激活码：</text>
                    <input id="code" lines="1" hint="请输入激活码"  textColor="black"  layout_weight="1">{cacheCode}</input>
                    <button id="start"  layout_weight="0" style="Widget.AppCompat.Button.Colored" marginRight="10dp" w="60dp" textStyle="bold" text="激活" />
                    </horizontal >
            <horizontal h="5dp" ></horizontal>
                <horizontal w="auto" h="auto"   >
                <Switch w="auto" h="auto" id="autoService" checked="{{auto.service != null}}"></Switch>
                <text textStyle="bold">无障碍服务</text>
                <TextView id="tv_text" marginLeft="10dp" marginRight="10dp" singleLine="true"  ellipsize="marquee" focusable="true" textColor="#D65253" text="温馨提示：无障碍服务和本软件悬浮窗、后台运行、读取手机内存权限都要开！按声音上键可以停止脚本！欢迎使用~"></TextView>
                </horizontal>
                <horizontal h="5dp" ></horizontal>
                </vertical>
            <viewpager id="viewpager">
                <frame>
                <ScrollView>
                <vertical>
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical> 
                        <horizontal gravity="center_vertical">
                            <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1" >功能1：攒攒小龙虾高级协议</text>
                            <button  marginLeft="15dp" id="xysysm" textStyle="bold" w="100dp" layout_weight="0" marginRight="15sp">使用说明</button>
                        </horizontal>
                        <button marginLeft="15dp" marginRight="15dp" w="*" id="zzlx1" style="Widget.AppCompat.Button.Colored" textStyle="bold" >进入  攒攒小龙虾高级协议</button>
                        <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //攒攒龙虾协议
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical> 
                        <horizontal gravity="center_vertical">
                            <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1" >功能2：攒攒</text>
                            <button  marginLeft="15dp" id="zzzc" textStyle="bold" w="100dp" layout_weight="0" marginRight="15sp">注册下载</button>
                        </horizontal>
                        <linear>
                            <text w="80dp" gravity="center" marginLeft="15dp" color="#111111" size="16">账号：</text>
                            <input id="zzsetName" w="*" textSize="15dp" marginRight="15dp" h="40dp" hint="请输入攒攒账号"/>
                        </linear>
                        <linear>
                            <text w="80dp" gravity="center" marginLeft="15dp" color="#111111" size="16" >密码：</text>
                            <input id="zzsetPassword" w="*" h="40dp"  marginRight="15dp"  textSize="15dp"  password="true" hint="请输入攒攒密码"/>
                        </linear>
                            <button marginLeft="15dp" marginRight="15dp" w="*" id="zzptxy" style="Widget.AppCompat.Button.Colored"  textStyle="bold" >运行  攒攒普通协议</button>
                        <button  marginLeft="15dp" marginRight="15dp" id="zzyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行  攒攒脚本</button>
                        <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //攒攒
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp"><vertical>
                <horizontal gravity="center_vertical">
                    <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1" >功能3：小龙虾</text>
                    <button marginLeft="15dp" id="xlxzc" textStyle="bold"  w="100dp" layout_weight="0" marginRight="15sp" >注册下载</button>
                </horizontal>
                <linear>
                    <text w="80dp" gravity="center" marginLeft="15dp" color="#111111" size="16">账号：</text>
                    <input id="setName" w="*" textSize="15dp" marginRight="15dp" h="40dp" hint="请输入小龙虾账号"/>
                </linear>
                <linear>
                    <text w="80dp" gravity="center" marginLeft="15dp" color="#111111" size="16" >密码：</text>
                    <input id="setPassword" w="*" h="40dp"  marginRight="15dp"  textSize="15dp"  password="true" hint="请输入小龙虾密码"/>
                </linear>
                    <button marginLeft="15dp" marginRight="15dp" w="*" id="xlxptxy" style="Widget.AppCompat.Button.Colored"  textStyle="bold" >运行  小龙虾普通协议</button>
                <button  marginLeft="15dp" marginRight="15dp" id="xlxyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行  小龙虾脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //小龙虾
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp"><vertical>
                <horizontal gravity="center_vertical">
                    <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1" >功能4：截图宝</text>
                    <button  marginLeft="15dp" id="jtbzz" textStyle="bold" w="100dp" layout_weight="0" marginRight="15sp">注册下载</button>
                </horizontal>
                <horizontal gravity="center_vertical">
                <text w="80dp" gravity="center" marginLeft="15dp" color="#111111" size="16" >类型：</text>
                <CheckBox id="jtbgz" text="关注任务(适配8.3版抖音)" marginRight="15dp"checked="true"/>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="jtbyd"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行  截图宝脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //截图宝
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp"><vertical>
                <horizontal gravity="center_vertical">
                    <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1" >功能5：蛙蛙赚</text>
                    <button  marginLeft="15dp" id="wwzzc" textStyle="bold" w="100dp" layout_weight="0" marginRight="15sp">注册下载</button>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="wwzyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行  蛙蛙赚脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //蛙蛙赚   
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp"><vertical>
                <horizontal gravity="center_vertical">
                    <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1" >功能6：集卡帮</text>
                    <button  marginLeft="15dp" id="jkbzc" textStyle="bold" w="100dp" layout_weight="0" marginRight="15sp">注册下载</button>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="jkbyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行  集卡帮脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //集卡帮   
                </vertical>
                </ScrollView>
                </frame>
                <frame>
                <ScrollView>
                <vertical >
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical> 
                <horizontal gravity="center_vertical">
                <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1" >功能1：攒攒微信阅读</text>
                <button  marginLeft="2dp" id="zzydzc" textStyle="bold" w="100dp" layout_weight="0" marginRight="15sp">注册下载</button>
                </horizontal>
                <horizontal w="auto" h="auto" marginLeft="15dp">
                <text  marginRight="5dp">运行时长：</text>
                <input size="20" text="0" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="zzyd"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行 攒攒微信阅读脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //攒攒阅读
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp"><vertical>
                <horizontal gravity="center_vertical">
                    <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1" >功能2：截图宝阅读</text>
                    <button  marginLeft="2dp" id="jtbzz" textStyle="bold" w="100dp" layout_weight="0" marginRight="15sp">注册下载</button>
                </horizontal>
                <horizontal w="auto" h="auto" marginLeft="15dp">
                <text  marginRight="5dp">运行时长：</text>
                <input size="20" text="0" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="jtbyd2"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行  截图宝阅读脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //截图宝阅读
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical> 
                <horizontal gravity="center_vertical">
                <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1">功能3：牛角免费小说</text>
                <text textSize="10sp" textStyle="bold" textColor="blue">【免费】</text>
                <button  marginLeft="2dp" id="njzc"  textStyle="bold" w="100dp" layout_weight="0" marginRight="15sp">注册下载</button>
                </horizontal>
                <horizontal w="auto" h="auto" marginLeft="15dp">
                <text  marginRight="5dp">运行时长：</text>
                <input size="20" text="0" id="njfz" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="njyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行 牛角免费小说脚本（未root）</button>
                <button  marginLeft="15dp" marginRight="15dp" id="njyxroot"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行 牛角免费小说脚本（已root）</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //牛角免费小说
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical> 
                <horizontal gravity="center_vertical">
                <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1">功能4：魔视</text>
                <text textSize="10sp" textStyle="bold" textColor="blue">【免费】</text>
                <button  marginLeft="2dp" id="mszc" textStyle="bold" w="100dp" layout_weight="0" marginRight="15sp">注册下载</button>
                </horizontal>
                <horizontal w="auto" h="auto" marginLeft="15dp">
                <text  marginRight="5dp">运行时长：</text>
                <input size="20" text="0" id="msfz" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="msyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行 魔视脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //魔视
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical> 
                <horizontal gravity="center_vertical">
                <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1">功能5：刷宝短视频</text>
                <text textSize="10sp" textStyle="bold" textColor="blue">【免费】</text>
                <button  marginLeft="2dp" id="sbzc" textStyle="bold" w="100dp" layout_weight="0" marginRight="15sp">注册下载</button>
                </horizontal>
                <horizontal w="auto" h="auto" marginLeft="15dp">
                <text  marginRight="5dp">运行时长：</text>
                <input size="20" text="0" id="sbfz" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="sbyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行 刷宝短视频脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //刷宝短视频
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical> 
                <horizontal gravity="center_vertical">
                <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1">功能6：秘乐</text>
                <text textSize="10sp" textStyle="bold" textColor="blue">【免费】</text>
                <button   id="mlzc" layout_weight="0" marginLeft="2dp"  w="100dp" textStyle="bold" marginRight="15sp">注册下载</button>
                </horizontal>
                <horizontal w="auto" h="auto" marginLeft="15dp">
                <text  marginRight="5dp">运行时长：</text>
                <input size="20" text="5" id="mlfz" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="mlyx" style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行 秘乐短视频脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //秘乐短视频
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical> 
                <horizontal gravity="center_vertical">
                <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1">功能7：彩蛋视频</text>
                <text textSize="10sp" textStyle="bold" textColor="blue">【免费】</text>
                <button  marginLeft="2dp" id="cdzc" textStyle="bold" w="100dp" layout_weight="0" marginRight="15sp">注册下载</button>
                </horizontal>
                <horizontal w="auto" h="auto" marginLeft="15dp">
                <text  marginRight="5dp">运行时长：</text>
                <input size="20" text="0" id="cdfz" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="cdyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行 彩蛋视频脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //彩蛋视频
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical> 
                <horizontal gravity="center_vertical">
                <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1">功能8：抖呱呱极速版</text>
                <text textSize="10sp" textStyle="bold" textColor="blue">【免费】</text>
                <button  marginLeft="2dp" id="dggzc" textStyle="bold" w="100dp" layout_weight="0" marginRight="15sp">注册下载</button>
                </horizontal>
                <horizontal w="auto" h="auto" marginLeft="15dp">
                <text  marginRight="5dp">运行时长：</text>
                <input size="20" text="0" id="dggfz" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="dggyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行 抖呱呱极速版脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //抖呱呱极速版
                </vertical>
                </ScrollView>
                </frame>
                <frame>
                <ScrollView>
                <vertical >
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical> 
                <horizontal gravity="center_vertical">
                <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1">功能1：自阅组合</text>
                <text textSize="10sp" textStyle="bold" textColor="blue">【分享免费】</text>
                </horizontal>
                <horizontal gravity="center_vertical">
                    <text textSize="15sp"  marginLeft="15dp" layout_weight="1">牛角免费小说</text>
                    <spinner id="sp1" textSize="15sp" entries="未root|已root"/>
                    <text  marginRight="5dp">运行时长：</text>
                    <input size="20" text="30" id="njfz1" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟</text>
                </horizontal>
                <horizontal gravity="center_vertical">
                    <text textSize="15sp"  marginLeft="15dp" layout_weight="1">魔视</text>
                    <text  marginRight="5dp">运行时长：</text>
                    <input size="20" text="30" id="msfz1" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟</text>
                </horizontal>
                <horizontal gravity="center_vertical">
                    <text textSize="15sp"  marginLeft="15dp" layout_weight="1">刷宝短视频</text>
                    <text  marginRight="5dp">运行时长：</text>
                    <input size="20" text="30" id="sbfz1" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟</text>
                </horizontal>
                <horizontal gravity="center_vertical">
                    <text textSize="15sp"  marginLeft="15dp" layout_weight="1">秘乐</text>
                    <text  marginRight="5dp">运行时长：</text>
                    <input size="20" text="30" id="mlfz1" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟</text>
                </horizontal>
                <horizontal gravity="center_vertical">
                    <text textSize="15sp"  marginLeft="15dp" layout_weight="1">彩蛋视频</text>
                    <text  marginRight="5dp">运行时长：</text>
                    <input size="20" text="30" id="cdfz1" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟</text>
                </horizontal>
                <horizontal gravity="center_vertical">
                    <text textSize="15sp" marginLeft="15dp" layout_weight="1">抖呱呱极速版</text>
                    <text  marginRight="5dp">运行时长：</text>
                    <input size="20" text="30" id="dggfz1" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟</text>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="zhyx"  style="Widget.AppCompat.Button.Colored" textStyle="bold" >组合运行</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //自阅组合
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical> 
                <horizontal gravity="center_vertical">
                <text textSize="18sp" textStyle="bold" marginLeft="15dp" layout_weight="1">功能2：抖音养号</text>
                </horizontal>
                <horizontal w="auto" h="auto" marginLeft="15dp">
                <text  marginRight="5dp">运行时长：</text>
                <input size="20" text="0" id="yhfz" inputType="number" textSize="15sp"/><text  marginRight="5dp">分钟（默认0为无限）</text>
                </horizontal>
                <button  marginLeft="15dp" marginRight="15dp" id="dyyh" style="Widget.AppCompat.Button.Colored" textStyle="bold" >运行 抖音养号脚本</button>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                //养号
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical>
                <horizontal>
                <button  marginLeft="15dp" marginRight="15dp" textSize="20dp" id="cjwt" style="Widget.AppCompat.Button.Borderless.Colored"  w="*" textStyle="bold" >常见问题</button>
                </horizontal>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
                <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1"  cardCornerRadius="10dp"><vertical>
                <horizontal>
                <button  marginLeft="15dp" marginRight="15dp" textSize="20dp" id="dyls" style="Widget.AppCompat.Button.Borderless.Colored"  w="*" textStyle="bold" >相关软件</button>
                </horizontal>
                <horizontal h="5dp" bg="#ffffff"></horizontal>
                </vertical> </card>
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




storage = storages.create("qxtdata");
content1=storage.get("setName");
if(content1){
    ui["setName"].setText(content1);
}
content2=storage.get("setPassword");
if(content2){
    ui["setPassword"].setText(content2);
}
content1=storage.get("zzsetName");
if(content1){
    ui["zzsetName"].setText(content1);
}
content2=storage.get("zzsetPassword");
if(content2){
    ui["zzsetPassword"].setText(content2);
}

ui.tv_text.setSelected(true);





main();
    
function main(){
    //===========================这里填入你的基础信息===================
    //后台id 以及后台对应的包名
    jihuomaInit(jihuoma_appId,jihuoma_pkg,public_key,private_key,jihuoma_bindPhone,jihuoma_keep_check);
    //===========================这里填入你的版本号===================
    //激活码作为工作室授权标志，如果无激活码，则无法进行更新
    if(cacheCode){
        versionUpdata(jihuoma_version,cacheCode);
    }
    ui.start.click(()=>{
        jihuomaCheck(ui.code.text());
    });
}

/**
 * 保存数据到服务端数据库
 */
function saveDataToServer(){
    //数据库的使用也必须先初始化 jihuomaInit
    //===========================这里可以使用数据库的异步存储================
    JihuomaApi.put("你的key","你要存储的value",new com.biqingju.jihuoma.CallBack({
        onFailure:function(s){
            //这里保存数据失败
            log(s);
        },
        onSuccess:function(s){
            //这里的回调是保存成功;
            log("保存数据成功");
        }
    }));
    JihuomaApi.get("你的key",new com.biqingju.jihuoma.CallBack({
        onFailure:function(s){
            //这里获取数据失败
            log(s);
        },
        onSuccess:function(s){
            //这里的回调是保存成功;
            log("获取的数据-->"+s);
        }
    }));
    //======================这里使用的是同步存储===============
    var b=JihuomaApi.put("你的key","你要存储的value");
    log(b);
    var value=JihuomaApi.get("你的key");
    log("你获取的value-->"+value);
}


/**
 * 激活码初始化，请记得在开始的时候调用他
 * appId传入后台创建的ID
 * pkg传入后台创建时的包名
 */
function jihuomaInit(appId,pkg,public_key,private_key,jihuoma_bindPhone,jihuoma_keep_check){
    //加载 jihuoma-1.0.dex包
    runtime.loadDex("./jihuoma-1.8.dex");
    importClass(com.biqingju.jihuoma.JihuomaApi);
    //这里进行你的信息初始化
    JihuomaApi.init(context,appId,pkg,public_key,private_key,jihuoma_bindPhone,jihuoma_keep_check);
}

/**
 * 这里是后台版本升级请求
 * versionCode 填当前版本 用于后台校验是否要升级
 */
function versionUpdata(versionCode,code){
    threads.start(function(){
        if(代理==0){
            while (true) {
                var aa = http.get("https://shimo.im/docs/dd8yQwrPyRhPhVVr/")
                var a = aa.body.string()
                var 公告 = a.split("公告")[1]
                log("*************************")
                log(公告)
                log("*************************")
                break
            }
        }else{
            while (true) {
                var aa = http.get("https://shimo.im/docs/dd8yQwrPyRhPhVVr/")
                var a = aa.body.string()
                var 公告 = a.split("代理公告")[1]
                log("*************************")
                log(公告)
                log("*************************")
                break
            }
        }

    });
    JihuomaApi.updata(versionCode,code, new com.biqingju.jihuoma.CallBack({
        onFailure:function(s){
            //失败回调
            toastLog(s);
        },
        onSuccess:function(s){
            //TODO 这里是版本升级回调，至于如何做，你可以自己修改

            if(s){
                updataData=JSON.parse(s);
                //根据版本判断用户是否勾选了不再提示
                var isShow=jihuomaStorage.get(updataData.versionCode+"","false");
                if(isShow!="true"){
                    ui.run(()=>{
                        b={};
                        b.title="发现新版本";
                        b.content=updataData["updateExplain"];
                        b.positive="下载";
                        b.checkBoxPrompt="不再提示";
                        b.cancelable=false;
                        if(updataData["mandatoryUpdate"]!=1){
                            b.negative="取消";
                        }
                        dialogs.build(b)
                        .on("positive", ()=>{
                            app.openUrl(updataData["url"]);
                            if(updataData["mandatoryUpdate"]==1){
                                //退出脚本，可能还要关闭其他脚本
                                exit();
                            }
                        }).on("check", (checked)=>{
                            jihuomaStorage.put(updataData.versionCode+"",checked);
                        }).show();
                    })
                }
            }
        }
    }));
}

/**
 * 这里是校验
 * code 填入用户输入
 * jihuom_keep_check 中间是否持续校验激活码
 */
function jihuomaCheck(code){
    showProgress();
    JihuomaApi.check(code, new com.biqingju.jihuoma.CallBack({
        onFailure:function(s){
            //失败回调
            dismissProgress();
            toastLog(s);
        },
        onSuccess:function(s){
            dismissProgress();
            // var r=JSON.parse(s);
            // var ext=r["ext"];
            // toastLog("ext-->"+ext);
            // toastLog("脚本剩余时间："+r["countDownTime"]+" 脚本到期时间："+r["endTime"]+"自定义扩展："+ext);
            //存储用户的激活码值，使他不用再次输入
            jihuomaStorage.put(jihuoma_appId+jihuoma_pkg+"code",ui.code.text()+"");
            //这里是成功回调，运行你真正的代码
            //两种方式
            //第一种直接运行，如果脚本里有sleep之类，请使用threads来执行
            // threads.start(function(){
            //     //第一种方式你的脚本
            //     sleep(3000);
            //     toast("开始脚本");
            // });
            //第二种使用脚本引擎运行。写你脚本的路径即可
            激活=1
            alert("提示", "恭喜你激活成功");
            // engines.execScriptFile(run_path);
            // ui.finish();
        }
    }));
}

/**
 * 开始转圈
 */
function showProgress(){
    if(!progressDialog){
        progressDialog = dialogs.build({
            title: "正在请求，请稍后...",
            progress: {
                max: -1
            },
            cancelable: false
        })
    }
    progressDialog.show();
}

/**
 * 关闭转圈
 */
function dismissProgress(){
    if(progressDialog){
        progressDialog.dismiss();
    }
}



    //注册下载地址
    ui.jkbzc.click(function(){
        app.openUrl("https://www.lanzous.com/iafhnte")
    });
    ui.xysysm.click(function(){
        app.openUrl("http://note.youdao.com/noteshare?id=1da1c5542d8adfd4ea21c4efff67a44f")
    });
    ui.cjwt.click(function(){
        app.openUrl("http://note.youdao.com/noteshare?id=0c2ea25c8d1b935c63e68900408113aa")
    });
    ui.mlzc.click(function(){
        app.openUrl("https://mile-download.mlmfcn.com/?inviteNum=13408384")
    });
    ui.zzydzc.click(function(){
        app.openUrl("https://note.youdao.com/yws/public/resource/ed060bc74ada31e6a545f7daa0fff14e/xmlnote/WEBRESOURCE427fc4e12911073eb169b7306b92e45b/970")
    });
    ui.xlxzc.click(function(){
        app.openUrl("http://tg.bigyouxuan.com/tg/Reg/i/c/475153")
    });
    ui.wwzzc.click(function(){
        app.openUrl("http://share.libra086.com?invite=vJhpMR8qL5jw&channel=master")
    });
    ui.njzc.click(function(){
        app.openUrl("https://a.app.qq.com/o/simple.jsp?pkgname=com.yincheng.njread&from=singlemessage")
    });
    ui.zzzc.click(function(){
        app.openUrl("http://reg.zqzan.com/?sid=mch4lyvdmtxetk17")
    });
    ui.mszc.click(function(){
        app.openUrl("http://manage.z2olh.cn/moshi-activity/photoWall/kollcbxpnkbIlXy?ucF=qdqn&lmmw=lmtftEq")
    });
    // ui.ykzc.click(function(){
    //     app.openUrl("http://www.inke.cn")
    // });
    // ui.hszc.click(function(){
    //     app.openUrl("https://www.huoshanzhibo.com/")
    // });
    ui.dyls.click(function(){
        app.openUrl("https://www.lanzous.com/b073k9ulg")
    });






//=======================================分享激活====================================================

function 分享(){
    FF=0
    toast("正在打开QQ");
    launchApp("QQ");
    sleep(1000)
    while(className("android.widget.RelativeLayout").clickable(true).selected(true).findOnce()==null){
        toast("正在返回首页");
        back();
        sleep(1000)
    }
    var content = '进群免费领脚本，平台齐全，更新及时，跑项目必备群:https://jq.qq.com/?_wv=1027&k=5WrXtZ4';
    app.startActivity({
        action: "android.intent.action.SEND",
        type: "text/*",
        extras: {
        "android.intent.extra.TEXT": content
        },
        packageName: "com.tencent.mobileqq",
        className: "com.tencent.mobileqq.activity.JumpActivity"
    });

    sleep(1000)

    while(text("发送").findOnce()==null){
        toast("请选择群发送");
        sleep(500);
    }
    toast("点击发送");
    sleep (1000)
    toast("开始群检测");
    群检测=id("blz").findOne(5000)
    if(群检测!=null){
        群人数=群检测.text()
        群人数=群人数.split("(")[1].split(")")[0]
        if(群人数>100){
            toast("群成员人数符合要求");
            sleep (1000)
            toastLog("开始检测两分钟，防止撤回~")
            while(textContains("撤回").findOnce()==null){
                sleep(500)
                FF++
                if(FF==10){
                    toastLog("您可进行除测回外其他操作")
                }
                if(FF==120){
                    toastLog("还剩一分钟")
                }
                if(FF==180){
                    toastLog("还剩30秒")
                }
                if(FF==240){
                    toastLog("恭喜你分享成功")
                    storage.put("fx", 1);
                }
            }
            toast("检测到撤回请重新分享！");
            exit()
        }else{
            toast("群成员人数不符合要求，分享失败！");
        }
    }else{
        toast("分享的不是群，分享失败！");
    }

}
//======================================自阅组合======================================================

ui.zhyx.click(function(){
    if(激活==1){
        threads.start(组合运行);
    }else{
        分享检测=storage.get("fx");
        if(代理==0 &&分享检测!=1){
            dialogs.build({
                title: "分享免费激活功能",
                content: "请输入激活码激活，或者进行分享激活，根据提示进行分享，否则无法成功\nPS : \n1、群在线成员需大于50人\n2、分享前需先打开无障碍服务",
                negative: "获取激活码",
                positive: "取消",
                neutral: "分享激活",
            }).on("negative", ()=>{
                app.openUrl("http://www.jlfaka.com/UDMJvE4/Sindex.html")
            }).on("neutral", ()=>{
                threads.start(分享);
            }).show();
        }else if(代理==1){
            dialogs.build({
                title: "提示",
                content: "未激活，请先激活应用！",
                negative: "取消",
            }).show();
        }else{
            threads.start(组合运行);
        }
    }

});
function 组合运行(){
    storage.put("fx","0");
    组合=1
    var 选择 = ui.sp1.getSelectedItemPosition();
    if(ui.njfz1.getText()!=0){
        sleep(1500);
        if(选择==0){
            牛角更新脚本()
        }else{
            牛角root更新脚本()
        }
        launchApp("牛角免费小说");
        sleep(1500);
        关闭应用();
    }
    if(ui.msfz1.getText()!=0){
        sleep(1500);
        魔视更新脚本()
        launchApp("魔视");
        sleep(1500);
        关闭应用();
    }
    if(ui.sbfz1.getText()!=0){
    sleep(1500);
    刷宝脚本()
    launchApp("刷宝短视频");
    sleep(1500);
    关闭应用();
    }   
    if(ui.mlfz1.getText()!=0){
        sleep(1500);
        秘乐脚本()
        launchApp("秘乐");
        sleep(1500);
        关闭应用();
    }
    if(ui.cdfz1.getText()!=0){
    sleep(1500);
    彩蛋脚本()
    launchApp("彩蛋视频");
    sleep(1500);
    关闭应用();
    }  
    if(ui.dggfz1.getText()!=0){
    sleep(1500);
    抖呱呱极速版脚本()
    launchApp("抖呱呱极速版");
    sleep(1500);
    关闭应用();
    }
    function 关闭应用() {
        let packageName = currentPackage();
        app.openAppSetting(packageName);
        text(app.getAppName(packageName)).waitFor();  
        let is_sure = textMatches(/(.*强.*|.*停.*|.*结.*|.*行.*)/).findOne();
        if (is_sure.enabled()) {
            textMatches(/(.*强.*|.*停.*|.*结.*|.*行.*)/).findOne().click();
            textMatches(/(.*确.*|.*定.*)/).findOne().click();
            log(app.getAppName(packageName) + "应用已被关闭");
            sleep(1000);
            back();
        } else {
            log(app.getAppName(packageName) + "应用不能被正常关闭或不在后台运行");
            back();
        }
    }
    组合=0
}



//======================================刷宝短视频======================================================
ui.sbzc.click(function(){
    app.openUrl("http://h5.shua02.cn/share/aplan?ab=e&price=8.8&_not_wx_login=1&_platform=copy_link&task_id=101&channel=h5&platform=android&client_v=2.100&invite_page=old&invite_code=A2XK4WE&_timestamp=1584201600&_sign=efe7aeef6e468964aa9dd356f99fb87f")
});

ui.sbyx.click(function(){
    threads.start(刷宝脚本);
});

function 刷宝脚本(){
    console.show();
    var w=device.width,h=device.height;
    var i=1;
    if(组合==1){
        分钟数= ui.sbfz1.getText(); 
    }else{
        分钟数= ui.sbfz.getText(); 
    }

    sleep(1000);
    console.setSize(w*0.48, h*0.2);
    log("正在打开刷宝短视频")
    app.launchApp("刷宝短视频");
    while(true)
    {
        var 首页=text("首页").findOnce()
        if(首页!=null)
        {
            log("进入成功！")
            break
        }
        sleep(1000)
    }
    sleep(3000)
    首页zb = 首页.bounds()
    click(首页zb.centerX(),首页zb.centerY())
    log("获取屏幕高度-->"+h);
    sleep(1000)
    log("获取屏幕宽度-->"+w);
    sleep(1000)
    if(分钟数==0){
        log("开始无限时间刷视频")
    }else{
        log("开始刷"+分钟数+"分钟视频")
    }
    sleep(10000)
    while(true)
    {
        for(j=0;j<4;j++){
            log("刷视频")
            swipe(w*0.5, h*0.9, w*0.5, h*0.1, 500);  //滑动
            sleep(random(14000,16000));
        }
        if(i==分钟数){
            break
        }
        log("已刷"+i+"分钟视频")
        i++

    }
    log("已完成"+i+"分钟视频")
    log("欢迎下次使用")
}
//======================================彩蛋视频======================================================
ui.cdzc.click(function(){
    app.openUrl("http://luck.55666655.cn/index.html?pid=ed2mkbjii")
});

ui.cdyx.click(function(){
    threads.start(彩蛋脚本);
});

function 彩蛋脚本(){
    console.show();
    var w=device.width,h=device.height;
    var i=1;
    if(组合==1){
        分钟数= ui.cdfz1.getText(); 
    }else{
        分钟数= ui.cdfz.getText(); 
    }
    sleep(1000);
    console.setSize(w*0.48, h*0.2);
    log("正在打开彩蛋视频")
    app.launchApp("彩蛋视频");
    while(true)
    {
        var 首页=text("发现").findOnce()
        if(首页!=null)
        {
            log("进入成功！")
            break
        }
        sleep(1000)
    }
    sleep(3000)
    首页zb = 首页.bounds()
    click(首页zb.centerX(),首页zb.centerY())
    log("获取屏幕高度-->"+h);
    sleep(1000)
    log("获取屏幕宽度-->"+w);
    sleep(1000)
    if(分钟数==0){
        log("开始无限时间刷视频")
    }else{
        log("开始刷"+分钟数+"分钟视频")
    }
    sleep(10000)
    while(true)
    {
        for(j=0;j<4;j++){
            log("刷视频")
            swipe(w*0.5, h*0.9, w*0.5, h*0.1, 500);  //滑动
            sleep(random(14000,16000));
            关闭广告1=className("android.widget.TextView").depth("5").findOnce()
            关闭广告2=textContains("恭喜你").findOnce()
            if(关闭广告1!=null){
            zb=关闭广告1.bounds()
            click(zb.centerX(),zb.centerY())
            log("关闭广告")
            }
            if(关闭广告2!=null){
            click(w*0.5,h*0.2)
            log("关闭广告")
            }
        }
        if(i==分钟数){
            break
        }
        log("已刷"+i+"分钟视频")
        i++

    }
    log("已完成"+i+"分钟视频")
    log("欢迎下次使用")
}
//======================================抖呱呱极速版======================================================
ui.dggzc.click(function(){
    app.openUrl("https://js.a.kspkg.com/bs2/fes/X6-douguagua-productionrelease-1.2.0.100_8594b3.apk")
});

ui.dggyx.click(function(){
    threads.start(抖呱呱极速版脚本);
});
function 抖呱呱极速版脚本(){
    console.show();
    var w=device.width,h=device.height;
    var i=1;
    if(组合==1){
        分钟数= ui.dggfz1.getText(); 
    }else{
        分钟数= ui.dggfz.getText(); 
    }
    sleep(1000);
    console.setSize(w*0.48, h*0.2);
    log("正在打开抖呱呱极速版")
    app.launchApp("抖呱呱极速版");
    while(true)
    {
        var 首页=text("首 页").findOnce()
        if(首页!=null)
        {
            log("进入成功！")
            break
        }
        sleep(1000)
    }
    sleep(1000)
    click(w*0.5,h*0.95)
    sleep(2000)
    swipe(w*0.5, h*0.9, w*0.5, h*0.5, 500);  //滑动
    邀请检测 = text("填写邀请码").findOnce()
    if(邀请检测!=null){
        sleep(2000)
        填写=邀请检测.parent().findOne(textContains("完成"))
        填写zb = 填写.bounds()
        click(填写zb.centerX(),填写zb.centerY())
        sleep(1000)
        setText("0774694996")
        sleep(500)
        click(w*0.5,h*0.2)
        确定 = text("确定").findOnce()
        确定zb = 确定.bounds()
        click(确定zb.centerX(),确定zb.centerY())
    }
    sleep(3000)
    首页zb = 首页.bounds()
    click(首页zb.centerX(),首页zb.centerY())
    log("获取屏幕高度-->"+h);
    sleep(1000)
    log("获取屏幕宽度-->"+w);
    sleep(1000)
    if(分钟数==0){
        log("开始无限时间刷视频")
    }else{
        log("开始刷"+分钟数+"分钟视频")
    }
    sleep(10000)
    while(true)
    {
        for(j=0;j<4;j++){
            log("刷视频")
            swipe(w*0.5, h*0.9, w*0.5, h*0.1, 500);  //滑动
            sleep(random(14000,16000));
            关闭广告1=className("android.widget.TextView").depth("5").findOnce()
            关闭广告2=textContains("恭喜你").findOnce()
            if(关闭广告1!=null){
            zb=关闭广告1.bounds()
            click(zb.centerX(),zb.centerY())
            log("关闭广告")
            }
            if(关闭广告2!=null){
            click(w*0.5,h*0.2)
            log("关闭广告")
            }
        }
        if(i==分钟数){
            break
        }
        log("已刷"+i+"分钟视频")
        i++

    }
    log("已完成"+i+"分钟视频")
    log("欢迎下次使用")
}

    
//======================================================================================================================
//=============================截图宝阅读===================================================================================

    ui.jtbyd2.click(function(){
        threads.start(截图宝阅读);
});


    function 截图宝阅读(){
        F=0
        var w=device.width,h=device.height;
        sleep(1000)
        console.show();
        sleep (500)
        console.setSize(w*0.55, h*0.25);
        
        if(F == 0){
        log("正在打开截图宝")
        launchApp("截图宝")
        sleep(3000)
        
        确定 =text("确定").findOne(5000)
        while(确定!=null){
            zb=确定.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            确定 =text("确定").findOnce()
        }
        log("师徒检测")
        个人中心检测 =textContains("师傅ID").findOnce()
        if(个人中心检测==null){
            个人中心 =textContains("个人中心").findOnce()
            zb=个人中心.bounds()
            click(zb.centerX(),zb.centerY())
            sleep(1000)
            邀请码 =textContains("邀请码").findOnce()
            zb=邀请码.bounds()
            click(zb.centerX(),zb.centerY())
            sleep(500)
            setText("1049606")
            sleep(500)
            提交邀请码 =textContains("提交邀请码").findOnce()
            zb=提交邀请码.bounds()
            click(zb.centerX(),zb.centerY())
            sleep(1000)
            任务中心 =textContains("任务中心").findOnce()
            zb=任务中心.bounds()
            click(zb.centerX(),zb.centerY())
        }
        sleep(1000)
        个人中心检测 =textContains("师傅ID").findOnce()
        
        师傅ID=个人中心检测.text()
        
        if(师傅ID=="师傅ID: 1049606"){
            log("确认为徒弟")
        }else if(激活==0){
            log("不是徒弟")
            sleep(1000)
            dialogs.build({
                title: "提示",
                content: "未激活，请先激活应用！",
                negative: "取消",
            }).show();
            exit();
        }else if(激活==1){
            log("不是徒弟,但已激活")
        }
        sleep(1000)
        看新闻 =text("6秒阅读").findOne(1000)
        while(看新闻!=null){
            zb=看新闻.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            看新闻 =text("6秒阅读").findOnce()
        }
        log("*********************")
        观看次数=textContains("次").find()
        观看次数=观看次数[1].text()
        观看次数=观看次数.split("次")[0]
        log("还可以观看"+观看次数+"次视频")
        sleep(1000)
        
        if(观看次数!=0){
            log("开始看视频")
            while(观看次数!=0){
                看视频 =text("看视频增加阅读次数").findOnce()
                if(看视频!=null){
                    zb=看视频.bounds()
                    click(zb.centerX(),zb.centerY())
                    sleep (1000)
                    看视频 =text("看视频增加阅读次数").findOnce()
                }
                观看次数--
                sleep (22000)
                关闭 =text("关闭").findOnce()
                zb=关闭.bounds()
                click(zb.centerX(),zb.centerY())
                if(观看次数!=0){
                    log("还要观看"+观看次数+"次视频")
                }
                sleep (2000)
                确定 =text("确定").findOnce()
                if(确定!=null){
                    zb=确定.bounds()
                    click(zb.centerX(),zb.centerY())
                    sleep (1000)
                    确定 =text("确定").findOnce()
                }
            }
            log("结束看视频")
        }else{
            log("直接看新闻")
        }
        
        log("*********************")
        
        }
        看新闻 =text("分享到微信做任务").findOne(1000)
        while(看新闻!=null){
            zb=看新闻.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            看新闻 =text("分享到微信做任务").findOnce()
        }
        log("请手动选择发送好友")
        分享 =text("分享").findOne(10000)
        while(分享!=null){
            log("手动点击分享")
            sleep (500)
            分享 =text("分享").findOnce()
        }
        log("请手动进入任务入口")
        sleep(1000)
        开始阅读 =text("开始阅读").findOne(30000)
        log("成功进入任务，开始挂机")
        while(开始阅读!=null){
            zb=开始阅读.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            开始阅读 =text("开始阅读").findOnce()
        }
        log("*********************")
        while(true){
            sleep(2000)
            while(text("开始阅读").findOnce()!=null){
                开始阅读=text("开始阅读").findOne(5000)
                开始阅读zb = 开始阅读.bounds()
                click(开始阅读zb.centerX(),开始阅读zb.centerY())
                log("正在进入..."); 
                sleep(3000)
            }   
            if(text("停止阅读").findOnce()==null){
                while(true){
                    for(i=0;i<12;i++){
                        swipe(w/2, h*0.9, w/2, h*0.1, 300);
                        sleep(800)
                    }
                    F++
                    收益=(F*6)*(0.001)
                    back()
                    log("本次运行执行了"+F+"个任务\n合计收益"+收益+"元")
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
            log("*********************")
            结束检测 = textContains("已达阅读上限").findOnce()
            if(结束检测!=null){
                log("阅读已达上限，本次服务结束！")
                break
            }
        }}

//======================================================================================================================
//=============================攒攒龙虾融合===================================================================================
ui.zzlx1.click(function(){
        攒攒龙虾融合(); 
});

function 攒攒龙虾融合(){
    "ui";
var w=device.width,h=device.height;
threads.start(function(){
if(激活==0){
    for(i=10;i>0;i--){
        toastLog("未激活"+i+"秒后自动关闭")
        sleep(1000)
    }
    dialogs.build({
        title: "提示",
        content: "未激活，请先激活应用！",
        negative: "取消",
    }).show();
    exit()
}
});
storage = storages.create("全享@QQ1651669686");
gzxzb=storage.get("gzxzb");
gzyzb=storage.get("gzyzb");
if(gzxzb==null){
    关注坐标="无数据"
    dqzb=false
}else{
    关注坐标="("+gzxzb+","+gzyzb+")"
    dqzb=true
}
本机坐标="参考本机分辨率：宽 "+w+"  高 "+h
主页检测=0
抖音小号初始化=0
当前链接=0
F=0
ui.layout(
    <scroll w="*" h="*" paddingLeft="5" paddingRight="5" paddingTop="5" paddingBottom="5" >
        <vertical paddingLeft="3" paddingRight="3" bg="#BFEFFF" >
            <appbar>
                <toolbar  title="攒攒小龙虾协议_无限刷辅助"  textColor="#ff2525" textStyle="bold" />
            </appbar>

            <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
            <vertical layout_weight="1" >
            <linear>
            <text w="50dp" gravity="center" marginLeft="15dp" color="#111111" size="16" >功能：</text>
            <CheckBox id="sxjc" text="失效检测" marginLeft="5dp"  layout_weight="2" checked="true"/>
            <CheckBox id="yxhh" text="自动换号" marginLeft="5dp"  layout_weight="2" checked="false"/>
            </linear>
            <linear>
            <text w="50dp" gravity="center" marginLeft="15dp" color="#111111" size="16" >运行：</text>
            <spinner id="yx" textSize="15sp" entries="攒攒小龙虾二合一|单独运行攒攒|单独运行小龙虾"/>
            </linear>
            <linear>
            <text w="50dp" gravity="center" marginLeft="15dp" color="#111111" size="16" >应用：</text>
            <spinner id="yy" textSize="15sp" entries="抖音短视频|抖音极速版|抖音火山版|抖音火山版无效跳转普通版"/>
            </linear>
            <button id="ok" textStyle="bold" margin="10 0" text="开 始 运 行" style="Widget.AppCompat.Button.Colored" />
            </vertical>
            </card>

            <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
            <vertical>       
            <horizontal margin="10 5"gravity="center|bottom">
        <text textSize="20sp"   textColor="black"  textStyle="bold" textColor="red" text="攒攒资料设置"/>
        </horizontal>
        <linear>
                            <text w="50dp" gravity="center" marginLeft="15dp" color="#111111" size="16">账号：</text>
                            <input id="zzzh" w="*" textSize="15dp" marginRight="15dp" h="40dp" hint="请输入攒攒账号"/>
                        </linear>
                        <linear>
                            <text w="50dp" gravity="center" marginLeft="15dp" color="#111111" size="16" >密码：</text>
                            <input id="zzmm"  w="*" h="40dp"  marginRight="15dp"  textSize="15dp"   hint="请输入攒攒密码"/>
                        </linear>
                        <linear gravity="center">
                            <button id="zz" marginLeft="15dp" marginRight="15dp" w="*"   textStyle="bold" >保存 攒攒账号</button>
                        </linear>
                        <linear>
                        <text w="50dp" gravity="center" marginLeft="15dp" color="#111111" size="16" >类型：</text>
                        <CheckBox id="zzgz" text="关注任务"  layout_weight="1" checked="true"/>
                        <CheckBox id="zzdz" text="特价任务"  layout_weight="1" checked="true"/>
                        <CheckBox id="zgz" text="只关注" marginRight="15dp" layout_weight="1" checked="false"/>
                        </linear>
            </vertical> 
            </card>
            <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
            <vertical>  
            <horizontal margin="10 5"gravity="center|bottom">
        <text textSize="20sp"   textColor="black"  textStyle="bold" textColor="red" text="小龙虾资料设置"/>
        </horizontal>     
                <linear>
                    <text w="80dp" gravity="center" marginLeft="15dp" color="#111111" size="16">账号：</text>
                    <input id="xlxzh" w="*" textSize="15dp" marginRight="15dp" h="40dp" hint="请输入小龙虾账号"/>
                </linear>
                <linear>
                    <text w="80dp" gravity="center" marginLeft="15dp" color="#111111" size="16" >密码：</text>
                    <input id="xlxmm" w="*" h="40dp"  marginRight="15dp"  textSize="15dp"   hint="请输入小龙虾密码"/>
                </linear>
                <linear gravity="center">
                    <button id="xlx" marginLeft="15dp" marginRight="15dp" w="*"   textStyle="bold" >保存 小龙虾账号</button>
                </linear>
            </vertical> 
            </card>
    <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
        <vertical> 
        <horizontal margin="10 5"gravity="center|bottom">
        <text textSize="20sp"   textColor="black"  textStyle="bold" textColor="red" text="关注坐标设置"/>
        </horizontal>
        <horizontal margin="10 5" gravity="center_vertical">
                <text w="80dp"  marginLeft="5dp" color="#111111" size="16" >关注坐标：</text>
                <text  id="gzzb"  layout_weight="1" color="#111111"  >{关注坐标}</text>
                <CheckBox id="dqzb" text="使用当前" checked="{{dqzb}}" layout_weight="1"/>
                </horizontal>
                <horizontal margin="10 5" gravity="center_vertical">
                <button id="zdzb"  textStyle="bold" marginRight="15dp" layout_weight="1">自动获取</button>
                <button id="sdzb"  textStyle="bold" layout_weight="1">手动获取</button>
                </horizontal>
                <horizontal margin="10 5" gravity="center_vertical">
                <input id="gzxzb" singleLine="true" size="15" hint="X坐标" textColor="black" layout_weight="2"  />
                <input id="gzyzb" singleLine="true" size="15" hint="Y坐标" textColor="black" layout_weight="2"  />
                <button id="sdtx"  textStyle="bold" layout_weight="1">手动填写</button>
                </horizontal>
                <horizontal margin="10 5" gravity="center_vertical">
                <text  marginLeft="5dp" color="#111111" size="16" >{本机坐标}</text>
                </horizontal>
        </vertical>
    </card>
    <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
        <vertical> 
        <horizontal margin="10 5"gravity="center|bottom">
        <text textSize="20sp"   textColor="black"  textStyle="bold" textColor="red" text="失效检测功能设置"/>
        </horizontal>
        <horizontal margin="10 5" gravity="center_vertical">
                    <text  textColor="black" layout_weight="0" text="主页链接：" />
                    <input id="zyjclj" singleLine="true" size="15" hint="输入抖音主页链接" textColor="black" layout_weight="2"  />
                    <button id="zyjc" layout_weight="0"   >检测主页链接</button>
                </horizontal>
                <horizontal margin="10 5" gravity="center_vertical">
                    <text id="idsl" textColor="black" layout_weight="1" text="ID:" />
                    <text id="dzsl" textColor="black" layout_weight="1" text="点赞数量:" />
                    <text id="gzsl" textColor="black" layout_weight="1" text="关注数量:" />
                </horizontal>
        </vertical>
    </card>
            <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
            <vertical> 
            <horizontal margin="10 5"gravity="center|bottom">
            <text textSize="20sp"   textColor="black" textStyle="bold" textColor="red" text="抖音换号功能设置"/>
            </horizontal>
            <horizontal margin="10 5" gravity="center_vertical">
            <text w="50dp" gravity="center" marginLeft="15dp" color="#111111" size="16" >功能：</text>
            <spinner id="hhgn" textSize="15sp" entries="审核失效换号|设置次数换号"/>
            <input id="hhcs" singleLine="true" w={w*0.2}  hint="请输入次数" marginRight="15dp" textColor="black"  layout_weight="2" />
            </horizontal>
                <horizontal margin="10 5" gravity="center_vertical">
                    <text  textColor="black" layout_weight="0" text="【小号1】" />
                    <input id="dyzhy" singleLine="true" w={w*0.4} size="15" hint="输入账号" textColor="black" layout_weight="2"  />
                    <input id="dymmy" singleLine="true" w={w*0.4} size="15" hint="请输入密码"  textColor="black"  layout_weight="2" />
                </horizontal>
                <horizontal margin="10 5" gravity="center_vertical">    
                <input id="dymcy" singleLine="true" w={w*0.4} size="15" hint="抖音名称"  textColor="black"  layout_weight="2" />            
                <input id="dyljy" singleLine="true" w={w*0.4} size="15" hint="输入抖音主页链接"  textColor="black"  layout_weight="2" />
                    <CheckBox id="dyy" text="当前在线" layout_weight="0" checked="false"/></horizontal>
                <horizontal margin="10 5" gravity="center_vertical">
                    <text  textColor="black" layout_weight="0" text="【小号2】" />
                    <input id="dyzhe" singleLine="true" w={w*0.4}  size="15" hint="请输入账号" textColor="black" layout_weight="2"  />
                    <input id="dymme" singleLine="true" w={w*0.4}  size="15" hint="请输入密码"  textColor="black"  layout_weight="2" />
                </horizontal> 
                <horizontal margin="10 5" gravity="center_vertical">       
                <input id="dymce" singleLine="true" w={w*0.4} size="15" hint="抖音名称"  textColor="black"  layout_weight="2" />
                <input id="dylje" singleLine="true" w={w*0.4} size="15" hint="输入抖音主页链接"  textColor="black"  layout_weight="2" />
                    <CheckBox id="dye" text="当前在线" checked="false"/></horizontal>
                <horizontal margin="10 5" gravity="center_vertical">
                    <text  textColor="black" layout_weight="0" text="【小号3】" />
                    <input id="dyzhs" singleLine="true" w={w*0.4}  size="15" hint="请输入账号" textColor="black" layout_weight="2"  />
                    <input id="dymms" singleLine="true" w={w*0.4}  size="15" hint="请输入密码"  textColor="black"  layout_weight="2" />
                </horizontal> 
                <horizontal margin="10 5" gravity="center_vertical">           
                <input id="dymcs" singleLine="true" w={w*0.4} size="15" hint="抖音名称"  textColor="black"  layout_weight="2" />
                <input id="dyljs" singleLine="true" w={w*0.4} size="15" hint="输入抖音主页链接"  textColor="black"  layout_weight="2" />
                    <CheckBox id="dys" text="当前在线" checked="false"/></horizontal>
                    <button id="dybb"  textStyle="bold" margin="10 0"  text="换号功能适配抖音版本及换ip软件"  />
                        <button id="dy" textStyle="bold" margin="10 0" >保存 抖音小号（默认美国号）</button>
                <linear gravity="center">
                    <button id="hhcs" marginLeft="10dp" marginRight="10dp" w="*"  style="Widget.AppCompat.Button.Colored"  textStyle="bold" >换号测试（确保小号名称与小龙虾一致）</button>
                </linear>
            </vertical> 
            </card>

            <card w="*" h="auto" margin="10 5" cardCornerRadius="20dp" cardElevation="1dp" gravity="center_vertical" alpha="1" cardCornerRadius="10dp">
            <vertical layout_weight="1" >
            <text textSize="15sp" textColor="blue"  gravity="center|bottom" text="【使用说明】"/>
            <text marginRight="15dp" marginLeft="15dp">1、主页链接填了才可以检测有效，填了记得当前在线打勾</text>
            <text marginRight="15dp" marginLeft="15dp">2、不用自动换号可以不用填写小号信息，对抖音版本无要求</text>
            <text marginRight="15dp" marginLeft="15dp">3、自动换号功能，需填小号资料，并把当前在线的抖音号打勾</text>
            <text marginRight="15dp" marginLeft="15dp">4、换号功能需要适配的抖音版本和换IP软件</text>
            </vertical>
            </card>
        </vertical>
    </scroll>
)

ui.dybb.click(function(){
    app.openUrl("https://www.lanzous.com/b073k9ulg")
});






storage = storages.create("全享@QQ1651669686");
zyjclj=storage.get("zyjclj");
if(zyjclj){
    ui["zyjclj"].setText(zyjclj);
}
xlxzh=storage.get("xlxzh");
if(xlxzh){
    ui["xlxzh"].setText(xlxzh);
}
xlxmm=storage.get("xlxmm");
if(xlxmm){
    ui["xlxmm"].setText(xlxmm);
}
zzzh=storage.get("zzzh");
if(zzzh){
    ui["zzzh"].setText(zzzh);
}
zzmm=storage.get("zzmm");
if(zzmm){
    ui["zzmm"].setText(zzmm);
}
dymcy=storage.get("dymcy");
if(dymcy){
    ui["dymcy"].setText(dymcy);
}
dyzhy=storage.get("dyzhy");
if(dyzhy){
    ui["dyzhy"].setText(dyzhy);
}
dymmy=storage.get("dymmy");
if(dymmy){
    ui["dymmy"].setText(dymmy);
}
dymce=storage.get("dymce");
if(dymce){
    ui["dymce"].setText(dymce);
}
dyzhe=storage.get("dyzhe");
if(dyzhe){
    ui["dyzhe"].setText(dyzhe);
}
dymme=storage.get("dymme");
if(dymme){
    ui["dymme"].setText(dymme);
}
dymcs=storage.get("dymcs");
if(dymcs){
    ui["dymcs"].setText(dymcs);
}
dyzhs=storage.get("dyzhs");
if(dyzhs){
    ui["dyzhs"].setText(dyzhs);
}
dymms=storage.get("dymms");
if(dymms){
    ui["dymms"].setText(dymms);
}
dyljy=storage.get("dyljy");
if(dyljy){
    ui["dyljy"].setText(dyljy);
}
dylje=storage.get("dylje");
if(dylje){
    ui["dylje"].setText(dylje);
}
dyljs=storage.get("dyljs");
if(dyljs){
    ui["dyljs"].setText(dyljs);
}

ui.xlx.on("click", () =>{
    var xlxzh=ui["xlxzh"].getText()+"";
    storage.put("xlxzh",xlxzh);
    var xlxmm=ui["xlxmm"].getText()+"";
    storage.put("xlxmm",xlxmm);
    toast("小龙虾账号保存成功！");
});
ui.zz.on("click", () =>{
    var zzzh=ui["zzzh"].getText()+"";
    storage.put("zzzh",zzzh);
    var zzmm=ui["zzmm"].getText()+"";
    storage.put("zzmm",zzmm);
    toast("攒攒账号保存成功！");
});
ui.dy.on("click", () =>{
    var dymcy=ui["dymcy"].getText()+"";
    storage.put("dymcy",dymcy);
    var dyzhy=ui["dyzhy"].getText()+"";
    storage.put("dyzhy",dyzhy);
    var dymmy=ui["dymmy"].getText()+"";
    storage.put("dymmy",dymmy);
    var dymce=ui["dymce"].getText()+"";
    storage.put("dymce",dymce);
    var dyzhe=ui["dyzhe"].getText()+"";
    storage.put("dyzhe",dyzhe);
    var dymme=ui["dymme"].getText()+"";
    storage.put("dymme",dymme);
    var dymcs=ui["dymcs"].getText()+"";
    storage.put("dymcs",dymcs);
    var dyzhs=ui["dyzhs"].getText()+"";
    storage.put("dyzhs",dyzhs);
    var dymms=ui["dymms"].getText()+"";
    storage.put("dymms",dymms);
    var dyljy=ui["dyljy"].getText()+"";
    storage.put("dyljy",dyljy);
    var dylje=ui["dylje"].getText()+"";
    storage.put("dylje",dylje);
    var dyljs=ui["dyljs"].getText()+"";
    storage.put("dyljs",dyljs);
    toast("抖音小号保存成功！");
});

ui.zdzb.on("click", () =>{
    threads.start(function() {
        var 应用 = ui.yy.getSelectedItemPosition();
        if(应用 == 1){
            app.launchApp("抖音极速版")
            toastLog("正在找抖音关注坐标,请手动进入抖音主页")
            首页=text("消息").findOne(6000)
            click(w*0.1,h*0.95)
        }else if(应用 == 0){
            app.launchApp("抖音短视频")
            toastLog("正在找抖音关注坐标,请手动进入抖音主页")
            首页=text("消息").findOne(6000)
            click(w*0.1,h*0.95)
        }else if(应用 == 2||应用 == 3){
            app.launchApp("抖音火山版")
            toastLog("正在找抖音关注坐标,请手动进入抖音主页")
            sleep(5000)
            视频=text("视频").findOne(6000)
            zb=视频.bounds()
            click(zb.centerX(),zb.centerY())
            sleep(1000)
            click(w*0.25,h*0.25)
            sleep(3000)
        }    
    sleep(2000)
    swipe(w*0.9, h/2, w*0.1, h/2, 500);
    while(true){
        sleep(3000)
        取消关注=text("取消关注").findOnce()
        if(取消关注==null){
            关注1=id("ni").findOnce()
            关注2=id("dgn").findOnce()
            关注3=id("bh8").findOnce()
            关注4=id("dhq").findOnce()
            关注5=id("dn6").findOnce()
            if(关注1!=null||关注2!=null||关注3!=null||关注4!=null||关注5!=null){
                if(关注1!=null){
                    关注zb = 关注1.bounds()
                    关注zbx = 关注zb.centerX()
                    关注zby = 关注zb.centerY()
                    toastLog("找到关注坐标"+关注zbx+","+关注zby)
                    back()
                }else if(关注2!=null){
                    关注zb = 关注2.bounds()
                    关注zbx = 关注zb.centerX()
                    关注zby = 关注zb.centerY()
                    toastLog("找到关注坐标"+关注zbx+","+关注zby)
                    back()
                }else if(关注3!=null){
                    关注zb = 关注3.bounds()
                    关注zbx = 关注zb.centerX()
                    关注zby = 关注zb.centerY()
                    toastLog("找到关注坐标"+关注zbx+","+关注zby)
                    back()
                }else if(关注4!=null){
                    关注zb = 关注4.bounds()
                    关注zbx = 关注zb.centerX()
                    关注zby = 关注zb.centerY()
                    toastLog("找到关注坐标"+关注zbx+","+关注zby)
                    back()
                }else if(关注5!=null){
                    关注zb = 关注5.bounds()
                    关注zbx = 关注zb.centerX()
                    关注zby = 关注zb.centerY()
                    toastLog("找到关注坐标"+关注zbx+","+关注zby)
                    back()
                    sleep(500)
                    back()
                }
                storage.put("gzxzb",关注zbx);
                storage.put("gzyzb",关注zby);
                ui.run(() => {
                    ui.gzzb.setText("("+关注zbx+","+关注zby+")");
                })
                dqzb=true
                app.launchApp(代理名称)
                break
            }else{
                toastLog("无法自动找到关注坐标，请手动找坐标!")
                app.launchApp(代理名称)
                break
            }
        }else{
            toastLog("未找到关注坐标，换视频!")
            back()
            sleep(3000)
            click(w*0.1,h*0.95)
            sleep(3000)
            swipe(w*0.9, h/2, w*0.1, h/2, 500);
            sleep(3000)
        }
    }
    sleep(2000)
    log("*************************")
    });
});

ui.sdtx.on("click", () =>{
    threads.start(function() {
        关注zbx=ui.gzxzb.text();
        关注zby=ui.gzyzb.text();
        if(关注zbx<=w&&关注zbx>=0){
            if(关注zby<=h&&关注zby>=0){
                storage.put("gzxzb",关注zbx);
                storage.put("gzyzb",关注zby);
                ui.run(() => {
                    ui.gzzb.setText("("+关注zbx+","+关注zby+")");
                    ui.dqzb.checked = true
                })

            }else{
                toast("超出坐标范围");
            }
        }else{
            toast("超出坐标范围");
        }

    });
});


ui.sdzb.on("click", () =>{
    threads.start(function() {
        找坐标();
    });
});

function 找坐标(){
var window = floaty.window(
    <vertical>
        <horizontal>
        <button id="ok" text="开始"/>
        <button id="ok2" text="测试"/>
        </horizontal>
        <horizontal>
        <button id="ok3" text="保存"/>
        <button id="ok4" text="退出"/>
        </horizontal>
    </vertical>
);
window.exitOnClose();
window.setPosition(1, 400)

window.ok.on("click", ()=>{
    window.ok.text("启动中")
    threads.start(坐标读取)
});
window.ok2.on("click", ()=>{
    threads.start(坐标测试)

});
window.ok3.on("click", ()=>{
    storage.put("gzxzb",X坐标);
    storage.put("gzyzb",Y坐标);
    ui.run(() => {
        ui.gzzb.setText("("+X坐标+","+Y坐标+")");
    })
    log("保存成功")
});
window.ok4.on("click", ()=>{
    window.ok.text("退出")
    exit()
});
setInterval(()=>{}, 1000);

function 坐标测试(){
    click(X坐标,Y坐标)
}
function 坐标读取(){
    requestScreenCapture();
    console.show();
    sleep(500)
    console.setSize(550, 450)
    log("打开抖音找到关注按件，并保存关注坐标")
    events.observeTouch();
    events.setTouchEventTimeout(30);
    events.on("touch", function(point){
        log("X坐标:" + point.x + ", Y坐标:" + point.y);
        X坐标 = point.x
        Y坐标 = point.y
    });
}

}



ui.zyjc.click(function () {
    主页检测=2
    var zyjclj=ui["zyjclj"].getText()+"";
    storage.put("zyjclj",zyjclj);
    threads.start(function () {
        抖音信息监测()
        if(喜欢数量!=null){
            主页检测=1
            ui.run(() => {
                ui.idsl.setText("ID: " + 抖音名字);
                ui.dzsl.setText("点赞数量: " + 喜欢数量);
                ui.gzsl.setText("关注数量: " + 关注数量);
            })
        }
    });
});


ui.ok.on("click", () =>{
    var 运行 = ui.yx.getSelectedItemPosition();
    链接一=storage.get("dyljs")
    if(ui.sxjc.checked == true){
        if(主页检测==1){
            if(ui.yxhh.checked == true){
                自动换号=1
            }else if(ui.yxhh.checked == false){
                自动换号=0
            }
            暂无任务=0
            二合一=0
            if (运行==0) {
                二合一=1
                threads.start(function() {
                    攒攒协议();
                });
            }
            else if (运行==1) {
                threads.start(function() {
                    攒攒协议();
                });
            }else if (运行==2) {
                threads.start(function() {
                    小龙虾协议();
                });
            }        
        }else{
            toast("请先进行主页检测")
        }
    }else if(ui.sxjc.checked == false){
        if(ui.yxhh.checked == true){
            自动换号=1
        }else if(ui.yxhh.checked == false){
            自动换号=0
        }
        暂无任务=0
        二合一=0
        if (运行==0) {
            二合一=1
            threads.start(function() {
                攒攒协议();
            });
        }
        else if (运行==1) {
            threads.start(function() {
                攒攒协议();
            });
        }else if (运行==2) {
            threads.start(function() {
                小龙虾协议();
            });
        }  
    }
    
});

ui.hhcs.on("click", () =>{
    threads.start(function() {
        抖音换号();
    });
});

function 抖音换号(){
    log("开始换号");
    抖音名称一=storage.get("dymcy")
    抖音小号账号一=storage.get("dyzhy")
    抖音小号密码一=storage.get("dymmy")
    抖音名称二=storage.get("dymce")
    抖音小号账号二=storage.get("dyzhe")
    抖音小号密码二=storage.get("dymme")
    抖音名称三=storage.get("dymcs")
    抖音小号账号三=storage.get("dyzhs")
    抖音小号密码三=storage.get("dymms")
    if(抖音小号初始化==0){
        if(ui.dyy.checked == true){
            换号数=2
        }
        if(ui.dye.checked == true){
            换号数=3
        }
        if(ui.dys.checked == true){
            换号数=1
        }
        抖音小号初始化++
    }
    if(换号数==1){
        var 抖音名称=抖音名称一
        var 抖音小号账号=抖音小号账号一
        var 抖音小号密码=抖音小号密码一 
        log("切换至抖音小号1");
        换号数++
        当前链接++
    } else if(换号数==2){
        var 抖音名称=抖音名称二
        var 抖音小号账号=抖音小号账号二
        var 抖音小号密码=抖音小号密码二 
        log("切换至抖音小号2");
        换号数++
        当前链接++
    }else if(换号数==3){
        var 抖音名称=抖音名称三
        var 抖音小号账号=抖音小号账号三
        var 抖音小号密码=抖音小号密码三 
        log("切换至抖音小号3");
        换号数=1
        当前链接=1
    }
console.show();
var w=device.width,h=device.height;
sleep(500);
console.setSize(w*0.55, h*0.2);
sleep(1000);
log("*************************")
log("开始执行换号程序");
log("退出当前抖音号");
    launchApp("抖音短视频")
    sleep(2000)
    我=className("android.widget.TextView").text("我").findOne().parent()
    我zb=我.bounds()
    click(我zb.centerX(),我zb.centerY())
    sleep(2000)
    三点=className("android.widget.ImageView").depth(17).findOne()
    三点zb=三点.bounds()
    click(三点zb.centerX()+90,三点zb.centerY())
    sleep(2000)
    设置=className("android.widget.TextView").depth(10).findOnce()
    设置zb=设置.bounds()
    click(设置zb.centerX(),设置zb.centerY()+300)
    sleep(2000)
    var w=device.width,h=device.height;
    swipe(w/2, h*0.8, w/2, h*0.3, 500);
    sleep(1000)
    退出登录=textContains("version").findOnce()
    while(退出登录==null){
        var w=device.width,h=device.height;
        swipe(w/2, h*0.8, w/2, h*0.3, 500);
        sleep (1000)
        退出登录=textContains("version").findOnce()
        log("退出登录")
    }
    退出登录zb=退出登录.bounds()
    click(退出登录zb.centerX(),退出登录zb.centerY()-250)
    sleep(2000)
    确定 =text("确定").findOne(5000)
    确定zb=确定.bounds()
    click(确定zb.centerX(),确定zb.centerY())
    sleep(2000)
    log("完成退出");
//==================================换ip============================================
log("*************************")
log("正在开启临时ip")
launchApp("穿梭")
sleep(3000)
开启vpn=textContains("赶紧试试吧").findOnce()
while(开启vpn==null){
    sleep(500)
    开启vpn=textContains("赶紧试试吧").findOnce()
}
sleep(500)
click(w*0.5,h*0.4)
sleep(500)
log("连接中")
连接中=textContains("连接中").findOnce()
while(连接中!=null){
    sleep(500)
    连接中=textContains("连接中").findOnce()
}
sleep(1000)
back()
已连接=textContains("国内网站").findOnce()
while(已连接!=null){
    back()
    sleep(500)
    已连接=textContains("国内网站").findOnce()
}
log("临时ip开启成功")
home();
//================================================================================
//==================================测试网络=======================================
while(true){
    log("开始网络测试")
    launchApp("抖音短视频")
    sleep(5000)
    检测主页=textContains("推荐").findOnce()
    while(检测主页==null){
        sleep(2000)
        检测主页=textContains("推荐").findOnce()
    }
    click(w*0.1, h*0.97)
    sleep(3000)
    测试网络=textContains("@").findOnce()
    if(测试网络==null){
        log("无效ip，开始换ip")
        换ip()
    }else{
        测试1=测试网络.text()
        click(w*0.1, h*0.97)
        sleep (1000)
        测试网络=textContains("@").findOnce()
        测试2=测试网络.text()
        if(测试1==测试2){
            sleep (4000)
        }else{
            log("网络测试成功")
            break;
        }
        测试网络=textContains("@").findOnce()
        测试2=测试网络.text()
        if(测试1==测试2){
            log("无效ip，重新换ip")
            换ip()
        }else{
            log("网络测试成功")
            break;
        }
    }
}
home()
log("*************************")
log("开始换号")
launchApp("抖音短视频")
sleep(6000)
click(w*0.1, h*0.97)
sleep(1000)
    我=className("android.widget.TextView").text("我").findOne().parent()
    我zb=我.bounds()
    click(我zb.centerX(),我zb.centerY())
    sleep(2000)
    换区号=text("+86").findOnce()
    换区号zb=换区号.bounds()
    click(换区号zb.centerX(),换区号zb.centerY())
    sleep(1000)
    setText("美国")
    sleep(1000)
    搜索=text("搜索").findOnce()
    搜索zb=搜索.bounds()
    click(搜索zb.centerX(),搜索zb.centerY())
    sleep(1000)
    选中=text("+1").findOnce()
    选中zb=选中.bounds()
    click(w*0.7,选中zb.centerY())
    sleep(2000)
    setText(抖音小号账号)
    sleep(1000)
    登录=className("android.widget.Button").depth(8).findOnce()
    登录zb=登录.bounds()
    click(登录zb.centerX(),登录zb.centerY())
    sleep(1500)
    登录=className("android.widget.Button").depth(5).findOnce()
    while(登录==null){
        sleep(1000)
        登录=className("android.widget.Button").depth(5).findOnce()
    }
    sleep(500)
    setText(抖音小号密码)
    登录=className("android.widget.Button").depth(5).findOnce()
    登录zb=登录.bounds()
    click(登录zb.centerX(),登录zb.centerY())
    log("换号完成")
    sleep(1000)
    log("*************************")
    log("关闭临时ip")
    launchApp("穿梭");
    sleep(5000);
    关闭应用();
    function 关闭应用() {
        let packageName = currentPackage();
        app.openAppSetting(packageName);
        text(app.getAppName(packageName)).waitFor();  
        let is_sure = textMatches(/(.*强.*|.*停.*|.*结.*|.*行.*)/).findOne();
        if (is_sure.enabled()) {
            textMatches(/(.*强.*|.*停.*|.*结.*|.*行.*)/).findOne().click();
            textMatches(/(.*确.*|.*定.*)/).findOne().click();
            sleep(1000);
            back();
        } else {
            log(app.getAppName(packageName) + "应用不能被正常关闭或不在后台运行");
            back();
        }
    }   
    log("关闭临时ip完成") 
    sleep(1000);
    home()
    log("*************************")
    log("开始切换小龙虾任务号")
    sleep(1000)
    launchApp("小龙虾")
    log("*************************")
    log("开始切换小龙虾任务号")
    sleep(1000)
    launchApp("小龙虾")
    sleep(1000)
    launchApp("小龙虾")
    sleep(5000)
    while (true) {
        进入检查1 =descContains("任务账号").findOnce()
        进入检查2 =descContains("任务账号").findOnce()
        while(进入检查1==null&&进入检查2==null){
            oooo1 =descContains("抖音任务").findOnce()
            oooo2 =textContains("抖音任务").findOnce()
            if (oooo1!=null||oooo2!=null) {
                if(oooo1!=null){
                    zb=oooo1.bounds()
                    click(zb.centerX(),zb.centerY())
                    oooo =textContains("抖音任务").findOnce()
                }else{
                    zb=oooo2.bounds()
                    click(zb.centerX(),zb.centerY())
                    oooo =textContains("抖音任务").findOnce()
                }
            }
            sleep(1000);
            进入检查1 =descContains("任务账号").findOnce()
            进入检查2 =descContains("任务账号").findOnce()
        }
        sleep(2000);
        break;
    }
    小龙虾任务1 = textContains(抖音名称).findOnce()
    小龙虾任务2 = descContains(抖音名称).findOnce()
    if(小龙虾任务1!=null){
        小龙虾任务=小龙虾任务1
    }else{
        小龙虾任务=小龙虾任务2
    }
    zb=小龙虾任务.bounds()
    click(w*0.8,zb.centerY())
    sleep(1000)
    click(w*0.6,h*0.5)
    log("完成小龙虾任务号切换")
    log("关闭小龙虾")
    sleep(2000);
    关闭应用();
    function 关闭应用() {
        let packageName = currentPackage();
        app.openAppSetting(packageName);
        text(app.getAppName(packageName)).waitFor();  
        let is_sure = textMatches(/(.*强.*|.*停.*|.*结.*|.*行.*)/).findOne();
        if (is_sure.enabled()) {
            textMatches(/(.*强.*|.*停.*|.*结.*|.*行.*)/).findOne().click();
            textMatches(/(.*确.*|.*定.*)/).findOne().click();
            sleep(1000);
            back();
        } else {
            log(app.getAppName(packageName) + "应用不能被正常关闭或不在后台运行");
            back();
        }
    }  
    home()
    log("完成换号程序")
    log("*************************")


    function 换ip(){
        log("开始换ip")
        launchApp("穿梭");
        sleep(5000);
        关闭应用();
        function 关闭应用() {
            let packageName = currentPackage();
            app.openAppSetting(packageName);
            text(app.getAppName(packageName)).waitFor();  
            let is_sure = textMatches(/(.*强.*|.*停.*|.*结.*|.*行.*)/).findOne();
            if (is_sure.enabled()) {
                textMatches(/(.*强.*|.*停.*|.*结.*|.*行.*)/).findOne().click();
                textMatches(/(.*确.*|.*定.*)/).findOne().click();
                sleep(1000);
                back();
            } else {
                log(app.getAppName(packageName) + "应用不能被正常关闭或不在后台运行");
                back();
            }
        }
        sleep(1500);
        launchApp("穿梭")
        sleep(3000)
        开启vpn=textContains("赶紧试试吧").findOnce()
        while(开启vpn==null){
            sleep(500)
            开启vpn=textContains("赶紧试试吧").findOnce()
        }
        sleep(500)
        click(w*0.5,h*0.4)
        sleep(500)
        log("连接中")
        连接中=textContains("连接中").findOnce()
        while(连接中!=null){
            sleep(500)
            连接中=textContains("连接中").findOnce()
        }
        sleep(1000)
        back()
        已连接=textContains("国内网站").findOnce()
        while(已连接!=null){
            back()
            sleep(500)
            已连接=textContains("国内网站").findOnce()
        }
        log("ip切换成功")
        log("*************************");
        home();
    }
}

function 攒攒协议(){
        if (!requestScreenCapture()) {
            toast("请求截图失败");
            exit();
        }
    console.show();
    var w=device.width,h=device.height;
    sleep(500);
    console.setSize(w*0.55, h*0.25);
    sleep(1000);
    var 应用 = ui.yy.getSelectedItemPosition();

    if(ui.dqzb.checked == false){
        if (ui.zzdz.checked == true||ui.zzgz.checked == true){
            if(应用 == 1){
                app.launchApp("抖音极速版")
                toastLog("正在找抖音关注坐标,请手动进入抖音主页")
                首页=text("消息").findOne(6000)
                click(w*0.1,h*0.95)
            }else if(应用 == 0){
                app.launchApp("抖音短视频")
                toastLog("正在找抖音关注坐标,请手动进入抖音主页")
                首页=text("消息").findOne(6000)
                click(w*0.1,h*0.95)
            }else if(应用 == 2||应用 == 3){
                app.launchApp("抖音火山版")
                toastLog("正在找抖音关注坐标,请手动进入抖音主页")
                视频=text("视频").findOne(6000)
                zb=视频.bounds()
                click(zb.centerX(),zb.centerY())
                sleep(1000)
                click(w*0.25,h*0.25)
            }    
        sleep(2000)
        swipe(w*0.9, h/2, w*0.1, h/2, 500);
        while(true){
            sleep(3000)
            取消关注=text("取消关注").findOnce()
            if(取消关注==null){
                关注1=id("ni").findOnce()
                关注2=id("dgn").findOnce()
                关注3=id("bh8").findOnce()
                关注4=id("dhq").findOnce()
                关注5=id("dn6").findOnce()
                if(关注1!=null||关注2!=null||关注3!=null||关注4!=null||关注5!=null){
                    if(关注1!=null){
                        关注zb = 关注1.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby)
                        back()
                    }else if(关注2!=null){
                        关注zb = 关注2.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby)
                        back()
                    }else if(关注3!=null){
                        关注zb = 关注3.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby)
                        back()
                    }else if(关注4!=null){
                        关注zb = 关注4.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby)
                        back()
                    }else if(关注5!=null){
                        关注zb = 关注5.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        toastLog("找到关注坐标"+关注zbx+","+关注zby)
                        back()
                        sleep(500)
                        back()
                    }
                    storage.put("gzxzb",关注zbx);
                    storage.put("gzyzb",关注zby);
                }else{
                    toastLog("无法自动找到关注坐标，请手动找坐标!")
                }
            }else{
                toastLog("未找到关注坐标，换视频!")
                back()
                sleep(3000)
                click(w*0.1,h*0.95)
                sleep(3000)
                swipe(w*0.9, h/2, w*0.1, h/2, 500);
                sleep(3000)
            }
            
        sleep(2000)
        log("*************************")
        }

        }
    }else if (ui.dqzb.checked == true){
        关注zbx=storage.get("gzxzb")
        关注zby=storage.get("gzyzb")
        log("读取到关注坐标为("+关注zbx+","+关注zby+")")
    }
    log("正在登陆【攒攒】")
    sleep (1000)  
    var zzzh = storage.get("zzzh");
    var zzmm = storage.get("zzmm");
    var a = 攒攒登录(zzzh, zzmm)
    token = a.data.token
    toastLog("登陆成功")
    while (true) {
        getinfo()
        if (info != null) {
            if (info.data.is_signed == false) {
                toastLog("未签到,开始签到")
                截图签到()
                签到上传模块()
            }
            else if (info.data.is_signed == true) {
                home()
                sleep(3000)
                break
            }
            else {
                toastLog("未绑定抖音号或未授权")
                exit()
            }
            sleep(3000)
        }
        sleep(3000)
    }
    if(ui.sxjc.checked == true){
        抖音信息监测()
        监测赞=喜欢数量
        监测关注=关注数量
    }
    sleep(2000)
    while (true) {
        领取任务()
        if (gettask.msg == "操作成功") {
            if(应用 == 1){
                setClip("https://www.iesdouyin.com/share/video/"+gettask.data.aweme_id+"/?region=CN")
                sleep(500)
                app.launchApp("抖音极速版")
            time = 1
            while (true) {
                var 打开看看 = textContains("打开看看").findOne(3000)
                var 前往 = text("前往").findOne(3000)
                if (打开看看 != null) {
                    sleep(1000)
                    打开看看.click()
                    break
                }
                if (前往 != null) {
                    sleep(1000)
                    前往.click()
                    break
                }
                sleep(500)
                time++
                if (time >= 10) {
                    结束模块("抖音极速版")
                    break
                }
                if (time == 3 || time == 6) {
                    home()
                    toastLog("未找到入口重新进入")
                    setClip("https://www.iesdouyin.com/share/video/"+gettask.data.aweme_id+"/?region=CN")
                    sleep(2000)
                    app.launchApp("抖音极速版")
                }
                sleep(1500)
            }
            }else if(应用 == 0){
                try {
                    var tmp = "snssdk1128://aweme/detail/" + gettask.data.aweme_id + "?refer=web&gd_label=click_wap_detail_download_feature"
                    app.startActivity({
                        data: tmp
                    });
                    }
                catch (err) {
                    log(err)
                }
            }else if(应用 == 2||应用 == 3){
                var tmp = "snssdk1112://item?detail_label=return_page&id="+ gettask.data.aweme_id
                app.startActivity({
                    data: tmp
                });
            }
            暂无任务=0
            sleep(2000)
            if(应用 == 3){
                you=1
                wxsp=0
                检测是否进入1=className("android.widget.ImageView").depth("15").findOnce()
                检测是否进入2=text("送火苗").findOnce()
                while(检测是否进入1==null&&检测是否进入2==null){
                    sleep(1000)
                    检测是否进入1=className("android.widget.ImageView").depth("15").findOnce()
                    检测是否进入2=text("送火苗").findOnce()
                    log("等待进入视频")
                    wxsp++
                    if(wxsp==5){
                        log("无效视频")
                        you=0
                        wxsp=0
                        break
                    }
                }
                作者检测=text("送火苗").findOnce()
                if(作者检测==null){
                    log("视频作者未开通抖音火山版，正在跳转普通版")
                    try {
                        var tmp = "snssdk1128://aweme/detail/" + uid + "?refer=web&gd_label=click_wap_detail_download_feature"
                        app.startActivity({
                            data: tmp
                        });
                        }
                    catch (err) {
                        log(err)
                    }
                }
                检测是否进入=className("android.widget.LinearLayout").find()
                检测=检测是否进入[4]
                检测 = JSON.stringify(检测)
                while(检测!=undefined){
                    sleep(1000)
                    检测是否进入=className("android.widget.LinearLayout").find()
                    检测=检测是否进入[4]
                    检测 = JSON.stringify(检测)
                    log("等待进入视频")
                }
                sleep(2000)
                log("成功进入视频")
                视频有效性检测()
                sleep(1000)
            }else if(应用 == 2){
                you=1
                wxsp=0
                检测是否进入=text("送火苗").findOnce()
                while(检测是否进入==null){
                    sleep(1000)
                    检测是否进入=text("送火苗").findOnce()
                    log("等待进入视频")
                    wxsp++
                    if(wxsp==5){
                        log("无效视频")
                        you=0
                        wxsp=0
                        sleep(500)
                        back()
                        break
                    }
                }
                sleep(2000)
                log("成功进入视频")
            }else{
                检测是否进入=className("android.widget.LinearLayout").find()
                检测=检测是否进入[4]
                检测 = JSON.stringify(检测)
                while(检测!=undefined){
                    sleep(1000)
                    检测是否进入=className("android.widget.LinearLayout").find()
                    检测=检测是否进入[4]
                    检测 = JSON.stringify(检测)
                    log("等待进入视频")
                }
                sleep(2000)
                log("成功进入视频")
                视频有效性检测()
                sleep(1000)
            }

            if(you==1){
                if (gettask.data.type == 1 || gettask.data.type == 3) {
                    if(ui.zgz.checked == true){
                        log("不做点赞任务");
                        back()
                        放弃任务()
                    }else if(ui.zgz.checked == false){
                        log("点赞任务");
                        sleep(2000);
                        var x = device.width / 2
                        var y = device.height / 2
                        if (x > 10 && y > 10) {} else 
                        {
                            x = 500
                            y = 500
                        }
                        log("开始随机时间点赞")
                        sleep(2000)
                        for (var o = 1; o < random(2, 5); o++) {
                            sleep(1000)
                        }
                        sleep(50)
                        click(x, y)
                        click(x-10, y-10)
                        click(x-11, y-11)
                        click(x-12, y-12)
                        click(x-13, y-13)
                        click(x-14, y-14)
                        click(x-15, y-15)
                        click(x-20, y-20)
                        click(x-30, y-30)
                        sleep(50)
                        click(x-50, y-50)
                        click(x-60, y-60)
                        click(x-70, y-70)
                        sleep(500)
                        click(x, y)
                        if(ui.sxjc.checked == true){
                        抖音信息监测()
                        实时赞=喜欢数量
                        if(监测赞!=(实时赞-1)){
                            log("未点赞成功,重新获取任务")
                            监测赞=实时赞
                            放弃任务()
                        }else{
                            F++
                            监测赞=实时赞
                            toastLog("截图")
                            sleep(3000)
                            captureScreen("/storage/emulated/0/1.png")
                            上传截图()
                            提交任务()
                            log("点赞成功，已执行"+F+"个任务")
                        }
                        }else if(ui.sxjc.checked == false){
                            F++
                            toastLog("截图")
                            sleep(3000)
                            captureScreen("/storage/emulated/0/1.png")
                            上传截图()
                            提交任务()
                            log("已执行"+F+"个任务")
                        }
                    }
                    sleep(500)

                }
            if (gettask.data.type == 2) {
                log("关注任务");
                sleep(2000);
                swipe(w*0.9, h/2, w*0.1, h/2, 500);
                sleep(2000);
                click(关注zbx,关注zby)
                sleep(500)

                if(ui.sxjc.checked == true){
                    抖音信息监测()
                    sleep(500)
                    实时关注=关注数量
                    if(监测关注!=(实时关注-1)){
                        log("未关注成功,重新获取任务")
                        监测关注=实时关注
                        放弃任务()
                    }else{
                        F++
                        监测关注=实时关注
                        toastLog("截图")
                        sleep(3000)
                        captureScreen("/storage/emulated/0/1.png")
                        上传截图()
                        提交任务()
                        log("关注成功，已执行"+F+"个任务")
                    }
                }else if(ui.sxjc.checked == false){
                    sleep(500)
                    F++
                    toastLog("截图")
                    sleep(3000)
                    captureScreen("/storage/emulated/0/1.png")
                    上传截图()
                    提交任务()
                    log("已执行"+F+"个任务")
                }
                back() 
                sleep(500)
            }
            back()  
            if(F%5==3&& 应用!=2){
                sleep(1000)
                log("开始随机刷新视频")
                click(w*0.1, h*0.97)
                // click(1000,800)//随机关注
                sleep (1000)
            }
            sleep(500)        
            home()
            sleep(500) 
            home()
            log("*************************")
            }else if (you == 0) {
                放弃任务()
            }

        }
        else if (gettask.msg == "暂无任务,请稍后再试" || gettask.msg == "操作频繁,请休息一会儿") {
            toastLog("暂无任务，10秒后重新获取")
            暂无任务++
            if(二合一==1){
                if(暂无任务==5){
                    toastLog("暂无任务五次,开始小龙虾协议")
                    暂无任务=0
                    小龙虾协议()
                }
            }
            sleep(8000)
        }
        sleep(2000)
    }




    function 攒攒登录(username, loginpw) {
        function MD5(string) {
            res = java.math.BigInteger(1, java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(string).getBytes())).toString(16);
            while (res.length < 32) res = "0" + res;
            return res;
        }
        return http.post("http://zcore.zqzan.com/app/account/login", { username: username, loginpw: MD5(loginpw + "Uk&s23^ruk@") }).body.json()
    }
    function ua() {
        return device.model + "(Android/7) (com.zanqzan.app/1.1.18) Weex/0.26.0 " + device.width + "x" + device.height
    };
    function getinfo() {
        info = null
        try {
            var infotemp = http.get("http://zcore.zqzan.com/app/douyin/my/info", {
                "headers":
                {
                    "user-agent": ua(),
                    "Token": token,
                }
            })
            if (infotemp != null) {
                info = infotemp.body.json();
            }
        }
        catch (err) {
            log(err)
    
        }
    
    
    }
    function 截图签到() {

        while (true) {
            var pd = packageName("com.ss.android.ugc.aweme").findOnce()
            if (pd != null) {
                toastLog("进入抖音")
            }
            else if (pd == null) {
                app.launchApp("抖音短视频")
            }
            var like = textContains("喜欢 ").visibleToUser(true).clickable(false).findOnce()
            var 我 = text("我").visibleToUser(true).findOnce()
            if (like != null && 我 != null) {
                toastLog("截图")
                sleep(3000)
                captureScreen("/storage/emulated/0/1.png")
                break
            }
            else {
                var 我 = text("我").visibleToUser(true).findOnce()
                if (我 != null) {
                    var 我p = clickable(true).boundsContains(我.bounds().left, 我.bounds().top, 我.bounds().right, 我.bounds().bottom).boundsInside(device.width * 3 / 4, device.height * 3 / 4, device.width, device.height).findOnce()
                    if (我p != null) {
                        我p.click()
                    }
                }
                else {
                    back()
                    sleep(2000)
                }
            }
            sleep(1000)
        }
    }
    function 签到上传模块() {
        签到上传 = http.post('http://zcore.zqzan.com/app/oss/sign_img', {

        }, {
            "headers":
            {
                "user-agent": ua(),
                "Token": token,
                "Cookie": "sec_tc=AQAAAA6+rFg3lQEA30p3XlGW6VLzk2HW"
            }
        }).body.json();
        // { 
        //     "code": 0, 
        //     "msg": "操作成功",
        //     "data": 
        // {
        //     "accessid": "LTAI4FwVNMW9yHsSHKW5mW3T", 
        //     "signature": "wrMY0KjsQE3gLkNbp5u6mACuZco=", 
        //     "prefix": "1215203038919254018_",
        //     "expire": "1582267139467", 
        //     "host": "https://zqzan.oss-cn-shanghai.aliyuncs.com",
        //     "format": "@!fwidth",
        //     "dir": "sign/02_21",
        //     "policy": "eyJleHBpcmF0aW9uIjoiMjAyMC0wMi0yMVQwNjo0MjowMC4wMDBaIiwiY29uZGl0aW9ucyI6W1siY29udGVudC1sZW5ndGgtcmFuZ2UiLDAsMzE0NTcyODBdLFsic3RhcnRzLXdpdGgiLCIka2V5Iiwic2lnbi8wMl8yMSJdXX0=" 
        // } 
        // }
        var key = 签到上传.data.dir + "/" + 签到上传.data.prefix + (new Date).getTime() + Math.floor(150 * Math.random()) + ".png"
        上传签到截图 = http.postMultipart(签到上传.data.host, {
            "key": key,
            "policy": 签到上传.data.policy,
            "OSSAccessKeyId": 签到上传.data.accessid,
            "signature": 签到上传.data.signature,
            "success_action_status": "200",
            "file": open("/storage/emulated/0/1.png")
        }, {

        })
        log("提交")
        var imgurl = 签到上传.data.host + "/" + 签到上传.data.dir + "//" + 签到上传.data.prefix + 签到上传.data.expire + ".png" + 签到上传.data.format
        log(imgurl)
        var temp = http.post('http://zcore.zqzan.com/app/douyin/do/sign', {
            "img_url": imgurl,
        }, {
            "headers":
            {
                "user-agent": ua(),
                "Token": token,
                "Cookie": "sec_tc=AQAAADFNdgcBqQ4A30p3XrwKV8/ACXw2",
            }
        }).body.json();
    }
    function 上传截图() {
        try {
            上传 = http.post('http://zcore.zqzan.com/app/oss/shot_img', {

            }, {
                "headers":
                {
                    "user-agent": ua(),
                    "Token": token,
                    "Cookie": "sec_tc=AQAAADjRC2VNvA4A30p3XnUehzmfVa0g"
                }
            }).body.json();
            key = 上传.data.dir + "/" + 上传.data.prefix + (new Date).getTime() + Math.floor(150 * Math.random()) + ".png"
            var 上传截图 = http.postMultipart(上传.data.host, {
                "key": key,
                "policy": 上传.data.policy,
                "OSSAccessKeyId": 上传.data.accessid,
                "signature": 上传.data.signature,
                "success_action_status": "200",
                "file": open("/storage/emulated/0/1.png")
            }, {

            })
        }
        catch (err) {
            log(err)
        }
    }
    function 领取任务() {
        if (ui.zzdz.checked == true) {
            b_discount = true
        }
        else if (ui.zzdz.checked == false) {
            b_discount = false
        }
        if (ui.zzgz.checked == true) {
            access = 3
        }
        else if (ui.zzgz.checked == false) {
            access = 1
        }
        try {
            var temp = http.post('http://zcore.zqzan.com/app/douyin/pull/one', {
                "b_discount": b_discount,
                "access": access,
                "exam_status": "0"
            }, {
                "headers":
                {
                    "user-agent": ua(),
                    "Token": token,
                }
            })
            if (temp != null) {
                gettask = temp.body.json()
            }
        }
        catch (err) {
            log(err)
        }

    }
    function 提交任务() {
        toastLog("提交任务")
        try {
            temp = http.post('http://zcore.zqzan.com/app/douyin/submit/task', {
                "doit_id": gettask.data.id,
                "shot_img": 上传.data.host + "/" + key + 上传.data.format
            }, {
                "headers":
                {
                    "Token": token,
                    "user-agent": ua(),
                    "Cookie": "sec_tc=AQAAAEi7g25/CQ8A30p3ogc5CmtmzYtX",
                }
            }).body.json();
            toastLog("提交任务成功")
        }
        catch (err) {
            log("提交失败" + err)
        }
    }
    function 放弃任务() {
        try {
            toastLog("放弃任务")
            if (gettask.data.id != null || typeof gettask.data.id != "undefined") {
                var temp = http.post('http://zcore.zqzan.com/app/douyin/giveup/task',
                    {
                        "doit_id": gettask.data.id
                    }, {
                    "headers":
                    {
                        "user-agent": ua(),
                        "Token": token,
                        "Cookie": "sec_tc=AQAAAIs2YwuUFwgA30p3Xm4W1ldPJCD1",
                    }
                }).body.json();
                toastLog("放弃任务成功")
            }
        }
        catch (err) {
            log(err)
        }
    }
}

function 小龙虾协议(){
    if (!requestScreenCapture()) {
        toast("请求截图失败");
        exit();
    }
    console.show();
    var w=device.width,h=device.height;
    var 应用 = ui.yy.getSelectedItemPosition();
    var 换号 = ui.hhgn.getSelectedItemPosition();
    var 换号次数=ui["hhcs"].getText()+"";
    sleep(500);
    console.setSize(w*0.55, h*0.25);
    sleep(1000);
    log("*************************")

    sleep (1000)
    var username = storage.get("xlxzh");
    var password = storage.get("xlxmm");
    http.get("www.baidu.com").statusCode
    log("检测当前网络")
    try {
    var 返回数据 = http.get("http://tg.bigyouxuan.com/", {
    headers: {
        'Accept-Language': 'zh-cn,zh;q=0.5',
        'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
    }
    });
    }
    catch (err) {
        log(err)
    }
    返回头=返回数据.headers
    返回头 = JSON.stringify(返回头)
    检测网络=返回头.indexOf("tguser")
    if(检测网络!=-1){
        返回数据=返回头.split("tguser=")[1]
        全局_登陆cookie=返回数据.split(" expires")[0]
        全局_登陆cookie="tguser="+全局_登陆cookie;
    }

    等待审核=0
    youxiao=1
    J=0
    sleep (1000)
    var username = storage.get("xlxzh");
    var password = storage.get("xlxmm");
    log("正在登陆【小龙虾】")
    try {
        if(检测网络!=-1){
            var 返回数据 = http.post("http://tg.bigyouxuan.com/tg/Login/in", {
            'Accept-Language': 'zh-cn,zh;q=0.5',
            'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
            'cookie': "'" + 全局_登陆cookie + "'",
            'username': username,
            'password': password
            });
        }else{
            var 返回数据 = http.post("http://tg.bigyouxuan.com/tg/Login/in", {
                'Accept-Language': 'zh-cn,zh;q=0.5',
                'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                'username': username,
                'password': password
                });
        }
    }
    catch (err) {
        log(err)
    }
    ccc=返回数据.body.string()
    ccc = JSON.stringify(ccc)
    判断1=ccc.indexOf("无效")
    判断2=ccc.indexOf("错误")
    if(判断1 != -1 || 判断2 != -1 ){
        log("》》登录失败《《");
        exit();
    }else{
        log("》》登录成功《《");
        home()
    }
    返回头=返回数据.headers
    返回头 = JSON.stringify(返回头)
    返回数据=返回头.split("tguser=")[1]
    全局_用户cookie=返回数据.split(" expires")[0]
    Cookie='UM_distinctid=1705e6f1eced0-069f387b114a9d-2d48783b-38400-1705e6f1ecf341; CNZZDATA1278270599=2057786939-1582128505-%7C1582128505; tguser=' + 全局_用户cookie;
    显示余额()
    if(ui.sxjc.checked == true){
        抖音信息监测()
        监测赞=喜欢数量
    }else if(ui.sxjc.checked == false){
    }
    sleep (500)
while(true){
    while(true){
        if(F==0){
            log("开始获取任务")
        }else{
            log("开始重新获取任务")
        }
        try {
            var temp=http.get('http://tg.bigyouxuan.com/tg/DouYin/taskList?tp=2',
            {
                "headers":
                {
                    'Accept-Language': 'zh-cn,zh;q=0.5',
                    'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                    'cookie': Cookie
            }}).body.json();
        }
        catch (err) {
            log(err)
        }
        zzz = JSON.stringify(temp)
        判断=zzz.indexOf("点赞")
        审核=zzz.indexOf("审核失败")
        if(判断!=-1){
            log("获取到任务，开始领取")
            break
        }else{
            if(审核!=-1){
                if(自动换号==1){
                    等待审核++
                    if(等待审核==3){
                        log("连续审核失败，开始换号")
                        二合一=0
                        抖音换号()
                        log("等待五分钟...")
                        sleep(60000)
                        log("等待四分钟...")
                        sleep(60000)
                        log("等待三分钟...")
                        sleep(60000)
                        log("等待二分钟...")
                        sleep(60000)
                        log("还剩一分钟...")
                        sleep(60000)
                        log("等待结束")
                        log("*************************")
                        console.setSize(w*0.55, h*0.25);
                        等待审核=0
                    }else if(等待审核==2){
                        log("审核失败，等待一次")
                        log("等待五分钟...")
                        sleep(60000)
                        log("等待四分钟...")
                        sleep(60000)
                        log("等待三分钟...")
                        sleep(60000)
                        log("等待二分钟...")
                        sleep(60000)
                        log("还剩一分钟...")
                        sleep(60000)
                        log("等待结束")
                        log("*************************")
                    }else if(等待审核==1){
                        log("审核失败，二次检测")
                        log("*************************")
                    }
                    
                }else{
                    暂无任务++
                    if(二合一==1){
                        if(暂无任务==5){
                            toastLog("暂无任务五次,开始小龙虾协议")
                            暂无任务=0
                            小龙虾协议()
                        }
                    }
                    log("连续审核失败，暂停五分钟")
                    sleep(60000)
                    log("等待四分钟...")
                    sleep(60000)
                    log("等待三分钟...")
                    sleep(60000)
                    log("等待二分钟...")
                    sleep(60000)
                    log("还剩一分钟...")
                    sleep(60000)
                    log("等待结束")
                    log("*************************")
                }
            }else{
                log("未找到任务,两秒后刷新")
                log("已为您执行了"+F+"个任务")
                log("*************************")
                暂无任务++
                if(二合一==1){
                    if(暂无任务==5){
                        toastLog("暂无任务五次,开始小龙虾协议")
                        暂无任务=0
                        攒攒协议()
                    }
                }
                sleep(2000)
            }
        }

    }
    if(等待审核==1){
        等待审核=0
    }
    暂无任务=0
    wwww=temp.result.dataList
    wwww = JSON.stringify(wwww)
    zid=wwww.substring(8, 14);
    try {
    var temp1=http.get('http://tg.bigyouxuan.com/tg/DouYin/getTaskData?id='+zid+'_2',
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
    }
    catch (err) {
        log(err)
    }
    try {
        var 返回数据 = http.get('http://tg.bigyouxuan.com/tg/DouYin/copyTaskData?id='+zid+'_2', {
            headers: {
                'Accept-Language': 'zh-cn,zh;q=0.5',
                'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                'cookie': Cookie
            }
        });
        var 返回json = 返回数据.body.json();
        if (返回json.msg == "任务无效" || 返回json.msg == "您操作太频繁，请稍后再试") {
            zid = null;
        } else {
            log("任务ID" + zid + "领取成功")
            全局_得到任务 = true;
            sleep(1000);
        }
    }
    catch (err) {
        log(err)
    }



    if(zid!=null) {
        if(应用 == 1){
            setClip("https://www.iesdouyin.com/share/video/"+uid+"/?region=CN")
            sleep(500)
            app.launchApp("抖音极速版")
        time = 1
        while (true) {
            var 打开看看 = textContains("打开看看").findOne(3000)
            var 前往 = text("前往").findOne(3000)
            if (打开看看 != null) {
                sleep(1000)
                打开看看.click()
                break
            }
            if (前往 != null) {
                sleep(1000)
                前往.click()
                break
            }
            sleep(500)
            time++
            if (time >= 10) {
                结束模块("抖音极速版")
                break
            }
            if (time == 3 || time == 6) {
                home()
                toastLog("未找到入口重新进入")
                setClip("https://www.iesdouyin.com/share/video/"+uid+"/?region=CN")
                sleep(2000)
                app.launchApp("抖音极速版")
            }
            sleep(1500)
        }
        }else if(应用 == 0){
            try {
                var tmp = "snssdk1128://aweme/detail/" + uid + "?refer=web&gd_label=click_wap_detail_download_feature"
                app.startActivity({
                    data: tmp
                });
                }
                catch (err) {
                    log(err)
                }
        }else if(应用 == 2||应用 == 3){
            var tmp = "snssdk1112://item?detail_label=return_page&id="+ uid
            app.startActivity({
                data: tmp
            });
        }
        sleep(1000)
        if(应用 == 3){
            检测是否进入=desc("返回").findOnce()
            while(检测是否进入==null){
                sleep(1000)
                检测是否进入=desc("返回").findOnce()
                log("等待进入视频")
            }
            sleep(2000)
            log("成功进入视频")
            作者检测=text("送火苗").findOnce()
            if(作者检测==null){
                log("视频作者未开通抖音火山版，正在跳转普通版")
                try {
                    var tmp = "snssdk1128://aweme/detail/" + uid + "?refer=web&gd_label=click_wap_detail_download_feature"
                    app.startActivity({
                        data: tmp
                    });
                    }
                catch (err) {
                    log(err)
                }
                检测是否进入=className("android.widget.LinearLayout").find()
                检测=检测是否进入[4]
                检测 = JSON.stringify(检测)
                while(检测!=undefined){
                    sleep(1000)
                    检测是否进入=className("android.widget.LinearLayout").find()
                    检测=检测是否进入[4]
                    检测 = JSON.stringify(检测)
                    log("等待进入视频")
                }
                sleep(2000)
                log("成功进入视频")
                视频有效性检测()
                sleep(1000)
            }
            
        }else if(应用 == 2){
            you=1
            检测是否进入=desc("返回").findOnce()
            while(检测是否进入==null){
                sleep(1000)
                检测是否进入=desc("返回").findOnce()
                log("等待进入视频")
            }
            sleep(2000)
            log("成功进入视频")
            作者检测=text("送火苗").findOnce()
            if(作者检测==null){
                log("无效视频")
                you=0
                sleep(500)
                back()
            }
        }else{
            检测是否进入=className("android.widget.LinearLayout").find()
            检测=检测是否进入[4]
            检测 = JSON.stringify(检测)
            while(检测!=undefined){
                sleep(1000)
                检测是否进入=className("android.widget.LinearLayout").find()
                检测=检测是否进入[4]
                检测 = JSON.stringify(检测)
                log("等待进入视频")
            }
            sleep(2000)
            log("成功进入视频")
            视频有效性检测()
            sleep(1000)
        }
            if(you==1){
            sleep(2000);
            var x = device.width / 2
            var y = device.height / 2
            if (x > 10 && y > 10) {} else 
            {
                x = 500
                y = 500
            }
            log("开始随机时间点赞")
            sleep(2000)
            for (var o = 1; o < random(2, 5); o++) {
                sleep(1000)
            }
            sleep(50)
            click(x, y)
            click(x-10, y-10)
            click(x-11, y-11)
            click(x-12, y-12)
            click(x-13, y-13)
            click(x-14, y-14)
            click(x-15, y-15)
            click(x-20, y-20)
            click(x-30, y-30)
            sleep(50)
            click(x-50, y-50)
            click(x-60, y-60)
            click(x-70, y-70)
            sleep(50)
            click(x-100, y-100)
            sleep(1000)
            click(x, y)
            if(ui.sxjc.checked == true){
                抖音信息监测()
                实时赞=喜欢数量
                if(监测赞==实时赞){
                    log("未点赞成功,重新获取任务")
                    监测赞=实时赞
                }else{
                    F++
                    log("点赞成功，已执行"+F+"个任务")
                    显示余额()
                    监测赞=实时赞
                }
            }else if(ui.sxjc.checked == false){
                F++
                J++
                log("已执行"+F+"个任务")
            }
        }
            back()  
            if(F%5==3 && 应用!=2){
                sleep(1000)
                log("开始随机刷新视频")
                click(w*0.1, h*0.97)
                // click(1000,800)//随机关注
                sleep (1000)
            }
            sleep(500)        
            home()
            sleep(500) 
            home()
            log("*************************")      
    }else{
        log("无效任务，重新获取")
        log("*************************")
    }
    if(自动换号==1){
    if(换号==1){
        if(J==换号次数){
            log("已达换号次数，开始换号")
            log("*************************")
            抖音换号()
            J=0
        }
    }
    }
}
//=============显示余额==========
function 显示余额(){
    try {
    var 返回数据 = http.get("http://tg.bigyouxuan.com/tg/Home/index", {
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
    }
    catch (err) {
        log(err)
    }
    log("目前可提现金额:"+全局_可提现金额);
    }
}

function 抖音信息监测(){
    if(主页检测=0){
        log("*************************")
        抖音链接一=ui.dyljy.text();
        抖音链接二=ui.dylje.text();
        抖音链接三=ui.dyljs.text();
        console.show();
        var w=device.width,h=device.height;
        sleep(500);
        console.setSize(w*0.55, h*0.25);
        sleep(1000);
        if(当前链接==1||ui.dyy.checked == true){
            抖音链接=抖音链接一
            log("当前在线抖音小号一")
        }else if(当前链接==2||ui.dye.checked == true){
            抖音链接=抖音链接二
            log("当前在线抖音小号二")
        }else if(当前链接==3||ui.dys.checked == true){
            抖音链接=抖音链接三
            log("当前在线抖音小号三")
        }
    }else{ 
        抖音链接=ui.zyjclj.text();
    }
    抖音信息()
    toast("ID:"+抖音名字+"\n喜欢数:" + 喜欢数量 + "  " + "关注数:" + 关注数量)
    log("喜欢数:" + 喜欢数量 + "  " + "关注数:" + 关注数量)
    function 抖音信息() {
        抖音个人链接检测()
        关注检测 = "开启"
        点赞检测 = "开启"
        抖音链接 = "https:" + 抖音链接.split(":")[1]
        try{
            抖音长网址 = http.get(抖音链接)
        }catch (err) {
            toast("检测失败，请确保链接正确")
        }

        网页文本11 = JSON.stringify(抖音长网址)
        a = 网页文本11.split("\"")
        网址 = a[a.length - 10]
        userid = 网址.split("/")[5].split("?")[0]
        a = http.get(网址)
        b = a.body.string()
        c = b.split(userid)
        网页文本11 = JSON.stringify(b)
        d = c[1].split("<span class=\"num\">")
        a = d[1].match(/&#xe6[0-9a-z]+/g)
        if (d[1].search("</i>w </span>") > 0) {
            关注检测 = "关闭"
        } else {
            数据检测()
            关注数量 = 数量
        }
        a = d[5].match(/&#xe6[0-9a-z]+/g)
        if (d[5].search("</i>w </span>") > 0) {
            点赞检测 = "关闭"
        } else {
            数据检测()
            喜欢数量 = 数量
        }
        function 数据检测() {
            数量 = ""
            for (i = 0; i < a.length; i++) {
                if (a[i] == "&#xe603" || a[i] == "&#xe60d" || a[i] == "&#xe616") {
                    a[i] = 0
                } else if (a[i] == "&#xe602" || a[i] == "&#xe60e" || a[i] == "&#xe618") {
                    a[i] = 1
                } else if (a[i] == "&#xe605" || a[i] == "&#xe610" || a[i] == "&#xe617") {
                    a[i] = 2
                } else if (a[i] == "&#xe604" || a[i] == "&#xe611" || a[i] == "&#xe61a") {
                    a[i] = 3
                } else if (a[i] == "&#xe606" || a[i] == "&#xe60c" || a[i] == "&#xe619") {
                    a[i] = 4
                } else if (a[i] == "&#xe607" || a[i] == "&#xe60f" || a[i] == "&#xe61b") {
                    a[i] = 5
                } else if (a[i] == "&#xe608" || a[i] == "&#xe612" || a[i] == "&#xe61f") {
                    a[i] = 6
                } else if (a[i] == "&#xe60a" || a[i] == "&#xe613" || a[i] == "&#xe61c") {
                    a[i] = 7
                } else if (a[i] == "&#xe60b" || a[i] == "&#xe614" || a[i] == "&#xe61d") {
                    a[i] = 8
                } else if (a[i] == "&#xe609" || a[i] == "&#xe615" || a[i] == "&#xe61e") {
                    a[i] = 9
                }
                数量 = 数量 + a[i]
            }
        }
        function 抖音个人链接检测() {
            抖音链接 = "https:" + 抖音链接.split(":")[1]
            try{
                抖音长网址 = http.get(抖音链接)
            }catch (err) {
                toast("检测失败，请确保链接正确")
            }
            网页文本11 = JSON.stringify(抖音长网址)
            a = 网页文本11.split("\"")
            网址 = a[a.length - 10]
            if (网址.split("/")[4] == "user") {
                userid = 网址.split("/")[5].split("?")[0]
                a = http.get(网址)
                b = a.body.string()
                c = b.split(userid)
                d = c[1].split("<span class=\"num\">")
                抖音名字 = d[0].match(new RegExp(">" + "(\\S*)" + "</p><p class=\"shortid\">"))[1]
                抖音的链接 = "正确"
            } else {
                抖音的链接 = "错误"
            }
        }
    }

}
function 视频有效性检测() {
    chetime = 1
    while (true) {
        you = 1
        var img = captureScreen()
        var a = (colors.toString(images.pixel(img, device.width / 2, device.height / 2)))
        var b = (colors.toString(images.pixel(img, device.width / 2, device.height / 4)))
        var c = (colors.toString(images.pixel(img, device.width / 2, device.height * 3 / 4)))
        if (a == "#ff000000" && b == "#ff000000" && c == "#ff000000") {
            chetime++
            if (chetime > 2) {
                you = 0
                toastLog("问题视频")
                break
            }

        }
        else {
            break
        }
    }

}
}

//======================================================================================================================
//=============================截图宝===================================================================================
ui.jtbzz.click(function(){
    app.openUrl("http://mm.tbqxljv.cn/invite/ssb?mid=1049606")
});
ui.jtbyd.click(function(){
        threads.start(截图宝脚本);
});
function 截图宝脚本(){ 
    放弃=0
    F=0
    var w=device.width,h=device.height;
    toast("请同意截图权限")
    sleep(500)
    if (!requestScreenCapture()) { alert("请求截图权限失败！"); exit(); };  //设置截图失败退出脚本

if(F == 0){
    toast("正在打开截图宝")
    launchApp("截图宝")
    sleep(3000)
    确定 =text("确定").findOne(5000)
    while(确定!=null){
        zb=确定.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        确定 =text("确定").findOnce()
    }
    toast("师徒检测")
    个人中心检测 =textContains("师傅ID").findOnce()
    if(个人中心检测==null){
        个人中心 =textContains("个人中心").findOnce()
        zb=个人中心.bounds()
        click(zb.centerX(),zb.centerY())
        sleep(1000)
        邀请码 =textContains("邀请码").findOnce()
        zb=邀请码.bounds()
        click(zb.centerX(),zb.centerY())
        sleep(500)
        setText("1049606")
        sleep(500)
        提交邀请码 =textContains("提交邀请码").findOnce()
        zb=提交邀请码.bounds()
        click(zb.centerX(),zb.centerY())
        sleep(1000)
        任务中心 =textContains("任务中心").findOnce()
        zb=任务中心.bounds()
        click(zb.centerX(),zb.centerY())
    }
    sleep(1000)
    个人中心检测 =textContains("师傅ID").findOnce()
    
    师傅ID=个人中心检测.text()
    
    if(师傅ID=="师傅ID: 1049606"){
        toast("确认为徒弟")
    }else if(激活==0){
        toast("不是徒弟")
        sleep(1000)
        dialogs.build({
            title: "提示",
            content: "未激活，请先激活应用！",
            negative: "取消",
        }).show();
        exit();
    }else if(激活==1){
        toast("不是徒弟,但已激活")
    }
    sleep(1000)
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
    领取任务 =text("领取任务").findOne(2000)
    while(领取任务!=null){
        zb=领取任务.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (2000)
        领取任务 =text("领取任务").findOnce()
    }
    弹窗 = text("我知道了").findOne(2000)
    while(弹窗!=null){
        zb=弹窗.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        弹窗 = text("我知道了").findOnce()
    }
    做任务 =text("打开DY做任务").findOne(1000)
    while(做任务==null){
        sleep (2000)
        无任务1=text("正在为您配置任务,请10秒后重试！").findOnce()
        while(无任务1!=null){
        确定 =text("确定").findOne(2000)
        while(确定!=null){
            zb=确定.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (1000)
            确定 =text("确定").findOnce()
        }
        console.show();
        sleep (500)
        console.setSize(w*0.55, h*0.25);
        log("无任务等待10秒继续")
        sleep (8000)
        console.hide()
        sleep (500)
        抖音任务 =text("看抖抖视频").findOne(1000)
        while(抖音任务!=null){
            zb=抖音任务.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            抖音任务 =text("看抖抖视频").findOnce()
        }
        领取任务 =text("领取任务").findOne(2000)
        while(领取任务!=null){
            zb=领取任务.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (1000)
            领取任务 =text("领取任务").findOnce()
        }
        sleep (2000)
        无任务1=text("正在为您配置任务,请10秒后重试！").findOnce()
        }
        无任务2=textContains("再接着做任务").findOnce()
        while(无任务2!=null){
        等待时间=无任务2.text()
        显示时间=等待时间.split("请")[1]
        显示时间=显示时间.split("吧")[0]
        等待时间分=等待时间.split("等")[1]
        等待时间分=等待时间分.split("分")[0]
        等待时间秒=等待时间.split("分")[1]
        等待时间秒=等待时间秒.split("秒")[0]
        等待时间=(等待时间分*60+等待时间秒*1)*1000
        确定 =text("确定").findOne(2000)
        while(确定!=null){
            zb=确定.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (1000)
            确定 =text("确定").findOnce()
        }
        console.show();
        sleep (500)
        console.setSize(w*0.55, h*0.25);
        log(显示时间)
        sleep (等待时间)
        console.hide()
        sleep (500)
        领取任务 =text("领取任务").findOne(2000)
        while(领取任务!=null){
            zb=领取任务.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (1000)
            领取任务 =text("领取任务").findOnce()
        }
        sleep (2000)
        无任务2=textContains("再接着做任务").findOnce()
        }
        弹窗 = text("我知道了").findOnce()
        while(弹窗!=null){
            zb=弹窗.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            弹窗 = text("我知道了").findOnce()
        }
        无任务 = textContains("今日任务已做完").findOnce()
        while(无任务!=null){
            dialogs.build({
                title: "提示",
                content: "已完成今日任务，欢迎下次使用！",
                negative: "取消",
            }).show();
            exit();
        }
        做任务 =text("打开DY做任务").findOnce()
    }
    点赞任务 = text("任务类型: ").findOnce().parent().findOne(textContains("点赞"))
    关注任务 = text("任务类型: ").findOnce().parent().findOne(textContains("关注"))
    评论任务 = text("任务类型: ").findOnce().parent().findOne(textContains("评论"))
    console.show();
    sleep (500)
    console.setSize(w*0.55, h*0.25);
    if(点赞任务!=null){
        log("识别为：点赞任务")
        点赞123();
    }
    if(关注任务!=null){
        if(ui.jtbgz.checked == true){
            log("识别为：关注任务")
            关注123();
        }else if(ui.jtbgz.checked == true){
            log("不做关注任务！")
            back()
            确定 =text("确定").findOne(2000)
            while(确定!=null){
                zb=确定.bounds()
                click(zb.centerX(),zb.centerY())
                sleep (500)
                确定 =text("确定").findOnce()
            }
            sleep(1000)
            console.hide()
        }

    }
    if(评论任务!=null){
        log("不做评论任务！")
        back()
        确定 =text("确定").findOne(2000)
        while(确定!=null){
            zb=确定.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            确定 =text("确定").findOnce()
        }
        sleep(1000)
        console.hide()
    }

}


function 关注123(){
    做任务 =text("打开DY做任务").findOnce()
    while(做任务!=null){
        zb=做任务.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        做任务 =text("打开DY做任务").findOnce()
    }
    sleep (1000)
    确定 =text("确定").findOnce()
    while(确定!=null){
        zb=确定.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        确定 =text("确定").findOnce()
    }
    console.hide()
    sleep(500)
    复制内容 = textContains("复制成功").findOne(2000)
    if(复制内容!=null){
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
            sleep (1000)
            搜索=id("qk").findOne(5000)
            while(搜索!=null){
                zb=搜索.bounds()
                click(zb.centerX(),zb.centerY())
                sleep (500)
                搜索 =id("qk").findOnce()
        }

        sleep (1000)
        setText(复制内容)
        sleep(1000)
            搜索=text("搜索").findOne(2000)
            zb=搜索.bounds()
            click(zb.centerX(),zb.centerY())

        sleep(2000)
            关注=className("android.widget.RelativeLayout").depth(9).findOnce()
            if(关注!=null){
                zb=关注.bounds()
                click(device.width*0.9,zb.centerY())  
                sleep(1000)
                截屏()
                sleep(1000)
                F++  
            }else{
                log("找不到，放弃任务！");
                放弃=1
            }
        sleep(500)
        back()  
    }else{
        关注 =text("私信").findOne(5000)
            if(关注!=null){
                关注检测=text("取消关注").findOnce()
                if(关注检测==null){
                    关注 =text("关注").findOnce()
                    zb=关注.bounds()
                    click(zb.centerX(),zb.centerY())
                    sleep(1000)
                    关注检测=text("取消关注").findOnce()
                }
                sleep(1000)
                截屏()
                sleep(1000)
                F++  
            }else{
                log("找不到，放弃任务！");
                放弃=1
            }
    }
    sleep(500)
    back()   
    sleep(500)
    launchApp("截图宝")
    sleep(1000)
    if(放弃==0){
        上传截图()
        sleep(2000)
        log("已为您成功执行了"+F+"个任务")
        log("*********************")
    }else{
        back()
        确定 =text("确定").findOne(2000)
        while(确定!=null){
            zb=确定.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            确定 =text("确定").findOnce()
        }
        sleep(1000)
        放弃=0
    }    
}


function 点赞123(){
    做任务 =text("打开DY做任务").findOne(2000)
    while(做任务!=null){
        zb=做任务.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        做任务 =text("打开DY做任务").findOnce()
    }
    确定 =text("确定").findOne(2000)
    while(确定!=null){
        zb=确定.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        确定 =text("确定").findOnce()
    }
    sleep(500)
    检测是否跳转=text("打开DY做任务").findOnce()
    if(检测是否跳转==null){
        检测是否进入=className("android.widget.LinearLayout").depth(1).findOnce()
        while(检测是否进入==null){
            sleep(500)
            检测是否进入=className("android.widget.LinearLayout").depth(1).findOnce()
        }
        toast("成功进入视频")
        sleep(1000)
        console.hide()
        var x = device.width / 2
        var y = device.height / 2
        sleep(1000);
        sleep(50)
        click(x, y)
        click(x-10, y-10)
        click(x-11, y-11)
        click(x-12, y-12)
        click(x-13, y-13)
        click(x-14, y-14)
        click(x-15, y-15)
        click(x-20, y-20)
        click(x-30, y-30)
        sleep(50)
        click(x-50, y-50)
        click(x-60, y-60)
        click(x-70, y-70)
        sleep(50)
        click(x-100, y-100)
        click(x, y)
        toast("点赞结束");
        截屏()
        sleep(1000)
        F++
        back()           
        sleep(500)
        launchApp("截图宝")
        sleep(500)
        上传截图()
        log("已为您成功执行了"+F+"个任务")
        log("*********************")
    }else{
        toast("不跳转，放弃！")
        back()
        确定 =text("确定").findOne(2000)
        while(确定!=null){
            zb=确定.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            确定 =text("确定").findOnce()
        }
        sleep(1000)
        放弃=0
    }

    
}


function 截屏(){
    files.ensureDir("/sdcard/Pictures/AAAAA/")
    var im = captureScreen();
    var path = "/sdcard/Pictures/AAAAA/" + (new Date).getTime() + ".png"
    im.saveTo(path);
    media.scanFile(path);
    toast("截图完成");
} 

function 上传截图(){
    上传检测=text("您上传的截图").findOne(2000)
    while(上传检测==null){
        sleep(1000)
        上传检测=text("您上传的截图").findOnce()
    }
    上传 = className("android.widget.RelativeLayout").depth("12").findOne(2000)
    while(上传!=null){
        zb=上传.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        上传 = className("android.widget.RelativeLayout").depth("12").findOnce()
    }
    直接上传=text("你可能要上传的截图").findOne(2000)
    if(直接上传!=null){
    确定 =text("确定").findOnce()
    while(确定!=null){
        zb=确定.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        确定 =text("确定").findOnce()
    }
    }else{
        选中= className("android.widget.TextView").depth("8").findOne(2000)
        选中zb=选中.bounds()
        click(选中zb.centerX(),选中zb.centerY())
        确定 =text("确定(1)").findOne(2000)
        while(确定!=null){
            zb=确定.bounds()
            click(zb.centerX(),zb.centerY())
            sleep (500)
            确定 =text("确定(1)").findOnce()
        }
    }
    提交任务 =text("提交任务").findOne(2000)
    while(提交任务!=null){
        zb=提交任务.bounds()
        click(zb.centerX(),zb.centerY())
        sleep (500)
        提交任务 =text("提交任务").findOnce()
    }
    sleep(1000)
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

//======================================================================================================================
//=============================攒攒阅读===================================================================================

ui.zzyd.click(function(){

        if(激活==1){
            threads.start(攒攒阅读脚本);
        }else{
            dialogs.build({
                title: "提示",
                content: "未激活，请先激活应用！",
                negative: "取消",
            }).show();
        }
});
function 攒攒阅读脚本(){
    var w=device.width,h=device.height;
    F=0
    console.show()
    sleep(1000)
    console.setSize(w*0.48, h*0.2);
    sleep(1000)
    while(text("开始阅读").findOnce()==null){
        sleep(1000)
        log("等待进入阅读界面");
    }
    log("成功进入，开始阅读~");
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
                log("成功执行了"+F+"个任务")
                log("*******************")
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
    
    }
}

//=====================================================================================================================
//=============================蛙蛙赚====================================================================================
ui.wwzyx.click(function(){
    if(激活==1){
        threads.start(蛙蛙赚脚本);
    }else{
        dialogs.build({
            title: "提示",
            content: "未激活，请先激活应用！",
            negative: "取消",
        }).show();
    }



});

function 蛙蛙赚脚本(){
    F=0
    var w=device.width,h=device.height;
    log("请同意截图权限")
    sleep(500)
    console.show();
    sleep (500)
    console.setSize(w*0.55, h*0.25);
    if (!requestScreenCapture()) { alert("请求截图权限失败！"); exit(); };  //设置截图失败退出脚本
    
    storage = storages.create("全享@QQ1651669686");
    gzxzb=storage.get("gzxzb");
    gzyzb=storage.get("gzyzb");
    if(gzxzb==null){
        log("未读取到关注坐标")
        log("正在找抖音关注坐标,请手动进入抖音主页")
        app.launchApp("抖音短视频")
        首页=text("消息").findOne(6000)
        click(w*0.1,h*0.95)
        sleep(2000)
        swipe(w*0.9, h/2, w*0.1, h/2, 500);
        while(true){
            sleep(3000)
            取消关注=text("取消关注").findOnce()
            if(取消关注==null){
                关注1=id("ni").findOnce()
                关注2=id("dgn").findOnce()
                关注3=id("bh8").findOnce()
                关注4=id("dhq").findOnce()
                if(关注1!=null||关注2!=null||关注3!=null||关注4!=null){
                    if(关注1!=null){
                        关注zb = 关注1.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        log("找到关注坐标"+关注zbx+","+关注zby)
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else if(关注2!=null){
                        关注zb = 关注2.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        log("找到关注坐标"+关注zbx+","+关注zby)
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else if(关注3!=null){
                        关注zb = 关注3.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        log("找到关注坐标"+关注zbx+","+关注zby)
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }else if(关注4!=null){
                        关注zb = 关注4.bounds()
                        关注zbx = 关注zb.centerX()
                        关注zby = 关注zb.centerY()
                        log("找到关注坐标"+关注zbx+","+关注zby)
                        swipe(w*0.1, h/2, w*0.9, h/2, 500);
                        break
                    }
                }
            }else{
                log("未找到关注坐标，换视频!")
                back()
                sleep(3000)
                click(w*0.1,h*0.95)
                sleep(3000)
                swipe(w*0.9, h/2, w*0.1, h/2, 500);
                sleep(3000)
            }
        }
    }else{
        log("读取到关注坐标为("+gzxzb+","+gzyzb+")")
        关注zbx=gzxzb
        关注zby=gzyzb
    }
    sleep(1000)
    
    if(F == 0){
    log("正在打开蛙蛙赚")
    launchApp("蛙蛙赚")
    sleep(3000)
    log("蛙蛙赚初始化，请手动进入首页")
    sleep(5000)
    click(w*0.1, h*0.9)
    sleep (1000)
    抖音任务 = text("大量任务").find()
    抖音任务zb = 抖音任务[0].bounds()
    click(抖音任务zb.centerX(),抖音任务zb.centerY())
    sleep (1000)
    }
    while(true){
        领取任务 = className("android.view.ViewGroup").clickable(true).depth(12).findOne()
        领取任务.click()
        检查任务 = textContains("剩余时间").findOne(3000)
        if(检查任务!= null){
            关注任务 = text("逗音关注").findOnce()
            点赞任务 = text("逗音点赞").findOnce()
            if(点赞任务 != null || 关注任务 != null){
                if (点赞任务 != null){
                    log("识别为 点赞任务");
                    点赞123();
                }
                if (关注任务 != null){
                    log("识别为 关注任务");
                    关注123();
                }
            }else{
                log("不做套餐和评论，放弃任务");
                click(670,100)
                sleep(1000)
                放弃任务=className("android.widget.TextView").text("放弃任务").findOne()
                放弃任务zb = 放弃任务.bounds()
                click(放弃任务zb.centerX(),放弃任务zb.centerY())
                sleep(1000);
            }
        }else
        {
            log("重新领取");
            sleep(1000);
        }
        sleep(1000);
    }
    
    function 关注123(){
        点击复制= text("点击复制").findOnce()
        点击复制zb = 点击复制.bounds()
        click(点击复制zb.centerX(),点击复制zb.centerY())
        sleep(500)
        复制内容 = textContains("复制成功").findOne(2000)
        if(复制内容!=null){
            复制内容 = 复制内容.text()
            复制内容=复制内容.split("复制成功: ")[1]
            打开DY视频 =text("自动复制打开").findOne(2000)
            while(打开DY视频!=null){
                zb=打开DY视频.bounds()
                click(zb.centerX(),zb.centerY())
                sleep (500)
                打开DY视频 =text("自动复制打开").findOnce()
            }
            console.hide()
            搜索=text("推荐").findOne(5000)
            while(搜索!=null){
                zb=搜索.bounds()
                click(w*0.95,zb.centerY())
                sleep (500)
            搜索=text("推荐").findOnce()
            }
                sleep (1000)
                setText(复制内容)
                sleep(1000)
            click(w*0.95,h*0.93)
            sleep (1000)
            用户=text("用户").findOne(2000)
            关注=className("android.widget.RelativeLayout").depth(17).findOnce()
            while(关注==null){
                zb=用户.bounds()
                click(zb.centerX(),zb.centerY())
                sleep (500)
                搜索=text("用户").findOnce()
                关注=className("android.widget.RelativeLayout").depth(17).findOnce()
            }
            sleep (500)
            zb=关注.bounds()
            click(device.width*0.9,zb.centerY()) 
        }else{
            sleep(3000);
            视频有效性检测()
            sleep(2000);
            if(you==0){
                you=1
                放弃任务()
            }else{
                swipe(w*0.9, h/2, w*0.1, h/2, 500);
                log("开始关注");
                sleep(2000);
                click(关注zbx,关注zby)
                log("关注成功");
            }
        }
        
        sleep(1000)
        截屏()
        console.show();
        sleep (500)
        console.setSize(w*0.55, h*0.25);
        back()
        sleep(500)
        back()
        上传截图()
    }
    
    function 点赞123(){
            点击复制= text("点击复制").findOnce()
            点击复制zb = 点击复制.bounds()
            click(点击复制zb.centerX(),点击复制zb.centerY())
            waitForPackage("com.ss.android.ugc.aweme")
            sleep(3000);
            视频有效性检测()
            sleep(2000);
            if(you==0){
                you=1
                放弃任务()
            }else{
                var x = device.width / 2
                var y = device.height / 2
                sleep(1000);
                sleep(50)
                click(x, y)
                click(x-10, y-10)
                click(x-11, y-11)
                click(x-12, y-12)
                click(x-13, y-13)
                click(x-14, y-14)
                click(x-15, y-15)
                click(x-20, y-20)
                click(x-30, y-30)
                sleep(50)
                click(x-50, y-50)
                click(x-60, y-60)
                click(x-70, y-70)
                sleep(50)
                click(x-100, y-100)
                click(x, y)
                log("点赞成功");
                截屏();
                sleep(2000);
                back();
                上传截图();
                sleep(2000);
            }
    }
    
    function 视频有效性检测()
    {
        chetime=1
        while(true)
        {
            you=1
            log("检测视频有效性")
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
                    log("问题视频")
                    break
                }
    
            }
            else{
                log("视频有效")
                break
            }
            sleep(2500)
        }
    
    }
    
    function 放弃任务()
    {
            back();
            sleep(1000)
            launchApp("蛙蛙赚")
            sleep(1000);
        click(670,100)
        sleep(1000)
        放弃任务=className("android.widget.TextView").text("放弃任务").findOne()
        放弃任务zb = 放弃任务.bounds()
        click(放弃任务zb.centerX(),放弃任务zb.centerY())
        sleep(1000);
    }
    
    function 截屏(){
        files.ensureDir("/sdcard/Pictures/AAAAA/")
        var im = captureScreen();
        var path = "/sdcard/Pictures/AAAAA/" + (new Date).getTime() + ".png"
        im.saveTo(path);
        media.scanFile(path);
        log("截图完成");
    } 
    
    
    function 上传截图()
    {
        sleep(500)
        launchApp("蛙蛙赚")
        上传=0
        上传完成=className("android.widget.TextView").text("上传成功").depth(17).findOnce()
        while(上传完成==null){
            if(上传!=0){
                log("上传失败，重新上传")
            }else{
                log("开始上传截图")
            }
            sleep(2000)
            click(w*0.75,h*0.42);
            click(w*0.75,h*0.41);
            click(w*0.75,h*0.43);
            click(w*0.74,h*0.42);
            click(w*0.76,h*0.42);
            sleep(500)
            检测进入=text("提交任务").findOnce()
            while(检测进入!=null){
                click(w*0.75,h*0.42);
                sleep(500)
                检测进入=text("提交任务").findOnce()
            }
            sleep(1000)
            click(w*0.25,h*0.3);
            click(w*0.24,h*0.3);
            click(w*0.26,h*0.3);
            click(w*0.25,h*0.31);
            click(w*0.25,h*0.29);
            sleep(500)
            检测退出=text("提交任务").findOnce()
            while(检测退出==null){
                click(w*0.25,h*0.3);
                sleep(500)
                检测退出=text("提交任务").findOnce()
            }
            上传完成=className("android.widget.TextView").text("上传成功").depth(17).findOnce()
            上传++
        }
        提交任务=className("android.widget.TextView").text("提交任务").depth(16).findOne()
        提交任务zb=提交任务.bounds()
        click(提交任务zb.centerX(),提交任务zb.centerY())
        log("上传完成")
        sleep(1000)
        F++
        log("全享通已为您成功执行了"+F+"个任务");
    }
    
    
    
    
    
    
    
    
    }
//=====================================================================================================================
//=============================集卡帮====================================================================================


    ui.jkbyx.click(function(){
        if(激活==1){
            threads.start(集卡帮脚本);
        }else{
            dialogs.build({
                title: "提示",
                content: "未激活，请先激活应用！",
                negative: "取消",
            }).show();
        }
    });
function 集卡帮脚本(){
    console.show(); 
    var w=device.width,h=device.height;
    sleep(500);
    console.setSize(w*0.6, h*0.25);
    log("开始运行集卡帮脚本")    
    sleep(1000);
    F=0
    没任务 = 0
    app.launchPackage("com.ss.android.ugc.aweme")
    toast("等待抖音界面")
    sleep(2000)
    do {
        sleep(500)
    } while (packageName("com.ss.android.ugc.aweme").find().length == 0)
    sleep(1000)
    app.launchPackage("com.roc.dy")
    sleep(1000)
    do { sleep(500) } while (text("电音账号").find().length == 0 && text("电音账号 ").find().length == 0 && desc("电音账号").find().length == 0 && desc("电音账号 ").find().length == 0)
    sleep(500)
    setClip("")
    log("初始化完成")  
    while (true) {
        if (没任务 > 5) {
            没任务 = 0
            toast("连续5次没任务，休息5秒")
            sleep(5000)
        }
        sleep(500)
        if (text("确定 ").find().length > 0) {
            text("确定 ").find()[0].click()
        } else if (text("确定").find().length > 0) {
            text("确定").find()[0].click()
        } else if (text("点赞任务 ").find().length > 0) {
            text("点赞任务 ").find()[0].click()
        } else if (text("点赞任务").find().length > 0) {
            text("点赞任务").find()[0].click()
        } else if (desc("点赞任务").find().length > 0) {
            desc("点赞任务").find()[0].click()
        } else if (desc("点赞任务 ").find().length > 0) {
            desc("点赞任务 ").find()[0].click()
        }
        do {
            网址 = getClip()
            sleep(500)
        } while (网址 == "" && text("确定 ").find().length == 0 && text("确定").find().length == 0)
        log("成功获取到任务")
        sleep(500)
        //log("\"" + 网址 + "\'")
        if (网址 != "") {
            sleep(500)
            任务类型 = "点赞任务"
            sleep(1000)
            if (text("确定 ").find().length > 0 || text("确定").find().length > 0) {
                if (text("确定 ").find().length > 0) {
                    text("确定 ").find()[0].click()
                } else if (text("确定").find().length > 0) {
                    text("确定").find()[0].click()
                }
                没任务 = 没任务 + 1
                sleep(1000)
            } else {
                没任务 = 0
                toast("跳转任务页面")
                aweme_id = 网址.split("/")[5]
                app.startActivity({
                    action: "VIEW",
                    data: "snssdk1128://aweme/detail/" + aweme_id + "?refer=web&gd_label=click_wap_download_banner&appParam=&needlaunchlog=1",
                    packageName: "com.ss.android.ugc.aweme",
                });
                sleep(2000)
                检测是否进入=className("android.widget.LinearLayout").find()
                检测=检测是否进入[4]
                检测 = JSON.stringify(检测)
                while(检测!=undefined){
                    sleep(1000)
                    检测是否进入=className("android.widget.LinearLayout").find()
                    检测=检测是否进入[4]
                    检测 = JSON.stringify(检测)
                    log("等待进入视频")
                }
                sleep(1000)
                log("成功进入视频，随机时间点赞")
                sleep(2000);
                var x = device.width / 2
                var y = device.height / 2
                if (x > 10 && y > 10) {} else 
                {
                    x = 500
                    y = 500
                }
                sleep(2000)
                for (var o = 1; o < random(2, 5); o++) {
                    sleep(1000)
                }
                sleep(50)
                click(x, y)
                click(x-10, y-10)
                click(x-11, y-11)
                click(x-12, y-12)
                click(x-13, y-13)
                click(x-14, y-14)
                click(x-15, y-15)
                click(x-20, y-20)
                click(x-30, y-30)
                sleep(50)
                click(x-50, y-50)
                click(x-60, y-60)
                click(x-70, y-70)
                sleep(50)
                click(x-100, y-100)
                sleep(1000)
                click(x, y)
                sleep(500)
                back()
                sleep(1000)
                app.launchPackage("com.roc.dy")
                sleep(1000)
                do { sleep(500) } while (text("电音账号").find().length == 0 && text("电音账号 ").find().length == 0 && desc("电音账号").find().length == 0 && desc("电音账号 ").find().length == 0 && text("确定").find().length == 0 && text("确定 ").find().length == 0)
                sleep(200)
                if (text("确定 ").find().length > 0) {
                    text("确定 ").find()[0].click()
                } else if (text("确定").find().length > 0) {
                    text("确定").find()[0].click()
                }
                sleep(800)
                if (text("点赞提交 ").find().length > 0) {
                    text("点赞提交 ").find()[0].click()
                } else if (text("点赞提交").find().length > 0) {
                    text("点赞提交").find()[0].click()
                } else if (desc("点赞提交").find().length > 0) {
                    desc("点赞提交").find()[0].click()
                } else if (desc("点赞提交 ").find().length > 0) {
                    desc("点赞提交 ").find()[0].click()
                }
                setClip("")
                do { sleep(500) } while (text("确定").find().length == 0)
                sleep(500)
                if (text("确定 ").find().length > 0) {
                    text("确定 ").find()[0].click()
                } else if (text("确定").find().length > 0) {
                    text("确定").find()[0].click()
                }
                sleep(1000)
                if (text("获取今日点赞量 ").find().length > 0) {
                    text("获取今日点赞量 ").find()[0].click()
                } else if (text("获取今日点赞量").find().length > 0) {
                    text("获取今日点赞量").find()[0].click()
                } else if (desc("获取今日点赞量").find().length > 0) {
                    desc("获取今日点赞量").find()[0].click()
                } else if (desc("获取今日点赞量 ").find().length > 0) {
                    desc("获取今日点赞量 ").find()[0].click()
                }
                F++
                log("已执行"+F+"个任务")
                log("*************************")     
                sleep(1000)
            }
        } else {//点击点赞任务之后弹框或者无任务
            if (text("确定 ").find().length > 0 || text("确定").find().length > 0) {
                if (text("确定 ").find().length > 0) {
                    text("确定 ").find()[0].click()
                } else if (text("确定").find().length > 0) {
                    text("确定").find()[0].click()
                }

            }
            没任务 = 没任务 + 1
            sleep(1000)
            log("暂无任务，重新获取任务")
            log("*************************")    
        }
        sleep(1000)

    }

}

//=====================================================================================================================
//=============================秘乐====================================================================================
ui.mlyx.click(function(){
        threads.start(秘乐脚本);
        toast("此功能免费试用！现在开始运行~") 
});


function 秘乐脚本(){
    console.show();
    var w=device.width,h=device.height;
    var i=1;
    if(组合==1){
        分钟数= ui.mlfz1.getText(); 
    }else{
        分钟数= ui.mlfz.getText(); 
    }
    sleep(1000);
    console.setSize(w*0.48, h*0.2);
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
            swipe(w*0.2, h*0.8, w*0.2, h*0.1, 500);  //滑动
            log("刷视频")
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
    threads.start(魔视更新脚本);
});

   
function 魔视更新脚本(){
    var w=device.width,h=device.height;
    console.show();
    sleep(1000);
    console.setSize(w*0.48, h*0.2);
    var i=1;
    if(组合==1){
        分钟数= ui.msfz1.getText(); 
    }else{
        分钟数= ui.msfz.getText(); 
    }
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
        click(w*0.5,h*0.3)
        sleep(1000)
        var 分享=id("view_press_like").findOnce()
        var 点赞=id("collect").clickable(true).findOnce()
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
    threads.start(牛角更新脚本)
});

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
 if(组合==1){
    分钟数= ui.njfz1.getText(); 
}else{
    分钟数= ui.njfz.getText(); 
}
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
 
 if(分钟数==0){
    log("开始无限时间阅读")
}else{
    log("开始刷"+分钟数+"分钟阅读")
}
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
    if(i==分钟数){
       break
    }
}
log("已完成"+i+"分钟阅读")
log("欢迎下次使用")
}


ui.njyxroot.click(function(){
    threads.start(牛角root更新脚本)
});

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
if(组合==1){
    分钟数= ui.njfz1.getText(); 
}else{
    分钟数= ui.njfz.getText(); 
}
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
 if(分钟数==0){
    log("开始无限时间阅读")
}else{
    log("开始刷"+分钟数+"分钟阅读")
}
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
     if(i==分钟数){
        break
     }
}
log("已完成"+i+"分钟阅读")
log("欢迎下次使用")
}

//============================================================================================================================
//=======================================攒攒普通协议=========================================================================

ui.zzptxy.on("click", () =>{
    var content1=ui["zzsetName"].getText()+"";
    storage.put("zzsetName",content1);
    var content2=ui["zzsetPassword"].getText()+"";
    storage.put("zzsetPassword",content2);
    if(激活==1){
        threads.start(function() {
            攒攒普通协议();
        });
    }else{
        dialogs.build({
            title: "提示",
            content: "未激活，请先激活应用！",
            negative: "取消",
        }).show();
    }

});
function 攒攒普通协议(){

    if (!requestScreenCapture()) {
        toastLog("请求截图失败");
        exit();
    }
    F=0
    var zzzh = ui.zzsetName.text();
    var zzmm = ui.zzsetPassword.text();
    var w=device.width,h=device.height;
    toast("正在打开>>抖音")
    launchApp("抖音短视频")
    sleep (3000)
    toastLog("正在登陆【攒攒】")
    sleep (1000)  
    log("正在登陆【攒攒】")
    sleep (1000)  
    var a = 攒攒登录(zzzh, zzmm)
    token = a.data.token
    toastLog("登陆成功")
    while (true) {
        getinfo()
        if (info != null) {
            if (info.data.is_signed == false) {
                toastLog("未签到,开始签到")
                截图签到()
                签到上传模块()
            }
            else if (info.data.is_signed == true) {
                home()
                sleep(3000)
                break
            }
            else {
                toastLog("未绑定抖音号或未授权")
                exit()
            }
            sleep(3000)
        }
        sleep(3000)
    }

    养号=0
    sleep(2000)
    while (true) {
        领取任务()
        if (gettask.msg == "操作成功") {
            try {
                var tmp = "snssdk1128://aweme/detail/" + gettask.data.aweme_id + "?refer=web&gd_label=click_wap_detail_download_feature"
                app.startActivity({
                    data: tmp
                });
                }
            catch (err) {
                toastLog(err)
            }
            sleep(2000)
            检测是否进入=className("android.widget.LinearLayout").depth(1).findOnce()
            while(检测是否进入==null){
                sleep(500)
                检测是否进入=className("android.widget.LinearLayout").depth(1).findOnce()
            }
            toastLog("成功进入视频")
            视频有效性检测()
            if(you==1){
                toastLog("点赞任务");
                sleep(2000);
                var x = device.width / 2
                var y = device.height / 2
                if (x > 10 && y > 10) {} else 
                {
                    x = 500
                    y = 500
                }
                toastLog("开始随机时间点赞")
                sleep(2000)
                for (var o = 1; o < random(2, 5); o++) {
                    sleep(1000)
                }
                sleep(50)
                click(x, y)
                click(x-10, y-10)
                click(x-11, y-11)
                click(x-12, y-12)
                click(x-13, y-13)
                click(x-14, y-14)
                click(x-15, y-15)
                click(x-20, y-20)
                click(x-30, y-30)
                sleep(50)
                click(x-50, y-50)
                click(x-60, y-60)
                click(x-70, y-70)
                sleep(500)
                click(x, y)
                F++
                toastLog("点赞成功，已执行"+F+"个任务")
                toastLog("截图")
                sleep(3000)
                captureScreen("/storage/emulated/0/1.png")
                上传截图()
                提交任务()
                sleep(500)
                back()  
                if(F%5==3){
                    sleep(1000)
                    toastLog("开始随机刷新视频")
                    click(w*0.1, h*0.97)
                    // click(1000,800)//随机关注
                    sleep (1000)
                }
                sleep(500)        
            }else if (you == 0) {
                放弃任务()
            }

        }
        else if (gettask.msg == "暂无任务,请稍后再试" || gettask.msg == "操作频繁,请休息一会儿") {
            toastLog("暂无任务，10秒后重新获取")
            sleep(8000)
        }
        if(养号%6==5){
            toastLog("》》》养号切视频《《《")
            launchApp("抖音短视频")
            sleep(3000)
            swipe(w*0.5, h*0.8, w*0.5, h*0.2, 500);
        }
        养号++
        sleep(2000)
    }




    function 攒攒登录(username, loginpw) {
        function MD5(string) {
            res = java.math.BigInteger(1, java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(string).getBytes())).toString(16);
            while (res.length < 32) res = "0" + res;
            return res;
        }
        return http.post("http://zcore.zqzan.com/app/account/login", { username: username, loginpw: MD5(loginpw + "Uk&s23^ruk@") }).body.json()
    }
    function ua() {
        return device.model + "(Android/7) (com.zanqzan.app/1.1.18) Weex/0.26.0 " + device.width + "x" + device.height
    };
    function getinfo() {
        info = null
        try {
            var infotemp = http.get("http://zcore.zqzan.com/app/douyin/my/info", {
                "headers":
                {
                    "user-agent": ua(),
                    "Token": token,
                }
            })
            if (infotemp != null) {
                info = infotemp.body.json();
            }
        }
        catch (err) {
            log(err)
    
        }
    
    
    }
    function 截图签到() {

        while (true) {
            var pd = packageName("com.ss.android.ugc.aweme").findOnce()
            if (pd != null) {
                toastLog("进入抖音")
            }
            else if (pd == null) {
                app.launchApp("抖音短视频")
            }
            var like = textContains("喜欢 ").visibleToUser(true).clickable(false).findOnce()
            var 我 = text("我").visibleToUser(true).findOnce()
            if (like != null && 我 != null) {
                toastLog("截图")
                sleep(3000)
                captureScreen("/storage/emulated/0/1.png")
                break
            }
            else {
                var 我 = text("我").visibleToUser(true).findOnce()
                if (我 != null) {
                    var 我p = clickable(true).boundsContains(我.bounds().left, 我.bounds().top, 我.bounds().right, 我.bounds().bottom).boundsInside(device.width * 3 / 4, device.height * 3 / 4, device.width, device.height).findOnce()
                    if (我p != null) {
                        我p.click()
                    }
                }
                else {
                    back()
                    sleep(2000)
                }
            }
            sleep(1000)
        }
    }
    function 签到上传模块() {
        签到上传 = http.post('http://zcore.zqzan.com/app/oss/sign_img', {

        }, {
            "headers":
            {
                "user-agent": ua(),
                "Token": token,
                "Cookie": "sec_tc=AQAAAA6+rFg3lQEA30p3XlGW6VLzk2HW"
            }
        }).body.json();
        // { 
        //     "code": 0, 
        //     "msg": "操作成功",
        //     "data": 
        // {
        //     "accessid": "LTAI4FwVNMW9yHsSHKW5mW3T", 
        //     "signature": "wrMY0KjsQE3gLkNbp5u6mACuZco=", 
        //     "prefix": "1215203038919254018_",
        //     "expire": "1582267139467", 
        //     "host": "https://zqzan.oss-cn-shanghai.aliyuncs.com",
        //     "format": "@!fwidth",
        //     "dir": "sign/02_21",
        //     "policy": "eyJleHBpcmF0aW9uIjoiMjAyMC0wMi0yMVQwNjo0MjowMC4wMDBaIiwiY29uZGl0aW9ucyI6W1siY29udGVudC1sZW5ndGgtcmFuZ2UiLDAsMzE0NTcyODBdLFsic3RhcnRzLXdpdGgiLCIka2V5Iiwic2lnbi8wMl8yMSJdXX0=" 
        // } 
        // }
        var key = 签到上传.data.dir + "/" + 签到上传.data.prefix + (new Date).getTime() + Math.floor(150 * Math.random()) + ".png"
        上传签到截图 = http.postMultipart(签到上传.data.host, {
            "key": key,
            "policy": 签到上传.data.policy,
            "OSSAccessKeyId": 签到上传.data.accessid,
            "signature": 签到上传.data.signature,
            "success_action_status": "200",
            "file": open("/storage/emulated/0/1.png")
        }, {

        })
        toastLog("提交")
        var imgurl = 签到上传.data.host + "/" + 签到上传.data.dir + "//" + 签到上传.data.prefix + 签到上传.data.expire + ".png" + 签到上传.data.format
        toastLog(imgurl)
        var temp = http.post('http://zcore.zqzan.com/app/douyin/do/sign', {
            "img_url": imgurl,
        }, {
            "headers":
            {
                "user-agent": ua(),
                "Token": token,
                "Cookie": "sec_tc=AQAAADFNdgcBqQ4A30p3XrwKV8/ACXw2",
            }
        }).body.json();
    }
    function 上传截图() {
        try {
            上传 = http.post('http://zcore.zqzan.com/app/oss/shot_img', {

            }, {
                "headers":
                {
                    "user-agent": ua(),
                    "Token": token,
                    "Cookie": "sec_tc=AQAAADjRC2VNvA4A30p3XnUehzmfVa0g"
                }
            }).body.json();
            key = 上传.data.dir + "/" + 上传.data.prefix + (new Date).getTime() + Math.floor(150 * Math.random()) + ".png"
            var 上传截图 = http.postMultipart(上传.data.host, {
                "key": key,
                "policy": 上传.data.policy,
                "OSSAccessKeyId": 上传.data.accessid,
                "signature": 上传.data.signature,
                "success_action_status": "200",
                "file": open("/storage/emulated/0/1.png")
            }, {

            })
        }
        catch (err) {
            toastLog(err)
        }
    }
    function 领取任务() {
            b_discount = false
            access = 1
        try {
            var temp = http.post('http://zcore.zqzan.com/app/douyin/pull/one', {
                "b_discount": b_discount,
                "access": access,
                "exam_status": "0"
            }, {
                "headers":
                {
                    "user-agent": ua(),
                    "Token": token,
                }
            })
            if (temp != null) {
                gettask = temp.body.json()
            }
        }
        catch (err) {
            toastLog(err)
        }

    }
    function 提交任务() {
        toastLog("提交任务")
        try {
            temp = http.post('http://zcore.zqzan.com/app/douyin/submit/task', {
                "doit_id": gettask.data.id,
                "shot_img": 上传.data.host + "/" + key + 上传.data.format
            }, {
                "headers":
                {
                    "Token": token,
                    "user-agent": ua(),
                    "Cookie": "sec_tc=AQAAAEi7g25/CQ8A30p3ogc5CmtmzYtX",
                }
            }).body.json();
            toastLog("提交任务成功")
        }
        catch (err) {
            toastLog("提交失败" + err)
        }
    }
    function 放弃任务() {
        try {
            toastLog("放弃任务")
            if (gettask.data.id != null || typeof gettask.data.id != "undefined") {
                var temp = http.post('http://zcore.zqzan.com/app/douyin/giveup/task',
                    {
                        "doit_id": gettask.data.id
                    }, {
                    "headers":
                    {
                        "user-agent": ua(),
                        "Token": token,
                        "Cookie": "sec_tc=AQAAAIs2YwuUFwgA30p3Xm4W1ldPJCD1",
                    }
                }).body.json();
                toastLog("放弃任务成功")
            }
        }
        catch (err) {
            toastLog(err)
        }
    }
    function 视频有效性检测() {
        chetime = 1
        while (true) {
            you = 1
            var img = captureScreen()
            var a = (colors.toString(images.pixel(img, device.width / 2, device.height / 2)))
            var b = (colors.toString(images.pixel(img, device.width / 2, device.height / 4)))
            var c = (colors.toString(images.pixel(img, device.width / 2, device.height * 3 / 4)))
            if (a == "#ff000000" && b == "#ff000000" && c == "#ff000000") {
                chetime++
                if (chetime > 2) {
                    you = 0
                    toastLog("问题视频")
                    break
                }

            }
            else {
                break
            }
            sleep(2500)
        }

    }

}
//============================================================================================================================
//=======================================小龙虾普通协议=========================================================================

ui.xlxptxy.on("click", () =>{
    var content1=ui["setName"].getText()+"";
    storage.put("setName",content1);
    var content2=ui["setPassword"].getText()+"";
    storage.put("setPassword",content2);
    if(激活==1){
        threads.start(function() {
            小龙虾普通协议();
        });
    }else{
        dialogs.build({
            title: "提示",
            content: "未激活，请先激活应用！",
            negative: "取消",
        }).show();
    }

});
function 小龙虾普通协议(){
                console.show();
    var w=device.width,h=device.height;
    sleep(500);
    console.setSize(w*0.55, h*0.25);
    sleep(1000);
    log("*************************")
    sleep (1000)
    http.get("www.baidu.com").statusCode
    log("检测当前网络")
    try {
    var 返回数据 = http.get("http://tg.bigyouxuan.com/", {
    headers: {
        'Accept-Language': 'zh-cn,zh;q=0.5',
        'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
    }
    });
    }
    catch (err) {
        log(err)
    }
    返回头=返回数据.headers
    返回头 = JSON.stringify(返回头)
    检测网络=返回头.indexOf("tguser")
    if(检测网络!=-1){
        返回数据=返回头.split("tguser=")[1]
        全局_登陆cookie=返回数据.split(" expires")[0]
        全局_登陆cookie="tguser="+全局_登陆cookie;
    }
    等待审核=0
    youxiao=1
    F=0
    sleep (1000)
    log("正在登陆【小龙虾】")
    var username = ui.setName.text();
    var password = ui.setPassword.text();
    try {
        if(检测网络!=-1){
            var 返回数据 = http.post("http://tg.bigyouxuan.com/tg/Login/in", {
            'Accept-Language': 'zh-cn,zh;q=0.5',
            'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
            'cookie': "'" + 全局_登陆cookie + "'",
            'username': username,
            'password': password
            });
        }else{
            var 返回数据 = http.post("http://tg.bigyouxuan.com/tg/Login/in", {
                'Accept-Language': 'zh-cn,zh;q=0.5',
                'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                'username': username,
                'password': password
                });
        }
    }
    catch (err) {
        log(err)
    }
    ccc=返回数据.body.string()
    ccc = JSON.stringify(ccc)
    判断1=ccc.indexOf("无效")
    判断2=ccc.indexOf("错误")
    if(判断1 != -1 || 判断2 != -1 ){
        log("》》登录失败《《");
        exit();
    }else{
        log("》》登录成功《《");
    }
    返回头=返回数据.headers
    返回头 = JSON.stringify(返回头)
    返回数据=返回头.split("tguser=")[1]
    全局_用户cookie=返回数据.split(" expires")[0]
    Cookie='UM_distinctid=1705e6f1eced0-069f387b114a9d-2d48783b-38400-1705e6f1ecf341; CNZZDATA1278270599=2057786939-1582128505-%7C1582128505; tguser=' + 全局_用户cookie;
    显示余额()
    sleep (500)
log("*************************")
while(true){
    while(true){
        if(F==0){
            log("开始获取任务")
        }else{
            log("开始重新获取任务")
        }
        try {
            var temp=http.get('http://tg.bigyouxuan.com/tg/DouYin/taskList?tp=2',
            {
                "headers":
                {
                    'Accept-Language': 'zh-cn,zh;q=0.5',
                    'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11',
                    'cookie': Cookie
            }}).body.json();
        }
        catch (err) {
            log(err)
        }
        zzz = JSON.stringify(temp)
        判断=zzz.indexOf("点赞")
        审核=zzz.indexOf("审核失败")
        if(判断!=-1){
            log("获取到任务，开始领取")
            break
        }else{
            if(审核!=-1){
                    log("连续审核失败，暂停五分钟")
                    sleep(60000)
                    log("等待四分钟...")
                    sleep(60000)
                    log("等待三分钟...")
                    sleep(60000)
                    log("等待二分钟...")
                    sleep(60000)
                    log("还剩一分钟...")
                    sleep(60000)
                    log("等待结束")
                    log("*************************")
            }else{
                log("未找到任务,两秒后刷新")
                log("已为您执行了"+F+"个任务")
                log("*************************")
                sleep(2000)
            }
        }

    }
    wwww=temp.result.dataList
    wwww = JSON.stringify(wwww)
    id=wwww.substring(8, 14);
    try {
    var temp1=http.get('http://tg.bigyouxuan.com/tg/DouYin/getTaskData?id='+id+'_2',
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
    }
    catch (err) {
        log(err)
    }
    try {
        var 返回数据 = http.get('http://tg.bigyouxuan.com/tg/DouYin/copyTaskData?id='+id+'_2', {
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
            log("任务ID" + id + "领取成功")
            全局_得到任务 = true;
            sleep(1000);
        }
    }
    catch (err) {
        log(err)
    }
    if(id!=null) {
        try {
            var tmp = "snssdk1128://aweme/detail/" + uid + "?refer=web&gd_label=click_wap_detail_download_feature"
            app.startActivity({
                data: tmp
            });
            }
            catch (err) {
                log(err)
            }
            sleep(2000)
            检测是否进入=className("android.widget.LinearLayout").depth(1).findOnce()
            while(检测是否进入==null){
                sleep(500)
                检测是否进入=className("android.widget.LinearLayout").depth(1).findOnce()
            }
            log("成功进入视频")
            sleep(2000);
            var x = device.width / 2
            var y = device.height / 2
            if (x > 10 && y > 10) {} else 
            {
                x = 500
                y = 500
            }
            log("开始随机时间点赞")
            sleep(2000)
            for (var o = 1; o < random(2, 5); o++) {
                sleep(1000)
            }
            sleep(50)
            click(x, y)
            click(x-10, y-10)
            click(x-11, y-11)
            click(x-12, y-12)
            click(x-13, y-13)
            click(x-14, y-14)
            click(x-15, y-15)
            click(x-20, y-20)
            click(x-30, y-30)
            sleep(50)
            click(x-50, y-50)
            click(x-60, y-60)
            click(x-70, y-70)
            sleep(50)
            click(x-100, y-100)
            sleep(1000)
            click(x, y)
            F++
            log("已为您执行了"+F+"个任务")
            back()  
            if(F%5==3){
                sleep(1000)
                log("开始随机刷新新视频")
                click(w*0.1, h*0.97)
                // click(1000,800)//随机关注
                sleep (1000)
            }
            sleep(500)        
            home()
            sleep(500) 
            home()
            显示余额()
            log("*************************")
        
    }else{
        log("无效任务，重新获取")
        log("*************************")
    }
    
}
//=============显示余额==========
function 显示余额(){
    try {
    var 返回数据 = http.get("http://tg.bigyouxuan.com/tg/Home/index", {
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
    }
    catch (err) {
        log(err)
    }
    log("目前可提现金额:"+全局_可提现金额);
    }
 }

//======================================================================================================================
//=============================小龙虾===================================================================================
ui.xlxyx.click(function(){
    if(激活==1){
        threads.start(小龙虾脚本);
    }else{
        dialogs.build({
            title: "提示",
            content: "未激活，请先激活应用！",
            negative: "取消",
        }).show();
    }
});
function 小龙虾脚本(){
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


//======================================================================================================================
//=============================攒攒=====================================================================================

ui.zzyx.click(function(){
    if(激活==1){
        threads.start(攒攒脚本);
    }else{
        dialogs.build({
            title: "提示",
            content: "未激活，请先激活应用！",
            negative: "取消",
        }).show();
    }

})

function 攒攒脚本(){
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
            首页=text("消息").findOne(6000)
            click(w*0.1,h*0.95)
            sleep(2000)
            swipe(w*0.9, h/2, w*0.1, h/2, 500);
            while(true){
                sleep(3000)
                取消关注=text("取消关注").findOnce()
                if(取消关注==null){
                    关注1=id("ni").findOnce()
                    关注2=id("dgn").findOnce()
                    关注3=text("关注").findOnce()
                    if(关注1!=null||关注2!=null||关注3!=null){
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
                        }
                    }
                }else{
                    toastLog("未找到关注坐标，换视频!")
                    back()
                    sleep(3000)
                    click(w*0.1,h*0.95)
                    sleep(3000)
                    swipe(w*0.9, h/2, w*0.1, h/2, 500);
                    sleep(3000)
                }
            }
            sleep(2000)
            log("*************************")
            
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











    //无障碍
    ui.autoService.on("check", function (checked) {
        // 用户勾选无障碍服务的选项时，跳转到页面让用户去开启
        toast("请开启"+代理名称+"无障碍");
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
});
//监听选项菜单点击
ui.emitter.on("options_item_selected", (e, item)=>{
    switch(item.getTitle()){
        case "声明":
        alert("声明", "本软件仅供学习交流，如作他用所受的法律责任一概与作者无关");
        break;
        case "帮助":
        alert("提示", "无障碍服务、悬浮窗、后台运行和读取手机内存权限都要开，否则会无法正常使用，按音量上键停止正在运行脚本！");
            break;
        case "关于":
            alert("关于", 代理名称+" v18");
            break;
    }
    e.consumed = true;
});
activity.setSupportActionBar(ui.toolbar);

//设置滑动页面的标题
ui.viewpager.setTitles(["点赞关注", "阅读翻页", "常用工具"]);
//让滑动页面和标签栏联动
ui.tabs.setupWithViewPager(ui.viewpager);

//让工具栏左上角可以打开侧拉菜单
ui.toolbar.setupWithDrawer(ui.drawer);

ui.menu.setDataSource([
  {
      title: "软件更新",
      icon: "@drawable/ic_settings_black_48dp"
  },
  {
    title: "更新说明",
    icon: "@drawable/ic_favorite_black_48dp"
},
  {
      title: "退出",
      icon: "@drawable/ic_exit_to_app_black_48dp"
  }
]);

ui.menu.on("item_click", item => {
    switch(item.title){
        case "软件更新":
        if(代理==0){
            app.openUrl("https://www.lanzous.com/b073ki13i");
        }else{
            app.openUrl("https://www.lanzous.com/b073ki13i");
        }

        break;
        case "更新说明":
        app.openUrl("http://note.youdao.com/noteshare?id=4a13198fffbb9113789063d20b27629b");
        break;
        case "退出":
            ui.finish();
            break;
    }
})


//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
