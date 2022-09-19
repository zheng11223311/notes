


var e = events.emitter();


var fun = function(){
    toast('这是demo事件')
}

var fun2 = function(){
    toast('这是demo事件的fun2')
}

e.on('demo',fun);

e.on('demo',fun2);

e.on('demo1',fun2);

e.removeAllListeners('demo');

e.emit('demo1')

// e.removeListener('demo', fun)

// e.emit('demo1')






toast('阿涛QQ/微信：656206105')