var fs=require('fs')
fs.readFile('./5-hzw.json','utf8',function(err,data){
    //将字符串转为数组
    var arr=JSON.parse(data)
    var newarr=[]
    for(let i=0;i<arr.length;i++){
        if(arr[i].id !=2){
            newarr.push(arr[i])
        }
    }
    console.log(newarr);
    
    fs.writeFile('./5-hzw.json',JSON.stringify(newarr),function(err){
        if(!err){
            console.log('删除成功');
        }else{
            console.log(err);
        }
    })
})