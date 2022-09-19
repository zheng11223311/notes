
/**
 * 手机型号：红米 note8
 * 安卓系统：9
 * miui：11
 * 微信版本：7.0.17
 * autojs版本：4.1.1
 * 
 */
wechatSendOne('使用函数封装发表')

/**
 * 函数的封装
 */

//发表无图片朋友圈
function wechatSendOne(sendText){
    //开始界面：微信首页

    text('通讯录').waitFor();
    sleep(1000);

    var obj = text('发现').id('com.tencent.mm:id/cns').findOne();

    clickCenter(obj);
    sleep(1000)

    obj = text('朋友圈').id('android:id/title').findOne();

    clickCenter(obj);

    desc('拍照分享').waitFor();
    sleep(1000);

    obj = desc('拍照分享').findOne();

    obj.longClick();

    text('发表文字').waitFor();
    sleep(1000);

    obj = text('这一刻的想法...').findOne();

    clickCenter(obj);

    sleep(500);

    setText(sendText);

    sleep(1000);

    click('发表')

    desc('拍照分享').waitFor();
    sleep(1000);

    toast('发表完成');
}

//点击控件中心点坐标
 function clickCenter(obj)
 {
    var x = obj.bounds().centerX();
    var y = obj.bounds().centerY();
    
    click(x,y)
 }

// toast('阿涛')