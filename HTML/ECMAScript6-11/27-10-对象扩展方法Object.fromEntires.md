```js
       //将二维数组转换为对象
const result=Object.fromEntries(
    [
        ['name','shangguigu'],
        ['xueke','前端']
    ]
)
console.log(result);        //{name: "shangguigu", xueke: "前端"}
//Map
const m=new Map()
m.set('name','ATGUIGU')

const result1=Object.fromEntries(m) 


console.log(result1);       //{name: "ATGUIGU"}


//将对象转换为二维数组
// Object.entries ES8
const arr= Object.entries({
    name:'尚硅谷'
})

console.log(arr);   //[Array(2)]
```

