
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

console.show()
console.log("autojs交流群,脚本代码还原,代码分享,脚本定制！\n1群:168196007 \n2群:830810438 \n3群:571854376 \n4群:637321947")
console.log("\n\n\n您可以在此源码中关闭这个广告!")


"ui";
ui.layout(
    
    <vertical>
    <text text="免费试用10次，需要的请加我QQ1105310045"/>
    <horizontal>
    <Switch id="autoService" text="无障碍服务" checked="{{auto.service != null}}"w="150"/>
    <button id="控制台"text="控制台"/>
    <text text="控制台开发者使用"/>
    </horizontal>
    <horizontal>
    <text text="观看视频(秒):"/>
    <input id="gkspx"w="100"text="10"/>
    <text text="到"/>
    <input id="gkspd"w="100"text="20"/>
    </horizontal>
    
    <horizontal>
    <text text="循环观看(次):"/>
    <input id="xhgkx"w="100"text="2"/>
    <text text="到"/>
    <input id="xhgkd"w="100"text="5"/>
    </horizontal>
    
    <horizontal>
    <text text="操作延时(秒):"/>
    <input id="czycx"w="100"text="1"/>
    <text text="到"/>
    <input id="czycd"w="100"text="3"/>
    </horizontal>
    <button id="开始"text="开始"/>
    </vertical>
    );

function main(){
    // 这里写脚本的主逻辑
    threads.start(function(){
        var 配置 = storages.create("liuy");
        toastLog("开始运行")
        if(app.launchApp("抖音短视频")){
         操作时间()
         toastLog("成功打开抖音")
         toastLog(观看时间+" 秒")
         sleep(观看时间)
         
         while(true){
         toastLog("点击评论")
         if(id("a52").exists()){id("a52").findOne().click();};
         sleep(操作延时)
         toastLog("点赞")
         if(id("c2t").exists()){id("c2t").findOne().click();}
         sleep(操作延时)
         toastLog("点击头像")
         if(id("jg").exists()){
         b=id("jg").findOne().bounds(); 
         click(b.centerX(), b.centerY());}else{toastLog("暂无评论")}
         sleep(操作延时)
         toastLog("点击关注")
         if(id("de9").exists()){id("de9").findOne().click();}else{toastLog("可能无障碍失效,请关机重启")}
         sleep(操作延时)
         back();toastLog("返回")
         sleep(操作延时)
         back();toastLog("返回")
         sleep(操作延时)
         toastLog("观看 "+循环次数+" 次视频")
         
         for(var i=0;i<循环次数;i++){
         className("android.support.v4.view.ViewPager").scrollForward()
         toastLog((i+1)+" 次")
         sleep(观看时间);toastLog(观看时间+" 秒")
         }
         免费次数=免费次数+1
         sleep(1000)
         toastLog("免费使用"+免费次数+"次")
         sleep(1000)
         if(免费次数>=10){
             sleep(1000)
             toastLog("免费次数用完，请联系作者购买。")
             sleep(2000)
             break;}
         配置.put("免费次数",免费次数);
         }//死循环
        }//判断抖音  
     })//线程
}
function 操作时间(){
观看时间=random(parseFloat(观看时间小),parseFloat(观看时间大))*1000;
log("观看时间 "+观看时间+" 秒")
循环次数=random(parseFloat(循环次数小),parseFloat(循环次数大));
log("循环次数 "+循环次数+" 次")
操作延时=random(parseFloat(操作延时小),parseFloat(操作延时大))*1000;
log("操作延时 "+操作延时+" 秒")
}
分辨率高=device.height

ui.控制台.click(()=>{threads.start(function(){console.show();})})

var 配置 = storages.create("liuy");
免费次数=配置.get("免费次数");
if(免费次数==undefined){免费次数=0}








ui.autoService.on("check", function(checked) {
    // 用户勾选无障碍服务的选项时，跳转到页面让用户去开启
    if(checked && auto.service == null) {
        app.startActivity({
            action: "android.settings.ACCESSIBILITY_SETTINGS"
        });
    }
    if(!checked && auto.service != null){
        auto.service.disableSelf();
    }
});
ui.开始.on("click", function(){
    观看时间小=ui.gkspx.text()
    观看时间大=ui.gkspd.text()
    循环次数小=ui.xhgkx.text()
    循环次数大=ui.xhgkd.text()
    操作延时小=ui.czycx.text()
    操作延时大=ui.czycd.text()

    //程序开始运行之前判断无障碍服务
    if(免费次数>=10){toast("免费次数用完，请联系作者购买。");}else{
    if(auto.service == null) {
        toastLog("请先开启无障碍服务！");
        return;
    }
    }
    main();
});


//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
