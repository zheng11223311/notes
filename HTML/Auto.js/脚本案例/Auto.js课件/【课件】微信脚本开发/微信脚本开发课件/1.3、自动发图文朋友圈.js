/**
 * 手机型号：红米 note8
 * 安卓系统：9
 * miui：11
 * 微信版本：7.0.17
 * autojs版本：4.1.1
 * 
 */


toast('脚本开始运行')
wechatSendTwo('图文动态')

/**
 * 函数的封装
 */

//发表图文朋友圈
function wechatSendTwo(sendText){
    //开始界面：微信首页

    waitText('通讯录')

    var obj = text('发现').id('com.tencent.mm:id/cns').findOne();

    clickCenter(obj);
    sleep(1000)

    obj = text('朋友圈').id('android:id/title').findOne();

    clickCenter(obj);

    desc('拍照分享').waitFor();
    sleep(1000);

    obj = desc('拍照分享').findOne();

    //短按拍照分享
    obj.click();

    waitText('从相册选择');

    click('从相册选择');

    id('com.tencent.mm:id/dm0').waitFor();
    sleep(1000);

    id('com.tencent.mm:id/dm0').findOne().click();

    textStartsWith('完成(').waitFor();
    sleep(100);

    textStartsWith('完成(').findOne().click();

    waitText('发表');

    var editObj = text('这一刻的想法...').findOne();

    clickCenter(editObj);

    setText(sendText);

    sleep(500);

    click('发表');

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

 //等待文本出现

 function waitText(str){
    text(str).waitFor();
    sleep(1000);
 }

// toast('阿涛')























toast('阿涛 QQ/微信：656206105')