**fetch(提取)**

xhr<==jQuery,axios	都是对xhr 的封装,服务器上axios 使用的是http 请求,而 jQuery 不能使用在服务器上

fecth 与xhr 并列,而且是原生js 内置的函数,也是Promise 风格

**1.文档**

```
https://github.github.io/fetch
```

```
https://segmentfault.coom/a/1190000003810652
```

**2.特点**

1.fetch: 原生函数,不在使用XNLHttpRequest 对象提交ajax 请求

2.老版本浏览器可能不支持

**3.相关API**

1.GET 请求

```js
fetch(url,options).then((res)=>{
	return res.json()
},err=>{
	console.log(err)
})
```

```
fetch(url,{
	method:'POST',
	body:JSON.stringify(data),
	headers:{
	"Content-Type":"application/json"
	},
	credentials:'same-origin'
}).then((res)=>{
	 res.status		// 状态 100-599
	 res.statusText	//String
	 res.headers	//Headers
	 res.url		//String
	 
	 return res.text()
},err=>{
	console.log(err.message)
})
```

**示例**

```js
 // 使用fecth 发送网络请求
        fetch(`https://api.github.com/search/users?q=${value}`).then(
            res => {
                //联系服务器成功了 但是没有数据,而且这里只是联系服务器,成不成功拿到数据
                //是一回事,这里只返回是否联系数据,联系数据失败也走res,方法

                console.log('联系服务器成功了');
                // console.log('联系服务器成功了', res.json());
                // 数据储存在原型链上的json(),json() 也是Promise 的格式
                return res.json()
            },
            error => {
                //断网情况下,联系服务器失败
                //如果err 没有一个return值,则默认为undefined,这一个then 只有res的 返回值
                //  则会返回给下一个res 的方法,而不是error 的方法
                console.log('联系服务器失败了', error);
                //因为断网联系不上服务器,就没有必要再传递下去,返回一个新的Promise 对象
                return new Promise(() => { })
            }

        ).then(res => {
            console.log('获取数据成功了', res);
        }, err => {
            console.log('获取数据失败了', err)
        })
        //也可以直接使用catch() 处理所有的err,不用每一步都写
        // 也可以使用async 异步的await 简化,try{}.catch(err){}  处理错误
```

