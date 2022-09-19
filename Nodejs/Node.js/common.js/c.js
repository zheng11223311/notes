var str='567'
exports.k=str


// c 导入a  不能循环导入
console.log(module);    //module 对象
//  export 指向 module.exports 如果直接给exports 赋值str ,
//  export 指向str 无法导出数据