**Symbol 基本使用**

ES6 引入了一种新的原始数据类型Symbol,表示独一无二的值,他是JavaScript 语言的第七种数据类型,是一种类似于字符串的数据类型

**Symbol 特点**

1.Symbol 的值时唯一的,用来解决命名冲突的问题

2.Symbol 值不能与其他数据类型进行运算

3.Symbol  定义的对象属性不能使用for...in 循环遍历,但是可以使用Reflect.ownKeys 来获取对象的所有键名

```js
//创建Smbol
let s1=Symbol()
console.log(s1,typeof s1)

//添加标识的Symbol
let s2=Symbol('Tom')
let s3=Symbol('Tom')
console.log(s2===s3); //false

// Symbol.for() 创建
let s4=Symbol.for('Tom')
let s5=Symbol.for('Tom')
console.log(s4===s5);       //true
```

**七大数据类型**

```
USONB
U  undefined
S string symbol
O object
N null number
B boolean
```

**对象添加Symbol 类型的属性**

```js
let a={
down:function(){
    console.log('原先a 对象的down 函数')
	}
}

//声明一个对象
let methods={
    down:Symbol()
}

a[methods.down]=function(){
    console.log('不会影响到原来的down 函数')
}

//第二种声明方式
let a={
[Symbol('down')]:function(){
    console.log('原先a 对象的down 函数')
    },
    //多个一样不会报错
[Symbol('down')]:function(){
    console.log('原先a 对象的down 函数')
    }
}
console.log(a);

```

**Symbol 内置值**

除了自定义自己使用的Symbol 值以外,ES6 还提供了11 个内置的Symbol 值,指向语言内部使用的方法

| Symbol.hasInstance        | 当其他对象使用instanceof 运算符,判断是否为该对象的实例时,会调用这个方法 |
| ------------------------- | ------------------------------------------------------------ |
| Symbol.isConcatSpreadable | 对象的Symbol.isConcatSpreadable 属性等于的是一个布尔值,表示该对象用于Array.protopyte.concat() 时,是否可以展开 |
| Symbol.unscopeables       | 该对象指定了使用width 关键字时,那些属性会被width 环境排除    |
| Symbol.match              | 当执行str.match(myObject)时,如果该属性存在,会调用它,返回该方法的返回值 |
| Symbol.replace            | 当该对象被str.replace(myObject) 方法调用时,会返回该方法的返回值 |
| Symbol.search             | 当该对象被str.search(myObject) 方法调用时,会返回改方法的返回值 |
| Symbol.split              | 当该对象被str.split(myObject) 方法调用时,会返回改方法的返回值 |
| Symbol.iterator           | 对象进行for...of 循环时,会调用Symbol.iterator 方法,返回改该对象的默认遍历器 |
| Symbol.toPrimitive        | 该对象被转为原始类型的值时,会调用这个方法,返回该对象对应的原始类型值 |
| Symbol.toStringTag        | 在该对象上面调用toString 方法时,返回改方法的返回值           |
| Symbol.species            | 创建衍生对象,会使用该属性                                    |

**Symbol.hasInstance 示例**
$$

$$

```js
class Person{
    static [Symbol.hasInstance](params){
        console.log(params);        //o 的值
        console.log('我被用来检测类型了');
        // return true
        // return false
    }
}

let o={name:1}
console.log(o instanceof Person);   // 结果受到 return false/true 的改变而改变
```

**Symbol.isConcatSpreadable示例**

```js
const arr=[1,2,3]
const arr1=[4,5,6]
console.log(arr.concat(arr1));  // [1, 2, 3, 4, 5, 6]
arr1[Symbol.isConcatSpreadable]=false   //代表不可展开
console.log(arr.concat(arr1));  // [1, 2, 3, Array(3)]
```

