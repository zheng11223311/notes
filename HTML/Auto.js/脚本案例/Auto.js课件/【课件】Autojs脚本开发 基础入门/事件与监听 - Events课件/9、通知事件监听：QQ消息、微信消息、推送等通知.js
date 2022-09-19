




// 第一步:启用通知监听
events.observeNotification();


// 第二步:注册通知事件监听

//第一种方式
// events.onNotification(function(notification){
//     log(notification.getText())
// })

//第二种方式
events.on('notification',function(notification){
    log(notification.getText())
})










toast('阿涛QQ/微信：656206105')