var str=[
    {id:1,name:'路飞',sex:'男',img:''},
    {id:2,name:'乌索普',sex:'男',img:''},
    {id:3,name:'娜美',sex:'女',img:''},
]
// 将数组转为json 字符串
var jsonstr=JSON.stringify(str)
// 写入json 文件
var fs=require('fs')
fs.writeFile('./5-hzw.json',jsonstr,function(err){
    if(!err){
        console.log('写入成功');
    }else{
        console.log(err);
    }
})