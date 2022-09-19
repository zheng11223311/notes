
/**
 * 手机型号：红米 note8
 * 安卓系统：9
 * miui：11
 * 微信版本：7.0.17
 * autojs版本：4.1.1
 * 
 */

//开始界面：微信首页

text('通讯录').waitFor();
sleep(1000);

var obj = text('发现').id('com.tencent.mm:id/cns').findOne();

var x = obj.bounds().centerX();
var y = obj.bounds().centerY();

click(x,y)

obj = text('朋友圈').id('android:id/title').findOne();

x = obj.bounds().centerX();
y = obj.bounds().centerY();

click(x,y)

toast('阿涛')