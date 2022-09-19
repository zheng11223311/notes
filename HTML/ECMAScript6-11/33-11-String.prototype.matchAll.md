自动批量匹配，直到匹配结束，不用自己调用next()

```js
 let str=`
              <ul>
                <li>
                    <a>肖申克的救赎</a>
                    <p>上映时间：1994-09-10</p>
                </li>
                <li>
                    <a>阿甘正传</a>
                    <p>上映时间：1994-07-6</p>
                </li>
            </ul>
        `
 reg=/<li>.*?<a>(.*?)<\/a>.*?<p>(.*?)<\/p>/sg
    
// 调用方法
//自动批量匹配，直到匹配结束，不用自己调用next(),匹配到所有结果
const result=str.matchAll(reg)
console.log(result);
// for(let v of result){
//     console.log(v);
// }

const arr=[...result]
console.log(arr);   //[Array(3), Array(3)]
```

