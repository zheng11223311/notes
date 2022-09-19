(function myModule(){
    //私有数据
    var msg='My atguigu'
    // 操作数据
    function doSomething(){
        console.log('doSomething()',msg.toUpperCase());
    }
    function doOtherthing(){
        console.log('doOtherthing()',msg.toLowerCase);
    }
    //向外暴露对象(给外部使用的方法) 不用执行函数就可以得到
    // window.myModule2={
    //     doSomething:doSomething,
    //     doOtherthing:doOtherthing
    // }


    //向外暴露对象(给外部使用的方法) 必须先执行这个函数
    return {
        doSomething:doSomething,
        doOtherthing:doOtherthing,
        msg:msg
    }
})()