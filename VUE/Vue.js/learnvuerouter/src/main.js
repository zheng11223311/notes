import Vue from 'vue'
import App from './App'

//导入Router ./router 是个路径的话,默认
//系统自己找到./router下的index 文件
import router from './router'

// vue 是否提示信息
Vue.config.productionTip = false

Vue.prototype.test=function(){
  console.log('vue 的原型链');
}
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  render: h => h(App)
})
console.log(router);

// obj 定义属性一种的方法
// var obj={
//   name:'why' 
// }
// console.log( typeof obj);
// Object.defineProperty(obj,'age',{value:18})
// console.log(obj.age);
// console.log(Object.defineProperty);