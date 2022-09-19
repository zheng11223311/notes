"use strict";
// var flag: boolean = true
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
// // flag = 'hello' 报错，类型错误
// flag = false
// var a: number = 123
// console.log(a);
// // a='str' 错误写法
// a = 12.3  //不区分整数与小数
// console.log(a);
// var str: string = 'err'
// 第一种定义数组的方式
// let arr: number[] = [1, 2, 3, 4, 5]    //只能放数字
// console.log(arr);
// let arr1: string[] = ['php', 'js', "golang"]    //只能放字符串，''和 "" 都可以
// console.log(arr1);
// //第二种定义数组的方式
// let arr2: Array<number> = [1, 2, 3, 4, 5]   //只能放数字
// let arr3: Array<string> = ['php', 'js', "golang"]    //只能放字符串，''和 "" 都可以
// let arr: [string, number, boolean] = ['str', 1, true]       //必须与定义的类型顺序一致
// enum flag {
//     success = 1,
//     error = 2,
// }
// var f: flag = flag.success
// console.log(f);
// console.log(flag.error);
// enum Color { red, blue, orange }
// var c: Color = Color.blue
// console.log(c); //没有值的时候，默认是下标值    //1
// enum Color1 { red, blue = 5, orange }
// var c1: Color1 = Color1.red
// var c2: Color1 = Color1.blue
// var c3: Color1 = Color1.orange
// console.log(c1); //0
// console.log(c2); //5
// console.log(c3); //默认是上个值+1，6
// var str: any = 123
// str = 'str'  //any 表示可以为任意类型
// 任意类型的用处
// 获取元素进行style 的设置，类型要变换
//定义未赋值
// var num: undefined
// console.log(num);
// var num1: number | undefined
// num1=123
// console.log(num1);
// function run(): void {
//     console.log('run');
// }
// run()
// function run1(): number {
//     console.log('run');
//     return 123
// }
// run1()
// var a: never
// // 用于抛出错误
// a = (() => {
//     throw new Error('错误')
// })()
// var  fun2=function():number{
//     return 2
// }
// function getInfo(name: string, age: number): string {
//     return `${name}--${age}`
// }
// alert(getInfo('zhangsan', 20))
// var getInfo1 = function (name: string, age: number): string {
//     return `${name}--${age}`
// }
// alert(getInfo1('zhangsan', 20))
// // 没有返回值的方法
// function run():void{
//     console.log('run');
// }
// run()
// // ?表示可选参数
// function getInfo(name: string, age?: number): string {
//     return `${name}--${age}`
// }
// alert(getInfo('zhangsan'))
// 三点运算符，接收新参数传过来的值
// function sum(a: number, ...result: number[]): number {
//     var sum = a
//     for (var i = 0; i < result.length; i++) {
//         // +=  不能分开，写成+ =，会报错
//         sum += result[i]
//     }
//     return sum
// }
// alert(sum(1, 2, 3, 4))
// 类型不一样
// function getInfo(name: string): string
// function getInfo(age: number): number
// function getInfo(str: any): any {
//     return str
// }
// alert(getInfo(20))
// alert(getInfo('nihao'))
// alert(getInfo(true))     //错误，没有匹配到相同的类型
//在上面每个函数做匹配，在最后一个函数里面可以执行，最后一个函数为any，可以执行
//前面匹配到的函数
// 参数不一样
// function getInfo(name1: string): string
// function getInfo(name1: string, age: number): string
// function getInfo(name1: string, age?: any): any {
//     return name1
// }
// // alert(getInfo('i'))
// alert(getInfo('i', 9))
// setTimeout(() => {
//     alert('12345')
// }, 1000)
// class Person {
//     name: string     //属性，前面省略了public 关键字
//     constructor(name: string) {  //构造函数，实例化对象的时候会触发的方法
//         this.name = name
//     }
//     run(): void {
//         alert(this.name)
//     }
// }
// var p = new Person('张三')
// p.run()
// class Person {
//     name: string     //属性，前面省略了public 关键字
//     constructor(name: string) {  //构造函数，实例化对象的时候会触发的方法
//         this.name = name
//     }
//     getName(): string {
//         return this.name
//     }
//     setName(name: string): void {
//         this.name = name
//     }
// }
// var p = new Person('张三')
// alert(p.getName())  //张三
// p.setName('李四')
// alert(p.getName())  //李四
// class Person {
//     name: string
//     constructor(name: string) {
//         this.name = name
//     }
//     run(): string {
//         return `${this.name}在运动`
//     }
// }
// // var p = new Person('张三')
// // alert(p.run())       //张三在运动
// class Web extends Person {
//     constructor(name: string) {
//         super(name)     //初始化父类的构造函数
//     }
//     run(): string {
//         return `${this.name}在运动`
//     }
// }
// var w = new Web('王五')
// alert(w.run())  //王五在运动
// var Person = /** @class */ (function () {
//     function Person(name) {
//         this.name = name;
//     }
//     Person.prototype.run = function () {
//         return this.name + "\u5728\u8FD0\u52A8";
//     };
//     return Person;
// }());
// var Web = /** @class */ (function (_super) {
//     __extends(Web, _super);
//     function Web(name) {
//         return _super.call(this, name) || this; //初始化父类的构造函数
//     }
//     Web.prototype.work = function () {
//         // return `${this.name}在运动`  //在子类中不能访问到父类的私有变量
//         return "\u5728\u8FD0\u52A8";
//     };
//     return Web;
// }(Person));
// var w = new Web('王五'); //在子类里面使用
// alert(w.run())  //不能调用父类的私有方法
// alert(w.name)       //报错，不能在类外面使用

