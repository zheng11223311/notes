var fs=require('fs')
fs.readFile('./5-hzw.json','utf8',function(err,data){
    if(!err){
        var arr=JSON.parse(data)
        for(let i=0;i<arr.length;i++){
            if(arr[i].id==3){
                arr[i].name='女帝'
                // console.log(arr);
                JSON.stringify(arr)
               
            }
        }
         fs.writeFile('./5-hzw.json',JSON.stringify(arr),function(err){
                     if(!err){
                             console.log('修改成功');
                     }else{
                                console.log(err);
                        }
                })
    }else{
        console.log(err);
    }
})