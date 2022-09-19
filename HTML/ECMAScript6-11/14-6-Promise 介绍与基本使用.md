**1.Promise **

Promise 是ES6 引入的异步编程的新的解决方案，语法上Promise 是一个构造函数，用来封装有异步操作并可以获取其成功或失败的结果

1.Promise 构造函数，Promise(excutor){}

2.Promise.proptotype.then 方法

3.Promise.prototype.catch 方法

**示例**

```js
//实例化Promise 对象
        const p = new Promise(function (resolve, reject) {
            setTimeout(function () {
                // let data = '数据库中的用户数据'
                // resolve(data)

                let err = '数据读取失败'
                reject(err)
            }, 1000)
        })

        // 调用Promise 对象的then 方法
        p.then(function (value) {
            console.log(value); //数据库中的用户数据
        }, function (error) {
            console.error(error); //数据读取失败
        })
```

**Promise 封装读取文件**

```js
//1.引入fs 模块
const fs = require('fs')

// //2.调用方法读取文件
// fs.readFile('./灵气复苏：亿万倍天赋---第一章：亿万倍天赋.txtl', (err, data) => {
//     //如果失败，则抛出错误
//     if (err) throw err
//     //如果没有出错，则输出内容
//     console.log(data);  //二进制文件
//     console.log(data.toString());
// })

//3.使用Promise 封装
const p = new Promise(function (resolve, reject) {
    fs.readFile('./灵气复苏.txt', (err, data) => {
        //如果失败，则抛出错误
        if (err) reject(err)
        //如果没有出错，则输出内容
        resolve(data);
    })
            
        })

p.then(function (value) {
    console.log(value.toString()); //数据库中的用户数据
}, function (error) {
    console.error(error); //数据读取失败
})
```

**当前路径下：执行命令**

```
node 文件名
```

**Promise 封装AJAX 请求**

```js
//接口地址：https://api.apiopen.top/getJoke?page=1&count=2&type=video
const p = new Promise(function (resolve, reject) {
        // 1.创建对象
        const xhr=new XMLHttpRequest()
        //2.初始化
xhr.open('GET','https://api.apiopen.top/getJoke?page=1&count=2&type=video')
        //3.发送
        xhr.send()
        //4.绑定事件，处理响应结果
        xhr.onreadystatechange=function(){
            //判断
            if(xhr.readyState===4){
                //判断响应状态码 200-299
                if(xhr.status>=200&&xhr.status<300){
                    //表示成功
                    resolve(xhr.response);
                   
                    
                }else{
                    reject(xhr.status);
                }
            }
        }
    })

    p.then(function (value) {
         console.log(value);
    }, function (error) {
         console.error(error); 
    })
```

**Promise.proptotype.then 方法**

```js
const p = new Promise(function (resolve, reject) {
   setTimeout(()=>{
       resolve('用户数据')
   },1000)
            
        })

        //then 方法返回结果是Promise 对象，对象状态由回调函数的执行结果决定
        //1.如果回调函数中返回的结果是 非Promise 类型的属性，状态为成功，返回值为对象
        //的成功值
    const result=p.then(function (value) {
        console.log(value.toString()); 
        //1 非Promise 对象
        // return 123
        //2 是Promise 对象
        // return new Promise((resolve,reject)=>{
        //     resolve('ok')   //[[PromiseResult]]: ok
        // })
        //3 抛出错误
        throw new Error('出错了')
        //[[PromiseResult]]: Error: 出错了 at http://127.0.0.1:55。。。。
    }, function (error) {
        console.warn(error); 
    })

    console.log(result);
    //     Promise {<pending>}
    // __proto__: Promise
    // [[PromiseState]]: "fulfilled"
    // [[PromiseResult]]: 123
```

```js
// 链式调用
p.then((value)=>{},(error)=>{}).then((value)=>{},(error)=>{})
//或
p.then((value)=>{}).then((value)=>{})
```

**示例：多个文件读取**

```js
//1.引入fs 模块
const fs = require('fs')

const p = new Promise(function (resolve, reject) {
    fs.readFile('./灵气复苏.txt', (err, data) => {
        //如果失败，则抛出错误
        if (err) reject(err)
        //如果没有出错，则输出内容
        resolve(data.toString());
    })
            
        })

p.then(function (value) {
    return new Promise(function (resolve, reject) {
    fs.readFile('./tt.text', (err, data) => {
        if (err) reject(err)
        resolve([data.toString(),value])
         })
    })
})
.then(function (value) {
    return new Promise(function (resolve, reject) {
    fs.readFile('./感谢流浪者588打赏.txt', (err, data) => {
        if (err) reject(err)
        resolve([data.toString(),value])
    })
})
})
.then(function (value) {
    console.log(value); 
})
```

**Promise.prototype.catch 方法**

```js
const p = new Promise(function (resolve, reject) {
            setTimeout(()=>{
                //设置p 对象的状态为失败，并设置失败的值
                reject('出错了')
            },1000)
            
        })

p.then((value)=>{}).then((value)=>{})
.catch(err=>{
    console.error(err);
})
```

