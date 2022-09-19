// // 返回主页
home()
// toast('返回主页')
// // 点击冒泡社区
// 需要出现在显示的界面中才行
while(!click('冒泡社区',0))
toast('点击冒泡社区')

sleep(10500)

// while(!click('游戏'))
while(!click(341,2329))
toast('游戏')

sleep(1500)
while(!click('幻想三国'))
toast('幻想三国')

sleep(1500)
while(!click('启动'))
toast('启动')

// toast('请先调用面板')
// // 等待遮挡屏消失
sleep(5500)
while(!click(200,1070))
toast('切换键盘')
// toast('进入游戏')

sleep(1500)
while(!click(311,1950))
toast('进入游戏')

// // 选择分区
sleep(1500)
while(!click(270,480))
toast('赤壁')

// // 选择角色(已存在角色的情况下)
sleep(1500)
while(!click(270,480))
toast('角色')