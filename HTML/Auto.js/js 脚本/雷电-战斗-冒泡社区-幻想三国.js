
// 切换到人物栏
sleep(1500)
// setScreenMetrics(1080,2400)
while(!click(128,994))
toast('人物栏')

sleep(1500)
// 点击第一排 战斗
// while(!click(733,224))
// 点击第二排 战斗
// while(!click(819,306))

// 点击第三排 战斗
while(!click(733,380))
// 点击第四排 战斗
// while(!click(819,468))
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