**ES6 引入rest 参数,用于获取函数的实参,用来代替arguments**

```js
function add(...args){
        console.log(args)  //数组
    //原来的arguments 获得的是一个对象
    }
    add('Tom',18)
```

**rest 参数必须放到参数的最后**

```js
function add(a,b,...args){
        console.log(args)  //数组
    //原来的arguments 获得的是一个对象
    }
    add('Tom',18)
```

