// 使用commonjs 的模块化规范
const {add,mul} = require('./mathUtils.js')
console.log(add(10,20));
console.log(mul(10,20));


// 使用ES6 的模块化规范
import {name,age,height} from './js/info.js'
console.log(name);
console.log(age);
console.log(height);