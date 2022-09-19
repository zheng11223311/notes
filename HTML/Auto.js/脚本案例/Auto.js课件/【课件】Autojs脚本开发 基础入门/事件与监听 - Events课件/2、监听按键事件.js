


//监听按键事件

// 第一步:启用按键监听
events.observeKey();

//第二步：注册一个按键监听函数
events.onKeyDown('volume_up', function(keyEvent){

    toast('音量上键被按下')

    // exit()

})

events.onKeyUp('volume_down', function(){

    toast('音量下键被弹起')

})












toast('阿涛QQ/微信：656206105')