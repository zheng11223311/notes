



// 第一步:启用按键监听
events.observeKey();

//第二步：注册一个按键监听函数
events.onKeyDown('volume_up', function(keyEvent){

    toast('音量上键被按下')

});

events.setKeyInterceptionEnabled(true);






