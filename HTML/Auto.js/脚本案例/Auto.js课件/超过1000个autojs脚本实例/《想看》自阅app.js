
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
"ui";
ui.layout(
    <frame w="*" h="*">
    <button id="a" layout_gravity="center" w="auto" h="auto" text="长按启动"/>
    <vertical>
        <text text="要求安卓7以上使用，安卓7以下没试过自行实验。第一个脚本多多少少有点bug，如运行错误请再试一次。"/>
        <text text="本软件仅供学习交流使用。 如用本程序于商业用途所导致的后果自负,与作者无关。"/>
        <text text="要求《想看》版本为4.8.21脚本最长阅读时间10分钟。音量上键停止脚本" textColor="red"/>
    </vertical>
    </frame>
);

auto()
ui.a.longClick(function(){
    threads.start(退出)
    threads.start(脚本)
    })
    
    
    function 脚本(){
        launchApp("想看");
toast("已启动请等待20秒左右");
sleep(random(18000,20000))
back()
sleep(2000)

var i=0,b
while (i<1) {
    if(null!=id("tv_box_time_new").text("领金币").findOnce()){
        id("custom_integer_coin_box").depth(9).findOne().click()
        sleep(random(1000,2000))}
    id("common_recycler_view").depth(11).findOnce(1).children().forEach((element,c) => {
        if (c!==0) {
            if(null==element.findOne(textEndsWith("关注"))&&null==element.findOne(textEndsWith("广告"))){
                element.click();
                爱看分辨视频新闻();
                sleep(random(1000,1500))
            }
            }    
        });   
    id("common_recycler_view").depth(11).findOnce(1).scrollForward();
    sleep(random(1000,2000))
};
        }

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

function 爱看分辨视频新闻(){
    if(null!=id("more_minute_btn").text("继续阅读").findOne(random(4000,5500))){
            id("more_minute_btn").text("继续阅读").findOnce().click()
            sleep(random(1000,2000))}
if (null==id("ivIcon").findOne(3000)) {
    //视频
    再看一个视频();   
    //if(null!=className("android.view.ViewGroup").depth(10).clickable(true).findOnce(1)){
        //className("android.view.ViewGroup").depth(10).clickable(true).findOnce(1).click()
        //再看一个视频()};
back();
} else {
    //新闻
    for (let a = 0; a < random(19,21); a++) {
        sleep(random(3500,5000))//延时后滑动
        if(null==id("coin_img_big").findOnce()){
           break;
            }
        gesture(random(800,1200),[random(380,420),random(780,820)],[random(480,520),random(480,520)])
        if(null!=id("fudai_icon").depth(9).findOnce()){
            id("fudai_icon").depth(9).findOnce().click()
            sleep(random(2000,3000))};
        if(null!=id("more_minute_btn").text("继续阅读").findOnce()){
        sleep(random(1000,2000))}
    }
    back();
};}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

function 再看一个视频(){
    for (let a = 0; a < 90; a++) {
        sleep(2000)
        if(null!=id("fudai_icon").depth(8).findOnce()){
            id("fudai_icon").depth(8).findOnce().click()
            sleep(random(2000,3000))};
        if(null!=id("more_minute_btn").text("继续阅读").findOnce()){
            id("more_minute_btn").text("继续阅读").findOnce().click()
            sleep(random(1000,2000))}
        if(null!=text("重新播放").findOnce()){
            break;
        };
    }
    }    
      
      function 音量上键(){events.observeKey();events.onKeyDown("volume_up", function(){ engines.stopAll(); });}
       function 退出(){setTimeout(function(){ engines.stopAll() }, 600000);}

//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
