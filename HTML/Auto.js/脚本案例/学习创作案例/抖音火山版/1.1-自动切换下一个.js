var w = floaty.window(
    <vertical  bd="gold">
        <button id="back">结束刷屏</button>
        <button id="start">开始刷屏</button>
        <button id="over">结束脚本</button>
    </vertical>
);
let scroll=true

w.back.on('click',()=>{
    // w.close()
    scroll=false
    toast('结束刷屏')
})
w.start.on('click',()=>{
    scroll=true
    toast('开始刷屏')
})
w.over.on('click',()=>{
    toast('退出脚本')
    engines.stopAll()
})

app.launchApp('抖音火山版')
text('关注').waitFor()
console.log('进入页面');


// 控件的向前滑动
    while (true) {
        if(scroll){
            toast ('播放下一个视频')
            bounds(0,0,1080,1920).scrollForward()
            sleep(5000)
        }
    }
// setInterval(()=>{},1000)

