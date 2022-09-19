var str='帅';

var fs=require('fs')
// fs.writeFile(file,data [,options],callback)
fs.writeFile('./3.b.txt','文件内容'+str,function(err){
    if(err==null){
        console.log('写入成功')     //自动创建文件 有则覆盖原文件
    }else{
        console.log(err);
    }
})