
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
auto.waitFor();
var Maid = require("./common/Maid.js");
var maid = new Maid("com.taobao.trip");
var Unlock = require("./common/Unlock.js");
var unlock = new Unlock();
maid.before();
unlock.unlock();
maid.sleep(2);



maid.kill();
maid.sleep(2);
maid.launch();
maid.waitForActivity("com.taobao.trip.home.HomeActivity");
maid.sleep(5);
maid.clickRegTextCenter("\\+\\d+里程"); //进入签到页按钮
maid.sleep(4);
maid.clickRegDescCenter("签到\\+\\d+里程");
maid.sleep(2);
maid.kill();
maid.after();
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
