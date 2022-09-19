


//启用按键监听
events.observeKey();
//监听音量上键按下
events.onKeyDown("volume_up", function(event){
	//这里不会被执行
    toast("音量上键被按下了");
});


threads.start(function(){
    while(true){
        //死循环
        sleep(1000);
        log('这是一个循环')
    }
})




toast('阿涛QQ/微信：656206105')