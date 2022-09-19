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