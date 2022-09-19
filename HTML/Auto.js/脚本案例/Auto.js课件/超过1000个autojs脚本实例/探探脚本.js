
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
toast('探探脚本 1.0');
/**
autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
1群:168196007 
2群:830810438 
3群:571854376 
4群:63732194
5群:592916456
 */
main();

function main() {
    auto.waitFor();

    if (!launchPackage('com.p1.mobile.putong')) {
        toast('探探未安装!!');
        return;
    }

    toast('启动成功');

    waitForActivity('com.p1.mobile.putong.ui.main.MainAct', 200);

    sleep(5000);

    //changeLocation('江苏省宿迁');

    //swipePic();//滑动
    for (let i = 0; i < 10; i++) {
        toast('组 ' + (i + 1));
        clickLikeButton(100,500);//500次,延迟500毫秒
        sleep(1000 * 10);
        changeLocation('江苏省宿迁');
        sleep(1000*5);
    }
}

function getRandomLocation() {

}

function clickLayout(v) {
    click(v.bounds().centerX(), v.bounds().centerY());
}

function swipePic() {
    for (let i = 0; i < 1000; i++) {
        swipe(device.width / 4, device.height / 2, device.width / 3 * 2, device.height / 2, 200);

        sleep(500);

        handleDialog();
    }
}

function clickLikeButton(count, delay) {
    var likeButton = className('android.widget.AdapterView').findOne().parent().child(1).child(3);
    for (let i = 0; i < count; i++) {
        likeButton.click();
        sleep(delay);

        handleDialog();
    }
}

function sendMessage() {
    //输入内容
    setText('你好,请问您最近有没有做一些理财投资,例如股票、基金、债券、信托等?');
    sleep(500);
    clickLayout(text('发送').findOne());
    sleep(500);

    back();
}

function changeLocation(loc) {
    if (desc('转到上一层级').exists()) {
        //菜单
        desc('转到上一层级').click();
        sleep(1500);
        //设置
        clickLayout(text('设置').findOne().parent().parent());
        sleep(1500);
        //位置
        clickLayout(text('位置').findOne());
        sleep(1500);
        //添加漫游位置
        text('添加漫游位置').click();
        sleep(1500);
        //搜索
        desc('搜索').click();
        sleep(1500);
        //输入位置
        setText(loc);
        sleep(1500);
        //选择第一个
        clickLayout(className('android.widget.ListView').find()[1].child(0));
        sleep(1500);
        //添加
        clickLayout(text('添加').findOne());
        sleep(1000);
        back();
        sleep(1000);
        back();
        sleep(2000);
        toast('位置修改完毕');
    } else {
        toast('位置修改失败,版本不符');
    }
}

function handleDialog() {
    //检测弹窗
    if (text('立即购买').exists()) {
        text('知道了').click();
    }

    if (text('继续探索').exists()) {
        clickLayout(text('继续探索').findOne());
    }

    if (false && text('发送消息').exists()) {
        clickLayout(text('发送消息').findOne());
        sleep(1500);

        sendMessage();
    }
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
