// 这是一个模块
var str='111'

// a 导入b
var hh=require('./b')
console.log(str);       //作用域在a
console.log(hh);        //获取b 模块导出死亡数据 作用域在b
// 结果  { kk: '123' }
