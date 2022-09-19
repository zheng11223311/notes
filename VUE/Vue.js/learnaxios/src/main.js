import Vue from 'vue'
import App from './App'
import router from './router'


// 导入axios
import axios from 'axios'

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  render: h => h(App)
})

// https://httpbin.org 请求测试的地址
// https://123.207.32.32:8000/home/multidata?callback=json123  老师的网站
// 后接老师设置的?callback=json123 解决跨域问题,而且暂不支持post 请求
// http://jsonplaceholder.typicode.com/ 开放的接口
// 网站后缀.cn 需要很多的备份

// axios 本身返回的是promise,会自动调用resolve()
// axios({
//   url:'http://jsonplaceholder.typicode.com/',
//   method:'GET'
// }).then(res=>{
//   console.log(res);
// })
// axios.post()
// axios.get()

// axios({
//   url:'http://jsonplaceholder.typicode.com/',
//   // 专门针对get 请求的参数拼接
//   params:{
//     // params 参数 type page,拼接到url 后面
//     type:'pop',
//     page:1
//   }
// }).then(res=>{
//   console.log(res);
// })

//2.  axios 发送并发请求
// axios.all([axios(),axios()]).then(results=>{})
// axios.all([axios({
//   url:'http://jsonplaceholder.typicode.com/'
// }),axios({
//   url:'https://httpbin.org'
// })]).then(results=>{
//   console.log(results);
// })

// 对ajax 进行延展分割
// axios.all([axios({
//   url:'http://jsonplaceholder.typicode.com/'
// }),axios({
//   url:'https://httpbin.org'
// })]).then(axios.spread((res1,res2)=>{
//     console.log(res1);  //第一个请求的结果
//     console.log(res2);  //第二个请求的结果
// }))


// 3.使用全局axios 和对应的配置在进行网络请求
// 相同的网址部分提取出来,有了baseURL 后url 可以去掉,如果
// url 中后面还有其他参数,就在url 后面写要接的参数,前面的可以省略
// axios.defaults.baseURL='http://jsonplaceholder.typicode.com/'
// axios.defaults.timeout=5000  //5000毫秒
// axios.all([axios({

// }),axios({
//   url:'https://httpbin.org'
// })]).then(axios.spread((res1,res2)=>{
//     console.log(res1);  //第一个请求的结果
//     console.log(res2);  //第二个请求的结果
// }))


// 4.创建对应的axios 的实例
// instance 接口
// const instance1=axios.create({
//     baseURL:'http://jsonplaceholder.typicode.com',
//     timeout:5000
// })

// instance1({
//   url:'/home',
// }).then(res=>{
//   console.log(res);
// })
// instance1({
//   //url 瞎写的
//   url:'/about',//访问http://jsonplaceholder.typicode.com/about
// }).then(res=>{
//   console.log(res);
// })

// 分开访问不同的服务器
// const instance2=axios.create({
//     baseURL:'https://httpbin.org',
//     timeout:5000
// })
// instance2({
//   // url:'/home',
// }).then(res=>{
//   console.log(res);
// })

//5.封装request 模块
import { request } from './network/request'
// request({
//   // url:'/home'
// },res=>{
//   console.log(res);
// },err=>{
//   console.log(err);
// })

// 简洁写法
// request({
//   baseConfig:{

//   },
//   success:function(res){
//     console.log(res);
//   },
//   failure:function(err){
//     console.log(err);
//   }
// })

// 最终方案
request({
  // url:'/home',
}).then(res=>{
  console.log(res);
}).catch(err=>{
  console.log(err);
})