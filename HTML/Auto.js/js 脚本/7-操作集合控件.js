//返回主页
home();
toast("返回主页")
// click('哔哩哔哩')

// size() 控件数量
var 控件数量=text('QQ').find().size()
log('控件数量',控件数量)
// 获取第一个子控件
// var 控件数量=text('QQ').find().size().get(0)
// 获取文本
// var 控件数量=text('QQ').find().size().get(0).text()
// 点击文本传递过来的文字
// click(控件数量);
className("android.widget.TextView").text("三国杀").findOne().click()
sleep(20000)
if(className("android.widget.LinearLayout").exists()){
    className("android.widget.LinearLayout").findOne().click()
  toast('点击')
}

// click 不区分大小写
// 遍历集合
// id('aa').find().forEach(element => {
//     click(element.text())
//     sleep(3000)
//     // 返回
//     back()
//     sleep()
// });

// empty() 是否为空
// nonEmpty() 是否非空
// var bool=d('aa').find().empty()