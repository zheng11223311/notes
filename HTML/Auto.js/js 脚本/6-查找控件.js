//返回主页
home();
toast("返回主页")
// click('哔哩哔哩')
sleep(1000)
// findOne  查找一个,如果没有匹配到,无限查找
// findOne(1000) 查找一个,超时停止

// findOnce  查找一次,不论有没有都返回
// findOnce(i)  查找第i个控件一次
// find   查找所有,返回集合对象,使用集合的方法获取其结果
text("QQ").findOne().click()