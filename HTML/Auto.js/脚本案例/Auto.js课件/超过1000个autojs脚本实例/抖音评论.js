
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
   "ui";
   ui.layout(
       <vertical>
           <text textSize="16sp" textColor="black" text="请输入抖音短视频话术"/>
           <input id="n" text=""/>
           <input id="m" text="" hint="输入次数" />
           <button id="ok" text="开始启动脚本"/>
       </vertical>

   );
   //auto.waitFor();
   ui.ok.click(function(){
   k=ui.m.getText()  
    toastLog("启动脚本")
    threads.start(脚本)
    
   })

function 脚本(){
    sleep(1500)
    launchApp("抖音短视频")
    sleep (5000)
      for (c=0;c<k;c++){
        swipe(500,1297,500,318,400)
        sleep(2000)
        id("v3").findOne().click();
        sleep(2000)
        id("b0x").findOne().click();
        sleep(2000)
        var r=ui.n.getText();
        var o =random(97,122);
        var p =String.fromCharCode(o)
        setText(r+p);
        sleep(2000)
        id("vl").findOne().click();
        sleep(2000)
        back();
        sleep(2000)
      }
      toast("运行了"+c+"次")
    exit();
}

// //autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!





//id("v3").findOne().click();

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
