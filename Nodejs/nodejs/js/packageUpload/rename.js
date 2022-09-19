// 重命名
let fs=require('fs')
function rename(oldPath,newPath){
    return new Promise((resolve,reject)=>{
        fs.rename(oldPath,newPath,(error)=>{
            if(error){
                reject(error)
            }else{
                resolve('重命名成功')
            }
        })
    })
}