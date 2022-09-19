rest 参数与spread  扩展运算符早ES6 中已经引入,不过ES6 只是针对于数组,在ES9 中为对象提供了像数组一样的rest 参数和扩展运算符

**示例**

```js
function connect({host,port,...user}){
    console.log(host);
    console.log(port);
    console.log(user);
}
connect({
    host:'127.0.0.1',
    port:3306,
    username:'root',
    password:'root',
    type:'master'
})


const skillOne={
    q:'天音波',
}
const skillTwo={
    w:'金钟罩',
}
const skillThree={
    e:'天雷破',
}
const skillFour={
    r:'猛龙过江',
}

const mangseng={...skillOne,...skillTwo,...skillThree,...skillFour}
console.log(mangseng);
```

