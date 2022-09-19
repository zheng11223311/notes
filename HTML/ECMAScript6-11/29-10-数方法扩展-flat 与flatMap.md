**flat**

将多维数组转化为低维数组(默认降低一维)

 **flatMap**=flat+map

遍历并降维

```js
const arr=[1,2,3,4,5,[6,[7,8,9]]]
console.log(arr.flat());    //(7) [1, 2, 3, 4, 5, 6, Array(3)]

console.log(arr.flat(2));       //深度，降低3次（降低二维），数值过大，只降到一维

// flatMap
const arr1=[1,2,3,4]
// 将每个数字扩大10倍
const result=arr1.map(item=>item*10)
console.log(result);

// flatMap=flat+map
const arr2=[1,2,3,4]
// 将每个数字扩大10倍,并降维
const result1=arr2.flatMap(item=>[item*10])
console.log(result1);
```

