

var a='输出变量'
var b={a:a,c:'哈哈'} //不支持 es6简化
console.show()   //手机上悬浮控制台面板
// 控制台启动需要时间,否者后面获取不到数据
sleep(1500)

// console.log('测试');  //面板上输出测试,电脑调试工具也会输出
// log('等于console.log()');
// print('等于console.log()');
// log(a)
// log(b)

// 控制台不能穿透,需要与悬浮窗一起使用才能穿透
// 调用栈信息
// 用来知道那些脚本引擎输出的错误信息
// console.trace(123)
// 123	at [remote]45-控制台的常用命令.js:13

sleep(2000)
console.clear()   //清空面板

// 以灰色字体显示,优先级低于log，用于输出观察性质的信息
// console.verbose('嘿嘿嘿')
// // 输出结果以绿色字体显示。输出优先级高于log, 用于输出重要信息。
// console.info('嘿嘿嘿')
// // 输出结果以蓝色字体显示。输出优先级高于info, 用于输出警告信息。
// console.warn('嘿嘿嘿')
// // 输出结果以红色字体显示。输出优先级高于warn, 用于输出错误信息。
// console.error('嘿嘿嘿')
// // 如果value为false则输出错误信息message并停止脚本运行。
// console.assert(false,'这是错误信息')

// 开始时间
// console.time()
// // 中间执行代码



// //代码结束时间
// console.timeEnd()


// // 开始时间
// console.time('计时器1的标识')
// // 中间执行代码

// console.time('计时器2的标识')

// //计时器1的标识代码结束时间
// console.timeEnd('计时器1的标识')

// console.timeEnd('计时器2的标识')  //每个定时器的标识  耗时0ms


// var a=console.input('嘿嘿嘿')
// taost(a)

// 延时,等待面板加载完成,在进行设置大小
console.setSize(device.width/2,device.height/2)





sleep(3000)

console.hide()      //隐藏面板

// 屏幕大小
console.log(device.width);  //720
console.log(device.height); //1280

// 设置控制台面板位置 xy
console.setPosition(100,100)
