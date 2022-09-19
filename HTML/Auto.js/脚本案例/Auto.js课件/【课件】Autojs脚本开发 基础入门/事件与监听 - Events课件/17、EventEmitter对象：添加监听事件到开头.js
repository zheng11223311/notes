



var e = events.emitter();


e.on('demo',function(){
    toast('触发了demo的监听事件');
})


e.on('demo',function(){
    toast('触发了demo的监听事件的第二个监听函数');
})



e.on('demo1',function(){
    toast('触发了demo的监听事件');
})

e.prependListener('demo',function(){
    toast('触发了demo的监听事件的第三个监听函数');
})

e.prependOnceListener('demo', function(){
    toast('触发了demo的监听事件的第四个监听函数');
})







toast('阿涛QQ/微信：656206105')