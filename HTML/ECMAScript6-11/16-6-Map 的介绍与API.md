**1.Map**

ES6 提供了Map 数据结构。它类似于对象，也是键值对的集合，但是’键‘的范围不限于字符串，各种类型的值（包括对象）都可以当作键，Map 也实现了iterator 接口，所以可以使用【扩展运算符】和【for...of...】进行遍历

**Map 的属性和方法：**

1.size：返回Map 的元素个数

2.set：增加一个新元素，返回当前Map 

3.get：返回键名对象的键值

4.has：检测Map 中是否包含某个元素，返回boolean 值

5.clear：清空集合，返回undefined

6.delete：删除元素，返回boolean 值

**示例**

```js
//创建一个空Map 
let m=new Map()

//添加元素
m.set('name','尚硅谷')
m.set('change',function(){
    console.log('你们是哦泡果奶');
})
let key={
    school:'ATGUIGU'
}
m.set(key,['北京','上海','深圳'])
console.log(m);
//获取元素个数
console.log(m.size);
//删除
m.delete('name')
console.log(m);

//获取
console.log(m.get('change'));
// 检测

console.log(m.has('change'));
console.log(m.has('name'));

//清空
// m.clear()
// console.log(m);

// 遍历
for(let v of m){
    console.log(v);
}
```

