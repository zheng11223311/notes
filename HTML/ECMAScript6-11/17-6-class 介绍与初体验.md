**1.class 类**

Es6 提供了更接近传统语言的写法，引入class（类）这个概念，作为对象的模板，通过class 关键字，可以定义类，基本上，ES6 的class  可以看作只是一个语法糖，他的绝大部分功能，ES5 都可以做到，新的class 写法只是让对象原型的写法更加清晰，更像面向对象编程的语法而已

**知识点：**

1.class 声明类

2.constructor 定义构造函数初始化

3.extends 继承父类

4.super 调用父类构造方法

5.static  定义静态方法和属性

6.父类方法可以重写

**示例**

```js
//函数形式
// 手机
function Phone(brand,price){
    this.brand=brand
    this.price=price
}
//添加方法
Phone.prototype.call=function(){
    console.log('我可以打电话');
}

// 实例化对象
let huawei=new Phone('华为',5999)
console.log(huawei);	//Phone {brand: '华为', price: 5999}
huawei.call()	//我可以打电话
```

```js
// class
class Phone{
    //构造方法 名字不能修改
    //new 时自动执行
    constructor(brand,price){
        this.brand=brand
        this.price=price
    }
    //方法必须使用改语法，不能使用ES5 的对象完整形式call：function(){}
    // constructor 外面方法的都是放在原型链上
    call(){
        console.log('我可以打电话');
    }
}

let onePlus=new Phone('1+',1999)
console.log(onePlus);	//Phone {brand: '1+', price: 1999}
```

**class 静态成员**

```js
//函数形式
function Phone(){

}
// 属于函数对象的方法，不属于实例对象的方法
Phone.name='手机'
Phone.change=function(){
    console.log('我可以改变世界');
}

let nokia=new Phone()
//实例对象上的属性和constructor和Phone.prototype  上是相通的

console.log(nokia);		//Phone{}
console.log(nokia.name);	//undefined
Phone.prototype.size='5.5inch'
console.log(nokia.size);	//5.5inch
```

```js
//class
class Phone{
    //静态属性
    // static 表示属于类，而不属于实例对象
    static name='手机'
    static change(){
        console.log('我可以改变世界');
    }
}
let nokia =new Phone()
console.log(nokia.name);	//undefined
console.log(Phone.name);	//手机
console.log(nokia);		//Phone {}
console.log(Phone);		
//class Phone{
    //静态属性
    // static 表示属于类，而不属于实例对象
//    static name='手机'
//    static change(){
//        console.log('我可以改变世界');
//    }
//}
```

**构造函数继承**

```js
// 手机
function Phone(brand,price){
    this.brand=brand
    this.price=price
}
//添加方法
Phone.prototype.call=function(){
    console.log('我可以打电话');
}

function SmartPhone(brand,price,color,size){
    Phone.call(this,brand,price)
    this.color=color
    this.size=size
}

// 设置子级构造函数的原型
// SmartPhone 实例化对象的私有链指向 Phone 的函数
SmartPhone.prototype=new Phone;
//将构造器指向改变回来为SmartPhone
SmartPhone.prototype.constructor=SmartPhone

// 声明子类的方法
SmartPhone.prototype.phone=function(){
    console.log('我可以拍照');
}
SmartPhone.prototype.playGame=function(){
    console.log('我可以打游戏');
}

const chuizi=new SmartPhone('锤子',24999,'黑色','5.5inch')
console.log(chuizi);	//SmartPhone {brand: '锤子', price: 24999, color: '黑色', size: '5.5inch'}
```

**class 的类继承**

```js
class Phone{
    //构造方法 名字不能修改
    constructor(brand,price){
        this.brand=brand
        this.price=price
    }
    // 父类的成员属性
    call(){
        console.log('我可以打电话');
    }
}

class SmartPhone extends Phone{
    //构造方法 
    constructor(brand,price,color,size){
        super(brand,brand)
        this.color=color
        this.size=size
    }
    phone(){
    console.log('我可以拍照');
    }
    playGame(){
        console.log('我可以打游戏');
    }
}

const chuizi=new SmartPhone('锤子',24999,'黑色','5.5inch')
console.log(chuizi);//SmartPhone {brand: '锤子', price: '锤子', color: '黑色', size: '5.5inch'}

chuizi.call()	//我可以打电话
chuizi.phone()	//我可以拍照
chuizi.playGame()	//我可以打游戏
```

**子类对父类的重写**

```js
class Phone{
    //构造方法 名字不能修改
    constructor(brand,price){
        this.brand=brand
        this.price=price
    }
    // 父类的成员属性
    call(){
        console.log('我可以打电话');
    }
}

class SmartPhone extends Phone{
    //构造方法 
    constructor(brand,price,color,size){
        super(brand,brand)
        //调用父类的call
        super.call()
        this.color=color
        this.size=size
    }
    call(){
        console.log('子类-----我可以打电话');
    }
}

const chuizi=new SmartPhone('锤子',24999,'黑色','5.5inch')
console.log(chuizi);	//SmartPhone {brand: '锤子', price: '锤子', color: '黑色', size: '5.5inch'}

// 子类重写父类的方法，调用时只会调用子类的方法
chuizi.call()	//子类-----我可以打电话
```

**getter 和setter**

```js
class Phone{
    get price(){
        console.log('价格属性被读取了');
        return '返回值就是打印出来的属性值'
    }
    set price(newValue){
        console.log('价格被修改了');
    }
}

//实例化对象
let s=new Phone()

console.log(s.price);
s.price='free'
```

