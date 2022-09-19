


var e = events.emitter();


e.on('demo',function(){
    toast('这是一个demo监听')
});

e.on('demo',function(){
    toast('这是一个demo监听')
});

e.on('demo1',function(){
    toast('这是一个demo监听')
});


// log(e.eventNames());
// [demo]

// log(e.listenerCount('demo'))


// log(e.listeners('demo1'))








toast('123');