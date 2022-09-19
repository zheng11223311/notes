//返回主页
home();
toast("返回主页")
// 点击当前屏幕中所显示的文字,如果有多个相同文字选择点击第几个,从0开始.默认点击所有文字
// 需要与while 一起使用,以便点击成功
while(!click('哔哩哔哩',0));
toast("哔哩哔哩")
// 延时5s
sleep(5000)
// 第一次进入
// click("同意并继续");
// 延时5s
// sleep(5000)
//while(!click("我的"));
//toast("点击我的")
//while(!click("点击登录"));
//toast("点击登入")

// 长按与点击用法一致
// while(!longClick('这娃'));
// toast("长按")
// while(!click('取消'));
// toast("取消")

//向上滑动/左滑,默认选择最大区域的滑动,从0开始
scrollUp()
toast("滑动")
// 下/右
scrollDown()
toast("滑动")

// 设置文本,没有焦点时默认自己找(找到所有可以写的地方都写上),有焦点设置焦点的文本
// 区域点击.使用悬浮上的工具查找位置
click(136,76,512,136)
setText('嘿嘿嘿')
// input与settext 的区别,input 追加,set 覆盖,用法一致
input('哈哈哈');
toast("文本")
// setText(0,'嘿嘿嘿')