
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
auto.waitFor();
var Maid = require("./common/Maid.js");
var maid = new Maid("com.sh.cm.shydhn");
var Unlock = require("./common/Unlock.js");
var unlock = new Unlock();
maid.before();
unlock.unlock();
maid.sleep(2);


//该APP在wifi下连接速度很慢, 转到移动数据连接
shell("svc wifi disable", true);
shell("svc data enable", true);
maid.sleep(2);



maid.kill();
maid.sleep(2);
maid.launchActivity("com.richeninfo.cm.shydhn.ui.v4.ui.activity.HomeActivity");
maid.sleep(8);
if (id("iv_close1").exists()) {
    maid.clickIdCenter("iv_close1"); //弹出的广告
    maid.sleep(2);
}
maid.click(979, 2077); //我的
maid.sleep(5);


//进去签到页按钮
if (id("listview_header_no_hider_ll_sign_in").exists()) {
    maid.clickIdCenter("listview_header_no_hider_ll_sign_in");
    maid.sleep(4);
}

maid.clickTextCenter("签到"); //签到按钮
maid.sleep(2);
maid.kill();

shell("svc wifi enable", true);
shell("svc data disable", true);
maid.sleep(2);
maid.after();
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
