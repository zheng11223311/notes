



events.observeToast();

events.on('toast',function(toast){

    //获取toast的内容
    log(toast.getText());

    //获取toast的app包名
    log(toast.getPackageName());

})












toast('阿涛QQ/微信：656206105')
