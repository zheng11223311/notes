


// 第一步:启用屏幕触摸监听
events.observeTouch();

//第二步：注册触摸监听器6
events.onTouch(function(p){
    //触摸事件发生时, 打印出触摸的点的坐标
    log(p.x + ", " + p.y);
});

// events.setTouchEventTimeout(2000)



// setTimeout(function(){
//     log(events.getTouchEventTimeout())
// },2000)

setTimeout(function(){
    events.removeAllTouchListeners()
},2000)















toast('阿涛QQ/微信：656206105')