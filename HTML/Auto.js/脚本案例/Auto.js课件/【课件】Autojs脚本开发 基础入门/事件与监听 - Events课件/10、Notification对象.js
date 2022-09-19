


// 第一步:启用通知监听
events.observeNotification();


//第一种方式
events.onNotification(function(notification){

    // log(notification.number);

    // log(new Date(notification.when).toLocaleString());

    // log(notification.getPackageName())
    // // com.tencent.mm
    // log(notification.getTitle())

    // log(notification.getText())

    // notification.click()
    // notification.delete()
})







toast('阿涛QQ/微信：656206105')