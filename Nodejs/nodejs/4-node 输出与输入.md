**读取目录**

```js
//index.js 文件
// 读取目录
// 异步读取目录
let fs=require('fs')
fs.readdir('../js',function(err,files){
    if(err){
        console.log(err);
    }else{
        console.log(files);
    }
    
})
//  结果
// [
//   'hello.txt',
//   'hello1.txt',
//   'hello2.txt',
//   'index.js',
//   'index1.js',
// ]
```

**删除目录**

```js
//index.js 文件
// 删除目录
let fs=require('fs')
// 异步删除
fs.rmdir('./111',function(){
    console.log('删除成功');
})
```

**创建目录**

```js
//index.js 文件
fs.mkdir('./img',function(err){
    console.log('创建成功');
})
```

**输入输出**

```js
//index.js 文件
// 导入readline 包
let readline=require('readline')
//实例化接口(创建接口)
var readline1=readline.createInterface({
    input:process.stdin,
    output:process.stdout
})

//question 方法
readline1.question('你的名字是?',function(answer){
    console.log('我的名字是:',answer);
    //不加close 程序不会关闭
    readline1.close()
})

//close 事件的监听
readline1.on('close',function(){
    //结束程序
    process.exit(0)
})
//你的名字是?  xxxxxx
// 我的名字是:   xxxxxx
```

> 封装question,可以答复时写入文件

