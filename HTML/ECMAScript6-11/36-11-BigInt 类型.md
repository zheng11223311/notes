```js
// 大整形,在整数后面加n
let n=521n
console.log(n,typeof(n));   //521n "bigint"

// 函数,将整数转化为大整形,不能使用浮点数进行转换
let a=123
console.log(BigInt(a)); //123n

// 用于大数值运算
let max=Number.MAX_SAFE_INTEGER
console.log(max);   //9007199254740991
console.log(max+1);   //9007199254740992
//不能在进行更大的数据运算了
console.log(max+2);   //9007199254740992

// BigInt 不能和普通整数进行运算
console.log(BigInt(max)+BigInt(1))  //9007199254740992n
console.log(BigInt(max)+BigInt(2))  //9007199254740993n
console.log(BigInt(max)+BigInt(3))  //9007199254740994n
```

