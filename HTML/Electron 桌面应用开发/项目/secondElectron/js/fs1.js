const fs=require('fs')

console.log(fs);

fs.writeFile('1.txt','写入的内容',(err)=>{
    if(err){
        console.log(err);
        return
    }
    console.log('写入完毕');
})