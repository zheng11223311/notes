//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456

"ui";
ui.layout(
    <vertical>
        <button id="ok" text="运行"/>
        <button id="ok2"  text="停止"/>
        <text gravity="center" margin="20" textColor="#dd000000" >点确定即可运行,如果运行不了看一下是否权限没有给,不懂也可加群了解</text>
         <button id="click_me" bg="#ff0000" text="跳转QQ群" />
         <Switch id="autoService" text="无障碍服务" checked="{{auto.service != null}}" padding="8 8 8 8" />
    </vertical>
);

  //<button id="click_me" bg="#ff0000" text="跳转QQ群" />
var QQ群号 = "932188814"
ui.click_me.on("click", () => {
    app.startActivity({
    action: "android.intent.action.VIEW",
    data: "mqqapi://card/show_pslcard?card_type=group&uin="+QQ群号,
    packageName: "com.tencent.mobileqq",
   });
});

//window.exitOnClose();
//window.setPosition(1, 400);
ui.ok.on("click", ()=>{
    ui.ok.text("运行中")
    threads.start(jiaoben)
});
ui.ok2.on("click", ()=>{
    exit()
});

ui.autoService.on("check", function (checked) {
    
    if (checked && auto.service == null) {
        var apppack = context.getPackageName();
        var AppName = getAppName(apppack);
        toastLog("请选择，" + AppName + "  打开无障碍辅助功能");
        app.startActivity({
            action: "android.settings.ACCESSIBILITY_SETTINGS"
        });
    }
    if (!checked && auto.service != null) {
        auto.service.disableSelf();
    }
});

ui.emitter.on("resume", function () {
    ui.autoService.checked = auto.service != null;
});
//setInterval(()=>{}, 1000);

function jiaoben(){

engines.execScriptFile("./功能页.js");

    }
          
// //autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
          