//1.引入fs 模块
// const fs = require('fs')

// //2.调用方法读取文件
// fs.readFile('./灵气复苏：亿万倍天赋---第一章：亿万倍天赋.txtl', (err, data) => {
//     //如果失败，则抛出错误
//     if (err) throw err
//     //如果没有出错，则输出内容
//     console.log(data);  //二进制文件
//     console.log(data.toString());
// })

//3.使用Promise 封装
// const p = new Promise(function (resolve, reject) {
//     fs.readFile('./灵气复苏.txt', (err, data) => {
//         //如果失败，则抛出错误
//         if (err) reject(err)
//         //如果没有出错，则输出内容
//         resolve(data);
//     })
            
//         })

// p.then(function (value) {
//     console.log(value.toString()); //数据库中的用户数据
// }, function (error) {
//     console.error(error); //数据读取失败
// })



//1.引入fs 模块
// const fs = require('fs')

// const p = new Promise(function (resolve, reject) {
//     fs.readFile('./灵气复苏.txt', (err, data) => {
//         //如果失败，则抛出错误
//         if (err) reject(err)
//         //如果没有出错，则输出内容
//         resolve(data.toString());
//     })
            
//         })

// p.then(function (value) {
//     return new Promise(function (resolve, reject) {
//     fs.readFile('./tt.text', (err, data) => {
//         if (err) reject(err)
//         resolve([data.toString(),value])
//          })
//     })
// })
// .then(function (value) {
//     return new Promise(function (resolve, reject) {
//     fs.readFile('./感谢流浪者588打赏.txt', (err, data) => {
//         if (err) reject(err)
//         resolve([data.toString(),value])
//     })
// })
// })
// .then(function (value) {
//     console.log(value); 
// })

// let school='shangguigu'

//  function teach(){
//     console.log('我们可以改变世界');
// }
// export default{
//     school,
//     teach
// }


//引入fs 模块
// const fs=require('fs')


// function read(){
//     return new Promise((resolve,reject)=>{
//         fs.readFile('./tt.text',(err,data)=>{
//             if(err) reject(err)
//             resolve(data)
//         })
//     })
// }
// function read1(){
//     return new Promise((resolve,reject)=>{
//         fs.readFile('./感谢流浪者588打赏.txt',(err,data)=>{
//             if(err) reject(err)
//             resolve(data)
//         })
//     })
// }
// function read2(){
//     return new Promise((resolve,reject)=>{
//         fs.readFile('./灵气复苏.txt',(err,data)=>{
//             if(err) reject(err)
//             resolve(data)
//         })
//     })
// }


// async function main(){
//     let r=await read()
//     let r1=await read1()
//     let r2=await read2()
//     console.log(r.toString());
//     console.log(r1.toString());
//     console.log(r2.toString());
// }
//  main()


// // 获取元素
// const btn=document.getElementById('btn')
// btn.onclick=function(){
//     // import 是一个Promise 对象
//     import('./4-hello.js').then(module=>{
//         console.log(module);
//         module.hello()
//     })
// }