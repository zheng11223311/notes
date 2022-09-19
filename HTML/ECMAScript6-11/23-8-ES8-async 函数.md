**1.async 和await**

async 和await 两种语法结合让异步代码向同步代码一样

**2.async 函数**

async 函数的返回值为Promise 对象

Promise 对象的结果由async 函数执行的返回值决定

```js
async function fn(){
    //返回一个字符串
    // return 'guigu'
    //返回的结果不是一个Promise 类型的对象，返回的结果就是成功的Promise 对象
    // return 
    //抛出错误，，返回的结果是一个失败的Promise
    //throw new Error('出错了！')
    //返回的结果如果是一个Promise 对象
    return new Promise((resolve,reject)=>{
        resolve('成功的数据')
    })
}

const result=fn()
console.log(result);

// 调用then 方法
result.then(value=>{
    console.log(value);     //成功的数据
})
```

**2.await 表达式**

1.await 必须写在async 函数中

2.await 右侧表达式一般为Promise 对象

3.await 返回的是Promise 对象

4.await 的Promise 失败了,就会抛出异常,需要通过try...catch 捕获处理

```js
  const p= new Promise((resolve,reject)=>{
        resolve('成功的数据')
    })

async function main(){
   try{
        let result=await p
    console.log(result);
   }catch(e){
    console.log(e);
   }
}
main()
```

**async 和await 结合读取文件**

```js
//引入fs 模块
const fs=require('fs')


function read(){
    return new Promise((resolve,reject)=>{
        fs.readFile('./tt.text',(err,data)=>{
            if(err) reject(err)
            resolve(data)
        })
    })
}
function read1(){
    return new Promise((resolve,reject)=>{
        fs.readFile('./感谢流浪者588打赏.txt',(err,data)=>{
            if(err) reject(err)
            resolve(data)
        })
    })
}
function read2(){
    return new Promise((resolve,reject)=>{
        fs.readFile('./灵气复苏.txt',(err,data)=>{
            if(err) reject(err)
            resolve(data)
        })
    })
}


async function main(){
    let r=await read()
    let r1=await read1()
    let r2=await read2()
    console.log(r.toString());
    console.log(r1.toString());
    console.log(r2.toString());
}
 main()
```

**async 和await 结合发送ajax 请求**

```js
// 发送ajax 请求
function sendAJAX(url){
    return new Promise((resolve,reject)=>{
         //1.创建对象
    const x=new XMLHttpRequest()

    //2.初始化
    x.open("GET",url)

    //3.发送
    x.send()

    //4.事件绑定
    x.onreadystatechange=function(){
        if(x.readyState===4){
            if(x.status>=200&&x.status<300){
                resolve(x.response)
            }else{
                reject(x.status)
            }
        }
    }
    })
   
}

//测试


async function main(){
    const result=await sendAJAX('https://api.apiopen.top/getJoke?page=2&count=2&type=video')
    console.log(result);
}
main()
```

