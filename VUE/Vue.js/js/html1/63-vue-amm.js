// 导入文件

// 导入方式一   导入{} 中定义的变量
import {flag,name} from './63-vue-aaa.js'

if(flag){
    console.log('我是天才');
}
console.log(name);

// 导入方式二   直接导入export 定义的变量
import {num1,num2} from './63-vue-aaa.js'
console.log(num1,num2);


// 导入方式三   导入export 的function
import {num,Person} from './63-vue-aaa.js'
console.log(num(30,60));

const p=new Person()
p.run()


// 导入export default 中的内容
import add from './63-vue-aaa.js' 
console.log(add);

// 统一全部导入 优点,不会与自己定义的变量起冲突
import * as aaa1 from './63-vue-aaa.js'

console.log(aaa1.num(10,111));