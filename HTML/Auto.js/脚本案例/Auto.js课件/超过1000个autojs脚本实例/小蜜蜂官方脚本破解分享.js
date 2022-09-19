
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
"ui";
importClass(android.content.Intent);
importClass(android.content.ComponentName);
importClass(android.net.Uri);
importClass(java.io.File);
var storage = storages.create("xiaomifeng");
var username="";// 平台帐号
var redata=""; //获取任务返回的原始数据
var x = device.width;
var y = device.height;
var dznum1 = 0;
var dznum2 = 0;
var gznum1 = 0;
var gznum2 = 0;
var tiktok;//抖音号

ui.layout(
    <vertical padding="16">
        <text textSize="18sp" textColor="black" text="小蜜蜂挂机" marginTop="50" gravity="center"/>
        <linear marginTop="50">
             <text  gravity="center" size="16">打开悬浮窗权限</text>
             <button id="is1" text="打开权限" style="Widget.AppCompat.Button.Borderless.Colored" />
          </linear>
        
        <button id="ok" text="启动脚本" marginTop="50" style="Widget.AppCompat.Button.Colored"/>
        <text id="myText" line="3" textSize="14sp" textColor="black"  marginTop="50" gravity="left"/>
        <button id="no" text="关闭运行" marginTop="100" style="Widget.AppCompat.Button.Borderless.Colored" />
    </vertical>
);
ui.myText.setText("1.请先确保无障碍权限已经打开\n2.开启：权限>单项权限设置>悬浮窗 \n3.脚本运行开始后，请勿操作手机");

//指定确定按钮点击时要执行的动作
ui.is1.click(function(){
    openAppSetting(getPackageName("小蜜蜂脚本"));

});
ui.ok.click(function(){
    ui.ok.setClickable(false);
    ui.ok.setText("运行中");
    threads.start(function(){
        //在新线程执行的代码
        runapp();
    });
});
ui.no.click(function(){
    engines.stopAllAndToast();
    exit();
});

threads.start(function(){
    if(auto.service == null) {
        alert("请先打开无障碍权限");
            //当点击确定后会执行这里
            getlimit();
        
        }
});

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!


function waitFortask(tm) {
    var t=0;
    while (true) {
        sleep(2000); 
        try {
            var r = http.get("http://www.dx1065.net/xmf/jstaskss.php?u="+username+"&id="+tm);
            
            if (r.statusCode == 200) {
                redata=r.body.string();  
                //toast(redata);             
                break;
            };
        } catch (err) {
            toast("等待连接-->>");
            t=t+1;
            if(t>8){
                toast("连接超时，请检查网络");
                adr="no";
                break;
            }
        }
    }
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

function sendtask(tid) {
    var t=0;
    while (true) {
        sleep(5000); 
        try {
            var r = http.get("http://www.dx1065.net/xmf/jsdone.php?t="+tid+"&u="+username);
            
            if (r.statusCode == 200) {
                redata=r.body.string();  
                toast(redata);             
                break;
            };
        } catch (err) {
            toast("等待连接-->>");
            t=t+1;
            if(t>8){
                toast("连接超时，请检查网络");
                adr="no";
                break;
            }
        }
    }
}
function getlimit(){
    var intent = new Intent();
    //辅助功能
    intent.setAction("android.settings.ACCESSIBILITY_SETTINGS");
    app.startActivity(intent);
}
function showrz(ss){
    var date = new Date();
    var str = util.format("[%d:%d:%d]:", date.getHours(), date.getMinutes(), date.getSeconds());
    console.log(str+ss);
}
//程序主函数
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

function runapp(){
    var strnew="";
    if(storage.contains("xmfname")){
        username=storage.get("xmfname");
        //toast(username);  
    }else{
       
        strnew="";
        username = rawInput("请绑定您的用户名(手机号)", strnew);
    toast(username);   
    if(username=="")
    {
        alert("用户名不能为空");
        return;
    } 
    storage.put("xmfname", username);
    }
    console.show();
    console.setSize(400,100);
    showrz("开始运行脚本");
    showrz("启动抖音...");

    opendy();
   showrz("请勿手动操作...保持抖音在默认页面");
   var findnum=0;
   while(!text("推荐").exists()){
    sleep(3000);
    back();
    findnum=findnum+1;
    if(findnum>10){
        showrz("未检测到首页，请全部重启");
        return;
    }
   }
   showrz("检测抖音状态");
   if(text("我").exists()){
    text("我").findOne().parent().parent().parent().click();
    sleep(4000);
    if(id("fg3").exists()){

        tiktok=id("fg3").findOne().text();
        showrz("获取到抖音账号");
        sleep(1000);
        back();
        
    }else{

        if(textStartsWith("抖音号").exists()){
            tiktok=textStartsWith("抖音号").findOne().text();
            showrz("获取到抖音账号");
            sleep(1000);
            back();
        }else{
            showrz("未获取到抖音号，请全部重启");
            return;
        }
        
    }

    if(text("其他方式登录").exists()){
        showrz("账号未登陆，请登陆后重启脚本");
        return;
    }

   }else{
    showrz("未获取到抖音号，请全部重启");
    return;
   }

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

while(true)
{    
    showrz("开始搜索任务");
    waitFortask(tiktok);
    
    var arr = redata.split("=|=");
    var taskid=arr[0];
    var tasktype=arr[1];
    var tasklink=arr[2];
    tid=taskid;
    if(tasktype==8){
    }

    if(tasktype==0){
        showrz("获取到点赞任务,编号:"+taskid);
        var findnum=0;
        while(!text("推荐").exists()){
         sleep(3000);
         back();
         findnum=findnum+1;
         if(findnum>10){
             showrz("未检测到首页，跳过");
             continue;
         }
        }

        if(text("我").exists()){
            text("我").findOne().parent().parent().parent().click();
            sleep(4000);
            dznum1=textStartsWith("喜欢").findOnce().text();
            back();
        }else{
            showrz("页面未打开，跳过...");
            continue; 
        }
      
        home();
        sleep(2000);
        setClip(tasklink);  
        showrz("打开抖音...");
        opendy();
        showrz("打开任务链接...");
        var outs=0;
        while(!text("前往").exists()){
            outs=outs+1;
            sleep(2000);
            if(outs>10){

                break;
            }
        }
        if(outs>10){
            showrz("无法打开链接，跳过...");
            continue; 
        }
        text("前往").findOne().click();
        sleep(3000);
        showrz("自动点赞...");
       //setScreenMetrics(1080, 1920);
       // click(350,500);
     
       let x1 = x/2
       let y1 = y/2
       if (x1 > 10 && y1 > 10) {
       
       } else {
           // 有的机型取出来的设备宽度和高度都是0
           x1 = 500
           y1 = 500
       }
       
       //模拟双击      
       click(parseInt(x1), parseInt(y1))
       sleep(50)
       click(parseInt(x1), parseInt(y1))
       sleep(50)

       sleep(1000);
       back();
       sleep(2000);
       if(text("我").exists()){
        text("我").findOne().parent().parent().parent().click();
        sleep(4000);
        dznum2=textStartsWith("喜欢").findOnce().text();
        back();
    }

    dznum1=dznum1.replace("喜欢 ","");
    dznum1=parseInt(dznum1);
    dznum2=dznum2.replace("喜欢 ","");
    dznum2=parseInt(dznum2);
if(dznum2>dznum1){
    sendtask(taskid);
    showrz("本次任务完成...");
    sleep(2000);
}else{
    showrz("本次任务失败,点赞数未增加...");
    sleep(2000);
}
  
    }
    if(tasktype==1){
        showrz("获取到关注任务,编号:"+taskid);

        if(text("我").exists()){
            text("我").findOne().parent().parent().parent().click();
            sleep(4000);

            if(text("关注").exists()){
            text("关注").findOnce().parent().click();
            sleep(3000);
            gznum1=textStartsWith("关注").findOnce().text();
        
            back();
            sleep(2000);
            back();
            sleep(2000);
            }
        }

        home();
        sleep(2000);
        setClip(tasklink);  
        showrz("打开抖音...");
        opendy();
        showrz("打开任务链接...");
        var outs=0;
        while(!text("前往").exists()){
            outs=outs+1;
            sleep(2000);
            if(outs>10){

                break;
            }
        }
        if(outs>10){
            showrz("无法打开链接，跳过...");
            continue; 
        }
        text("前往").findOne().click();
        sleep(4000);
        showrz("自动关注...");

        var x2;
        var y2;
        if (x > 10) {
            x2=Math.round(x*0.8);
            y2=Math.round(y*0.5);
        } else {
            // 有的机型取出来的设备宽度和高度都是0
            x2 = 700;
            y2=500;
        }

        swipe(x2, y2, 10, y2, 400);
        sleep(4000);
        
        //setScreenMetrics(720, 1280);

        //var x3=Math.round((432/720)*x);
        var x3=Math.round((500/720)*x);
        var y3=Math.round((316/1280)*y);
        //click(432,316);
        click(x3,y3);
        sleep(4000);

        back();
        sleep(2000);
        back();
        sleep(2000);

        if(text("我").exists()){
            text("我").findOne().parent().parent().parent().click();
            sleep(4000);

            if(text("关注").exists()){
            text("关注").findOnce().parent().click();
            sleep(3000);
            gznum2=textStartsWith("关注").findOnce().text();
        
            back();
            sleep(2000);
            back();
            }
        }

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

        gznum1=gznum1.replace("关注 ","");
        gznum1=parseInt(gznum1);
        gznum2=gznum2.replace("关注 ","");
        gznum2=parseInt(gznum2);
    if(gznum2>gznum1){
        sendtask(taskid);
        showrz("本次任务完成...");
        sleep(2000);
    }else{
        showrz("本次任务失败,关注数未增加...");
        sleep(2000);
    }

    }
    if(tasktype==2){
        showrz("获取到评论任务,编号:"+taskid);
       
        home();
        sleep(3000); 
        setClip(tasklink); 
        showrz("打开抖音...");
        opendy();
        showrz("打开任务链接...");
        var outs=0;
        while(!text("前往").exists()){
            outs=outs+1;
            sleep(2000);
            if(outs>10){

                break;
            }
        }
        if(outs>10){
            showrz("无法打开链接，跳过...");
            continue; 
        }
        text("前往").findOne().click();
        sleep(4000);
        showrz("自动评论...");
        pinglun();
        sendtask(taskid);
        showrz("本次任务完成...");
        sleep(3000);
    }

    showrz("等待获取任务...");
    //toast("等待任务");
    sleep(30000); 
   
}

}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

function opendy()
{
toast("启动抖音");
sleep(2000);
launchApp("抖音短视频");
//launch("com.ss.android.ugc.aweme");
sleep(8000);
}
function backdy()
{
   
}
function guanzhu(){
    
}
function pinglun(){
    var arr=new Array();
     arr[0]='愿你三冬暖，愿你春不寒，愿你天黑有灯，下雨有伞';
     arr[1]='人一辈子，你得信这一条：留得住的不需用力，来去随缘，强求不得';
     arr[2]='不怕输的人最勇敢，不将就的人最好看';
     arr[3]='很多时候，我们欠缺的不是想法，而是付诸行动的勇气';
     arr[4]='从现在开始，不沉溺幻想，不庸人自扰，好好生活，做一个接近幸福的人';
     arr[5]='树叶回到人生没有完美，容得下才能活得潇洒了';
     arr[6]='就算全世界都否定我，还有我自己相信我';
     arr[7]='人还是要有梦想，即使是咸鱼，也要做最咸的那条';
     arr[8]='这一路走来，风景不重要，重要的是你在我身边!与你一见如故，是我今生最美丽的相遇';
     arr[9]='尽力了是为了成功，而不是为了给自己找借口';
     arr[10]='我的一生，我只借一程，从此人山人海，不问归期。以后的路，我好好走';
     arr[11]='人生没有完美，容得下才能活得潇洒';
     arr[12]='从不知道顺其自然有多自然，但我知道现实有多现实';
     arr[13]='烦恼和快乐是人生的两颗种子，在心田播下哪颗种子，哪颗就会发芽长大';
     arr[14]='有些事，我们明知道是错的，也要去坚持，由于不甘心';
     arr[15]='以前总认为坚持会让我们变强大，但是长大后才发现，让我们强大的，是放下。';
     arr[16]='可是人生短暂，不要犹豫也不要舍不得。';
     arr[17]='如果事与愿违，就相信一定另有安排';
     arr[18]='执于一念，将受困于一念;一念放下，会自在于心间';
     arr[19]='会有人掐掉你手中的烟，打掉你手里的酒，看透你的孤独';
     arr[20]='即使是你最心爱的人，心中也会有一片你无法到达的森林';
//  专业破解autojs 脚本，QQ 545337705  更多分享脚本 QQ群:1033080138
var pingstr=arr[random(0, arr.length - 1)];

    toast("开始评论");
        sleep(2000);
        click(50,y-20);
            sleep(4000);
            text("留下你的精彩评论吧").findOne().click();
            sleep(3000);
            className("android.widget.EditText").findOne().setText(pingstr);
            sleep(3000);

            if(id("zy").exists()){
                id("zy").findOne().click();
            }else{
                if(className("android.widget.ImageView").depth(10).clickable(true).indexInParent(3).exists()){
                    className("android.widget.ImageView").depth(10).clickable(true).indexInParent(3).click();
                }
            }
            
            sleep(5000);
            
            back();
            sleep(3000);
        
}

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
