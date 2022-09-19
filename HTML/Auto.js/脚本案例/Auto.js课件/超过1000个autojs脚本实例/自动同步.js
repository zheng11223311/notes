
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui"; //更多精彩内容请联系群主加入精英群，微信shenlong6898 或zxkj6898

var storage = storages.create("syn_steps")
var auto_syn_steps = storage.get("auto_syn_steps", {})

var config = {}
var Accounts2=[]
var dir = "/sdcard/lucky_cat蚂蚁森林/auto_syn_steps.js"
var timeout=180000
var stepsMin = 18000
var date = new Date();
var now = date.getTime();

console.setGlobalLogConfig({
    file: "/sdcard/lucky_cat蚂蚁森林/自动同步日志.txt"
});

log("================================================================================");
var date = new Date();
log(date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate() + "自动同步运行日志")
if ((!auto_syn_steps.pay) || (!auto_syn_steps.deadline) || now > auto_syn_steps.deadline) {
    auto_syn_steps.numOfAccounts = 10
}
if (auto_syn_steps.deadline&& (auto_syn_steps.deadline-now)/24/3600000<3){
    toastLog("您的有效期还有" + parseInt(( auto_syn_steps.deadline-now) / 3600000)+"小时，请及时联系lucky_cat，以免影响使用")
}

if (!auto_syn_steps.accounts_list) {
    init_from_file()
}

accounts_list_adjust(auto_syn_steps)
show_syn_steps(auto_syn_steps)

function init_from_easy_login() {
    if (files.isFile("/sdcard/lucky_cat蚂蚁森林/auto_easy_login.js")) {
        try {
            var str = uncompile(open("/sdcard/lucky_cat蚂蚁森林/auto_easy_login.js").read(), 11)
            auto_easy_login = eval('(' + str + ')')
            auto_syn_steps.accounts_list = auto_easy_login.accounts_list
            //log(auto_syn_steps.accounts_list)
        }
        catch(err) {
            log("读取配置文件出错" + err)
        } 
    }
    else{
        alert("读取失败，没有快捷登录配置文件")
    }
}

function init_from_water() {
    if (files.isFile("/sdcard/lucky_cat蚂蚁森林/auto_watering.js")) {
        try {
            var str = uncompile(open("/sdcard/lucky_cat蚂蚁森林/auto_watering.js").read(), 11)
            auto_watering = eval('(' + str + ')')
            accounts_list = auto_watering.accounts_list
            for (let i = 0; i < accounts_list.length; i++) {
                let account = accounts_list[i]
                if (!account.start_position) {
                    account.start_position = 1
                }
                if (!account.end_position) {
                    account.end_position = 10
                }
                if (!account.remark) {
                    account.remark = ""
                }
                if (!account.gnore) {
                    account.ignore = ""
                }
                if (!account.order) {
                    account.order = i + 1
                }
            }
            auto_syn_steps.accounts_list = accounts_list
            //log(auto_watering.accounts_list)
        }
        catch (err) {
            log("读取配置文件出错" + err)
        }
    }
    else {
        alert("读取失败，没有新版浇水配置文件")
    }
}
function accounts_list_generation(config, auto_syn_steps) {
    var accounts_list = []
    let numOfAccounts = auto_syn_steps.numOfAccounts
    //生成accounts_list
    if (config.options) {
        let options = config.options
        for (let i = 0; i < numOfAccounts; i++) {
            if (options["account" + (i + 1)]) {
                let account = { account: options["account" + (i + 1)], password: options["password" + (i + 1)] }
                let remark = options["remark" + (i + 1)]
                // log(remark)
                account.remark = remark ? remark : ""
                account.order = i + 1
                accounts_list.push(account)
            }
            else {
                let account = { account: "", password: "", remark: "", order: i + 1 }
                accounts_list.push(account)
            }
        }

    } else {
        for (let i = 0; i < numOfAccounts; i++) {
            let account = { account: "", password: "", remark: "", order: i + 1 }
            accounts_list.push(account)
        }
    }
    auto_syn_steps.accounts_list = accounts_list
}

//log(files.isFile("/sdcard/alipay/蚂蚁森林/auto_syn_steps.js"))
function init_from_file() {
    if (files.isFile(dir)) {
        try {
            var str = uncompile(open(dir).read(), 11)
            let auto_syn_steps_file = eval('(' + str + ')')
            let imei_file = auto_syn_steps_file.imei ? auto_syn_steps_file.imei : "imei"
            if (imei_file == device.getIMEI()) {
                auto_syn_steps = auto_syn_steps_file
            }
            else {
                auto_syn_steps.accounts_list = auto_syn_steps_file.accounts_list
                accounts_list_adjust(auto_syn_steps)
            }
            let accounts_list = auto_syn_steps.accounts_list
            ui.list.setDataSource(accounts_list);
            saveConfig(dir);
            toastLog("导入数据成功")
        }
        catch (err) {
            log("读取配置文件出错" + err)
        }     
    } else {
        if (files.isFile("/sdcard/alipay/multimedia/config3.js")) {
            try {
                let str = uncompile(open("/sdcard/alipay/multimedia/config3.js").read(), 0)
                eval(str)
                // console.log(config);
            }
            catch (err) {
                log("读取配置文件出错" + err)
            }
        } else if (files.isFile("/sdcard/alipay/multimedia/config.js")) {
            try {
                let str = uncompile(open("/sdcard/alipay/multimedia/config.js").read(), 0)
                eval(str)
            } catch (error) {
                log("读取配置文件出错" + err)
            }
        }
        var accounts_list = []
        let numOfAccounts =auto_syn_steps.numOfAccounts
        //生成accounts_list
        if (config.options) {
            let options = config.options
            for (let i = 0; i < numOfAccounts; i++) {
                if (options["account" + (i + 1)]) {
                    let account = { account: options["account" + (i + 1)], password: options["password" + (i + 1)] }
                    let remark = options["remark" + (i + 1)]
                    // log(remark)
                    account.remark = remark ? remark : ""
                    account.order = i + 1
                    accounts_list.push(account)
                }
                else {
                    let account = { account: "", password: "", remark: "", order: i + 1 }
                    accounts_list.push(account)
                }
            }

        } else {
            for (let i = 0; i < numOfAccounts; i++) {
                let account = { account: "", password: "", remark: "", order: i + 1 }
                accounts_list.push(account)
            }
        }
       // log(accounts_list.length)
        auto_syn_steps.accounts_list = accounts_list
    }
}

function accounts_list_adjust(auto_syn_steps) {
    let len = auto_syn_steps.accounts_list.length
    let numOfAccounts = auto_syn_steps.numOfAccounts
    if (len < numOfAccounts) {
        for (let i = len; i < numOfAccounts; i++) {
            let account = { account: "", password: "", remark: "", order: i + 1 }
            auto_syn_steps.accounts_list.push(account)
        }
    }
    if (len > numOfAccounts) {
        auto_syn_steps.accounts_list = auto_syn_steps.accounts_list.slice(0, numOfAccounts)
    }

}

//生成remark_list
function remark_list_update(auto_syn_steps) {
    let accounts_list = auto_syn_steps.accounts_list
    var len = accounts_list.length
    var row = len % 5 == 0 ? len / 5 : (Math.floor(len / 5) + 1)
    var remark_list = []
    var remark_dict = { "remark1": "1", "remark2": "1", "remark3": "1", "remark4": "1", "remark5": "1" }
    for (let i = 0; i < row; i++) {
        //let remark_list = { "remark1": "1", "remark2": "1", "remark3": "1", "remark4": "1", "remark5": "1" }
        var b = Object.assign({}, remark_dict)
        for (let j = 0; j < 5; j++) {
            if (i * 5 + j + 1 < len) {
                let remark = accounts_list[i * 5 + j].remark
                if (remark && remark != " ") {
                    b["remark" + (j + 1)] = remark
                }
                else {
                    b["remark" + (j + 1)] = (i * 5 + j + 1)
                }
            }
            else {
                b["remark" + (j + 1)] = (i * 5 + j + 1)
            }
        }
        remark_list.push(b)
    }
    return (remark_list)
}

function show_syn_steps(auto_syn_steps) {
    ui.layout(
        <drawer id="drawer">
            <vertical>
                <appbar >
                    <toolbar id="toolbar" title="自动同步" h="32" />
                    <tabs id="tabs" />
                </appbar>
                <viewpager id="viewpager" layout_weight="0.75" h="18">
                    <frame>
                        <vertical>  
                        <vertical layout_weight="0.8">           
                            <horizontal>
                                <text h="*" gravity="right|center" size="16" margin="8">  1.从第</text>
                                <input id="startAccount" inputType="number"  />
                                <text h="*" gravity="right|center" size="16">个账号开始，到第</text>
                                <input id="endAccount" inputType="number"  />
                                <text h="*" gravity="right|center" size="16">个账号结束</text>
                            </horizontal>

                            <horizontal>
                                <text textSize="16sp" margin="8">2. 请选择同步刷新方式</text>
                                <spinner id="sp2" entries="      返回重进|      下拉刷新" />
                            </horizontal>

                            <text textSize="16sp" margin="8">3. 同步方式</text>
                            <spinner id="sp3" entries="        自动打开vxp里面的支付宝|        自动打开原始支付宝|        小米摇步专用|        华为运动健康(root)|        位移精灵运动健康" />

                            <horizontal>
                                <text textSize="16sp" margin="8">4. 请选择打开运动的方式</text>
                                <spinner id="sp4" entries="      直接跳转|      点击进入" />
                            </horizontal>
                            <horizontal>
                                <text textSize="16sp" margin="8">5. 每次同步时在运动等待时间</text>
                                <spinner id="sp5" entries="        3秒|        5秒|        8秒|        13秒|        21秒|        34秒" />
                            </horizontal>
                            <horizontal>
                                <text textSize="16sp" margin="8">6. 重试次数</text>
                                <spinner id="sp6" entries="        4秒|        6秒|        9秒" />
                            </horizontal>
                            <horizontal>
                                <text textSize="16sp" margin="8">7. 是否自动捐步</text>
                                <spinner id="sp7" entries="        否        |        是       " />
                            </horizontal>
                            <horizontal>
                            <text textSize="16sp" margin="8">8. 清理缓存</text>
                            <spinner id="sp8" entries="        不清理|        自动清理" />
                            </horizontal>
                            <horizontal>
                                <text textSize="16sp" margin="8">9. 位置数目</text>
                                <text id="amount"  textSize="16sp" margin="8"/>
                            </horizontal>
                            
                            </vertical>
                        
                        <linear gravity="center" >
                            <button id="start" text="开始同步" h="60" w="300" />
                        </linear>
                            </vertical>
                    </frame>

                    <frame>
                        <vertical>
                            <list id="list" marginLeft="12" marginRight="10" layout_weight="0.8" >

                                <vertical >
                                    <horizontal>
                                        <text textSize="16sp" textColor="#000000" text="{{this.order}}. " /><text id="name" textSize="16sp" textColor="#000000" text="请输入账号{{this.order}}的信息" />
                                    </horizontal>
                                    <horizontal>
                                        <text textSize="16sp" marginLeft="16" textColor="#000000" gravity="right|center" text="账号" />
                                        <input id="account" hint="请输入账号(必填)" w="220" text="{{this.account}}" />
                                    </horizontal>
                                    <horizontal>
                                        <text textSize="16sp" marginLeft="16" textColor="#000000" gravity="right|center" text="密码" />
                                        <input id="password" hint="请输入密码(必填)" password="true" w="220" text="{{this.password}}" />
                                    </horizontal>
                                    <horizontal>
                                        <text textSize="16sp" marginLeft="16" textColor="#000000" gravity="right|center" text="备注" />
                                        <input id="remark" hint="请输入备注(选填)" w="220" text="{{this.remark}}" />
                                    </horizontal>
                                    <button id="confirm" text="无需确认" style="Widget.AppCompat.Button" />
                                </vertical>
                            </list>
                            <horizontal gravity="center" >
                                <button id="save" text="保存配置到文件" w="250" />
                            </horizontal>
                        </vertical>
                    </frame>
                    <frame>
                        <vertical >
                            <text id="page3" text="第三页内容" textColor="#000000" textSize="16sp" />

                            <text textSize="16sp" textColor="#000000" text="请点击下方的复制IMEI按钮，粘贴发送给lucky_cat(QQ:739270050)获取激活码" />
                            <button id="copy_imei" text="复制IMEI" />
                            <input id="initialPassword" hint="请输入激活码" w="500" text="" />
                            <button id="ok" text="确定" />
                            <button id="init_from_easy_login" text="从快捷登录导入数据" />
                            <button id="init_from_water" text="从自动浇水导入数据" />
                            <button id="init_from_myself" text="从自身配置文件导入数据" />
                            <horizontal gravity="center">
                                <button id="viewlog" text="查看日志" />
                                <button id="clear_log" text="清除日志" />
                                <button id="clear" text="清除缓存" />
                                <button id="payment_alipay" text="支付宝付款" />
                            </horizontal>
                        </vertical>
                    </frame>
                    <frame>
                    <vertical >
                            <ScrollView layout_weight="0.8">
                                <vertical >
                                    <text textSize="16sp" textColor="#000000" text="如果需要保留原来的账号信息,请把原来的账号信息补充到文本中,注意文本中请勿添加空行" />
                                    <text textSize="16sp" textColor="#000000" margin="8">1. 请输入账号文件地址</text>
                                    <horizontal>
                                        <text w="66" h="*" gravity="right|center" textColor="#000000" size="16">地址</text>
                                        <input id="friend0" hint="/storage/emulated/0/账号.txt"/>

                                    </horizontal>
                                    <text textSize="16sp" textColor="#000000" margin="8">2. 请输入账号间隔符</text>
                                    <horizontal>
                                        <text w="66" h="*" gravity="right|center" textColor="#000000" size="16">符号</text>
                                        <input id="friend1" hint="账号和密码之间的间隔符 例如:|"/>
                                    </horizontal>
                                </vertical> 
                            </ScrollView>
                                <vertical>   
                                <linear gravity="center">
                                    <button id="init_from_txt" text="导入账号" h="60" w="100" />
                                </linear>
                            </vertical>
                    </vertical>
                    </frame>
                </viewpager>
            </vertical>
        </drawer>
    );
    activity.setSupportActionBar(ui.toolbar);
    ui.toolbar.title = "自动同步" + app.versionName
    ui.page3.text("每填写或者修改一个账号时，请点击其下方对应的确认按钮，填写或修改完毕再点击最下方的“保存配置到文件”按钮")

    //设置滑动页面的标题
    ui.viewpager.setTitles(["同步设置", "录入信息", "使用帮助", "导入数据"]);
    //让滑动页面和标签栏联动
    ui.tabs.setupWithViewPager(ui.viewpager);
    //初始化界面
   let accounts_list = auto_syn_steps.accounts_list


    ui.list.setDataSource(accounts_list);
    //ui.button_list.setDataSource(remark_list);

    //页面2
    ui.list.on("item_click", function (item, i, itemView, listView) {
        toast("被点击的账号密码为: " + item.password);
    });

    ui.list.on("item_bind", function (itemView, itemHolder) {
        //绑定勾选框事件
        itemView.confirm.on("click", function () {
            let item = itemHolder.item;
            item.account = itemView.account.text()
            item.password = itemView.password.text()
            item.remark = itemView.remark.text()
            itemView.confirm.text("已确认修改")
            //  itemView.confirm.attr("style","Widget.AppCompat.Button.Colored")
            toast("密码为:" + itemView.password.text())
            auto_syn_steps.accounts_list = accounts_list
            remark_list = remark_list_update(auto_syn_steps)
            storage.put("auto_syn_steps", auto_syn_steps)
        });
        itemView.password.on("touch_down", function () {
            itemView.confirm.text("未确认修改,请点击确认")
        });
        itemView.account.on("touch_down", function () {
            itemView.confirm.text("未确认修改,请点击确认")
        });
        itemView.remark.on("touch_down", function () {
            itemView.confirm.text("未确认修改,请点击确认")
        });
        //  auto_syn_steps.accounts_list=accounts_list
    });

    var initForm2 = function () {
        let startAccount = auto_syn_steps.startAccount ? auto_syn_steps.startAccount:1
        let endAccount = auto_syn_steps.endAccount ? auto_syn_steps.endAccount : auto_syn_steps.numOfAccounts
        let amount = auto_syn_steps.numOfAccounts 
        ui.amount.text(amount + "");
        ui.startAccount.text(startAccount + "");
        ui.endAccount.text(endAccount + "");
        if (!auto_syn_steps.buttons){
            auto_syn_steps.buttons={}
        }
        for (let i = 2; i < 9; i++) {
            let sel = auto_syn_steps.buttons["sel" + i] ? auto_syn_steps.buttons["sel" + i]:0
            ui["sp"+i].setSelection(sel)
        }
    };
    initForm2()

    ui.start.click(() => {
        toastLog("开始同步")
        auto_syn_steps.startAccount = Math.max(1, ui.startAccount.text());
        auto_syn_steps.endAccount = Math.min(ui.endAccount.text(),accounts_list.length);
      //  auto_syn_steps.buttons={}
        for (let i = 2; i < 9; i++) {
            auto_syn_steps.buttons["sel" + i] = ui["sp"+i].getSelectedItemPosition()          
        }
       // log(auto_syn_steps.buttons)
        storage.put("auto_syn_steps", auto_syn_steps)
        threads.shutDownAll()
        threads.start(function () {
            work(auto_syn_steps)
        })
    })

     ui.save.click(function () {
       // ui.button_list.setDataSource(remark_list);
        saveConfig(dir)
    })
    
    ui.copy_imei.click(function () {
        let imei = device.getIMEI()
        setClip(imei)
        toastLog("本机IMEI为" + imei + "，复制成功")
    })

    ui.ok.click(() => {
        var key = (uncompile(uncompile(ui.initialPassword.text() + "", 0), 0))
        key = key.toString();

        var date = new Date();
        var now = date.getTime();      
        var time = parseInt(key.slice(4, 7),10);
        var yzrq = key.slice(10, 14);
        var keyimei = (key.slice(0, 4)).toString();
        var numOfAccounts = parseInt(key.slice(7, 10),10);
        var deadline = now + 24 * 3600 * 1000 * time;

        var imei = device.getIMEI();
        var yzimei = (imei.slice(-4)).toString();
        
        var month = date.getMonth()+1;
        var day = date.getDate();
        if(month<10&&day<10){
            var rq = '' + "0"+ month +"0"+ day ;  
        }
        if(month<10&&day>=10){
            var rq = '' + "0"+ month + day ;  
        }
        if(month>=10&&day<10){
            var rq = '' + month +"0"+ day ;  
        }    
        if(month>=10&&day>=10){
            var rq = '' + month + day ;
        }
        //console.log(key,yzrq,rq)
        if(yzrq==rq&&keyimei==yzimei) {
            toastLog("激活码正确")
            var imei = device.getIMEI();
            auto_syn_steps.imei = imei
            auto_syn_steps.numOfAccounts = numOfAccounts
            auto_syn_steps.pay=true
            auto_syn_steps.deadline=deadline
            auto_syn_steps.remainTimes += numOfAccounts*60
            saveConfig(dir);
            toastLog("激活成功,重启软件生效!");
        }
        else {
            toastLog("激活码不正确，请联系lucky_cat")
        }

    });
    
    ui.init_from_water.click(() => {
        init_from_water()
        // accounts_list_generation(config, auto_easy_login)
        accounts_list_adjust(auto_syn_steps)
        let accounts_list = auto_syn_steps.accounts_list
        //let remark_list = remark_list_update(auto_easy_login)
        ui.list.setDataSource(accounts_list);
        //ui.button_list.setDataSource(remark_list);
        saveConfig(dir);
        toastLog("导入数据成功")
    })   
    ui.init_from_easy_login.click(() => {
        init_from_easy_login()
       // accounts_list_generation(config, auto_syn_steps)
        accounts_list_adjust(auto_syn_steps)
        let accounts_list = auto_syn_steps.accounts_list
        //let remark_list = remark_list_update(auto_syn_steps)
        ui.list.setDataSource(accounts_list);
        //ui.button_list.setDataSource(remark_list);
        saveConfig(dir);
        toastLog("导入数据成功")
    })
    ui.init_from_myself.click(() => {
        if (files.isFile(dir)) {
            try {
                var str = uncompile(open(dir).read(), 11)
                let auto_syn_steps_file = eval('(' + str + ')')
                let imei_file = auto_syn_steps_file.imei ? auto_syn_steps_file.imei:"imei"
                if (imei_file==device.getIMEI()){
                    auto_syn_steps = auto_syn_steps_file
                }
                else{
                    auto_syn_steps.accounts_list = auto_syn_steps_file.accounts_list
                    accounts_list_adjust(auto_syn_steps)
                }
                let accounts_list=auto_syn_steps.accounts_list
                ui.list.setDataSource(accounts_list);
                saveConfig(dir);
                toastLog("导入数据成功")
            }
            catch (err) {
                log("读取配置文件出错" + err)
            }
        }   
    })


    ui.viewlog.click(()=>{
        if (files.isFile("/sdcard/lucky_cat蚂蚁森林/自动同步日志.txt")){
            app.viewFile("/sdcard/lucky_cat蚂蚁森林/自动同步日志.txt");
        }
        else{
            toastLog("没有日志文件")
        }  
    })
    ui.clear_log.click(() => {
        confirm("确定清除历史日志?").then(value => {
            if (value) {
                files.remove("/sdcard/lucky_cat蚂蚁森林/自动同步日志.txt")
                toastLog("清除日志成功")
            }
        })
    })
    ui.clear.click(() => {
        app.openAppSetting("com.eg.android.AlipayGphone")
        toastLog("请手动清除支付宝全部数据,然后手动登录一个账号")
    })
    ui.payment_alipay.click(() => {
        app.startActivity(app.intent({
            action: "VIEW",
            data: "alipayqr://platformapi/startapp?saId=10000007&" + "clientVersion=3.7.0.0718&qrcode=" + "https://qr.alipay.com/fkx03888qzb3skazbmq7i12?t=1560153735657"
        }));
        alert("支付成功后\n1.请把截图发给lucky_cat\n2.发送IMEI给lucky_cat");
    })
    ui.init_from_txt.click(() => {
        var fileaddress = ui.friend0.getText();
        //var fileaddress = "/storage/emulated/0/账号.txt"
        var Spacer = ui.friend1.getText();
        //var Spacer = "|"
        var excludeSpecial = function(s) {
            s = s.replace(/[\'\"\\\/\b\f\r\t]/g, '');    // 去掉转义字符
            s = s.replace(/[\#\$\%\^\&\*\(\)\{\}\:\"\L\<\>\?\[\]]/);    // 去掉特殊字符
            return s;
        };
        
        var str = (files.read(fileaddress));
        var y = excludeSpecial(str)
        var arr = y.split('\n');
        
        var accounts_list = []
        for(var i=0;i<arr.length;i++){
            arrvalue=arr[i];
            var options = arrvalue.split(Spacer)[0];
            var password = arrvalue.split(Spacer)[1];
            let account = { account: options, password: password , remark: "", order: i + 1 }
            accounts_list.push(account)
        }
        auto_syn_steps.accounts_list=accounts_list
        ui.list.setDataSource(accounts_list);
        saveConfig(dir);
        toastLog("导入数据成功,重启软件生效!")
    })

}

function saveConfig(dir) {
    //auto_syn_steps.sp1 = ui.sp1.getSelectedItemPosition()
    storage.put("auto_syn_steps", auto_syn_steps)
    let str = JSON.stringify(auto_syn_steps)
    //log(auto_syn_steps.remark_list)
    try {
        files.ensureDir(dir)
        var file = open(dir, "w");
        file.write(compile(str, 11));
        file.close();
        toastLog("保存设置成功")
    }
    catch (err) {
        console.log("错误" + err);
        toastLog("保存设置到文件失败")
    }
}
function compile(code, num) {
    var c = String.fromCharCode(code.charCodeAt(0) + code.length);
    for (var i = 1; i < code.length; i++) {
        c += String.fromCharCode(code.charCodeAt(i) + code.charCodeAt(i - 1) + num);
    }
    return (escape(c))
}

function uncompile(code, num) {
    code = unescape(code);
    var c = String.fromCharCode(code.charCodeAt(0) - code.length);
    for (var i = 1; i < code.length; i++) {
        c += String.fromCharCode(code.charCodeAt(i) - c.charCodeAt(i - 1) - num);
    }
    return c;
}

//////浇水函数部分：
///函数部分
function work(auto_syn_steps) {

    let buttons = auto_syn_steps.buttons
    let startAccount = auto_syn_steps.startAccount 
    let endAccount = auto_syn_steps.endAccount
    let Accounts = auto_syn_steps.accounts_list.slice(startAccount-1,endAccount)
    auto.waitFor()
    console.show()
    work_pre(); //登陆vxp
    console.setPosition(0,device.height/2);
    let sel3 = auto_syn_steps.buttons.sel3  
    if(sel3==2){
        syn_steps_xiaomi(Accounts)
    }
    if(sel3==0||sel3==1){
        syn_steps_accounts(Accounts);
        if (Accounts2.length > 0) {
            log("=============================")
            log("正在重试失败的账号...")
            syn_steps_accounts(Accounts2);
        }
    }
    if(sel3==3){
        syn_steps_huawei(Accounts)
    }
    if(sel3==4){
        syn_steps_weiyi(Accounts)
    }

    app.startActivity("console");
}
function work_pre() {
    let sel3 = auto_syn_steps.buttons.sel3
    if (sel3 == 0) {
        appName = "io.va.exposed";
        launch(appName);
        sleep(500)
        textContains("支付宝").waitFor();
        sleep(200)
        click("支付宝");
    }
}

function Clear_cache(account){
    app.openAppSetting("com.eg.android.AlipayGphone");
    textMatches("清除数据|清除全部数据").waitFor();
    click("结束运行");
    sleep(1000);
    click("确定");
    sleep(1000);
    click("清除数据");
    sleep(500);
    click("清除全部数据");
    sleep(500);
    click("确定");
    sleep(2000);
    home();
    sleep(1000);
    app.startActivity(app.intent({
        action: "VIEW",
        data: "alipayqr://platformapi/startapp?appId=20000008",
    }));
    textContains("允许").waitFor();

    var thread = threads.start(function(){
        while(true){
            sleep(500);
            click("允许");
        }
    });
    var thread1 = threads.start(function(){
        while(true){ 
            sleep(3500);
            click("登录");
            sleep(500);
            var ok = text("好的").findOne(500);
            if(ok){
                click("好的");
            }
            setText(account.account);
            sleep(200);
            click("下一步");
        }
    });

    textContains("账号").waitFor();
    sleep(500);
    setText(account.account);
    sleep(800);
    click("下一步");
    text("忘记密码？").waitFor();
    thread1.interrupt();//停止线程执行
    sleep(500);
    setText(1,account.password);
    idContains("loginButton").findOne().click();

    var thread2 = threads.start(function(){
        while(true){
            sleep(1500);
            click("下一步");
        }
    });
    var thread3 = threads.start(function(){
        while(true){
            sleep(1500);
            click("稍后再说");
        }
    });

    sleep(5000);
    textMatches(/首页|关闭/).findOne();
    thread.interrupt();//停止线程执行
    thread2.interrupt();//停止线程执行
    thread3.interrupt();//停止线程执行
    console.error("清理完成")
}

function syn_steps_xiaomi(Accounts) {
    let sel8 =auto_syn_steps.buttons.sel8;
    let sel =parseInt(sel8);
    for (let kk = 0; kk < Accounts.length; kk++) {
        account = Accounts[kk]
        //switchAccount(account.account, account.password, 1);
        if(sel==1){
            if(account.order==101||account.order==201||account.order==301||account.order==401||account.order==501){
                Clear_cache(account);
            }else{
                switchAccount(account.account, account.password,1);
            } 
        }else{
            switchAccount(account.account, account.password,1);
        }
        log("已成功登录到第" + account.order + "个账号");
        textMatches(/首页|关闭/).findOne(10000);
        sleep(500);
    }
}

function syn_steps_huawei(Accounts) {
    let sel8 =auto_syn_steps.buttons.sel8;
    let sel =parseInt(sel8);
    for (let kk = 0; kk < Accounts.length; kk++) {
        account = Accounts[kk]
        if(sel==1){
            if(account.order==101||account.order==201||account.order==301||account.order==401||account.order==501){
                Clear_cache(account);
            }else{
                switchAccount(account.account, account.password,1);
            } 
        }else{
            switchAccount(account.account, account.password,1);
        }
        log("已成功登录到第" + account.order + "个账号");
        textMatches(/首页|关闭/).findOne(10000);
        hwjk();
        sleep(500);
    }
}

function syn_steps_weiyi(Accounts) {
    // let sel8 =auto_syn_steps.buttons.sel8;
    // let sel =parseInt(sel8);
    //*********************** */
    console.hide()
    launch("com.xgtl.assistant");
    className("android.widget.TextView").text("模拟步数").waitFor()
    sleep(1000)
    var obj=text("运动健康").findOne().bounds();
    Button={x:obj.centerX(),y:obj.centerY()}
    click(Button.x,Button.y);
    text("一键新机").findOne();
    id("app_icon").findOne().click()
    id("action_bar_title").className("android.widget.TextView").text("健康").waitFor()
    var obj=text("我的").findOne().bounds();
    Button={x:obj.centerX(),y:obj.centerY()}
    sleep(500)
    click(Button.x,Button.y);
    sleep(500)
    id("user_profile_health_settings_layout").findOne().click()
    sleep(500)
    var obj_0=text("数据共享").findOne().bounds();
    Button_0={x:obj_0.centerX(),y:obj_0.centerY()}
    sleep(500)
    click(Button_0.x,Button_0.y);
    id("layout_alisport").findOne().click()
    console.show()
    sleep(500)
    id("action_bar_title").text("支付宝").findOne()
    
    //*********************** */
    for (let kk = 0; kk < Accounts.length; kk++) {
        account = Accounts[kk]

        if(text("绑定支付宝运动").exists()){
            sleep(500)
            console.hide()
            click("绑定支付宝运动")  
            denglu(account.account, account.password);
            var obj_2=className("android.widget.Button").id("J-submit").findOne().bounds();
            Button_2={x:obj_2.centerX(),y:obj_2.centerY()}
            click(Button_2.x,Button_2.y);
            log("已成功同步到第" + account.order + "个账号");
            text("解除绑定").findOne()
            sleep(500)
            click("解除绑定")
            sleep(500)
            click("解除绑定")
            sleep(500)
        }else{
            sleep(500)
            click("解除绑定")
            sleep(500)
            click("解除绑定")
            sleep(500)
            console.hide()
            text("绑定支付宝运动").findOne()
            click("绑定支付宝运动")  
            denglu(account.account, account.password);
            var obj_2=className("android.widget.Button").id("J-submit").findOne().bounds();
            Button_2={x:obj_2.centerX(),y:obj_2.centerY()}
            click(Button_2.x,Button_2.y);
            log("已成功同步到第" + account.order + "个账号");
            text("解除绑定").findOne()
            sleep(500)
            click("解除绑定")
            sleep(500)
            click("解除绑定")
        }
        console.show()
        sleep(500);
    }
}

function denglu(account,key){
    className("android.widget.EditText").id("J_input_account").findOne()
    setText(0, account);
    sleep(100);
    setText(1, key);
    sleep(100);
    setText(0, account);
    sleep(200);
    var obj_1=className("android.widget.Button").id("J_loginBtn").findOne().bounds();
    Button_1={x:obj_1.centerX(),y:obj_1.centerY()}
    click(Button_1.x,Button_1.y);
}

function hwjk(){
    app.startActivity({
        packageName: "com.huawei.health",
        className: "com.huawei.ui.thirdpartservice.activity.alisport.AliSportActivity",
    });
    textContains("绑定").findOne(10000);
    click("绑定支付宝运动");
    sleep(1000);
    textContains("解除绑定").findOne(10000);
    log("绑定完成");
}

function syn_steps_accounts(Accounts) {
    let sel3 = auto_syn_steps.buttons.sel3
    for (let kk = 0; kk <Accounts.length; kk++) {
        account = Accounts[kk]       
        switchAccount(account.account, account.password,sel3);
        textMatches(/首页|关闭/).findOne(10000);
        log("已成功登录到第" + account.order+ "个账号")
        let steps_real=syncToAlipay();
        if (steps_real< stepsMin) {
            try {
                if (Accounts2.indexOf(account) < 0) {
                    Accounts2.push(account)
                    log("支付宝步数为" + steps_real + ",同步失败,已添加到重试名单")
                }
                else {
                    console.error("支付宝步数为" + steps_real + ",同步失败,请稍后重试")
                }               
            
            } catch (error) {
                console.log(error);               
            }
        }
    }
}


function syncToAlipay() {
    let sel3=auto_syn_steps.buttons.sel3
    let sel2 = auto_syn_steps.buttons.sel2
    let sel4 = auto_syn_steps.buttons.sel4
   // log("sel2="+sel2)
    let sel5 = auto_syn_steps.buttons.sel5
    let trytimes=[4,6,9]
    let sel6 = auto_syn_steps.buttons.sel6
    let sel7 = auto_syn_steps.buttons.sel7
    let steps=0
    //let timeout = auto_syn_steps.timeout
    go_sports(sel3,sel4) 
    for (var i = 0; i < trytimes[sel6]; i++) {
        text("今日步数").findOne()
        timestop=[3,5,8,13,21,34]
        sleep(500)
        sleep(timestop[sel5] * 1000 / 2)
        w = textMatches(/^\d+(,\d{3})*$/).findOne();
        var steps_alipay = w.text()
        //log(w)
        while (1) {
            sleep(200)
            w = textMatches(/^\d+(,\d{3})*$/).findOne();
            if (steps_alipay == w.text()) {
                break;
            }
            else {
                steps_alipay = w.text()
            }
        }
        let steps_real = steps_alipay.replace(/,/g, '');
        //log(steps_alipay)
        //log(steps_real)
        steps=steps_real
        if (steps_real >= stepsMin) {
            toastLog("支付宝步数为" + steps_real + ",同步成功")
            if (sel7 == 1) {
                var 捐步 = desc("立即捐步").findOnce()
                if (捐步) {
                    捐步.click()
                    var 确定 = desc("确定").findOne(2000)
                    if (确定) {
                        确定.click()
                        sleep(1000)
                        log("捐步成功")
                        back()
                        sleep(1000)
                    }
                }
            }
            break;
        }
        if (sel2==0) {
            back();
            text("首页").findOne()
            sleep(1000)
            let sel3=auto_syn_steps.buttons.sel3
            let sel4 = auto_syn_steps.buttons.sel4
            go_sports(sel3,sel4)
        }else{
            swipe(device.width / 9 * 8, device.height / 3, device.width / 9 * 8, device.height / 3 * 2, 500)
            sleep(2000);
        }      
        sleep(timestop[sel5] * 1000/2)
    }
    sleep(500)
    back()
    return(steps)
}

function go_sports(sel3,sel4){
    if (sel3 == 1 && sel4==0) {
       // log("直接跳转")
        app.startActivity({
            data: "alipayqr://platformapi/startapp?saId=20000869"
        })
    }
    else {
        while (1) {
            var obj = idContains("app_text").text("运动").findOne();
            var sportButton = obj.parent()
            if (sportButton) {
                break;
            }
        }
        sleep(500)
        clickCenter(obj)
        sportButton.click()
       // sleep(200)
        
    }
    text("今日步数").findOne()
}

function clickCenter(obj) {
    let b=obj.bounds()
    return(click(b.centerX(),b.centerY()))
}

function switchAccount(account,key,sel) {
    auto.waitFor()
    this.logIn = function (account, key) {
        idContains("loginButton").waitFor()
        setText(0, account);
        sleep(100);
        setText(1, key);
        sleep(100);
        setText(0, account);
        idContains("loginButton").findOne().click()
        var thread0 = threads.start(function(){
            while(true){
                var obj = desc("下次再说").findOne(1000);
                if(obj){
                    obj.click();
                }
            }
        });
        var thread1 = threads.start(function(){
            while(true){
                var obj = textContains("请稍等哦").findOne(1000);
                if(obj){
                    click("确定");
                    idContains("loginButton").findOne().click();
                }
            }
        }); 
        var thread2 = threads.start(function(){
            while(true){
                let obj = descMatches(/开通指纹支付|开通刷脸支付/).findOne(1000)
                if(obj){
                    text("关闭").findOne(1000)
                    click("关闭")
                }
            }
        });
        var thread3 = threads.start(function(){
            while(true){
                var obj = text("自助解限").findOne(1000);
                if(obj){
                    thread3.interrupt();//停止线程执行
                    return ;
                }
            }
        });
        //textMatches(/首页|关闭/).findOne()
        thread0.interrupt();//停止线程执行
        thread1.interrupt();//停止线程执行
        thread2.interrupt();//停止线程执行
        thread3.interrupt();//停止线程执行
    }
    if(sel==0) {
        var my = idContains("tab_description").text("我的").findOne();
        my.parent().click()
        clickCenter(my);
        text("设置").waitFor();
        var a = account;
        var b = idContains("user_account").findOne().text()
        // log(a+";"+b)
        if (a == b || (a.indexOf("@") < 0 && a.slice(0, 3) == b.slice(0, 3) && a.slice(a.length - 2, a.length) == b.slice(b.length - 2, b.length))) {
            while (!click("首页"));
            text("蚂蚁森林").waitFor();
            // sleep(1000);
        }
        else {
            desc("设置").findOne().click()
            var accountManage = textMatches(/账号管理|账户详情|换账号登录/).findOne().text()
            // sleep(500)
            if (accountManage == "账号管理" || accountManage == "账户详情") {
                click("账户详情") 
                click("账号管理")
                threads.start(function () {
                    sleep(3000)
                    var obj
                    if (obj = descMatches(/账号管理|账户详情|换账号登录/).findOne(1000)) {
                        clickCenter(obj)
                    }
                })
                text("账号切换").waitFor()
                //   sleep(500);
                click("账号切换") 
            } else {
                text("换账号登录").waitFor()
                //   sleep(500);
                click("换账号登录") 
            }
            var obj = textContains("换个新账号登录").findOne()
            click("换个新账号登录") 
            clickCenter(obj) ;
            var obj = textMatches(/点击下方头像登录|登录|下一步/).findOne().text()
            if (obj == "点击下方头像登录") {
                text("换个账号").findOne().click()
                //    sleep(500)
                var obj = textMatches(/登录|下一步/).findOne().text()
                //     sleep(300)
            }
            if (obj == "下一步") {
                //   textContains("下一步").waitFor()
                sleep(100)
                setText(0, account);
                sleep(100)
                click("下一步")
                // sleep(1000)
                var obj = textMatches(/登录|刷脸登录/).findOne().text()
                if (obj == "登录") {
                    //  log("登录")
                    sleep(100);
                    setText(1, key);

                } else {
                    //  log("刷脸登录")
                    sleep(200)
                    textMatches(/换个验证方式|换个方式登录/).findOne()
                    click("换个验证方式")
                    click("换个方式登录")
                    text("密码登录").findOne()
                    //  text("密码登录").findOne().parent().click()
                    sleep(200)
                    while (!click("密码登录")) { }
                    sleep(400)
                    setText(0, account);
                    sleep(200);
                    setText(1, key);
                    sleep(200)
                }
                idContains("loginButton").findOne().click()
                text("首页").waitFor();
            } else {
                this.logIn(account, key)
            }
        }   
    }
    else{
        app.startActivity(app.intent({
            action: "VIEW",
            data: "alipayqr://platformapi/startapp?appId=20000008",
        }));
        threads.start(function () {
            obj = textMatches("换个验证方式|密码登录|换个方式登录").findOne(5000)
            click("密码登录")
            click("换个验证方式")
            click("换个方式登录")
        })
        this.logIn(account, key)
    }
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
