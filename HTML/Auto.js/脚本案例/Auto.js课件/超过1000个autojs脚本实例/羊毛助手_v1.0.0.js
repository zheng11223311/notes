
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";
//autojs源码提取,加密打包,代码解密,还原.微信:zxkj6898 或zx033245 或QQ168196007
//auto.waitFor()
events.observeKey();
//hyb1996.github.io/AutoJs-Docs
var color = "#009688";

ui.layout(
    <drawer id="drawer">
 <vertical>
            <appbar>
                <toolbar id="toolbar"  title="羊毛助手" />
                <tabs id="tabs" />
            </appbar>
            <viewpager id="viewpager"  margin="10 5">
                <frame>

                    <vertical>
                        <vertical padding="10 6 0 6" bg="#ffffff" w="*" h="auto" margin="0 5" elevation="1dp">
             <Switch w="*" checked="{{auto.service != null}}" textColor="#666666" text="无障碍服务" id="autoService"/>           
             <View h="5"/>
             <Switch w="*" textColor="#666666" text="悬浮窗权限" id="noComment"/>
                   </vertical> 
                        <horizontal>
                            <radiogroup id="ydxx" mariginTop="36" w="150">
                                <radio id="xlx" text="👈小龙虾👈             (暂不可使用)" />
                                <radio id="zz" text="👈攒攒👈               (暂不可使用)" />

                                <radio id="wwz" text="👈蛙蛙赚👈             (暂不可使用)" />//checked="true" 

           
                              <radio id="jtb" text="👈截图宝👈              (适用于抖音2.0.0)"/>
                                <text text="待！更！新！" textColor="black" textSize="60sp" />
                                
                            </radiogroup>
                            <vertical>
                                <button id="click_xlx" text="小龙虾下载地址" gravity="center" h="37" w="150" />
                                <button id="click_zz" text="攒攒下载地址" gravity="center" h="37" w="150" />
                                <button id="click_wwz" text="蛙蛙赚下载地址" gravity="center" h="37" w="150" />
                                <button id="click_jtb" text="截图宝下载地址" gravity="center" h="37" w="150" />
                            </vertical>
                        </horizontal>
                        <horizontal>
                                   

                                    

                                    <text text="平台适配抖音2.0.0版本" textColor="red" textSize="12sp"/>
                                 </horizontal>
                        <button id="click_kaishi" bg="#BCEE68" text="开始(音量下、Home键停止)" gravity="center" />
                    </vertical>

                </frame>
                <frame>
                    <horizontal>
                            <radiogroup id="spzl" mariginTop="36" w="200">
                                
                                <radio id="ksjsb" text="👈快手极速版👈(暂不可使用)" />

                                <radio id="dyjsb" text="👈抖音极速版👈(暂不可使用)" />//checked="true" 

           
                              <radio id="sbdsp" text="👈刷宝短视频👈(暂不可使用)" />
                                <text text="待！更！新！" textColor="black" textSize="60sp" />
                                
                            </radiogroup>
                            <vertical>
                                
                                <button id="click_ksjsb" text="快手极速版下载地址" gravity="center" h="36" w="150" />
                                <button id="click_dyjsb" text="抖音极速版下载地址" gravity="center" h="36" w="150" />
                                <button id="click_sbdsp" text="刷宝短视频下载地址" gravity="center" h="36" w="150" />
                            </vertical>
                        </horizontal>
                </frame>
                <frame>
                    <text text="待！更！新！" textColor="black" textSize="60sp" />
                </frame>
            </viewpager>
       </vertical>
        <vertical layout_gravity="left" bg="#ffffff" w="280">
            <img w="280" h="200" scaleType="fitXY" src="http://images.shejidaren.com/wp-content/uploads/2014/10/023746fki.jpg" />
            <list id="menu">
                <horizontal bg="?selectableItemBackground" w="*">
                    <img w="50" h="50" padding="16" src="{{this.icon}}" tint="{{color}}" />
                    <text textColor="black" textSize="15sp" text="{{this.title}}" layout_gravity="center" />
                </horizontal>
            </list>
        </vertical>
    </drawer>
);


activity.setSupportActionBar(ui.toolbar);//界面右上角控件
ui.emitter.on("create_options_menu", menu => {    
    menu.add("联系作者");
    menu.add("问题反馈");
    menu.add("使用说明");
    //menu.add("查看日志");
});

ui.emitter.on("options_item_selected", (e, item) => {
    switch (item.getTitle()) {
        case "联系作者":
            app.startActivity({
                action: "VIEW",
                data:"mqqwpa://im/chat?chat_type=wpa&uin=719164930&version=1"                
            });
            break;
        case "问题反馈":
                app.startActivity({
                action: "VIEW",
                data:"mqqwpa://im/chat?chat_type=wpa&uin=719164930&version=1"                
            });
            break;    
        case "使用说明":
            alert("使用说明","1.运行软件前需要开启无障碍服务\n2.如果不能正常运行请尝试打开允许其他应用启动权限\n3.完成第两条点击开始运行按钮即可  按下音量+即可停止运行\n4.有问题找作者反馈\n5.完成前四条");
            break;
        
    }
    e.consumed = true;
});

ui.viewpager.setTitles(["点赞关注区", "视频区", "新闻阅读区"]);
//让滑动页面和标签栏联动
ui.tabs.setupWithViewPager(ui.viewpager);

//让工具栏左上角可以打开侧拉菜单
ui.toolbar.setupWithDrawer(ui.drawer);

ui.menu.setDataSource([
    
    {
        title: "微信 yanp960812",
        icon: "@drawable/ic_favorite_black_48dp"
    },
    {
        title: "退出",
        icon: "@drawable/ic_exit_to_app_black_48dp"
    }
]);

ui.autoService.on('check', function(checked) {
    if (checked && auto.service == null) {
        app.startActivity({
            action: "android.settings.ACCESSIBILITY_SETTINGS"
        });
    }
    if (!checked && auto.service != null) {
        auto.service.disableSelf();
        toast("无障碍服务关闭脚本无法运行呦~");
    }
});
ui.noComment.click(function(){
    toast("请手动找到此脚本权限打开呦~")
    openAppSetting(getPackageName("羊毛助手"));
    

});
ui.click_xlx.on("click", () => {
    app.openUrl("http://tg.cst2020.cn/tg/Reg/i/c/595990")
});
ui.click_zz.on("click", () => {
    app.openUrl("http://reg.zqzan.com/?sid=mkr9gcsbj34boya6")
});
ui.click_wwz.on("click", () => {
    app.openUrl("https://guazan.stars-gaming.cn/#/newuserhb")
});
ui.click_jtb.on("click", () => {
    app.openUrl("http://cocte.32yowl.cn/invite/ssb?mid=1046820&from=groupmessage")
});

ui.click_ksjsb.on("click", () => {
    app.openUrl("https://b1.qmtoi6qv88tfv.com/nebula/task/invitation-by-area?code=2rn6ctn&platform=copylink&fid=1667996342")
});

ui.click_kaishi.on("click", () => {
   threads.start(function () { 
   toast("请打开截图权限~")
   requestScreenCapture(); 
   })
   
    if (ui.jtb.on) {
        threads.start(function 截图宝() {



files.ensureDir("/sdcard/Pictures/Screenshots/")

launchApp("截图宝")
toastLog("正在打开截图宝")
while (true) {
   main()
}

function main() {
var w=device.width,h=device.height;
files.ensureDir("/sdcard/Pictures/Screenshots/")
var screencapture
var dydianzan
var picpath
var dyguanzhu
var dypackage = 'com.ss.android.ugc.aweme';
    ok_msg_ok = id("com.gosing.article.news.jh:id/ok_msg_ok").findOnce();
    if (ok_msg_ok) {
        ok_msg_ok.click();
        sleep(1000);//确定
    }
tv_task_name = id("com.gosing.article.news.jh:id/tv_task_name").findOnce();
    if(tv_task_name){
        click("看抖抖视频");
        sleep(1000);
    }
    delete_msg_ok = id("com.gosing.article.news.jh:id/delete_msg_ok").findOnce();
    if (delete_msg_ok) {
        delete_msg_ok.click();//放弃确定
    
    }

    ok_id = id("com.gosing.article.news.jh:id/ok_id").findOnce();
    if (ok_id) {
        ok_id.click();
    sleep(1000);//打开diy
    }

    btn_get_task = id("com.gosing.article.news.jh:id/btn_get_task").findOnce();
    if (btn_get_task) {
        click("领取任务");
        sleep(1000);
    toastLog("正在领取任务")
    }
       
    btn_share_wx = id("com.gosing.article.news.jh:id/btn_share_wx").findOnce();//打开做任务
    rl_add1 = id("com.gosing.article.news.jh:id/rl_add1").findOnce();//上传框
    ll_close1 = id("com.gosing.article.news.jh:id/ll_close1").findOnce();//删除已上
    btn_commit_task = id("com.gosing.article.news.jh:id/btn_commit_task").findOnce();//提交
    tv_type = id("com.gosing.article.news.jh:id/tv_type").findOnce();//任务判断
  if(tv_type){
  if (tv_type.text() == "点赞") {
            toastLog("接到点赞任务")
             点赞()
             
            }else if(tv_type.text() == "关注") {
              toastLog("接到关注任务")
              关注() 
               }else{
                  text("放弃任务").findOne().click()
                   toastLog("不知道接到了啥，准备放弃……")
                   id("delete_msg_ok").findOne().click()
                   }
            
      }
      }
      })
      }
      })
 function 点赞(){    
var w=device.width,h=device.height;
files.ensureDir("/sdcard/Pictures/Screenshots/")
var screencapture
var dydianzan
var picpath
var dyguanzhu
var dypackage = 'com.ss.android.ugc.aweme';
toastLog("即将打开抖音")
text("打开DY做任务").findOne().click()
         ok_msg_ok = id("com.gosing.article.news.jh:id/ok_msg_ok").findOne(5000);
    if (ok_msg_ok) {
        ok_msg_ok.click();
        sleep(1000)
        };//确定
    
    sleep(2800);
    for(i=0;i<4;i++){
        click(device.width/2,device.height/2);
        sleep(50);
    }
    sleep(1500);
    picpath = "/sdcard/Pictures/Screenshots/" + (new Date).getTime() + ".png"
    images.captureScreen(picpath);
  toastLog("正在截图……")
    screencapture = 1
    media.scanFile(picpath);
    back();
    if(textMatches('关闭应用|以后再说').visibleToUser().findOnce() || textEndsWith('关闭应用').visibleToUser().findOnce() || textStartsWith('关闭应用').visibleToUser().findOnce()!=null){
        textMatches('关闭应用|以后再说').findOnce().click()
        }
    toastLog("正在返回截图宝…")
    launchApp("截图宝");
sleep(800)               
     id("rl_add1").findOne().click()
 sleep(1000)
  if(id("delete_msg_ok").findOne(1500)!=null){
      id("delete_msg_ok").findOne(1500).click()
      }else{
  id("cb_check").findOne().click()
sleep(500)
text("确定(1)").findOne().click()
sleep(1000)
}
 text("提交任务").findOne().click()
 toastLog("任务已提交")
 text("确定").findOne().click()
      
      }
      
      
      
      
      
      function 关注(){
  var w=device.width,h=device.height;
files.ensureDir("/sdcard/Pictures/Screenshots/")
var screencapture
var dydianzan
var picpath
var dyguanzhu
var dypackage = 'com.ss.android.ugc.aweme';
          text("打开DY做任务").findOne().click()
         ok_msg_ok = id("com.gosing.article.news.jh:id/ok_msg_ok").findOne(5000);
    if (ok_msg_ok) {
        ok_msg_ok.click();
        sleep(1000)
        };//确定
        toastLog("即将打开抖音")
    text("打开DY视频").findOne().click()
 sleep(1500)
    //waitForActivity("com.ss.android.ugc.aweme.main.MainActivity")
   if(textMatches('关闭应用|以后再说').visibleToUser().findOnce() || textEndsWith('关闭应用').visibleToUser().findOnce() || textStartsWith('关闭应用').visibleToUser().findOnce()!=null){
        textMatches('关闭应用|以后再说').findOne().click()
        }
    id("a5m").findOne().click()
    sleep(1000)
    id("ko").findOne().click()
sleep(800)
setText(getClip())
sleep(800)
click(w*0.9,h*0.9)
sleep(1500);
        var yh =packageName(dypackage).text('用户').visibleToUser().findOne().bounds()
click(yh.centerX(),yh.centerY());
 sleep(800)
 var o = packageName(dypackage).text('关注').visibleToUser().filter(function(w){return w.bounds().centerY() < device.height / 3;}).findOne().bounds();
 click(o.centerX(),o.centerY());

         sleep(1500)
picpath = "/sdcard/Pictures/Screenshots/" + (new Date).getTime() + ".png"
    images.captureScreen(picpath);
   toastLog("正在截图……")
    screencapture = 1
    media.scanFile(picpath);
sleep(1000);
back();
back();
sleep(1000)
toastLog("正在返回截图宝…")
launchApp("截图宝")

 id("rl_add1").findOne().click()
 sleep(1000)
  if(id("delete_msg_ok").findOne(1500)!=null){
      id("delete_msg_ok").findOne(1500).click()
      }else{
  id("cb_check").findOne().click()
sleep(500)
text("确定(1)").findOne().click()
sleep(1000)
}
 text("提交任务").findOne().click()
 toastLog("任务已提交")
 text("确定").findOne().click()
 
 } 
    


 
        
      


 
        
      
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
