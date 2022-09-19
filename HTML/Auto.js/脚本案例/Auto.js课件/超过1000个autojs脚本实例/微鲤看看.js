
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
//
ui.layout(
<vertical>   
<button text="点击启动" id="ok"  />
<horizontal>
<checkbox text="微鲤看看" id="wlkk" checked="true" />
<input id="wlkkip" text="" hint="输入次数" />
</horizontal>

<checkbox text="微趣看" id="wqk"/>
<checkbox text="刷宝" id="sb" />
</vertical>   
)
  var cs=ui.wlkkip.getText()
//ui.wlkk.on("check",(checked)=>{
   ui.ok.on("click",()=>{
    if(ui.wlkk.checked){
        toast("打开微鲤看看");
        
        threads.start(微鲤)
            //在新线程执行的代码
    }else{
        toast("mei")
    };
    if(ui.wqk.checked){
        toast("wqkxuanzhong");
    
    }else{
        toast("wqkmei");
    };
    
    if(ui.sb.checked){
        toast("sbxuanzhong");
       
    
    }else{
        toast("sbmei");
    };
   });
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

///////////////////////////////////////////////
function 微鲤(){
    launchApp("微鲤");
    sleep(10000)
    toast("开始阅读");
    for (var n=0;n<cs;n++){
        var bt=id("tv_from").find();
        var sl=bt.length-1
        log(sl)
        for (var i=1;i<sl;i++){
            btxy=bt[i].bounds()
            if(btxy){
                click(btxy.centerX(),btxy.centerY())
                sleep(3000)
                for (var i1=0;i1<7;i1++){
                    sleep(5000)
                   
                    var ra = new RootAutomator();
                       
                    ra.swipe(500,1600, 540,1500,500)
                }
                back();
                sleep(3000)
        
            
            }
        }
        className("android.support.v7.widget.RecyclerView").scrollForward();
        sleep(2000)
    }
    
}

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!



//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
