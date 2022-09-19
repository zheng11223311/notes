var obj={id:4,name:'罗宾',sex:'女',img:''}
var fs=require('fs')
fs.readFile('./5-hzw.json','utf8',function(err,data){
    if(!err){
        var obj1=JSON.parse(data)
        // 也可以用push 添加   obj1.push(obj) 两者都会改变原数组
        obj1[3]=obj
        console.log(obj1);
        // 转化为json 
        var jsonobj=JSON.stringify(obj1)
        // 写入
        fs.writeFile('./5-hzw.json',jsonobj,function(err){
            if(!err){
                console.log('写入成功');
            }else{
                console.log(err)
            }
        })
    }else{
        console.log(err);
    }
})