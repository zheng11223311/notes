function jiami(num){
    let crypto=require('crypto')
    let sf=crypto.createHash('md5')    //使用的 md5 算法
    sf.update(''+num)     //对password 进行加密,必须是字符类型
    let content=sf.digest('hex')  //加密的二进制数据以字符串的形式显示
    console.log(content);
    return content
}

module.exports=jiami
