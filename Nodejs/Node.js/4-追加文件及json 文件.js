// 追加写入   先读出来在拼接写入
var fs=require('fs')
fs.readFile('./3.b.txt','utf8',function(err,data){
    if(!err){
        //凭借并写入内容
        var str=data+'哥'
        fs.writeFile('./3.b.txt',str,function(err){
            if(!err){
                console.log('追加成功');
            }else{
                console.log(err);
            }
        })
    }else{
        console.log(err);
    }
})