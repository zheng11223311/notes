let name='小明'
let age=18
let flag=true


// 导出文件

// 导出方式一
export{
    name,
    flag
}



// 导出方式二
export var num1=1000;
export var num2=11;

//导出函数/类
export function num(a,b){
    return a+b
}

//ES6 定义的类 和num 函数一样
export class Person{
    run(){
        console.log('在奔跑');
    }
}

// export default   只能导出一个,只能使用一次
// const address='北京市'
// export default address


export default function (argument){
    console.log('导出匿名函数');
}


