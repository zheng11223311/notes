// 获取所有文件名
// var fs=require('fs')
// fs.readdir('./','utf8',function(err,files){
//     console.log(err);
//     console.log(files);
// })

// 获取文件属性
var fs=require('fs')
fs.stat('./1-node 环境.js',function(err,stats){
        console.log(stats.size);    //文件大小
        console.log(stats.atime);    //文件时间
        console.log(stats.mtime);    //文件
        console.log(stats.ctime);    //文件
})