// console.log(1)
// function a(){
//     console.log(1);
// }

// let a=1
// let b=2

// //exports 就是默认导出的对象

// exports.a=a     //导出a,被其他模块导入时是一个对象形式
// moudle.exports.b=b  //导出b
// exports=moudle.exports     
// //使用exports,系统找的是moudle.exports,系统默认设置了exports=moudle.exports
// exports={
//     User:'小明'
// }       //exports 导出对象时,不影响其他的导出,比如a 和b,因为系统找的是moudle.exports
// moudle.exports={
//      User:'小明'
// }       //moudle.exports 导出对象是,其他导出无效
// //注意使用exports 时,只能当个设置属性exports.a=a
// //使用moudle.exports 可以单个设置属性,也可以整个赋值

// 文件读取
// node 默认的方式是异步
// var fs=require('fs')
// // console.log(fs);        //打印出fs 所有的方法
// //导入文件模块
// //node,读写文件也有同步和异步的接口

// //同步
// var content=fs.readFileSync('hello.txt',{flag:'r',encoding:'utf-8'})   //直接打开并读取   
// // 没有设置encoding,默认返回一个缓冲区,需要encoding 才能读取到
// console.log(content);
// console.log(content.toString());  //将content 转换为字符串类型
// //同步读取文件会阻塞(消耗时间)后面语句的执行

// //同步
// var fd=fs.openSync('hello.txt','r')     //同步打开文件
// console.log(fd);    // 返回3,在内存里打开,3只是一个标识


// 异步
// var fs=require('fs')
// var fd=fs.readFile('hello.txt',{flag:'r',encoding:'utf-8'},function(err,data){
//     //必须要有回调函数
//     if(err){
//         console.log(err);
//     }else{
//         console.log(data);
//     }
    
// })
// console.log(111);
 
// 封装函数
// var fs=require('fs')
// function fsRead(path){
//     return new Promise(function(reslove,reject){
//         fs.readFile(path,{flag:'r',encoding:'utf-8'},function(err,data){
//         if(err){
//             // 失败执行的内容
//             reject(err)
//         }else{
//             //成功时执行的内容
//             reslove(data)
//         }
//     })
// })
// }

// var w1=fsRead('hello.txt')
// w1.then(function(res){
//     console.log(res);
// })

// 封装异步读取多个文件
// async function ReadList(){
//     var file=await fsRead('hello.txt')
//     console.log(file);
//     var file1=await fsRead(file+'.txt')     //有空格就不行
//     console.log(file1);
//     var file2=await fsRead(file1+'.txt')
//     console.log(file2);
// }
// ReadList()



// 文件的写入
// let fs=require('fs')
// fs.writeFile('hello.txt','写入的内容',{flag:'w',encoding:'utf-8'},function(err){
// //fs.writeFile('hello.txt','写入的内容\n',{flag:'a',encoding:'utf-8'},function(err)			//追加写入
// //write=>w   read=>r  append=>a
//     if(err){
//         console.log(err);
//     }else{
//         console.log('写入成功');
//     }
// })

// 封装文件的写入
// let fs=require('fs')
// function writefs(path,content){
//     return new Promise(function(resolve,reject){
//         //没有文件时自动创建
//         fs.writeFile(path,content,{flag:'a',encoding:'utf-8'},function(err){
//         if(err){
//             reject(err);
//         }else{
//             resolve(err);
//         }
//             })
//     })
// }
// // 写入内容
// async function writeList(){
//     await writefs('lc.txt','1今天吃烧烤\n')      //没有文件时自动创建
//     await writefs('lc.txt','2今天吃红烧肉\n')
//     await writefs('lc.txt','3红烧肉不好吃\n')
//     await writefs('lc.txt','4今天又吃烧烤\n')
// }
// writeList()


// 删除文件
// let fs=require('fs')
// fs.unlink('lc.txt',function(){
//     //没有参数
//     console.log('删除成功');
// })


// // buffer
// //1.解决数组不能进行二进制数据的操作
// //2.js 数组不像其他java,python 等语言效率高
// //3.buffer 缓冲区,内存空间开辟出固定大小的内存,数据是连接在一起的,内存寻找时方便
// //使用二进制来存储数据,使用16进制来显示

// //将字符串转换成buffer 对象
// var str='helloworld'
// let buf=Buffer.from(str)
// console.log(buf);   //16进制来显示

// // 输出显示buffer 内容
// console.log(buf.toString());

// // 开辟一个空的buffer 缓存区
// let buf1=Buffer.alloc(10)   //10个字节
// buf1[0]=10
// console.log(buf1);  //<Buffer 0a 00 00 00 00 00 00 00 00 00>
// buf1[0]=256
// console.log(buf1);   
// //256大于255 得到<Buffer 00 00 00 00 00 00 00 00 00 00>  因为buf 只有10个缓存区
// // 1 00 00 00 00 00 00 00 00 00 00      中的1被排除在外


// let buf2=Buffer.allocUnsafe(10)
// console.log(buf2);
//不安全的方式,空间不会被清除.遗留数据,会被人读取到内存的数据,赋值否会被覆盖掉


// 读取目录
// 异步读取目录
// let fs=require('fs')
// fs.readdir('../js',function(err,files){
//     if(err){
//         console.log(err);
//     }else{
//         console.log(files);
//     }
    
// })
//  结果
// [
//   'hello.txt',
//   'hello1.txt',
//   'hello2.txt',
//   'index.js',
//   'index1.js',
// ]

// 删除目录
// let fs=require('fs')
// // 异步删除
// fs.rmdir('./111',function(){
//     console.log('删除成功');
// })


// 导入readline 包
// let readline=require('readline')
// //实例化接口(创建接口)
// var readline1=readline.createInterface({
//     input:process.stdin,
//     output:process.stdout
// })

// //question 方法
// readline1.question('你的名字是?',function(answer){
//     console.log('我的名字是:',answer);
//     //不加close 程序不会关闭
//     readline1.close()
// })

//close 事件的监听
// readline1.on('close',function(){
//     //结束程序
//     process.exit(0)
// })
//你的名字是?  xxxxxx
// 我的名字是:   xxxxxx


// let readline=require('readline')
// var readline1=readline.createInterface({
//     input:process.stdin,
//     output:process.stdout
// })

// readline1.question('你的名字是?',function(answer){
//     console.log('我的名字是:',answer);
//     readline1.close()
// })

// function question1(title){
//     return new Promise(function(resolve,reject){
//         readline1.question('你的名字是?',function(answer){
//             resolve(answer)
//             })
//     })
// }
// async function createPackage(){
//     let name=await question1('你的包名叫什么?')
//     let des=await question1('描述你的包')
//     let main=await question1('主程序入口文件是什么')
//     let author=question1('包作者名字是什么?')
// }

// readline1.on('close',function(){
//     process.exit(0)
// })


// 文件流
// let fs =require('fs')

// //1.创建写入流
// //语法:fs.createWriteStream(文件路径,可选的配置操作)
// let ws=fs.createWriteStream('hello.txt',{flags:'w',encoding:'utf-8'})
// console.log(ws);        //ws 对象的各种属性方法

// // 监听事件
// ws.on('ready',function(){
//     console.log('文件准备写入状态');
// })

// ws.on('open',function(){
//     console.log('文件打开了');
// })
// ws.on('close',function(){
//     console.log('文件写入完成');
// })

// // 文件流失写入,当一个文件特别大时,内存不够读取所有的文件,流失一部分一部分的写入
// ws.write('hello写入',function(err){
//    if(err){
//         console.log(err);
//    }else{
//        console.log('内容流入完成');
//    }
// })

// // 流失写入，逐个写入
// ws.write('内容流入流式写入11111',function(err){
//    if(err){
//         console.log(err);
//    }else{
//        console.log('内容流入完成');
//    }
// })


// ws.write('内容流入流式写入111111222222222',function(err){
//    if(err){
//         console.log(err);
//    }else{
//        console.log('内容流入完成');
//    }
// })


// ws.write('内容流入流式写入111113333333333',function(err){
//    if(err){
//         console.log(err);
//    }else{
//        console.log('内容流入完成');
//    }
// })


// ws.write('内容流入流式写入11111444444444',function(err){
//    if(err){
//         console.log(err);
//    }else{
//        console.log('内容流入完成');
//    }
// })
// ws.end(function(){
//     console.log('文件写入关闭');
// })

// 文件打开了
// 文件准备写入状态
// 内容流入完成
// 文件写入关闭
// 文件写入完成


// 从流中读取文件
//  let fs =require('fs')

// //  创建读取流，语法：fs.createReadStream(路径,可选配置项)
// let rs=fs.createReadStream('hello.txt',{flags:'r',encoding:'utf-8'})

// rs.on('open',function(){
//     console.log('读取的文件打开');
// })

// rs.on('close',function(){
//     console.log('读取流结束');
// })

// // 每一次部分数据流入完成(批量读取数据)
// //视屏等大文件会有分批效果   大小>65536 kb
// // 可以将读入的视屏写入自己的.MP4 文件,相当于复制视频
// rs.on('data',function(data){
//     console.log('单批数据流入'+data.length);
//     console.log(data);      //返回的数据
// })

// // 读取的文件打开
// // 单批数据流入
// // hello写入内容流入流式写入11111内容流入流式写入111111222222222内容流入流式写入111113333333333内容流入流式写入11111444444444

// // 读取流结束


// 管道流
//  let fs =require('fs')
// let rs=fs.createReadStream('1.mp4',{flags:'r'})  //不需要ut-8
// let ws=fs.createWriteStream('b.mp4',{flags:'w'})

// rs.on('open',function(){
// })

// rs.on('close',function(){
//     ws.end()  //读取完时关闭
// })

// rs.pipe(ws)


// Node.js 事件循环
// 模拟事件循环

//开启进程
// 开启线程
//  初始化数据 window/document/location...事件
// while(true){
//     // 初始化事件列表
//     // 根据事件修改
//     // 根据数据渲染页面

//     //运行js 代码
//     if( count=0){       //判断这个事件是否只运行一次
//         btn.onclick=function(){     //放到事件列表中执行
//         document.body.style.background='skyblue'
//         console.log(123); 
//     }
        
//     }
    
//     console.log(456);
//     count++
// }


// 封装自定义发布订阅事件
// let fs=require('fs')

// fs.readFile('hello.txt',{flag:'r',encoding:'utf-8'},function(err,data){
//     if(err){
//         console.log(err);
//     }else{
//         console.log(data);
//         //1数据库查看所有用户的详细信息
//         //2.统计年龄比例
//         //3.查看所有用户学校的详细信息
//         //都需要事件触发,繁琐
//         //定义一个对象,存储所有是事件,放在这里一起执行
//         Event.emit('fileSuccess',data)
//     }
// })


// // 定义一个对象
// let Event={
//     event:{
//         // fileSuccess:[fn,fn,fn]
//         fileSuccess:[]      //添加每个事件要执行的函数
//     },
//     // 事件监听
//     on:function(eventNAme,eventFn){
//         if(this.event[eventNAme]){      //判断是否有这个事件
//             this.event[eventNAme].push(eventFn)     //判断 fileSuccess 这个数组书否
//         }else{
//             this.event[eventNAme]=[]  //创建数组
//         }
//     },
//     // 事件触发
//     emit:function(eventNAme,eventMsg){
//         console.log(eventNAme);     //fileSuccess
//         if(this.event[eventNAme]){      //判断是否有这个事件
//             this.event[eventNAme].forEach(element => {
//                 console.log( this.event);//{ fileSuccess: [ [Function (anonymous)], [Function (anonymous)] ] }
//                 // console.log(element);   //[Function (anonymous)]
//                 element(eventMsg)
//             });
//         }
//     }
// }

// Event.on('fileSuccess',function(msg){
//     console.log('1数据库查看所有用户的详细信息');
// })
// Event.on('fileSuccess',function(msg){
//     console.log('2.统计年龄比例');
// })
// Event.on('fileSuccess',function(msg){
//     console.log('3.查看所有用户学校的详细信息');
// })


// 发布订阅事件
//引入 events 模块
// var events=require('events')

// //创建eventEmitter 对象
// var eventEmitter=new events.EventEmitter()

// // 创建事件处理程序
// var connectHandle=function connected(){
//     console.log('连接成功');

//     // 触发data_received 事件
//     eventEmitter.emit('data_received')
// }

// //绑定connection 事件处理程序
// eventEmitter.on('connection',connectHandle)

// //使用匿名函数绑定data_received 事件
// eventEmitter.on('data_received',function(){
//     console.log('数据接收成功');
// })

// //触发connection 事件
// eventEmitter.emit('connection')

// console.log('程序执行完毕');



// path
// let path=require('path')
// console.log(path);      //打印出对象里面的方法
// let strPath='http://www.xinhuanet.com//2019-11/23/c_1125266028.html'

// 获取路径信息得扩展名
// let info =path.extname(strPath)     //.html
// console.log(info);

// //把一个路径或路径片段的序列解析为一个绝对路径
// let source=path.resolve('/foo','/baz','bar')
// console.log(source);    //  D:\baz\bar
// let source1=path.resolve('/foo','baz','bar')
// console.log(source1);    // D:\foo\baz\bar

//path.join()使用平台特定的分隔符把全部给定的path 片段连接到一起,并规范化生成的路径
// let p1=path.join(__dirname, './hello1.txt')
// console.log(p1);        //D:\wanye\Nodejs\nodejs\js\hello1.txt

// let p2=path.join('/foo','bar','./baz')
// console.log(p2);        // \foo\bar\baz
// let p4=path.join('/foo','bar','./baz')
// console.log(p4);        // foo\bar\baz
// let p5=path.join('/foo','/bar','./baz')
// console.log(p5);        // \foo\bar\baz
// let p6=path.join('./foo','/bar','./baz')
// console.log(p6);        // foo\bar\baz

// let p3=path.join('/foo','bar','./baz','..')
// console.log(p3);        // \foo\bar

// __dirname:获得当前执行文件所在的目录的完整目录名
// __filename: 获得当前执行文件的带有完整绝对路径的文件名
// process.cwd(): 获得当前执行node 命令时候的文件目录名

// 自定义解析路径
// let path=require('path')
// let fs =require('fs')
// let str='http://www.xinhuanet.com//2019-11/23/c_1125266028.html'
// let arrParse=str.split('/')
// console.log(arrParse);
// let arr=arrParse.slice(arrParse.length-2,arrParse.length) //数组切片
// console.log(arr);
// let filePath=path.join(__dirname,...arr)
// console.log(filePath);
// fs.readFile(filePath,{encoding:'utf-8'},function(err,data){
//     if(err){
//         console.log(err);
//     }else{
//         console.log(data);
//     }
// })

// console.log(__dirname);
// //D:\wanye\Nodejs\nodejs\js
// console.log(__filename);
// //D:\wanye\Nodejs\nodejs\js>node index1.js
// console.log(path.parse(__filename)); 
// {
//   root: 'D:\\',
//   dir: 'D:\\wanye\\Nodejs\\nodejs\\js',
//   base: 'index1.js',
//   ext: '.js',
//   name: 'index1'
// }


// os
// let os =require('os')
// // console.log(os);
// // os.cpus() 获取操作系统的cpu 信息
// let cpu=os.cpus()
// console.log(cpu);   //数组内存在几个对象就是几核处理器

// // os.totalmem()  获取内存信息
// console.log(os.totalmem());     //4199407616    4G 内存

// // os.arch() 返回操作系统的cpu 构架
// console.log(os.arch());     //x64  64位操作系统
// //os.freemem()   闲置内存
// console.log(os.freemem());   //838770688   0.8G 内存
// // 查看系统平台
// console.log(os.platform());     //win32


// url
// let url=require('url')
// console.log(url);
// let obj=url.parse('http://baidu.com#abc?name=ccc&age=24')
// console.log(obj);
// Url {
//   protocol: 'http:',     协议
//   slashes: true,         
//   auth: null,
//   host: 'baidu.com',     域名
//   port: null,
//   hostname: 'baidu.com',
//   hash: '#abc?name=ccc&age=24',
//   search: '?name=ccc&age=24',
//   query: 'name=ccc&age=24',      查询字符串
//   pathname: '/',                 
//   path: '/?name=ccc&age=24',
//   href: 'http://baidu.com/?name=ccc&age=24'
// }

// let url=require('url')
// console.log(url);
// let obj=url.resolve('http://baidu.com#abc?name=ccc&age=24','/about')
// // 第二个参数前面的'/'表示根路径,如果省略则取代基URL 的最后一个地址
// console.log(obj);       //http://baidu.com/about
// let obj1=url.resolve('http://baidu.com/about/aaa#abc?name=ccc&age=24','contract')
// 第二个参数前面的'/'表示根路径,如果省略则取代基URL 的最后一个地址
// console.log(obj1);      //http://baidu.com/about/contract



// axios
// let axios=require('axios')
// console.log(axios);

// let httpUrl='https://www.dytt8.net/index.htm'
// // let httpUrl='https://www.qweather.com/'
// axios.get(httpUrl,{
//     headers:{
//         'X-Requested-With':'XMLHttpRequest',
//         'User-Agent':'Mozilla/5.0',
//         "Upgrade-Insecure-Requests":1
//     }
// }).then(res=>{
//     console.log(res);
// })


// npm i request
// let request= require('request')
// console.log(request);
// let httpUrl='https://www.dytt8.net/index.htm'
// let httpUrl='https://www.qweather.com/'
// request.get(httpUrl,(err,response,body)=>{
//     console.log(err);
//     console.log(response);
//     console.log(body);
// })       //乱码



// 对于gb2312编码的网页，直接用request去获取会得到乱码的结果，解决方法很简单：
// let request= require('request')
// // npm install iconv-lite
// var iconv = require('iconv-lite');
// let httpUrl='https://www.dytt8.net/index.htm'
// request.get({
//     url:httpUrl,
//     encoding:null,      //让body 直接拿buffer
// },(err,response,body)=>{
//     console.log(err);
//     console.log(response);
//     var buf =  iconv.decode(body, 'gb2312');
//     console.log(buf);
// })



// let request= require('request')
// let fs=require('fs')
// // npm install iconv-lite
// var iconv = require('iconv-lite');
// let httpUrl='https://www.1905.com/vod/list/n_1/o3u1p1.html?fr=vodhome_js_lx'
//  var url_list=[]
// request.get({
//     url:httpUrl,
//     encoding:null,      //让body 直接拿buffer
// },(err,response,body)=>{
//     // console.log(err);       //null
//     // console.log(body.toString());  //将缓冲区的二进制转化为内容(字符串)
//     // console.log(response);       //response.statusCode == 200 状态码
//     var buf =  iconv.decode(body, 'gb2312');
//     // console.log(buf);
//     let reg=/<span class="search-index-L">类型(.*?)<div class="grid-12x">/igs
//     //  s表示可以匹配换行符
    
//     // 解析html 内容
//     let result=reg.exec(body)[1]
//     // exec() 方法用于检索字符串中的正则表达式的匹配。
//     // 如果字符串中有匹配的值返回该匹配值，否则返回 null
//     // console.log(result);     //获取到一个数组,打印一下,取出第一个 
//     //result 0 或1 都取出一样的?



//     // 获取起始页面的所有分类
//     // 正则.exec(str)   每次执行exec(),循环匹配下一个,直到没有 显示null
//     // [
//     //   `这一次匹配到的第一个内容`,
//     //   `(.*?)匹配到的内容`,
//     //   '',
//     //   index: 67,
//     //   input:   文本
//     // ]
//     //str.match(正则) 
//     //str.search(正则) 
//     //test
//     let reg1=/onclick="location\.href='(.*?)';return false/igs
//     let result1=reg1.exec(result)
//     let result2=reg1.exec(result)
//     let result3=reg1.exec(result)
//     let result4=reg1.exec(result)
//     let result5=reg1.exec(result)
//     let result6=reg1.exec(result)
//     let result7=reg1.exec(result)
//     let result8=reg1.exec(result)
//     let result9=reg1.exec(result)
//     let result10=reg1.exec(result)
//     let result11=reg1.exec(result)
//     let result12=reg1.exec(result)
//     let result13=reg1.exec(result)
//     let result14=reg1.exec(result)
//     let result15=reg1.exec(result)
//     let result16=reg1.exec(result)
//     let result17=reg1.exec(result)
//     // console.log(result1[1]);        //url 链接
//     // console.log(result2[1]);
//     // console.log(result3[1]);
//     // console.log(result4[1]);
//     // console.log(result5[1]);
//     // console.log(result6[1]);
//     // console.log(result7[1]);
//     url_list=[result2[1],result3[1],result4[1],result5[1],result6[1],result7[1],result8[1],result9[1],result10[1],result11[1],result12[1],result13[1],result14[1],result15[1],result16[1],result17[1]]
//     // console.log(url_list);
//     // for( let url of url_list){
//     // getMovies(url)
//     // }
//     getMovies(url_list[1])
//     async function getMovies(url){
         
//             await request.get({
//                 url:url,
//                 encoding:null,      //让body 直接拿buffer
//             },(err1,response1,body1)=>{
//                 // console.log(1);
//                 // console.log(body1.toString());
//                 //获取分类里的电影链接
//                 // console.log('分类电影链接');
//                 let regg=/<a class="pic-pack-outer" target="_blank" href="(.*?)" title="(.*?)"><img/igs
//                 let movie_url1=[]
//                 var movie_url
//                 while(movie_url=regg.exec(body1.toString())){
//                 // console.log('电影:'+movie_url[2],'链接:'+movie_url[1]);
//                 movie_url1.push({
//                     '电影:':movie_url[2],
//                     '链接:':movie_url[1]
//                 })
//                 }
//                 // console.log(movie_url1);
//                 //  for( let url of url_list){
//                 //     getMovies(url)
//                 // }
//                 //解析页面
//                 parserPage(movie_url1[1]['链接:'])
//                 // console.log(movie_url1[1]['电影:']);
//                 async function parserPage(url2){
//                         await request.get({
//                         url:url2,
//                         encoding:null,      //让body 直接拿buffer
//                     },(err2,response2,body2)=>{
//                         // console.log(body2.toString());
//                         var buf2 =  iconv.decode(body2, 'gb2312');
//                         console.log(buf2);
//                         // blob:https://www.1905.com/eb9356cf-9a61-453e-af33-26d705f88258
//                         // 加密链接,干扰爬虫
//                         // fs.writeFile(path,content,(err)=>{
//                         //     console.log(err);
//                         // })
//                     })
//                 }
//         })
//     }
// })


//根据电影链接获取电影的详细信息


// cheerio
// let axios=require('axios')
//  axios.get('https://www.fabiaoqing.com/bqb/detail/id/54444.html').then(res1=>{
//             console.log(res1);
//             // let $1=cheerio.load(res1.data)
//             // $1('.swiper-wrapper .bqppdiv1 img')
//         })
// let cheerio=require("cheerio")
// // console.log(cheerio);       //对象的方法
// // 获取HTML 文旦的内容,内容的获取和jquery 一样
// let axios=require('axios')
// let fs=require('fs')
// let path =require('path')
//   fs.mkdir('./img',function(){
//                     console.log('创建成功');
//                 })


// let httpUrl='https://www.fabiaoqing.com/bqb/lists/page/2.html'
// axios.get(httpUrl).then(res=>{
    
//     // console.log(res.data);
//     // cheerio 解析html 文档
//     let $=cheerio.load(res.data)
//     let el= $('#container .twelve .bqba').eq(1)
//     // console.log(el);
//     let img_url='https://www.fabiaoqing.com'+el[0]['attribs']['href']
//     let img_title=el[0]['attribs']['title']
//     // console.log(img_title,img_url);
//              axios.get(img_url).then(res1=>{
//             // console.log(res1.data);
//             let $1=cheerio.load(res1.data)
//             //  console.log($1('.swiper-wrapper .bqppdiv1 img'));
//             $1('.swiper-wrapper .bqppdiv1 img').each((i,el)=>{
//                 let img_title1=el['attribs']['title']
//                 let img_url1=el['attribs']['data-original']
//                let ex= path.parse(img_url1).ext
//             //    console.log(ex);
//                let path1=`./img/${img_title1}-${i}${ex}`
//                 //    console.log(img_title1,img_url1)
               
//                  axios.get(img_url1,{responseType:'stream'}).then(res11=>{
//                      console.log(res11);
//                 //    fs.writeFile(path1,res11.data,{flag:'a'},function(err){
//                 //        console.log(err);
//                 //    })
//                     })


//             })
//              })
// })

// $('#container .column .secondary a')得到的结果 省略后面的
// initialize {
//   '0': <ref *1> Node {
//     type: 'tag',
//     name: 'a',
//     namespace: 'http://www.w3.org/1999/xhtml',
//     attribs: [Object: null prototype] {
//       class: 'item\n                    active                    ',
//       href: '/bqb/lists/type/hot.html',
//       title: '热门表情包-发表情'
//     },
//     'x-attribsNamespace': [Object: null prototype] {
//       class: undefined,
//       href: undefined,
//       title: undefined
//     },
//     'x-attribsPrefix': [Object: null prototype] {
//       class: undefined,
//       href: undefined,
//       title: undefined
//     },
//     children: [ [Node] ],
//     parent: Node {
//       type: 'tag',
//       name: 'div',
//       namespace: 'http://www.w3.org/1999/xhtml',
//       attribs: [Object: null prototype],
//       'x-attribsNamespace': [Object: null prototype],
//       'x-attribsPrefix': [Object: null prototype],
//       children: [Array],
//       parent: [Node],
//       prev: [Node],
//       next: [Node]
//     },
//     prev: Node {
//       type: 'text',
//       data: '\n                    ',
//       parent: [Node],
//       prev: null,
//       next: [Circular *1]
//     },
//     next: Node {
//       type: 'text',
//       data: '\n                    ',
//       parent: [Node],
//       prev: [Circular *1],
//       next: [Node]
//     }
//   },
//   '1': <ref *2> Node {
//     type: 'tag',
//     name: 'a',
//     namespace: 'http://www.w3.org/1999/xhtml',
//     attribs: [Object: null prototype] {
//       class: 'item\n                                        ',
//       href: '/bqb/lists/type/liaomei.html',
//       title: '撩妹撩汉表情包-发表情'
//     },
//     'x-attribsNamespace': [Object: null prototype] {
//       class: undefined,
//       href: undefined,
//       title: undefined
//     },
//     'x-attribsPrefix': [Object: null prototype] {
//       class: undefined,
//       href: undefined,
//       title: undefined
//     },
//     children: [ [Node] ],
//     parent: Node {
//       type: 'tag',
//       name: 'div',
//       namespace: 'http://www.w3.org/1999/xhtml',
//       attribs: [Object: null prototype],
//       'x-attribsNamespace': [Object: null prototype],
//       'x-attribsPrefix': [Object: null prototype],
//       children: [Array],
//       parent: [Node],
//       prev: [Node],
//       next: [Node]
//     },
//     prev: Node {
//       type: 'text',
//       data: '\n                    ',
//       parent: [Node],
//       prev: [Node],
//       next: [Circular *2]
//     },
//     next: Node {
//       type: 'text',
//       data: '\n                    ',
//       parent: [Node],
//       prev: [Circular *2],
//       next: [Node]
//     }
//   }
// }




// // ip 代理
// const axios=require('axios')

// let http='https://www.fabiaoqing.com/bqb/lists/page/2.html'
// let option={
//     proxy:{
//         host:'42.56.238.39',
//         port:9999,

//     }
// }
// axios.get(http,option).then(res=>{
//     console.log(res);
// })



// 爬取音乐
// https://www.app-echo.com/#/
// https://www.app-echo.com/api/other/index   接口
// https://www.app-echo.com/api/recommend/sound-day?page=1

// const axios=require('axios')


// async function getPage(num){
//     //修改为http,https 会有证书问题
//     let httpUrl='http://www.app-echo.com/api/recommend/sound-day?page='+num
//     let res=await axios.get(httpUrl)
//     // console.log(res.data);
//     // let music_url=res.data['list'][0]['sound']['source']        //15个长度
//     // let music_name=res.data['list'][0]['song_info']['name']['name']       //15个长度
//     // console.log(music_name,music_url);
//     res.data.list.forEach(function(item,i){
//         let title=item.sound.name
//         let music=item['sound']['source']
//         console.log(title,music);
//     })
// }

// // async function download( ){}

// getPage(1)



//Puppeteer
// let puppeteer =require('puppeteer')

// //因为所有的事件都需要时间等待,所以使用异步执行
// async function test(){
//     //pupeteer.launch 实例启动浏览器,可以传入一个option 对象,可以配置为
//     //无界面浏览器,也可以配置为有界面浏览器
//     //无界面浏览器性能更高更快,有界面一般用于调试
    
//     let option={
//         defaultViewport:{       //设置视窗的大小
//             width:1200,
//             height:800
//         },
//         headless:false      // headless:false 有界面
//     }
//     let browser=await puppeteer.launch(option)

//     //打开新页面
//     let page=await  browser.newPage()
//     //访问页面
//     await page.goto('https://www.dytt8.net/index.htm')
//     // 截屏,截取当前打开的页面,存放为screenshot.png
//     await page.screenshot({path:'screenshot.png'})
//     //获取页面内容,获取所有a 标签
//     //$$eval 函数使得,我们回调函数可以运行在浏览器中,并且可以通过浏览器的方式进行输出
//    let elements=await page.$$eval('#menu li a',(elements)=>{
//         // console.log(elements);
//         //创建一个数组去收集元素的信息,这里我们需要收集地址和内容
//          let eles=[]
//         elements.forEach((item,i)=>{
//             //这里的 console 是在浏览器上输出
//             // console.log(item.innerHTML);
//             if(item.getAttribute('href')!='#'){
//                  var eleObj={
//                 href:item.getAttribute('href'),
//                 text:item.innerText
//                     }
//                 eles.push(eleObj)
//             }
            
//         // console.log(eleObj);
//         })

//         return eles     //得到的Promise 对象,需要返回出去
//     })

//     // 打开国内页面
//     let gnPage=await browser.newPage()
//     await gnPage.goto(elements[2].href)
//     console.log(elements);
//     // 浏览器可以监听控制台的输出
//     // page.on('console',(...args)=>{
//     //     console.log(args);
//     // })
//     // page.on('console',(evemtMsg)=>{
//     //     //在cmd 上输出
//     //     console.log(evemtMsg.text());
//     // })
// }

// test()







// console.log(args); cmd 上输出
// [
//   ConsoleMessage {
//     _type: 'log',
//     _text: '最新影片',
//     _args: [ [JSHandle] ],
//     _stackTraceLocations: [ [Object], [Object] ]
//   }
// ]
// [
//   ConsoleMessage {
//     _type: 'log',
//     _text: '经典影片',
//     _args: [ [JSHandle] ],
//     _stackTraceLocations: [ [Object], [Object] ]
//   }


// let puppeteer =require('puppeteer')
// async function test(){
//     let option={
//         defaultViewport:{       //设置视窗的大小
//             width:1200,
//             height:800
//         },
//         headless:false,      // headless:false 有界面
//         //设置放慢每个操作步骤的毫秒数
//         slowMo:250
//     }
//     let browser=await puppeteer.launch(option)
//     let page=await  browser.newPage()
//     await page.goto('https://www.dytt8.net/index.htm')
//     //page.$$('#menu li a')  获取页面对象(用来做点击事件的方式获取),获取多个元素
//     //通过点击页面的方式跳转
//     // let elementHandles=await page.$$('#menu li a')
//     // elementHandles[2].click()

//     //通过表单输入进行搜索
//     // page.$('#menu li a')  获取一个元素
//     let inputEle=await page.$('.searchl .formhue')
//     //让光标进入输入框
//     await inputEle.focus()   //返回的是Promise 对象,需要等待一下
//     //往输入框输入内容
//     await page.keyboard.type('蝙蝠侠')

    // 找表单阻止冒泡,而不是搜索元素
    // await page.$eval('.bd3rl>.search>form',(element)=>{
    //     console.log('加载完成');
    //     element.addEventListener('click',function(e){
    //         //因为这个标签在广告标签a 里面,点击会跳转到广告,要阻止跳转
    //         //IE 的阻止冒泡e.canceBubble
    //         // e.canceBubble=true
    //         e.stopPropagation()

    //     })
    // })
    //去除广告/阻止冒泡
    // await page.$eval('body>a',(element)=>{
    //     console.log(111);
    //     element.addEventListener('mouseover',function(e){
    //         //IE 的阻止冒泡e.canceBubble
    //         // e.canceBubble=true
    //         console.log(2222);
    //         console.log(this.style.display=none);
    //         e.stopPropagation()
    //         // e.style.display=none

    //     })
    // })

    //点击搜索按钮
    // let btnEle=await page.$('.searchr input[name="Submit"]')
    // await btnEle.click()
    // //点击有广告,两次点击,一次进入到搜索结果
    // await btnEle.click()

  
// }

// test()




// 获取所有电子书的详细信息
//获取https://sobooks.cc/ 所有电子书的链接书名
//进入网站,获取整个网站列表的页数
// let puppeteer =require('puppeteer')
// let axios=require('axios')


// console.log('一共'+4*7*325+'本电子书');     //9100

// let httpUrl='https://sobooks.cc/';      //加; 防止与后面的() 连接
// (async function(){
//     let option={
//         defaultViewport:{       //设置视窗的大小
//             width:1200,
//             height:600
//         },
//         headless:false,      // headless:false 有界面
//         //设置放慢每个操作步骤的毫秒数
//         // slowMo:250
//     }
   
// try{
// //     //1.获取总页数 ---325页
//         let browser=await puppeteer.launch(option)
//     async function getAllNum(){
//         let page=await browser.newPage()
        
//         await page.goto(httpUrl)
//         //设置选着器,获取总页数
//         let pageNum=await page.$eval('.pagination li:last-child span',(element)=>{
//             let text= element.innerHTML
//             text=text.substring(1,text.length-2).trim()
//             console.log(text);
//             return text
//         })
//         page.close()        //关闭标签
//         return pageNum
//     }
//   let pageNum=getAllNum()

// //     // 获取每一页的书籍信息
// //    async function pageList(num){
// //         let pageListUrl='https://sobooks.cc/page/'+num
// //         let page=await browser.newPage()
// //         //访问列表页地址
// //         await page.goto(pageListUrl)
// //         let arrPage=await page.$$eval('.card .card-item .focus>a',(elements)=>{
// //             // console.log(elements);
// //             let arr=[]
// //             elements.forEach((item,i)=>{
// //                 var obj={
// //                     href:item.getAttribute('href'),
// //                     title:item.getAttribute('title')
// //                 }
// //                 arr.push(obj)

// //             })
// //             console.log(arr);
// //             return arr
// //         })
// //         console.log(arrPage);
// //         // 如果人生是一部电影，那你就是，中间弹出来的广告。----笑死
// //             page.close()
// //             // 通过获取的数组的地址和标题去请求书籍的详情页
// //             // arrPage.forEach((item,i)=>{
// //                 // getPageInfo(item)
// //             // })
// //     }
// // pageList(10)
//     //请求每一页的一本书籍
//     async function getPageInfo(pageObj){
//         let page=await browser.newPage()
//         //截取谷歌请求
//         await page.setRequestInterception(true)
//         //监听事件请求,并对请求进行拦截
//         page.on('request',interceptedRequest=>{
//             // 通过URL 模块对请求的地址进行解析
//             let urlObj=url.parse(interceptedRequest.url())
//             if(urlObj.hostname=='googleads.g.doubleclick.net'){
//             //如果是谷歌的广告请求,那么就放弃当次请求,因为谷歌广告响应太慢
//                 interceptedRequest.abort()
//             }else{
//                 interceptedRequest.continue()
//             }
//         })

//         await page.goto(pageObj.href)
//             // 获取网盘地址
//             // let eleadd=await page.waitForSelector('.article-content .e-secret a')
//         let eleadd=await page.$('.dltable tr:nth-child(3) a:last-child')
//         // 获取连接属性
//         //  let aHref=await eleadd.getProperty('href')._remoteObject.value
//          console.log(111111);
//          console.log(eleadd);
//         //  console.log(aHref);
         
    
       

//     }
//         getPageInfo({href:'https://sobooks.cc/books/14620.html'})

// }catch(err){
//     console.log(err);
// }
//     //获取列表页的所有链接


//     //进入每个电子书的详情页获取下载电子书的网盘地址

//     //将获取到的数据保存到book.txt 文档里面




// })()






// const puppeteer = require('puppeteer');

// (async () => {
//   const browser = await puppeteer.launch();
//   const page = await browser.newPage();
//   await page.goto('https://www.dytt8.net/index.htm', {waitUntil: 'networkidle2'});
//   await page.pdf({path: 'hn.pdf', format: 'A4'});

//   await browser.close();
// })();





//  let puppeteer =require('puppeteer')
//  let axios=require('axios')
//  var url = require('url')
// let fs=require('fs')

// console.log(url);
// (async function(){
//     let option={
//         defaultViewport:{       //设置视窗的大小
//             width:1200,
//             height:600
//         },
//         headless:false,      // headless:false 有界面
//     }
   
// try{
//         let browser=await puppeteer.launch(option)
//         // 将延迟函数封装成Promise 对象
//         // function lcWait(ms){
//         //     return new Promise(function(resolve,reject){
//         //         setTimeout(function(){
//         //             resolve('等待中....')
//         //         },ms)
//         //     })
//         // }
//     async function getPageInfo(pageObj){
//         let page=await browser.newPage()
//         //截取谷歌请求
//         await page.setRequestInterception(true)
//         //监听事件请求,并对请求进行拦截
//         page.on('request',interceptedRequest=>{
//             // 通过URL 模块对请求的地址进行解析
//             let urlObj=url.parse(interceptedRequest.url())
//             if(urlObj.hostname=='googleads.g.doubleclick.net'){
//             //如果是谷歌的广告请求,那么就放弃当次请求,因为谷歌广告响应太慢
//                 interceptedRequest.abort()
//             }else{
//                 interceptedRequest.continue()
//             }
//         })
//         await page.goto(pageObj.href)
//         let eleadd
       
//        if( page.$('.dltable tr:nth-child(3) a:last-child')=='null'){
//              console.log(await page.$('.dltable tr:nth-child(3) a:last-child'));
//              await page.close()
//             return
//         }else{
//            await getBook()
             
//         }
//          async function getBook(){
//              eleadd=await page.$('.dltable tr:nth-child(3) a:last-child')
//              let arrTitle=await page.$$eval('.article-header .article-title a',(element)=>{
//             let eleTitle=''
//             // 获得的是DOM 元素
//             // console.log(element);
//             element.forEach((item,i)=>{
//               eleTitle=item.innerHTML
//               console.log(eleTitle);
//             })
//             return eleTitle
//         })
//         let aHref=await eleadd.getProperty('href')
//         // 获取链接属性
//          aHref=await aHref._remoteObject.value
//         //  console.log(eleadd);
//         aHref=aHref.split('?url=')[1]
//         let content=`{"title":"${arrTitle}","href":"${aHref}"}\n`
//           console.log(aHref); 
//         fs.writeFile('book.txt',content,{flag:'a'},function(){
//             console.log(arrTitle+'--写入成功');
//             page.close()
//         })
       
         
//          }

       
//        }
//     //从11000 开始有书籍 到18312 结束   到16226  下载不用验证
//     for(let i=11030;i<=11100;i++){
//         // await    等待一个页面加载完成时在加载下一个
//        await getPageInfo({href:'https://sobooks.cc/books/'+i+'.html'})
//     }
        
// }catch(err){
//     console.log(err);
// }
// })() 



//http 模块 内置模块,不需要安装
// let http=require('http')

// // 通过创建server 服务器对象
// let server=http.createServer()
// // 监听当前服务器对象的请求
// server.on('request',(req,res)=>{
//     //当服务器被请求时,会触发请求事件,并传入请求对象和响应对象
    
//     // console.log(req);
//     // console.log(req.url);       //请求的路径
//     // console.log(req.headers);

//     res.setHeader('Content-Type','text/html;charset=UTF-8')
//     // 根据路径信息,显示不同的页面内容
//     if(req.url=='/'){
//         res.end('<h1>欢迎来到首页<h1><img src="https://www.baidu.com/img/PCfb_5bf082d29588c07f842ccde3f97243ea.png">')
//     }else if(req.url=='/gnxw'){
//         res.end('欢迎来到国内新闻')
//     }else if(req.url=='/ylxw'){
//         res.end('欢迎来到娱乐新闻')
//     }else{
//         res.end('404 页面丢失')
//     }

//     // res.end('hello world')   //结束消息
//     // res.end('欢迎光临')     //结束消息要放到最后
// })

// // 服务器监听的端口号
// server.listen(3000,()=>{
//     //启动监听端口号成功时触发
//     console.log('服务器启动成功');
// })

// let axios=require('axios')
// //node 没有跨域问题
//  axios({
//             url:'https://tuchong.com/rest/tags/%E7%BE%8E%E5%A5%B3/posts?page=1',
//             // params:{
//             //     username:'张珊',
//             //     age:10
//             // }
//             header:{
//                 'Access-Control-Allow-Origin': '*'
//             }
//         }).then(res=>{
//             console.log(res);
//         })


// 服务器封装
// let http=require('http')
// let path=require('path')
// // console.log(path);
// class lcApp{
//     constructor(){
//         this.server=http.createServer()
//         this.reqEvent={
//             // '/':function(){},
//             // '/static':function(){}
//         }
//         this.server.on('request',(req,res)=>{
//              res.setHeader('content-type','text/html;charset=utf-8')
//             //解析路径
//             let pathObj=path.parse(req.url)
//         //    console.log(pathObj.base);
//             if(req.url in this.reqEvent){
//                 // console.log(this.reqEvent);
//                 this.reqEvent[req.url](req,res)
//             }else{
//                 res.end('<h1>404!页面找不到</h1>')
//             }
//         })
//     }
//         on(url,fn){
//             this.reqEvent[url]=fn
//         }
//         run(port,callback){
//             this.server.listen(port,callback)
//         }
// }

// module.exports=lcApp


// 重命名
// let fs=require('fs')
// function rename(oldPath,newPath){
//     return new Promise((resolve,reject)=>{
//         fs.rename(oldPath,newPath,(error)=>{
//             if(error){
//                 reject(error)
//             }else{
//                 resolve('重命名成功')
//             }
//         })
//     })
// }