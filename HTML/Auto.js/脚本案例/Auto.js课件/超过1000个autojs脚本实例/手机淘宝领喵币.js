
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
toast("检测是否开启无障碍模式")
auto.waitFor()
var appName = "手机淘宝";
var shops = ["欧莱雅官方旗舰店", "美的官方旗舰店", "GREE格力官方旗舰店", "苏泊尔官方旗舰店", "小米官方旗舰店",
    "荣耀官方旗舰店", "vivo官方旗舰店", "OPPO官方旗舰店", "李宁官方网店", "olay官方旗舰店", "YSL圣罗兰美妆官方旗舰店",
    "蒙牛旗舰店", "自然堂旗舰店", "KIEHL'S科颜氏官方旗舰店", "Lancome兰蔻官方旗舰店", "雅诗兰黛官方旗舰店天猫店",
    "美特斯邦威官方网店", "宝洁官方旗舰店", "adidas官方旗舰店", "奥克斯旗舰店", "海尔官方旗舰店", "HR赫莲娜官方旗舰店",
    "阿玛尼美妆官方旗舰店", "波司登官方旗舰店","#700554812"]
sleep(3000);
launchApp(appName);
sleep(3000);
//寻找手机淘宝领喵币按钮，存在则执行任务，否则退出脚本//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
var lingmiaobi = indexInParent(5).depth(18).text("").findOnce();
if (lingmiaobi) {
    lingmiaobi.click();
    sleep(1000);
    execTask();
}
else {
    toast("未检查到领喵币按钮")
}
toast("即将执行店铺签到任务");
back();
sleep(1000);
execShopCheckin(shops);
toast("任务完成，感谢支持")
function execTask() {
    while (true) {
        var target = text("签到").findOnce() || text("去进店").findOnce() || text("去浏览").findOnce();
        if (target == null) {
            break;
        }
        target.click();
        sleep(3000);
        if (target.text() === "签到") {
            sleep(2000);
            continue;
        }
        else {
            //执行浏览广告类任务
            viewWeb(20);
        }
        back();
        sleep(2000);
    }
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
function viewWeb(time) {
    gesture(1000, [300, 600], [300, 300]);
    var cnt = 1;
    while (true) {
        var finish = desc("任务完成").exists() || descStartsWith("已获得").exists();
        if (finish || cnt > time) {
            break;
        }
        sleep(1000);
        cnt += 1;
    }
}
function execShopCheckin(shopName) {
    var searchBar = desc("搜索").findOnce();
    //点击首页的搜索按钮
    if (searchBar) {
        searchBar.click();
        shopCheckin(shopName);
    }
    else {
        toast("未找到搜索按钮")
    }
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

function shopCheckin(shopName) {
    for (var i = 0; i < shopName.length; ++i) {
        //将搜索框内的内容替换成相应的店铺名并点击搜索
        sleep(2000);
        searchBar2 = depth(10).indexInParent(0).findOnce();
        searchBar2.setText(shopName[i]);
        sleep(500);
        depth(9).indexInParent(2).text("搜索").findOne(5000).click();
        if(i === shopName.length - 1) {
            var helpme = text("为TA助力").findOne(5000);
            if(helpme) {
                helpme.click();
            }
            back();
            sleep(500);
            back();
            sleep(500);
            back();
            continue;
        }
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
        classNameStartsWith("android.support.v7.app").depth(11).indexInParent(2).clickable(true).findOne(5000).click();
        //点击进店
        // var jindian = depth(15).indexInParent(0).text("进店").findOne(3000).parent();
        var jindian = depth(15).indexInParent(0).descContains(shopName[i]).clickable(true).findOne(3000) || depth(20).indexInParent(0).textContains(shopName[i]).clickable(true).findOne(3000);
        if (jindian) {
            jindian.click();
            //双十一父亲 indexinparent(1) depth(10)
            sleep(3000);
            //点击双十一
            var childofBtn = classNameStartsWith("android.widget.ImageView").depth(17).indexInParent(0).findOne(10000);
            if (childofBtn) {
                var btn = childofBtn.parent().parent();
                // var btn = classNameStartsWith("android.widget.FrameLayout").depth(15).indexInParent(2).clickable(true).findOne(5000);

                btn.click();
                //点击签到领喵币
                var qiandaoImg = desc("签到领喵币").findOne(5000);
                if (qiandaoImg) {
                    var qiandao = qiandaoImg.parent();
                    qiandao.click();
                    sleep(1000);
                    log(shopName[i] + "签到领喵币");
                }
                else {
                    log(shopName[i] + "没找到领喵币按钮")
                }
            }
            else {
                log(shopName[i] + "没找到双十一按钮")
            }
            //两次退回回到搜索框界面
            while (desc("拍立淘").findOnce() == null) {
                back();
                sleep(1000);
            }
            back();
        }
        else {
            log(shopName[i] + "没找到进店按钮");
            back();
        }
    }
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
