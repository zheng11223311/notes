**Node.js 事件循环**

> Node.js 是单进程单线应用程序,但是因为v8 引擎提供的异步执行回调接口,通过这些接口可以处理大量的并发,索引性能非常高
>
> Node.js 几乎每一个API 都是支持回调函数的
>
> Node.js 基本上所有的事件机制都是用设计模式中观察者模式实现
>
> Node,js 单线程类似进入一个while(true) 的事件循环,直到没有事件观察者退出,每一个异步事件都生成一个事件观察者,如果有事件发生就会调用该回调函数

```js
// Node.js 事件循环
// 模拟事件循环

//开启进程
// 开启线程
//  初始化数据 window/document/location...事件
while(true){
    // 初始化事件列表
    // 根据事件修改
    // 根据数据渲染页面

    //运行js 代码
    if( count=0){       //判断这个事件是否只运行一次
        btn.onclick=function(){     //放到事件列表中执行
        document.body.style.background='skyblue'
        console.log(123);
    }
        
    }
    
    console.log(456);
    count++
}
```

**事件驱动程序**

> Node.js 使用事件驱动模型,当web server 接收到请求,就把它关闭然后进行处理,然后去服务下一个web 请求,当这个请求完成时,他被回放处理队列,当达到队列开头,这个结果被返回给客户
>
> 这个模型非常高效可扩展性非常强,因为web server 一直接受请求而不等待任何读写操作.(这也称之为非阻塞式IO 或者事件驱动IO)
>
> 在事件驱动模型中,会生成一个主循环来监听事件,当检测到事件时触发回调函数

**发布订阅事件**

```js
//index.js 文件
//引入 events 模块
var events=require('events')

//创建eventEmitter 对象
var eventEmitter=new events.EventEmitter()

// 创建事件处理程序
var connectHandle=function connected(){
    console.log('连接成功');

    // 触发data_received 事件
    eventEmitter.emit('data_received')
}

//绑定connection 事件处理程序
eventEmitter.on('connection',connectHandle)

//使用匿名函数绑定data_received 事件
eventEmitter.on('data_received',function(){
    console.log('数据接收成功');
})

//触发connection 事件
eventEmitter.emit('connection')

console.log('程序执行完毕');
```

**封装自定义发布订阅事件**

```js
//index.js 文件
let fs=require('fs')

fs.readFile('hello.txt',{flag:'r',encoding:'utf-8'},function(err,data){
    if(err){
        console.log(err);
    }else{
        console.log(data);
        //1数据库查看所有用户的详细信息
        //2.统计年龄比例
        //3.查看所有用户学校的详细信息
        //都需要事件触发,繁琐
        //定义一个对象,存储所有是事件,放在这里一起执行
        Event.emit('fileSuccess',data)
    }
})


// 定义一个对象
let Event={
    event:{
        // fileSuccess:[fn,fn,fn]
        fileSuccess:[]      //添加每个事件要执行的函数
    },
    // 事件监听
    on:function(eventNAme,eventFn){
        if(this.event[eventNAme]){      //判断是否有这个事件
            this.event[eventNAme].push(eventFn)     //判断 fileSuccess 这个数组书否
        }else{
            this.event[eventNAme]=[]  //创建数组
        }
    },
    // 事件触发
    emit:function(eventNAme,eventMsg){
        console.log(eventNAme);     //fileSuccess
        if(this.event[eventNAme]){      //判断是否有这个事件
            this.event[eventNAme].forEach(element => {
                console.log( this.event);//{ fileSuccess: [ [Function (anonymous)], [Function (anonymous)] ] }
                // console.log(element);   //[Function (anonymous)]
                element(eventMsg)
            });
        }
    }
}

Event.on('fileSuccess',function(msg){
    console.log('1数据库查看所有用户的详细信息');
})
Event.on('fileSuccess',function(msg){
    console.log('2.统计年龄比例');
})
Event.on('fileSuccess',function(msg){
    console.log('3.查看所有用户学校的详细信息');
})

```

