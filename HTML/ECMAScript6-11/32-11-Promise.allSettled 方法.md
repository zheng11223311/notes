```js
const p1=new Promise((resolve,reject)=>{
    setTimeout(()=>{
        resolve('商品数据 - 1')
    },1000)
})
const p2=new Promise((resolve,reject)=>{
    setTimeout(()=>{
        resolve('商品数据 - 2')
    },1000)
})

// 调用allSettled 方法
const result=Promise.allSettled([p1,p2])
console.log(result);
//成功的数据和失败的err 都会存放起来

const result1=Promise.all([p1,p2])
console.log(result1);
//all 只要有一个失败，就会报错，只有全部成功才会返回成功的Promise 对象
```

