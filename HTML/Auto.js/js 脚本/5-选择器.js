//返回主页
home();
toast("返回主页")
// click('哔哩哔哩')
sleep(1000)
toast("睡眠")
//findOne 查找一个
// 默认查找 所有
//text("QQ") 点击的是文字,不是图标,对象的 click 需要改控件是可以点击的才行
// 而直接click('QQ') 表示直接模拟手动点击文字
text("QQ").findOne().click()
// click('热门')

// clasName 定位
className('android.widget.Button').findOne().click()
// 滑动
// className('android.widget.Button').findOne().scrollDown()
// className('android.widget.Button').findOne().scrollUp()

// log 打印
// children 寻找子控件
// childCount 子控件个数
// child(i)  第几个子控件,0开始
// parent  父框架
// bounds()  坐标范围,返回rect(长方形) 对象
// log(className('android.widget.Button').findOne().childCount())
// log(className('android.widget.Button').findOne().children())
log(className('android.widget.Button').findOne().parent())