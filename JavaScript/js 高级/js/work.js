function fibonacci(n){ //递归调用,内部调用自己,递归调用效率比较低
    return n<=2?1:fibonacci(n-1)+fibonacci(n-2)
    
}

var onmessage=function(event){
    var number=event.data
    console.log('分线程接收到主线程发送的数据:'+number);
    //计算
    var result=fibonacci(number)
    postMessage(result)
    console.log('分线程向主线程返回的数据:'+result);
    //alert() 时window 的方法,在分线程不能调用.
    //console.log() 是浏览器的,可以调用
    // 分线程中的全局对象不再是window,所以在分线程中不可能更新界面
}