



//监听按键事件

// 第一步:启用按键监听
events.observeKey();

//第二步：注册一个按键监听函数
events.onKeyDown('volume_up', function(keyEvent){

    log(keyEvent.getAction());
    log(keyEvent.keyCodeToString((keyEvent.getKeyCode())));
    
    log(keyEvent.getEventTime())
})

// KeyEvent { 
//     action=ACTION_DOWN,
//     keyCode=KEYCODE_VOLUME_UP, 
//     scanCode=115, 
//     metaState=0, 
//     flags=0x8, 
//     repeatCount=0, 
//     eventTime=829837431, 
//     downTime=829837431, 
//     deviceId=6, 
//     source=0x101, 
//     displayId=-1 
// }









toast('阿涛QQ/微信：656206105')