var moment=require('moment')
var fs=require('fs')
fs.stat('./1-node 环境.js',function(err,stats){
    var dd=new Date()
    var y=dd.getFullYear(stats.mtime)
    console.log(y);

    //moment  第三方模块 格式化时间
    // npmjs.com  存放模块
    // 安装 moment
    // cmd 当前路径输入 npm install moment (有网下自动下载)
    // cmd 当前路径输入 npm install moment@2.22.0 (有网下自动下载2.22.0 版本)
    // 当前路径下产生一个文件夹 既moment 包

    //格式化时间
    // var m=moment().format('YYYY-MM-DD *** hh:mm:ss')     //当前时间
    var m=moment(stats.mtime).format('YYYY-MM-DD *** hh:mm:ss')
    console.log(m);
})


