
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
auto.waitFor();
var Maid = require("./common/Maid.js");
var maid = new Maid("com.smzdm.client.android");
var Unlock = require("./common/Unlock.js");
var unlock = new Unlock();
maid.before();
unlock.unlock();
maid.sleep(2);

maid.kill();
maid.sleep(2);
maid.launchActivity("com.smzdm.client.android.activity.HomeActivity");
maid.sleep(5);
if (id("iv_content_cancel").exists()) {
    maid.clickIdCenter("iv_content_cancel"); //app更新弹出框
    maid.sleep(1);
}

maid.clickTextCenter("我的"); //进入我的页面按钮
maid.sleep(4);
maid.clickTextCenter("签到"); //签到按钮
maid.sleep(2);
maid.kill();
maid.after();
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
