


// events.observeKey();

// events.once('key',function(){
//     toast('按键被按下')
// });

var emitter = events.emitter();

emitter.once('foo',function(){
    toast('foo事件被调用');
});


setTimeout(function(){
    emitter.emit('foo');
},3000)

setTimeout(function(){
    emitter.emit('foo');
},3000)

toast('123')