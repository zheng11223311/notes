
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui"; //更多精彩内容请联系群主加入精英群，微信shenlong6898 或zxkj6898
版本号 = 10037
爱关注 = storages.create("爱关注");
if (爱关注.get("攒攒提交图片延时") == undefined) { 爱关注.put("攒攒提交图片延时", 1); }
if (爱关注.get("攒攒没任务等待时间") == undefined) { 爱关注.put("攒攒没任务等待时间", 5); }
if (爱关注.get("小龙虾切换界面时间") == undefined) { 爱关注.put("小龙虾切换界面时间", 500); }
if (爱关注.get("小龙虾点赞关注") == undefined) { 爱关注.put("小龙虾点赞关注", 1); }
if (爱关注.get("小龙虾协议点赞关注") == undefined) { 爱关注.put("小龙虾协议点赞关注", 0); }
if (爱关注.get("小龙虾协议任务等待时间") == undefined) { 爱关注.put("小龙虾协议任务等待时间", 2); }
if (爱关注.get("小龙虾协议没任务时自动翻页") == undefined) { 爱关注.put("小龙虾协议没任务时自动翻页", 1); }
if (爱关注.get("小龙虾账号") == undefined) { 爱关注.put("小龙虾账号", ""); }
if (爱关注.get("小龙虾密码") == undefined) { 爱关注.put("小龙虾密码", ""); }
if (爱关注.get("小龙虾打开抖音观看时间") == undefined) { 爱关注.put("小龙虾打开抖音观看时间", "0.5"); }
if (爱关注.get("任务数量") == undefined) { 爱关注.put("任务数量", "600"); }
if (爱关注.get("小龙虾协议自动暂停是否开启") == undefined) { 爱关注.put("小龙虾协议自动暂停是否开启", "开启"); }
if (爱关注.get("集卡帮打开抖音观看时间") == undefined) { 爱关注.put("集卡帮打开抖音观看时间", 1); }
if (爱关注.get("蚂蚁点吧任务id") == undefined) { 爱关注.put("蚂蚁点吧任务id", ""); }
if (爱关注.get("蚂蚁点吧账号") == undefined) { 爱关注.put("蚂蚁点吧账号", ""); }
if (爱关注.get("蚂蚁点吧密码") == undefined) { 爱关注.put("蚂蚁点吧密码", ""); }
if (爱关注.get("集卡帮切换") == undefined) { 爱关注.put("集卡帮切换", 2); }
if (爱关注.get("抖音名字") == undefined) { 爱关注.put("抖音名字", ""); }
if (爱关注.get("抖音个人连接") == undefined) { 爱关注.put("抖音个人连接", ""); }
threads.start(function () {//版本更新检查
    var r = http.get("https://www.lanzous.com/i9nmcxe");
    html = r.body.string()
    网络版本号 = html.match(new RegExp("--" + "(\\S*)" + "--"))[1]
    开启 = html.search("爱关注开启")
    关闭 = html.search("爱关注关闭")
    下载链接 = html.match(new RegExp("下载地址：" + "(\\S*)" + "!!"))[1]
    var 更新说明网址 = http.get("https://www.lanzous.com/i9nmcde");
    htmll = 更新说明网址.body.string()

    更新说明 = htmll.match(new RegExp("更新说明：" + "(\\S*)" + "!!"))[1]
    //log(网络版本号)
    if (parseInt(网络版本号) > 版本号 && 开启 > 0) {
        var releaseNotes = "更新内容：\n" + 更新说明
        dialogs.build({
            title: "发现新版本 v" + 网络版本号,
            content: releaseNotes,
            positive: "到浏览器下载",
            neutral: "暂时不更新"
        })
            .on("positive", () => {
                ui.finish();
                app.openUrl(下载链接);
                exit()
            })
            .on("neutral", () => {

            })
            .show();
    }
})


主界面 = ui.inflate(
    <drawer id="drawer" >
        <vertical>
            <appbar>
                <toolbar id="toolbar" title="爱关注" />
                
                <tabs id="tabs" />
              
            </appbar>
            <horizontal >
                <text text="爱关注Q群：590057347" textColor="black" gravity="center" w="auto" />
                <button id="jrqqun" text="加入Q群" textSize="12sp" gravity="center" h="37" layout_weight="1" />
                <button id="lsbb" text="爱关注历史版本" textSize="12sp" gravity="center" h="37" layout_weight="2" />
            </horizontal>
            <Switch id="autoService" text="无障碍服务" checked="{{auto.service != null}}" padding="8 8 8 8" textSize="15sp" />
            <viewpager id="viewpager" margin="10 5">
                <frame id="bb" h="auto">
                    <vertical>
                        <horizontal>
                            <radiogroup id="ydxx" mariginTop="16" w="100">
                                <radio id="radio0" text="抖音养号" h="45" />
                                <radio id="radio1" text="66阅读" h="45" />
                                <radio id="radio2" text="蚂蚁协议" h="45" />//checked="true" 
                                <radio id="radio3" text="攒攒" h="45" />
                                <radio id="radio5" text="龙虾协议" h="45" />
                                <radio id="radio6" text="集卡帮" h="45" />
                                <radio id="radio4" text="秘乐视频" h="45" />

                            </radiogroup>
                            <vertical>
                                <text text="     " textColor="black" textSize="15sp" h="45" />
                                <text text="     " textColor="black" textSize="15sp" h="45" />
                                <button id="click_mysz" text="蚂蚁设置" textSize="13sp" gravity="center" h="45" w="150" />
                                <button id="click_zzsz" text="攒攒常见问题及设置" textSize="13sp" gravity="center" h="45" w="150" />

                                <button id="click_xlxxysz" text="龙虾协议设置" textSize="13sp" gravity="center" h="45" w="150" />
                                <button id="click_jkbsz" text="集卡帮设置" textSize="13sp" gravity="center" h="45" w="150" />
                                <button id="click_xlxsz" text="秘乐视频常见问题" textSize="13sp" gravity="center" h="45" w="150" />
                            </vertical>
                            <vertical>
                                <text text="     " textColor="black" textSize="12sp" h="45" />
                                <button id="click_66zc" text="66注册下载" textSize="12sp" gravity="center" h="45" w="100" />
                                <button id="click_mydbzc" text="蚂蚁注册下载" textSize="12sp" gravity="center" h="45" w="100" />

                                <button id="click_zzzc" text="攒攒注册下载" textSize="12sp" gravity="center" h="45" w="100" />

                                <button id="click_xlxzc" text="龙虾注册下载" textSize="12sp" gravity="center" h="45" w="100" />

                                <button id="click_jkbzc" text="集卡帮下载" textSize="12sp" gravity="center" h="45" w="100" />
                                <button id="click_mlzc" text="秘乐注册下载" textSize="12sp" gravity="center" h="45" w="100" />
                            </vertical>
                        </horizontal>


                        <button id="click_kaishi" text="开始(音量下、Home键停止)" gravity="center" margin="10 5" />
                    </vertical>
                </frame>
                <frame>
                    <text text="" textColor="red" textSize="16sp" />
                </frame>
                <frame>
                    <vertical>
                        <text text="小说填写邀请码，你有1元，作者也有1元奖励，当是给作者的赞助，谢谢！" textColor="black" />
                        <text text="        " textColor="black" />
                        <horizontal>
                            <text text="  牛角小说邀请码：6a3jnj    " textColor="black" />
                            <button id="click_njyq" text="复制邀请码" gravity="center" textSize="10" w="80" />
                            <button id="click_njxz" text="牛角下载" gravity="center" textSize="15" />
                        </horizontal>

                        <card w="*" h="80" margin="10 5" cardCornerRadius="2dp"
                            cardElevation="1dp" gravity="center_vertical">
                            <vertical padding="18 8" h="auto">
                                <button id="click_xiaoshuo" text="小说自动翻页(音量下、Home键停止)" gravity="center" />
                            </vertical>
                            <View bg="#224336" h="*" w="10" />
                        </card>
                    </vertical>
                </frame>
            </viewpager>
        </vertical>
        <vertical layout_gravity="left" bg="#ffffff" w="280">
            <img w="280" h="200" scaleType="fitXY" src="http://images.shejidaren.com/wp-content/uploads/2014/10/023746fki.jpg" />
            <list id="menu">
                <horizontal bg="?selectableItemBackground" w="*">
                    <img w="50" h="50" padding="16" src="{{this.icon}}" tint="#009688" />
                    <text textColor="black" textSize="15sp" text="{{this.title}}" layout_gravity="center" />
                </horizontal>
            </list>
        </vertical>

    </drawer>
);
蚂蚁点吧设置界面 = ui.inflate(
    <frame >
        <vertical gravity="center_vertical">
            <card w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">

                <vertical h="auto" gravity="center">
                    <horizontal h="auto" gravity="center">
                        <text text="蚂蚁点吧账号：" margin="10" textColor="black" textSize="15sp" />
                        <input id="蚂蚁点吧账号" w="*" inputType="number" gravity="center" />
                    </horizontal>
                    <horizontal h="auto" gravity="center">
                        <text text="蚂蚁点吧密码：" margin="10" textColor="black" textSize="15sp" />
                        <input id="蚂蚁点吧密码" w="*" password="true" gravity="center" />
                    </horizontal>
                </vertical>
            </card>

            <button id="蚂蚁点吧保存配置" text="保存并返回主界面" gravity="center" />
        </vertical>
    </frame>)


攒攒设置界面 = ui.inflate(
    <frame  >
        <vertical gravity="center_vertical">
            <card w="*" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                <vertical padding="18 8" h="auto" gravity="center">
                    <text text="攒攒提交任务前等待图片上传完成的延迟,默认为1秒" textColor="black" gravity="center" />
                    <horizontal h="50" gravity="center">
                        <input id="攒攒上传图片等待时间" inputType="number" text="1" gravity="center" />
                        <text text="（秒）" textColor="black" textSize="15sp" />
                    </horizontal>
                </vertical>
                <View bg="#224336" h="100" w="10" />
            </card>
            <card w="*" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                <vertical padding="18 8" h="auto" gravity="center">
                    <text text="攒攒没任务的等待时间,默认为5秒" textColor="black" gravity="center" />
                    <horizontal h="50" gravity="center">
                        <input id="攒攒没任务的等待时间" inputType="number" text="5" gravity="center" />
                        <text text="（秒）" textColor="black" textSize="15sp" />
                    </horizontal>
                </vertical>
                <View bg="#224336" h="100" w="10" />
            </card>
            <button id="攒攒保存配置" text="保存并返回主界面" gravity="center" />
        </vertical>
    </frame>)
小龙虾协议设置界面 = ui.inflate(
    <frame >
        <vertical gravity="center_vertical">
            <card w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">

                <vertical h="auto" gravity="center">
                    <horizontal h="auto" gravity="center">
                        <text text="小龙虾账号：" margin="10" textColor="black" textSize="15sp" />
                        <input id="小龙虾账号" w="*" inputType="number" gravity="center" />
                    </horizontal>
                    <horizontal h="auto" gravity="center">
                        <text text="小龙虾密码：" margin="10" textColor="black" textSize="15sp" />
                        <input id="小龙虾密码" w="*" password="true" gravity="center" />
                    </horizontal>
                </vertical>
            </card>
            <card w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">

                <vertical h="auto" gravity="center">
                    <horizontal h="auto" >
                        <text text="逗音名字：" margin="10" textColor="black" textSize="15sp" />
                        <text id="抖音名字" text="" margin="10" textColor="black" textSize="15sp" />
                    </horizontal>
                    <horizontal h="auto" >
                        <text text="逗音个人连接：" marginLeft="10" textColor="black" textSize="15sp" />
                        <input id="抖音个人连接" w="*" h="50" singleLine="true" />
                    </horizontal>
                    <text text="主页-我-右上角三横-我的二维码-右上角箭头-复制链接" marginLeft="10" textColor="red" textSize="12sp" />
                    <button id="检测抖音个人连接" text="检测逗音个人连接" gravity="center" />
                </vertical>
            </card>
            <card w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">
                <vertical padding="18 8" h="auto" gravity="center_vertical">
                    <horizontal h="auto" >
                        <text text="没任务等待时间及养号间隔：" textColor="black" textSize="15sp" marginTop="1" w="auto" />
                        <input id="小龙虾协议任务等待时间" inputType="number" text="2" gravity="center" />
                        <text text="（秒）" textColor="black" textSize="15sp" />
                    </horizontal>
                    <horizontal h="auto" >
                        <text text="任务选择:" textColor="black" textSize="15sp" marginTop="2" w="auto" />
                        <checkbox id="xlxxydz" text="点赞" />
                        <checkbox id="xlxxygz" text="关注" />
                    </horizontal>
                    <horizontal h="auto" >
                        <text text="跳转任务界面几秒后进行任务：" textColor="black" textSize="15sp" marginTop="1" w="auto" />
                        <input id="小龙虾打开抖音观看时间" inputType="number" text="0.5" gravity="center" />
                        <text text="（秒）" textColor="black" textSize="15sp" />
                    </horizontal>
                    <horizontal h="auto" >
                        <checkbox id="小龙虾协议没任务时自动翻页" checked="true" text="没任务时自动养号" gravity="center_vertical" />
                    </horizontal>
                    <horizontal h="auto" >
                        <checkbox id="小龙虾协议自动暂停是否开启" />
                        <text text="完成多少个任务停止：" textColor="black" textSize="15sp" marginTop="1" w="auto" />
                        <input id="任务数量" inputType="number" text="2" gravity="center" />
                    </horizontal>
                </vertical >
            </card>
            <button id="小龙虾协议保存配置" text="保存并返回主界面" gravity="center" />
        </vertical>
    </frame>)
集卡帮设置界面 = ui.inflate(
    <frame >
        <vertical gravity="center_vertical">
            <card w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">

                <vertical h="auto" gravity="center">
                    <horizontal h="auto" >
                        <text text="逗音名字：" margin="10" textColor="black" textSize="15sp" />
                        <text id="抖音名字" text="" margin="10" textColor="black" textSize="15sp" />
                    </horizontal>
                    <horizontal h="auto" >
                        <text text="逗音个人连接：" marginLeft="10" textColor="black" textSize="15sp" />
                        <input id="抖音个人连接" w="*" h="50" singleLine="true" />
                    </horizontal>
                    <text text="主页-我-右上角三横-我的二维码-右上角箭头-复制链接" marginLeft="10" textColor="red" textSize="12sp" />
                    <button id="检测抖音个人连接" text="检测逗音个人连接" gravity="center" />
                </vertical>
            </card>
            <card w="*" h="auto" margin="10 5" cardCornerRadius="2dp" cardElevation="1dp" gravity="center_vertical">

                <vertical padding="18 8" h="auto" >

                    <radiogroup >
                        <radio id="qiehuan1" text="打开app切换" h="45" />
                        <radio id="qiehuan2" text="任务键切换(配合下方延时)" h="45" />
                    </radiogroup>

                    <horizontal h="50" >
                        <text text="从抖音切换回集卡帮界面的延时：" textColor="black" textSize="12sp" w="auto" />
                        <input id="集卡帮的切屏延时" text="500" gravity="center" />
                        <text text="（毫秒）" textColor="black" textSize="15sp" />
                    </horizontal>


                    <text text="（模拟器500以上，手机切屏卡时自行调整）" textColor="black" textSize="12sp" w="auto" />
                    <text text="（小米，魅蓝一般200）" textColor="black" textSize="12sp" w="auto" />
                    <horizontal h="auto" >
                        <text text="跳转任务界面几秒后进行任务：" textColor="black" textSize="15sp" marginTop="1" w="auto" />
                        <input id="集卡帮打开抖音观看时间" text="0.5" gravity="center" />
                        <text text="（秒）" textColor="black" textSize="15sp" />
                    </horizontal>
                </vertical>

            </card>

            <button id="集卡帮保存配置" text="保存并返回主界面" gravity="center" />
        </vertical>
    </frame>)

ui.setContentView(主界面)
ui.run(() => {
    主界面.toolbar.setTitle("爱关注(v" + 版本号 + ")")

})

小龙虾协议设置界面.检测抖音个人连接.on("click", () => {
    threads.start(function () {
        爱关注.put("抖音名字", "")
        爱关注.put("抖音个人连接", "")
        ui.run(() => {
            小龙虾协议设置界面.抖音名字.setText("")
        })
        toast("检测中")
        抖音短网址 = 小龙虾协议设置界面.抖音个人连接.text()
        if (抖音短网址.search("v.douyin.com") > 0) {
            抖音个人链接检测()
            if (抖音的链接 == "正确") {
                ui.run(() => {
                    小龙虾协议设置界面.抖音名字.setText(抖音名字)
                    toast("抖音号识别成功：" + 抖音名字)
                })
                爱关注.put("抖音名字", 抖音名字)
                爱关注.put("抖音个人连接", 小龙虾协议设置界面.抖音个人连接.text())
            } else if (抖音的链接 == "错误") {
                alert("请填写正确的个人链接")
            }
        } else {
            alert("请填写正确的个人链接")
        }
        //抖音短网址 = "在抖音，记录美好生活！ https://v.douyin.com/tJpMys/"

    })
})
集卡帮设置界面.检测抖音个人连接.on("click", () => {
    threads.start(function () {
        爱关注.put("抖音名字", "")
        爱关注.put("抖音个人连接", "")
        ui.run(() => {
            集卡帮设置界面.抖音名字.setText("")
        })
        toast("检测中")
        抖音短网址 = 集卡帮设置界面.抖音个人连接.text()
        if (抖音短网址.search("v.douyin.com") > 0) {
            抖音个人链接检测()
            if (抖音的链接 == "正确") {
                ui.run(() => {
                    集卡帮设置界面.抖音名字.setText(抖音名字)
                    toast("抖音号识别成功：" + 抖音名字)
                })
                爱关注.put("抖音名字", 抖音名字)
                爱关注.put("抖音个人连接", 集卡帮设置界面.抖音个人连接.text())
            } else if (抖音的链接 == "错误") {
                alert("请填写正确的个人链接")
            }
        } else {
            alert("请填写正确的个人链接")
        }
        //抖音短网址 = "在抖音，记录美好生活！ https://v.douyin.com/tJpMys/"

    })
})
蚂蚁点吧设置界面.蚂蚁点吧保存配置.on("click", () => {
    爱关注.put("蚂蚁点吧账号", 蚂蚁点吧设置界面.蚂蚁点吧账号.text())
    爱关注.put("蚂蚁点吧密码", 蚂蚁点吧设置界面.蚂蚁点吧密码.text())
    ui.setContentView(主界面)
})

小龙虾协议设置界面.小龙虾协议保存配置.on("click", () => {

    if (小龙虾协议设置界面.xlxxygz.checked && 小龙虾协议设置界面.xlxxydz.checked) {
        爱关注.put("小龙虾协议点赞关注", 0)
    } else if (小龙虾协议设置界面.xlxxygz.checked && !小龙虾协议设置界面.xlxxydz.checked) {
        爱关注.put("小龙虾协议点赞关注", 1)
    } else if (小龙虾协议设置界面.xlxxydz.checked && !小龙虾协议设置界面.xlxxygz.checked) {
        爱关注.put("小龙虾协议点赞关注", 2)
    }

    //log("保存" + 爱关注.get("小龙虾协议点赞关注"))
    if (小龙虾协议设置界面.小龙虾协议没任务时自动翻页.checked) {
        爱关注.put("小龙虾协议没任务时自动翻页", 1)
    } else if (!小龙虾协议设置界面.小龙虾协议没任务时自动翻页.checked) {
        爱关注.put("小龙虾协议没任务时自动翻页", 0)
    }
    if (小龙虾协议设置界面.小龙虾协议自动暂停是否开启.checked) {
        爱关注.put("小龙虾协议自动暂停是否开启", "开启")
    } else if (!小龙虾协议设置界面.小龙虾协议自动暂停是否开启.checked) {
        爱关注.put("小龙虾协议自动暂停是否开启", "关闭")
    }
    //if (爱关注.get("小龙虾打开抖音观看时间") == undefined) { 爱关注.put("小龙虾打开抖音观看时间", "0.5"); }

    爱关注.put("小龙虾打开抖音观看时间", 小龙虾协议设置界面.小龙虾打开抖音观看时间.text())
    爱关注.put("小龙虾协议任务等待时间", 小龙虾协议设置界面.小龙虾协议任务等待时间.text())
    爱关注.put("小龙虾账号", 小龙虾协议设置界面.小龙虾账号.text())
    爱关注.put("小龙虾密码", 小龙虾协议设置界面.小龙虾密码.text())
    爱关注.put("任务数量", 小龙虾协议设置界面.任务数量.text())
    ui.setContentView(主界面)
})
攒攒设置界面.攒攒保存配置.on("click", () => {
    爱关注.put("攒攒提交图片延时", 攒攒设置界面.攒攒上传图片等待时间.text())
    爱关注.put("攒攒没任务等待时间", 攒攒设置界面.攒攒没任务的等待时间.text())
    ui.setContentView(主界面)
})
集卡帮设置界面.集卡帮保存配置.on("click", () => {
    爱关注.put("小龙虾切换界面时间", 集卡帮设置界面.集卡帮的切屏延时.text())
    爱关注.put("集卡帮打开抖音观看时间", 集卡帮设置界面.集卡帮打开抖音观看时间.text())
    if (集卡帮设置界面.qiehuan1.checked) {
        爱关注.put("集卡帮切换", 1)
    } else if (集卡帮设置界面.qiehuan2.checked) {
        爱关注.put("集卡帮切换", 2)
    }
    ui.setContentView(主界面)
})
ui.click_mysz.on("click", () => {//切换到蚂蚁点吧设置界面
    threads.start(function 切换集蚂蚁点吧界面() {
        ui.setContentView(蚂蚁点吧设置界面)
        ui.run(() => {
            蚂蚁点吧设置界面.蚂蚁点吧账号.setText(爱关注.get("蚂蚁点吧账号"))
            蚂蚁点吧设置界面.蚂蚁点吧密码.setText(爱关注.get("蚂蚁点吧密码"))
        })
    })
})
ui.click_jkbsz.on("click", () => {//切换到集卡帮设置界面
    threads.start(function 切换集卡帮界面() {
        ui.setContentView(集卡帮设置界面)
        ui.run(() => {
            集卡帮设置界面.集卡帮打开抖音观看时间.setText(爱关注.get("集卡帮打开抖音观看时间"))
            集卡帮设置界面.集卡帮的切屏延时.setText(爱关注.get("小龙虾切换界面时间"))
            集卡帮设置界面.抖音名字.setText(爱关注.get("抖音名字"))
            集卡帮设置界面.抖音个人连接.setText(爱关注.get("抖音个人连接"))
            if (爱关注.get("集卡帮切换") == 1) {
                集卡帮设置界面.qiehuan1.setChecked(true)
            } else if (爱关注.get("集卡帮切换") == 2) {
                集卡帮设置界面.qiehuan2.setChecked(true)
            }
            //集卡帮设置界面.集卡帮的切屏延时.setText(爱关注.get("集卡帮的切屏延时"))
        })
    })
})
ui.click_xlxxysz.on("click", () => {//切换到小龙虾协议设置界面
    //小龙虾协议设置界面()
    threads.start(function 切换小龙虾协议界面() {
        ui.setContentView(小龙虾协议设置界面)
        ui.run(() => {
            小龙虾协议设置界面.小龙虾打开抖音观看时间.setText(爱关注.get("小龙虾打开抖音观看时间"))
            小龙虾协议设置界面.小龙虾账号.setText(爱关注.get("小龙虾账号"))
            小龙虾协议设置界面.小龙虾密码.setText(爱关注.get("小龙虾密码"))
            小龙虾协议设置界面.抖音名字.setText(爱关注.get("抖音名字"))
            小龙虾协议设置界面.抖音个人连接.setText(爱关注.get("抖音个人连接"))
            小龙虾协议设置界面.任务数量.setText(爱关注.get("任务数量"))
            //log(爱关注.get("小龙虾协议任务等待时间"))
            //小龙虾协议设置界面.小龙虾协议任务等待时间.setText(爱关注.get("小龙虾协议任务等待时间"))
            //log("读取" + 爱关注.get("小龙虾协议点赞关注"))
            if (爱关注.get("小龙虾协议点赞关注") == 0) {
                小龙虾协议设置界面.xlxxydz.setChecked(true)
                小龙虾协议设置界面.xlxxygz.setChecked(true)
            } else if (爱关注.get("小龙虾协议点赞关注") == 1) {
                小龙虾协议设置界面.xlxxygz.setChecked(true)
                小龙虾协议设置界面.xlxxydz.setChecked(false)
            } else if (爱关注.get("小龙虾协议点赞关注") == 2) {
                小龙虾协议设置界面.xlxxygz.setChecked(false)
                小龙虾协议设置界面.xlxxydz.setChecked(true)
            }
            if (爱关注.get("小龙虾协议没任务时自动翻页") == 0) {
                小龙虾协议设置界面.小龙虾协议没任务时自动翻页.setChecked(false)
            } else if (爱关注.get("小龙虾协议没任务时自动翻页") == 1) {
                小龙虾协议设置界面.小龙虾协议没任务时自动翻页.setChecked(true)
            }

            if (爱关注.get("小龙虾协议自动暂停是否开启") == "开启") {
                小龙虾协议设置界面.小龙虾协议自动暂停是否开启.setChecked(true)
            } else if (爱关注.get("小龙虾协议自动暂停是否开启") == "关闭") {
                小龙虾协议设置界面.小龙虾协议自动暂停是否开启.setChecked(false)
            }

        });
    });
})
ui.click_xlxsz.on("click", () => {//切换到蓝奏秘乐视频

    threads.start(function () {

        app.openUrl("https://www.lanzous.com/b00z9d3ne")
    });
})

ui.click_zzsz.on("click", () => {//切换到攒攒设置界面 
    //攒攒设置界面()

    threads.start(function () {
        ui.setContentView(攒攒设置界面)
        ui.run(() => {
            攒攒设置界面.攒攒上传图片等待时间.setText(爱关注.get("攒攒提交图片延时"))
            攒攒设置界面.攒攒没任务的等待时间.setText(爱关注.get("攒攒没任务等待时间"))
        });
    });

})
ui.click_kaishi.on("click", () => {//抖音关注
    //threads.start(function () {if(!requestScreenCapture()){toast("请求截图失败");exit();}else{toast("请求截屏成功")}})
    threads.start(function () {//版本更新检查运行平台脚本
        if (开启 > 0) {
            if (auto.service == null) {
                toast("请先开启无障碍服务！");
                return;
            }
            events.observeKey();
            if (ui.radio0.checked) {//抖音养号
                threads.start(function 抖音养号() {

                    申请截图权限()
                    等待抖音并获取高度()
                    while (true) {
                        if (text("我知道了").find().length > 0) {
                            text("我知道了").find()[0].click()
                        }
                        swipe(device.width / 2, device.height * 4 / 5, device.width / 2, device.height / 5, 500)
                        a = random(6, 15)
                        toast("等待" + a + "秒")
                        sleep(a * 1000)
                    }
                })
            } else if (ui.radio1.checked) {//66阅读
                threads.start(function () {

                    申请截图权限()
                    等待抖音并获取高度()
                    var 等待时间 = 1
                    app.launchPackage("com.toutiaozuqiu.and.liuliu")
                    // requestScreenCapture();
                    do {
                        if (className("android.view.View").text("观看爆音视频").find().length > 0) {
                            toast("主界面")
                            className("android.view.View").text("观看爆音视频").findOne().click();
                            sleep(1500)
                        } else if (text("领取任务").find().length > 0) {
                            toast("领取任务")
                            id("btn").text("领取任务").findOne().click();
                            sleep(1500)
                        } else if (id("btn").text("打开“爆音”做任务").find().length > 0) {
                            toast("打开抖音界面")
                            if (id("task_require_2").text("1、点赞").exists()) {
                                //toast("点赞");
                                任务类型 = "点赞任务"
                                id("btn").text("打开“爆音”做任务").findOne().click();
                                sleep(1000);
                                检测抖音界面();
                                if (状态 == "放弃任务") {
                                    app.launchPackage("com.toutiaozuqiu.and.liuliu");
                                    sleep(1000)
                                    back()
                                    sleep(1000)
                                    var u = text("放弃任务").find()
                                    var tv = u[0]; //放弃任务
                                    if (tv) {
                                        var tr = tv.bounds()
                                        click(tr.centerX(), tr.centerY());
                                        sleep(1500)
                                    }
                                    var u = text("确定").find()
                                    var tv = u[0]; //放弃任务
                                    if (tv) {
                                        var tr = tv.bounds()
                                        click(tr.centerX(), tr.centerY());
                                        sleep(1500)
                                    }
                                } else if (任务类型 = "点赞任务") {

                                    抖音关注点赞();
                                    sleep(1000);
                                    截屏()
                                    app.launchPackage("com.toutiaozuqiu.and.liuliu");
                                    id("btn1").text("上传截图").findOne().click();
                                    var u = id("btn1").text("上传截图").find();
                                    var tv = u[0];
                                    if (tv) {
                                        var ty = tv.bounds();
                                    }

                                    sleep(2000);
                                    //选第一张图片
                                    var u = text(time + ".png").find();
                                    var tv = u[0];
                                    if (tv) {
                                        var tr = tv.bounds();
                                        click(tr.centerX(), tr.centerY());
                                        sleep(1500);
                                    }
                                    do {
                                        sleep(1000)//这里有坐标
                                    } while (bounds(ty.left, ty.top, ty.right, ty.bottom).find().length == 1)
                                    id("btn").text("提交任务").findOne().click();
                                }
                            } else if (id("task_require_2").text("1、关注").exists()) {
                                任务类型 = "关注任务"
                                sleep(1000);
                                id("btn").text("打开“爆音”做任务").findOne().click();
                                sleep(1500); //下面有问题
                                检测抖音界面();
                                抖音关注点赞();
                                sleep(1000)
                                截屏()
                                app.launchPackage("com.toutiaozuqiu.and.liuliu");
                                id("btn1").text("上传截图").findOne().click();

                                var u = id("btn1").text("上传截图").find();
                                var tv = u[0];
                                if (tv) {
                                    var ty = tv.bounds();
                                }
                                sleep(2000);
                                //选第一张图片
                                var u = text(time + ".png").find();
                                var tv = u[0];
                                if (tv) {
                                    var tr = tv.bounds();
                                    click(tr.centerX(), tr.centerY());
                                    sleep(1500);
                                }
                                do {
                                    sleep(1000)
                                } while (bounds(ty.left, ty.top, ty.right, ty.bottom).find().length == 1)
                                id("btn").text("提交任务").findOne().click();
                            } else if (id("task_require_2").text("1、留言").exists()) {
                                var u = text("放弃任务").find()
                                var tv = u[0]; //放弃任务
                                if (tv) {
                                    var tr = tv.bounds()
                                    click(tr.centerX(), tr.centerY());
                                    sleep(1500)
                                }
                                var u = text("确定").find()
                                var tv = u[0]; //放弃任务
                                if (tv) {
                                    var tr = tv.bounds()
                                    click(tr.centerX(), tr.centerY());
                                    sleep(1500)
                                }
                            }
                        } else if (text("暂时没有任务，请尝试其它任务").find().length > 0) {
                            back();
                            for (var i = 1; i < 6; i++) {
                                toast("没任务，等待第" + i + "0秒")
                                sleep(等待时间 * i * 10000)
                            }

                        }
                        sleep(1000)
                    } while (true)

                })
            } else if (ui.radio2.checked) {//蚂蚁点吧
                threads.start(function () {
                    //log(爱关注.get("抖音截图高度"))
                    //log(爱关注.get("关注关注按钮上"))
                    //获取抖音截图高度和关注按钮信息()
                    events.observeKey();
                    申请截图权限()
                    if (爱关注.get("抖音截图高度") == undefined || 爱关注.get("关注关注按钮上") == undefined) {
                        获取抖音截图高度和关注按钮信息()
                    } else {
                        app.launchPackage("com.ss.android.ugc.aweme")
                        toast("等待抖音界面")
                        sleep(2000)
                        do {
                            sleep(500)
                        } while (packageName("com.ss.android.ugc.aweme").find().length == 0)
                    }

                    console.show()
                    蚂蚁账号 = 爱关注.get("蚂蚁点吧账号")
                    蚂蚁密码 = 爱关注.get("蚂蚁点吧密码")
                    while (true) {
                        if (爱关注.get("蚂蚁点吧任务id") == "") {
                            r = http.get("http://39.98.68.183:8099/api/mayi.html?method=api.get.task&username=" + 蚂蚁账号 + "&pwd=" + 蚂蚁密码)
                            网页信息 = r.body.string()
                            网页文本 = JSON.parse(网页信息)
                            //
                            //log(网页文本)
                            if (网页文本["message"] == "成功") {//领取任务成功
                                log("领取任务成功")
                                蚂蚁任务id = 网页文本["result"]["mt_id"]
                                爱关注.put("蚂蚁点吧任务id", 蚂蚁任务id)
                                抖音短网址 = 网页文本["result"]["mt_content_url"]
                                抖音长网址 = http.get(抖音短网址)
                                网页文本11 = JSON.stringify(抖音长网址)
                                a = 网页文本11.split("\"")
                                网址 = a[a.length - 10]
                                //log("抖音网址=" + 网址)
                                任务类型 = 网页文本["result"]["mt_tasktype"]
                                if (任务类型 == "dianzan" || 任务类型 == "guanzhu") {
                                    if (任务类型 == "dianzan") {
                                        任务类型 = "点赞任务"
                                    } else if (任务类型 == "guanzhu") {
                                        任务类型 = "关注任务"
                                    }
                                    log(任务类型 + "，正在打开页面")
                                    获取id并打开抖音页面()
                                    console.hide()
                                    抖音点赞关注()
                                    console.show()
                                    sleep(500)
                                    back()
                                    sleep(1000)
                                } else if (任务类型 == "pinglun") {
                                    log("评论任务，直接提交")
                                }

                                //log("mt_id=" + 爱关注.get("蚂蚁点吧任务id"))
                                ///////////////提交任务
                                r = http.get("http://39.98.68.183:8099/api/mayi.html?method=api.update.task.state&username=" + 蚂蚁账号 + "&pwd=" + 蚂蚁密码 + "&mt_id=" + 爱关注.get("蚂蚁点吧任务id") + "&state=1")
                                //log(r)
                                网页信息 = r.body.string()
                                网页文本 = JSON.parse(网页信息)
                                爱关注.put("蚂蚁点吧任务id", "")
                                log("提交任务" + 网页文本["message"])

                                ///////////////
                            } else if (网页文本["message"] == "已领取") {
                                ///////////////提交任务
                                r = http.get("http://39.98.68.183:8099/api/mayi.html?method=api.update.task.state&username=" + 蚂蚁账号 + "&pwd=" + 蚂蚁密码 + "&mt_id=" + 爱关注.get("蚂蚁点吧任务id") + "&state=1")
                                log("有任务未完成")
                                //log(r)
                                //log(r.body.string())
                                ///////////////
                            } else if (网页文本["message"] == "账号或密码错误!" || 网页文本["message"] == "token参数有误!") {
                                alert("账号或密码错误")
                                threads.shutDownAll()
                            } else if (网页文本["message"] == "绑定账号才可领取任务哦") {
                                alert("请前往蚂蚁点吧app绑定抖音账号")
                                threads.shutDownAll()
                            } else if (网页文本["message"] == "您的账号绑定还在审核中,暂无法领取任务") {
                                alert("您的账号绑定还在审核中,暂无法领取任务")
                                threads.shutDownAll()
                            } else if (网页文本["message"] == "您已经做过该任务,无法重复领取!") {
                                log("接到重复任务")
                            }
                            sleep(1000)
                            log("-----------------")
                        } else {//上次任务没完成
                            ///////////////提交任务

                            r = http.get("http://39.98.68.183:8099/api/mayi.html?method=api.update.task.state&username=" + 蚂蚁账号 + "&pwd=" + 蚂蚁密码 + "&mt_id=" + 爱关注.get("蚂蚁点吧任务id") + "&state=1")
                            log("上次有任务没完成，提交任务！")
                            爱关注.put("蚂蚁点吧任务id", "")
                            sleep(1000)
                            ///////////////
                        }



                    }
                })
            } else if (ui.radio3.checked) {//攒攒
                threads.start(function 攒攒() {

                    申请截图权限()
                    获取抖音截图高度和关注按钮信息()
                    app.launchPackage("com.zanqzan.app")
                    sleep(1000)
                    do {
                        if (text(">").find().length > 0) {
                            var 箭头数量 = text(">").find()
                        } else if (text("> ").find()) {
                            var 箭头数量 = text("> ").find()
                        }
                        if (text("D音任务").find().length == 1 && text("D音").find().length == 1) {
                            var img = captureScreen()
                            if (text("打开D音 直接做任务 ").find().length > 0 || text("打开D音 直接做任务").find().length > 0) {
                                if (text("打开D音 直接做任务 ").find().length > 0) {
                                    var zzzrw = text("打开D音 直接做任务 ").find()[0].bounds()
                                } else if (text("打开D音 直接做任务").find().length > 0) {
                                    var zzzrw = text("打开D音 直接做任务").find()[0].bounds()
                                }
                                //抖音领取任务界面
                                直接做任务按钮 = findColor(captureScreen(), "#fff37b1d", { region: [zzzrw.left, zzzrw.top, zzzrw.right - zzzrw.left, zzzrw.bottom - zzzrw.top], threshold: 5 })
                                if (直接做任务按钮) {
                                    toast("抖音开始任务")
                                    if (text("点赞").find().length > 0 || text("关注").find().length > 0) {
                                        if (text("点赞").find().length + text("点赞 ").find().length == 2 || text("特价点赞").find().length == 1 || text("特价点赞 ").find().length == 1) {
                                            任务类型 = "点赞任务"
                                        } else if (text("关注").find().length + text("关注 ").find().length == 2 || text("特价关注").find().length == 1 || text("特价关注 ").find().length == 1) {
                                            任务类型 = "关注任务"
                                        }
                                        log(任务类型)
                                        if (text("打开D音 直接做任务 ").find().length > 0) {
                                            text("打开D音 直接做任务 ").find().click()
                                        } else if (text("打开D音 直接做任务").find().length > 0) {
                                            text("打开D音 直接做任务").find().click()
                                        }
                                        抖音点赞关注()
                                        if (任务类型 == "放弃任务") {
                                            back()
                                            sleep(1000)
                                            app.launchPackage("com.zanqzan.app")
                                            sleep(1000)
                                            攒攒放弃任务()
                                        } else if (任务类型 == "点赞任务" || 任务类型 == "关注任务") {
                                            截屏()
                                            攒攒上传图片()
                                            do {
                                                sleep(2000)
                                            } while (text("×").find().length == 0)
                                            var zzyc = 爱关注.get("攒攒提交图片延时")//ui.zzyc.text();
                                            sleep(zzyc * 1000)
                                            text("提交任务").find()[0].click()
                                            攒攒检查任务提交()
                                        }
                                    } else if (text("评论").find().length > 0 || text("点赞 关注 评论").find().length > 0 || text("点赞 关注 评论 ").find().length > 0) {
                                        攒攒放弃任务()
                                    }
                                } else {
                                    back()
                                    sleep(1000)
                                }
                            } else {
                                var zzmrwyc = 爱关注.get("攒攒没任务等待时间")//ui.zzmrwyc.text();
                                toast("没任务，等待" + zzmrwyc + "秒")
                                sleep(zzmrwyc * 1000)
                            }
                        } else if (箭头数量.length == 3 && text("D音").find().length == 1) {//每日任务或领取任务界面
                            //toast("领取任务或每日签到界面")
                            //toast(text("领取任务").find().length)
                            if (text("每日签到").find().length == 2) {
                                var mrqd = text("每日签到").find()[1].bounds()
                                a = findColor(captureScreen(), "#ff2babff", { region: [mrqd.left, mrqd.top, mrqd.right - mrqd.left, mrqd.bottom - mrqd.top], threshold: 25 })
                                if (a) {
                                    toast("每日签到")
                                }
                                text("打开D音 ").findOne().click()
                                检测抖音界面()
                                do {
                                    var u = text("我").find()
                                    var tv = u[0];
                                    if (tv) {
                                        var tr = tv.bounds()
                                        click(tr.centerX(), tr.centerY());
                                        sleep(2500)
                                    }
                                } while (text("编辑资料").find().length == 0)
                                截屏()
                                攒攒上传图片()
                                do {
                                    sleep(2000)
                                } while (text("×").find().length == 0)
                                var zzyc = ui.zzyc.text();
                                sleep(zzyc * 1000)
                                var u = text("每日签到").find();
                                var tv = u[1];
                                if (tv) { u[1].click(); sleep(3000); }
                                sleep(2000)
                                back()
                                sleep(1500)
                            } else if (text("领取任务").find().length > 0) {
                                var lqrw = text("领取任务").find()[1].bounds()
                                a = findColor(captureScreen(), "#ff2babff", { region: [lqrw.left, lqrw.top, lqrw.right - lqrw.left, lqrw.bottom - lqrw.top], threshold: 5 })
                                if (a) {
                                    toast("领取任务")
                                    text("领取任务").find()[1].click()
                                }
                            }
                        } else if (箭头数量.length == 3 && text("D音").find().length == 0) {//攒攒主界面
                            toast("主界面")
                            箭头数量[0].click();
                        }
                        sleep(2000)

                    } while (true)
                })
            } else if (ui.radio4.checked) {//秘乐短视频
                threads.start(function () {
                    app.launchPackage("com.milecn.milevideo")
                    toast("等待第1分钟")
                    sleep(60000)
                    toast("等待第2分钟")
                    sleep(60000)
                    toast("等待第3分钟")
                    sleep(60000)
                    toast("等待第4分钟")
                    sleep(60000)
                    toast("等待第5分钟")
                    sleep(60000)
                    toast("等待第6分钟")
                    sleep(60000)

                    alert("今天已经完成")
                    threads.shutDownAll()
                })
                threads.start(function () {
                    app.launchPackage("com.milecn.milevideo")
                    while (true) {
                        a = id("fl_gift_container").find()
                        //log(a.length)
                        if (a.length > 0) {
                            swipe(device.width / 2, device.height * 4 / 5, device.width / 2, device.height / 5, 800)
                        }
                        toast("等待5秒上滑")
                        sleep(5000)
                    }
                })
            } else if (ui.radio5.checked) {//小龙虾协议
                threads.start(function 小龙虾协议() {
                    账号 = 爱关注.get("小龙虾账号")
                    密码 = 爱关注.get("小龙虾密码")

                    if (账号 == "" || 密码 == "") {
                        alert("请到龙虾设置界面填写账号密码")
                        threads.shutDownAll()
                    }
                    任务 = 爱关注.get("小龙虾协议点赞关注")
                    没任务等待时间 = 爱关注.get("小龙虾协议任务等待时间")
                    小龙虾协议没任务时自动翻页 = 爱关注.get("小龙虾协议没任务时自动翻页")
                    任务数量 = 爱关注.get("任务数量")
                    小龙虾打开抖音观看时间=爱关注.get("小龙虾打开抖音观看时间")
                    完成次数 = 0
                    a = http.post("http://tg.cst2020.cn/tg/Login/in", { username: 账号, password: 密码 })
                    aa = a.body.string()
                    密码检查 = JSON.parse(aa)
                    if (密码检查.msg == "未注册或密码错误") {
                        toastLog("未注册或密码错误,请到设置界面正确填写账号密码！")
                        threads.shutDownAll()
                        //exit()
                        //toast("程序结束")
                    }
                    申请截图权限()
                    console.show()
                    log("登录成功")
                    log("正在打开抖音")
                    app.launchPackage("com.ss.android.ugc.aweme")
                    toast("等待抖音界面")
                    sleep(2000)
                    do {
                        sleep(500)
                    } while (packageName("com.ss.android.ugc.aweme").find().length == 0)

                    while (text("推荐").find().length == 0) { back(); sleep(1000) }
                    a = http.post("http://tg.cst2020.cn/tg/Login/in", { username: 账号, password: 密码 })
                    aa = a.body.string()
                    密码检查 = JSON.parse(aa)
                    if (密码检查.msg == "未注册或密码错误") {
                        alert("未注册或密码错误,请到设置界面正确填写账号密码！")
                        //exit()
                        threads.shutDownAll()
                    }
                    a = a.headers['Set-Cookie']
                    tguser = a.split(";")[0]
                    if (爱关注.get("抖音个人连接") != "") {
                        检测 = "开启"
                        log("开启检测")
                    } else {
                        检测 = "关闭"
                        log("设置未填写个人连接，检测关闭")
                    }
                    while (true) {
                        if (爱关注.get("小龙虾协议自动暂停是否开启") == "开启") {
                            if (完成次数 == 任务数量) {
                                log("本次共完成" + 完成次数 + "个任务，脚本停止！")
                                threads.shutDownAll()
                                exit()
                            }
                        }
                        任务信息 = http.get("http://tg.cst2020.cn/tg/DouYin/taskList?tp=" + 任务, { "headers": { Cookie: tguser } })
                        //log(任务信息.body.string())
                        a = 任务信息.body.string()
                        //log(a)
                        任务信息本文 = JSON.stringify(a)
                        if (任务信息本文.search("刷新太频繁，请稍候刷新") > 0) {
                            log("刷新太频繁，请稍候刷新")
                            sleep(1000)
                        } else if (任务信息本文.search("tps") > 0) {
                            a = JSON.parse(a)
                            id = a.result.dataList[0].id
                            任务的类型 = a.result.dataList[0].tps
                            价格 = a.result.dataList[0].price
                            if (任务的类型 == "点赞") {
                                任务类型 = "点赞任务"
                            } else if (任务的类型 == "关注") {
                                任务类型 = "关注任务"
                            }
                            toastLog(任务的类型 + "任务,价格" + 价格)
                            //log(id)
                            sleep(100)
                            领取任务 = http.get("http://tg.cst2020.cn/tg/DouYin/getTaskData?id=" + id, { "headers": { Cookie: tguser } })
                            //log(领取任务.body.string())
                            sleep(100)
                            复制任务 = http.get("http://tg.cst2020.cn/tg/DouYin/copyTaskData?id=" + id, { "headers": { Cookie: tguser } })
                            网页文本 = 复制任务.body.string()
                            //log(网页文本)

                            任务无效 = JSON.parse(网页文本)
                            //log(任务无效.msg)
                            if (任务无效.msg == "任务无效") {
                                log("任务已经失效")
                                //sleep(2000)
                            } else {
                                a = 领取任务.body.string()
                                a = JSON.parse(a)
                                网址 = a.result.copytxt
                                //log(网址)
                                sleep(1000)
                                获取id并打开抖音页面()
                                sleep(小龙虾打开抖音观看时间 * 1000)
                                //console.hide()

                                抖音点赞关注()
                                完成次数 = 完成次数 + 1

                                back()
                                sleep(1000)
                                //console.show()
                                //log("完成任务")
                                // sleep(2000)


                            }
                        } else if (任务信息本文.search("您已连续审核失败超过2个，请切换任务账号或休息一会儿") > 0) {
                            log("小龙虾提示：审核失败超过2个")
                           
                        } else {

                            log("没任务，" + 没任务等待时间 + "秒后再接任务")
                            if (小龙虾协议没任务时自动翻页 == 1) {
                                swipe(device.width / 2, device.height * 4 / 5, device.width / 2, device.height / 5, 500)
                            }
                        }
                        log("本次运行共完成" + 完成次数 + "个任务")
                        log("--------------------------------------------------")
                        sleep(没任务等待时间 * 1000)
                    }//
                })
            } else if (ui.radio6.checked) {//集卡帮
                threads.start(function 集卡帮() {
                    events.observeKey()
                    集卡帮切换=爱关注.get("集卡帮切换")
                    小龙虾切换界面时间=爱关注.get("小龙虾切换界面时间")
                    集卡帮打开抖音观看时间=爱关注.get("集卡帮打开抖音观看时间")
                    sleep(500)
                    console.show()
                    sleep(500)
                    var r = http.get("https://www.lanzous.com/i9nausf");
                    html = r.body.string()
                    关闭1 = html.search("集卡帮关闭")
                    没任务 = 0
                    if (关闭1 > 0) {
                        alert("集卡帮功能暂时关闭，请改用其他功能，恢复时间请留意群信息")
                        threads.shutDownAll()
                    }
                    申请截图权限()
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
                    //toast(text("点赞任务 ").find().length)
                    sleep(500)
                    setClip("")
                    if (爱关注.get("抖音个人连接") != "") {
                        检测 = "开启"
                        log("开启检测")
                    } else {
                        检测 = "关闭"
                        log("设置未填写个人连接，检测关闭")
                    }
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
                                获取id并打开抖音页面()
                                sleep(集卡帮打开抖音观看时间 * 1000)
                                
                                //退出app("com.roc.dy")
                                抖音点赞关注()
                                sleep(500)
                                back()
                                sleep(1000)

                                if (集卡帮切换==1) {
                                    app.launchPackage("com.roc.dy")
                                } else if (集卡帮切换==2) {
                                    recents()
                                    sleep(小龙虾切换界面时间)
                                    recents()
                                }
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
                        }
                        sleep(1000)
                    }

                })
            }
        } else if (关闭 > 0) {
            alert("脚本已经暂停使用")
            exit()
            ui.finish();
        }
    })
})

ui.click_xiaoshuo.on("click", () => {//小说翻页
    threads.start(function () {
        var r = http.get("https://www.lanzous.com/i9nmcxe");
        html = r.body.string()
        开启 = html.search("爱关注开启")
        if (开启 > 0) {
            if (auto.service == null) {
                toast("请先开启无障碍服务！");
                return;
            }
            events.observeKey();
            threads.start(function () {
                console.show();
                app.launchPackage("com.yincheng.njread")
                sleep(1000)
                log("请手动切换到小说界面")
                waitForPackage("com.yincheng.njread")
                log("已打开牛角小说")
                log("请随便打开一篇小说")
                do { sleep(500) } while (id("read_page_gold_progress").find().length == 0)
                log("已到达小说界面")
                do {
                    if (id("tt_splash_skip_btn").find().length > 0) {
                        log("跳过广告")
                        id("tt_splash_skip_btn").find()[0].click()
                        sleep(2000)
                    } else if (id("read_page_gold_progress").find().length == 0) {
                        back()
                        sleep(2000)
                    } else {
                        a = random(1, 10)
                        if (a == 1) {
                            swipe(device.width / 5, device.height / 2, device.width * 4 / 5, device.height / 2, 500)
                            a = random(25, 40)
                            log("上一页，等待" + a + "秒")
                        } else {
                            swipe(device.width * 4 / 5, device.height / 2, device.width / 5, device.height / 2, 500)
                            a = random(25, 40)
                            log("下一页，等待" + a + "秒")
                        }
                        sleep(a * 1000)
                    }
                    sleep(2000)
                } while (true)
            })
        } else if (关闭 > 0) {
            alert("脚本已经暂停使用")
            exit()
            ui.finish();
        }
    })
})
ui.click_njyq.on("click", () => {//复制牛角邀请码
    threads.start(function () {
        setClip("6a3jnj")
        toast("复制成功")
    })
})

ui.click_66zc.on("click", () => {//复制66注册地址
    threads.start(function () {
        app.openUrl("http://junwz.cn//user1/appshare?installapp=1&mid=237QFLEAJ")
        toast("跳转到66注册下载地址")
    })
})
ui.click_mydbzc.on("click", () => {//复制蚂蚁点吧注册地址
    threads.start(function () {
        app.openUrl("http://39.98.68.183:8099/view/mweb/mayi/mayi_reg.aspx?invite=18578325321&nsukey=PyDvi4slc7e7dhknTCd%2BJX%2F6B1zJKjdHvLJstyibYk1tqOzHvemWMpVB6SVrUJoYKhevE2X9rSafBqNC%2B2RhfDiagU8GzGWKGPE%2FSjuDDj4pYGkmnn1JJVKbF5yPajgoklu04QLNfowGRbiKO06jUT6nC0y%2F8LHifmToVWIKFJSzny16OEZxhGbovOo5mzQFrUjw8BUNJOSJwuO2%2FkqFQw%3D%3D")
        toast("跳转到蚂蚁点吧注册下载地址")
    })
})
ui.click_zzzc.on("click", () => {//复制攒攒注册地址
    threads.start(function () {
        app.openUrl("http://reg.zqzan.com/?sid=lowmuyz5aask70cl")
        toast("跳转到攒攒注册下载地址")
    })
})
ui.click_xlxzc.on("click", () => {//复制小龙虾注册地址
    threads.start(function () {
        app.openUrl("http://tg.cst2020.cn/tg/Reg/i/c/106476")
        toast("跳转到小龙虾注册下载地址")
    })
})
ui.click_jkbzc.on("click", () => {//复制集卡帮下载地址
    threads.start(function () {
        var r = http.get("https://www.lanzous.com/i9nausf");
        html = r.body.string()
        下载链接 = html.match(new RegExp("下载地址：" + "(\\S*)" + "!!"))[1]
        app.openUrl(下载链接)
        toast("跳转到家卡帮注册下载地址")
    })
})
ui.click_mlzc.on("click", () => {//复制秘乐注册地址
    threads.start(function () {
        app.openUrl("https://mile-download.mlmfcn.com/?inviteNum=10071187")
        toast("跳转到秘乐视频注册下载地址")
    })
})
ui.click_njxz.on("click", () => {//牛角下载
    threads.start(function () {
        app.openUrl("http://t.cn/A6PMjmGC")
        toast("跳转到牛角下载地址")
    })
})
ui.lsbb.on("click", () => {//爱关注历史版本
    threads.start(function () {
        app.openUrl("https://www.lanzous.com/b00z94p9i")
        toast("跳转到爱关注历史版本下载地址")
    })
})
ui.jrqqun.on("click", () => {//加入Q群
    threads.start(function () {
        try {
            app.startActivity({
                action: "android.intent.action.VIEW",
                data: "mqqapi://card/show_pslcard?src_type=internal&version=1&uin=590057347&card_type=group&source=code",
            })
        } catch (e) {
            toast("error")
        }
    })
})
ui.emitter.on("create_options_menu", menu => {//创建选项菜单(右上角)
    menu.add("使用说明");
    menu.add("声明");
    menu.add("关于");
});

ui.emitter.on("options_item_selected", (e, item) => {//监听选项菜单点击
    switch (item.getTitle()) {
        case "使用说明":
            alert("使用说明", "本软件兼容部分手机机型（哪些不兼容不知道，自行测试），模拟器请在雷电安卓模拟器4.0版（安卓7.0以上）以上运行，电脑打开下载网站www.ldmnq.com，如手机运行有问题，请更换模拟器，群文件里有使用说明，有问题可加QQ （1群590057347）（2群708351858）反馈群主");
            break;
        case "声明":
            alert("声明", "本软件仅供学习交流，如作他用所承受的法律责任一概与作者无关");
            break;
        case "关于":
            alert("爱关注", "现版本号V" + 版本号);
            break;
    }
    e.consumed = true;
});
activity.setSupportActionBar(ui.toolbar);
ui.viewpager.setTitles(["抖音点赞关注", "极速平台自动", "小说翻页"]);//设置滑动页面的标题
ui.tabs.setupWithViewPager(ui.viewpager);//让滑动页面和标签栏联动
ui.toolbar.setupWithDrawer(ui.drawer);//让工具栏左上角可以打开侧拉菜单
ui.menu.setDataSource([//隐藏菜单栏选项
    //{
    //    title: "选项一",
    //    icon: "@drawable/ic_android_black_48dp"
    //},
    {
        title: "QQ 1群590057347",
        icon: "@drawable/ic_favorite_black_48dp"
    },
    /*
    {
        title: "QQ 2群708351858",
        icon: "@drawable/ic_favorite_black_48dp"
    },
    */
    {
        title: "退出",
        icon: "@drawable/ic_exit_to_app_black_48dp"
    }
]);
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
ui.menu.on("item_click", item => {
    switch (item.title) {
        case "退出":
            ui.finish();
            break;
    }
})
events.onKeyDown("home", function (event) {//按home停止
    toast("程序结束")
    console.hide()
    threads.shutDownAll()
    exit()
})

events.onKeyDown("volume_down", function (event) {//按音量下停止
    toast("程序结束")
    console.hide()
    threads.shutDownAll()
    exit()
})
//}

function 截屏() {

    var tody = new Date();
    var nian = tody.getFullYear();
    var yue = tody.getMonth() + 1;
    var ri = tody.getDate();
    var shi = tody.getHours();
    var fen = tody.getMinutes();
    var miao = tody.getSeconds();
    time = nian.toString() + yue.toString() + ri.toString() + shi.toString() + fen.toString() + miao.toString()
    //toast(time)
    //captureScreen("/storage/emulated/0/Pictures/Screenshots/" + time + ".png");
    clip = images.clip(captureScreen(), 0, 截图高度, device.width, device.height - 截图高度)
    images.save(clip, "/storage/emulated/0/Pictures/Screenshots/" + time + ".png")
    sleep(1000)
    media.scanFile("/storage/emulated/0/Pictures/Screenshots/" + time + ".png")
    toast("截图完成");
    sleep(1000);
    back();
    sleep(500)
}
function 检测抖音界面() {
    toast("等待抖音界面")

    waitForPackage("com.ss.android.ugc.aweme")
    sleep(500)

    log("已经进入")
    状态 = "正常任务"
    img = captureScreen()
    var a = findColor(img, "#ff000000", { region: [device.width / 3, device.height / 3, 1, 1], threshold: 5 })
    var b = findColor(img, "#ff000000", { region: [device.width / 2, device.height / 3, 1, 1], threshold: 5 })
    var c = findColor(img, "#ff000000", { region: [2 * device.width / 3, device.height / 3, 1, 1], threshold: 5 })
    var d = findColor(img, "#ff000000", { region: [device.width / 3, device.height / 2, 1, 1], threshold: 5 })
    var e = findColor(img, "#ff000000", { region: [device.width / 2, device.height / 2, 1, 1], threshold: 5 })
    var f = findColor(img, "#ff000000", { region: [2 * device.width / 3, device.height / 2, 1, 1], threshold: 5 })
    var g = findColor(img, "#ff000000", { region: [device.width / 3, 2 * device.height / 3, 1, 1], threshold: 5 })
    var h = findColor(img, "#ff000000", { region: [device.width / 2, 2 * device.height / 3, 1, 1], threshold: 5 })
    var i = findColor(img, "#ff000000", { region: [2 * device.width / 3, 2 * device.height / 3, 1, 1], threshold: 5 })
    if (a && b && c && d && e && f && g && h && i) {
        //toast("黑屏")
        状态 = "放弃任务"
    }
    sleep(1000)
    log("检测完成")
}
function 抖音关注点赞() {
    toast(任务类型)
    if (任务类型 == "点赞任务") {

        click(device.width / 2, device.height / 2)
        sleep(50)
        click(device.width / 2, device.height / 2)
        sleep(500)
        click(device.width / 2, device.height / 2)
        sleep(50)
        click(device.width / 2, device.height / 2)
        sleep(1500)
    } else if (任务类型 == "关注任务") {
        if (text("关注").find().length > 0) {
            text("关注").find()[0].click()
        } else if (text("关注 ").find().length > 0) {
            text("关注 ").find()[0].click()
        } else if (id("ckn").find().length > 0) {
            id("ckn").findOne().click()
        } else if (id("d3y").find().length > 0) {
            id("d3y").findOne().click()
        } else if (id("aw6").find().length > 0) {
            //toast("已关注")
        } else {
            back()
            sleep(1500)
            任务类型 = "放弃任务"
        }
        sleep(2000)

    }
}


function 等待抖音并获取高度() {
    app.launchPackage("com.ss.android.ugc.aweme")
    toast("等待抖音界面")

    do {
        sleep(500)
    } while (packageName("com.ss.android.ugc.aweme").find().length == 0)
    sleep(3000)
    while (text("推荐").find().length == 0) { back(); sleep(1000) }
    a = text("推荐").find()[0].bounds()
    //toastLog(a.top) 
    截图高度 = a.top
}
function 抖音检测界面并判断任务() {

    for (i = 1; i < 2000; i++) {
        var u = packageName("com.ss.android.ugc.aweme").find();
        if (u.length > 0) {
            break;
        } else {
            sleep(1)
        }
    }
    sleep(3000)
    do {
        sleep(500)
    } while (text("前往 ").find().length == 0 && text("前往").find().length == 0 && text("打开看看 ").find().length == 0 && text("打开看看").find().length == 0)
    if (className("android.widget.ImageView").find().length == 3) {
        //toast("视频界面")
        任务类型 = "点赞任务"
        log("点赞任务")
    } else if (className("android.widget.ImageView").find().length == 1) {
        //toast("信息界面")
        任务类型 = "关注任务"
        log("关注任务")
    }
    if (text("前往").find().length > 0) {
        var u = text("前往").find()
        var tv = u[0];
        if (tv) {
            var tr = tv.bounds()
            click(tr.centerX(), tr.centerY());
            sleep(1500)
        }
    } else if (text("前往 ").find().length > 0) {
        var u = text("前往 ").find()
        var tv = u[0];
        if (tv) {
            var tr = tv.bounds()
            click(tr.centerX(), tr.centerY());
            sleep(1500)
        }
    } else if (text("打开看看").find().length > 0) {
        var u = text("打开看看").find()
        var tv = u[0];
        if (tv) {
            var tr = tv.bounds()
            click(tr.centerX(), tr.centerY());
            sleep(1500)
        }
    } else if (text("打开看看 ").find().length > 0) {
        var u = text("打开看看 ").find()
        var tv = u[0];
        if (tv) {
            var tr = tv.bounds()
            click(tr.centerX(), tr.centerY());
            sleep(1500)
        }
    }
}
function 申请截图权限() {
    if (!requestScreenCapture()) {

        alert("请求截图失败，请重新开始")
        console.hide()
        threads.shutDownAll()
        exit()
    } else {
        toast("请求截屏成功")
        sleep(1000)
    }
}


function 攒攒放弃任务() {
    if (text("放弃任务 ").find().length > 0) {
        text("放弃任务 ").findOne().click()
        sleep(1000)
        text("确定").findOne().click()
        sleep(2000)
        back()
    } else if (text("放弃任务").find().length > 0) {
        text("放弃任务").findOne().click()
        sleep(1000)
        text("确定").findOne().click()
        sleep(2000)
        back()
    }
}
function 攒攒上传图片() {
    app.launchPackage("com.zanqzan.app")
    sleep(1500)
    if (text("任务截图").find().length > 0) {
        var u = text("任务截图").find();
    } else if (text("任务截图 ").find().length > 0) {
        var u = text("任务截图 ").find();
    }

    var tv = u[0];
    if (tv) { u[0].click(); sleep(1000); }
    do {
        sleep(1500)
    } while (className("android.widget.FrameLayout").find() == 0)
    //点击第一张图片
    var u = className("android.widget.FrameLayout").find()
    var tv = u[2];
    if (tv) {
        var tr = tv.bounds()
        click(tr.centerX(), tr.centerY());
        sleep(1500)
    }
    //完成按钮
    var u = className("android.widget.Button").find()
    if (u.length > 0) {
        //toast(className("android.widget.Button").find().length)
        className("android.widget.Button").find()[0].click()
        sleep(2500)
    }
}
function 攒攒检查任务提交() {
    任务提交是否成功 = "提交失败"
    //toast("检查任务是否提交成功")
    for (var i = 1; i < 500; i++) {
        if (text("正在准备下一条任务 ...").className("android.view.View").find().length > 0) {
            //log("任务完成");
            任务提交是否成功 = "提交成功";
            break;
        }
        sleep(1)
    }
    //toast(任务提交是否成功)
    sleep(1000)
    if (任务提交是否成功 == "提交成功") {
        back()
    } else if (任务提交是否成功 == "提交失败") {
        攒攒放弃任务()
    }

}

function 抖音点赞关注() {
    if (检测 == "开启") {
        抖音检测()
        if (任务类型 == "点赞任务" && 点赞检测 == "开启") {
            任务前点赞数量 = 点赞数
        } else if (任务类型 == "关注任务" && 关注检测 == "开启") {
            任务前关注数量 = 关注数
        } else if (任务类型 == "点赞任务" && 点赞检测 == "关闭") {
            log("点赞上万不能检测")
        } else if (任务类型 == "关注任务" && 关注检测 == "关闭") {
            log("关注上万不能检测")
        }
    } 



    if (任务类型 == "点赞任务") {
        //waitForActivity("android.app.Dialog")
        waitForPackage("com.ss.android.ugc.aweme")
        sleep(1000)
        if (任务类型 != "放弃任务") {
            click(device.width / 2, device.height / 2)
            sleep(50)
            click(device.width / 2, device.height / 2)
            sleep(500)
            click(device.width / 2, device.height / 2)
            sleep(50)
            click(device.width / 2, device.height / 2)
            sleep(1000)
        }
        sleep(500)
    } else if (任务类型 == "关注任务") {
        waitForPackage("com.ss.android.ugc.aweme")
        sleep(1000)
        if (currentActivity() == "com.ss.android.ugc.aweme.profile.ui.UserProfileActivity") {//用户信息页面
            waitForActivity("com.ss.android.ugc.aweme.profile.ui.UserProfileActivity")
            sleep(500)
            按钮颜色 = findColor(captureScreen(), "#fffe2c55", { region: [爱关注.get("关注按钮左") + 5, 爱关注.get("关注按钮上") + 5, 爱关注.get("关注按钮右") - 爱关注.get("关注按钮左"), 爱关注.get("关注按钮下") - 爱关注.get("关注按钮上") + 50], threshold: 25 });
            if (按钮颜色) {
                click(按钮颜色.x, 按钮颜色.y);
                sleep(1000)
            } else {
                //没找到
                任务类型 = "放弃任务"
            }
            sleep(1500)
        } else if (currentActivity() == "android.app.Dialog") {//视频界面
            waitForActivity("android.app.Dialog")
            sleep(1000)
            if (任务类型 != "放弃任务") {
                swipe(device.width * 9 / 10, device.height / 2, device.width / 10, device.height / 2, 200)
                sleep(1500)
                //按钮颜色 = findColor(captureScreen(), "#fffe2c55", { region: [关注按钮左 + 5, 关注按钮上 + 5, 关注按钮右 - 关注按钮左, 关注按钮下 - 关注按钮上 + 50], threshold: 25 });
                按钮颜色 = findColor(captureScreen(), "#fffe2c55", { region: [爱关注.get("关注按钮左") + 5, 爱关注.get("关注按钮上") + 5, 爱关注.get("关注按钮右") - 爱关注.get("关注按钮左"), 爱关注.get("关注按钮下") - 爱关注.get("关注按钮上") + 50], threshold: 25 });
                if (按钮颜色) {
                    click(按钮颜色.x, 按钮颜色.y);
                    sleep(1000)
                } else {
                    //没找到
                    任务类型 = "放弃任务"
                }
                back()
                sleep(1000)
            }

        }
    }
    if (检测 == "开启") {
        if (任务类型 == "点赞任务" && 点赞检测 == "开启") {
            抖音检测()
            任务后点赞数量 = 点赞数
            if (任务后点赞数量 - 任务前点赞数量 > 0) {
                log("点赞有效，赞：" + 任务后点赞数量)
            } else {
                log("点赞无效")
            }
        } else if (任务类型 == "关注任务" && 关注检测 == "开启") {
            抖音检测()
            任务后关注数量 = 关注数
            if (任务后关注数量 - 任务前关注数量 > 0) {
                log("关注有效，关注：" + 任务后关注数量)
            }
        }
        sleep(800)
    }

}
function 获取id并打开抖音页面() {
    if (网址.split("/")[4] == "user") {
        userid = 网址.split("/")[5].split("?")[0]
        打开用户页面(userid)
    } else if (网址.split("/")[4] == "video") {
        aweme_id = 网址.split("/")[5]
        打开抖音视频(aweme_id)
    }
    sleep(2000)
}

function 打开抖音视频(aweme_id) {
    app.startActivity({
        action: "VIEW",
        data: "snssdk1128://aweme/detail/" + aweme_id + "?refer=web&gd_label=click_wap_download_banner&appParam=&needlaunchlog=1",
        packageName: "com.ss.android.ugc.aweme",
    });
};

function 打开用户页面(userid) {
    app.startActivity({
        action: "VIEW",
        data: "snssdk1128://user/profile/" + userid + "?refer=web&gd_label=click_wap_profile_bottom&type=need_follow&needlaunchlog=1",
        packageName: "com.ss.android.ugc.aweme",
    });
};
function 抖音检测() {
    关注检测 = "开启"
    点赞检测 = "开启"
    抖音短网址 = 爱关注.get("抖音个人连接")//"在抖音，记录美好生活！ https://v.douyin.com/te53yY/"//抖音个人连接//"在抖音，记录美好生活！ https://v.douyin.com/tJpMys/"
    抖音短网址 = "https:" + 抖音短网址.split(":")[1]
    抖音长网址 = http.get(抖音短网址)
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
        关注数 = 数量
    }
    a = d[5].match(/&#xe6[0-9a-z]+/g)
    if (d[5].search("</i>w </span>") > 0) {
        点赞检测 = "关闭"
    } else {
        数据检测()
        点赞数 = 数量
    }
sleep(800)
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
    抖音短网址 = "https:" + 抖音短网址.split(":")[1]
    抖音长网址 = http.get(抖音短网址)
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
function 获取抖音截图高度和关注按钮信息() {
    app.launchPackage("com.ss.android.ugc.aweme")
    toast("等待抖音界面")
    sleep(2000)
    do {
        sleep(500)
    } while (packageName("com.ss.android.ugc.aweme").find().length == 0)

    while (text("推荐").find().length == 0) { back(); sleep(1000) }
    a = text("推荐").find()[0].bounds()
    //toastLog(a.top) 
    截图高度 = a.top
    爱关注.put("截图高度", 截图高度)
    打开用户页面("104255897823")
    waitForPackage("com.ss.android.ugc.aweme")
    sleep(1000)
    do {
        sleep(500)
    } while (text("取消关注").depth("17").find().length == 0 && text("取消关注 ").depth("17").find().length == 0 && text("关注 ").depth("17").find().length == 0 && text("关注").depth("17").find().length == 0)
    //sleep(1000)
    //截图高度 = desc("返回").find()[0].bounds().top

    if (text("取消关注").depth("17").find().length > 0) {
        text("取消关注").depth("17").find()[0].click()
    } else if (text("取消关注 ").depth("17").find().length > 0) {
        text("取消关注 ").depth("17").find()[0].click()
    }
    do {
        sleep(500)
    } while (text("关注").depth("17").find().length == 0 && text("关注 ").depth("17").find().length == 0)
    if (text("关注").depth("17").find().length > 0) {
        关注按钮 = text("关注").depth("17").find()[0]
    } else if (text("关注 ").depth("17").find().length > 0) {
        关注按钮 = text("关注 ").depth("17").find()[0]
    }
    关注按钮上 = 关注按钮.bounds().top
    关注按钮下 = 关注按钮.bounds().bottom
    关注按钮左 = 关注按钮.bounds().left
    关注按钮右 = 关注按钮.bounds().right
    爱关注.put("关注按钮上", 关注按钮上)
    爱关注.put("关注按钮下", 关注按钮下)
    爱关注.put("关注按钮左", 关注按钮左)
    爱关注.put("关注按钮右", 关注按钮右)
    sleep(500)
    back()
    sleep(500)
    toast("获取信息完成")
    sleep(500)
}

function 退出app(packageName) {
    shell('am force-stop ' + packageName, true);
};

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
