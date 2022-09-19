// 1.使用commonjs 的模块化规范
const {add,mul} = require('./js/mathUtils.js')
console.log(add(10,20));
console.log(mul(10,20));


// 2.使用ES6 的模块化规范
import {name,age,height} from './js/info.js'
console.log(name);
console.log(age);
console.log(height);

//3.依赖css 文件 没有变量,因为不需要使用
require('./css/normal.css')

//4.依赖less 文件
require('./css/special.less')
document.writeln('<h2>打包less</h2>')

//5.使用vue 进行开发
import Vue from 'vue'
// 子组件被导入进来
// import App from './vue/app.js'
import App from './vue/App.vue'
new Vue({
    el:'#app',
    //template 会替换#app 标签,#app 显示的是template 的信息
    //打包完后f12 查看,已经替换
    template:`<App/>`,
  components:{
      App
  }
    
})
document.writeln('<span>呵呵哈哈哈</span>')