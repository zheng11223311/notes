


var emitter = events.emitter();

emitter.on('bar',function(a,b){
    toast(a+b);
})


emitter.on('bar',function(a,b){
    toast(a+b);
})

setTimeout(function(){
    emitter.emit('bar',1,2);
},3000)







toast('123')