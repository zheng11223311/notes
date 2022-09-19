// 1.引入fs 文件系统 (核心模块)
var fs=require('fs')
// fs.readFile(path [,options],callback)
fs.readFile('./2.a.txt','utf8',function(err,data){
    if(err==null){
        console.log(data);  //<Buffer 61 62 63>   写入utf8 后结果 abc
    }else(
        console.log(err)
    )
})