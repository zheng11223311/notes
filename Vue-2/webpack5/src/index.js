require('./style.css');
require('./lessstyle.less');
require('./sassstyle.scss'); // sass 文件后缀.scss
const {demo}=require('./print'); 


console.log('这是入口文件');
console.log('这是入口文件---');
demo()

if(module.hot){
    module.hot.accept('./print.js',function(){
        console.log('热更新模块print.js');
    })
}