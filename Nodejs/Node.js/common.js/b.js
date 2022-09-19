// 这也是一个模块
var str='123'

 
//  b 导入 c
var ll=require('./c')

var str=str+ll.k
exports.kk=str  //导出b 模块的str  外部才可以获取


