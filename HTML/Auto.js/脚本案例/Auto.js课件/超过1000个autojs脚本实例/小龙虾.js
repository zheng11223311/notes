
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 


//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456



launchApp("小龙虾");
toast("3秒后打开小龙虾");
sleep(3000);
m = 0;
var ditUrl =null;
zuorw();
toast("循环300次停止");
        function zuorw(){
        for(i=0; i<300; i++){
        //click("任务");
        if(text("小龙虾-赚点零花钱").exists()){
         toast("点开抖音任务");
         click("抖音任务");
         sleep(1000);
        }    
       toastLog("已经做了"+m+"点赞任务");
        sleep(1500);
           
     if(text("点赞").exists()){
         var a = text("点赞").findOne();
         click(a.bounds().centerX(),a.bounds().centerY()+100);
         }
       sleep(1000);
       
    if (text("复制").exists()) {
        toast("发现[点赞]任务，开始操作");
        text("复制").findOne().click();
        sleep(800);
        if(text("任务无效").exists()){
            sleep(1000);
           click("刷新任务");
            return zuorw();
            }
        qianw();
    } else {
        click("刷新任务");
    toast("刷新任务");
    
    return zuorw()
    }
    
   }
 }
 //前往抖音做任务
function qianw(){
    m++;
    sleep(1000);
    home();
    sleep(500);
    click("抖音短视频");
    sleep(2500);
    toast("等待前往");
    if(text("前往").exists()){
        text("前往").findOne().click();
        sleep(2000);
        dianz();
        sleep(200);
        back();
        }else{
            recents();
            sleep(2000);
            click("抖音短视频");
            text("前往").findOne().click();
            sleep(2000);
            dianz()
            sleep(200);
            back();
            }
     sleep(1000);
    home();
    sleep(500);
    click("小龙虾");
    }
function dianz(){
    let x = device.width / 2;
    let y = device.height / 2;
    click(x, y); sleep(50); click(x, y);
   sleep(50); click(x, y); sleep(50); click(x, y);
    }
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
