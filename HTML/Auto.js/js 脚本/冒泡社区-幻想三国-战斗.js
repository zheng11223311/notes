
// 切换到人物栏
sleep(1500)
setScreenMetrics(1080,2400)
while(!click(146,1488))
toast('人物栏')

sleep(1500)
// 点击第一排 战斗
// while(!click(871,358))
// 点击第二排 战斗
// while(!click(972,503))

// 点击第三排 战斗
while(!click(847,596))
// 点击第四排 战斗
// while(!click(996,730))
// toast('战斗')

// 主角
// sleep(1500)
// while(!click(600,920))
// toast('技能')

// sleep(1500)
// 第一个技能
// while(!click(554,903))
// toast('技能')

// sleep(1500)
// 第一个敌人
// while(!click(76,999))
// toast('技能')

// 第一个副将
// sleep(1500)
// while(!click(600,920))
// toast('技能')

// sleep(1500)
// // 第一个技能
// while(!click(554,903))
// toast('技能')

// sleep(1500)
// // 第一个敌人
// while(!click(76,999))
// toast('技能')

// 结束战斗后的点击退出胜利界面
sleep(2500)
while(!click(76,1000))
toast('退出')
// 结束战斗后的点击退出胜利界面
sleep(2500)
while(!click(76,1000))
toast('退出')

sleep(2500)
while(!click(524,1368))
toast('确定弹出的信息框')

// 停止当前脚本
// execution.getEngine().forceStop()
// toast('停止当前战斗脚本')