"ui";
ui.layout(
    <vertical>
        {/* padding  左 上 下 右 */}
        <text id="name" margin='20 20 0 20'  text="选择第几行的怪"/>
        <input
        id="myText"
          w="*" 
          h="auto"
           margin='20 0 0 20'
           textStyle='italic'
           />
           <button id="sure" text="确定" />
           
    </vertical>
);


function mpsg(){
// 手机屏幕像素大小,其他手机进行等比缩放适配
setScreenMetrics(1080,2400)











    toast(1)
}
// 冒泡三国()
ui.sure.on('click',()=>{
    // mpsg()
    // if(!requestScreenCapture()){
    //     toast("请求截图失败")
    //     exit()
    // }
})


// // 开启线程,点击允许投屏的立即开始
// threads.start(function(){
//     //在新线程执行的代码
//     while(true){
//         if(text('立即开始').findOnce()){
//             text('立即开始').findOnce().click()
//             break
//         }else{
//                 sleep(1000) 
//         }
//     }
// });


// sleep(2000)
// // 每场战斗的时间间隔>20s,设置为22s 之后战斗
// var zdtimer=0
// while(true){
    
// // true 横屏截图 false 竖屏截图,
// // 不指定值，则截图方向由当前设备屏幕方向决定
// // 获取截图权限
// var screen=images.captureScreen()
//     var color=screen.pixel(898,1713)
//     var color1=screen.pixel(864,2135)
//     // console.log(colors.toString(color));
//     console.log(colors.toString(color1));
//     if(colors.toString(color)=='#ff3b3a3b'
//         ||colors.toString(color)=='#ff3f3e3f'
//         ||colors.toString(color)=='#ff424142'
//         ||colors.toString(color)=='#ff3f3d3f'
//         ||colors.toString(color)=='#ff636163'
//     ){
//         toast('自动攻击')
//         click(898,1713)
        
//     }else if(
//         colors.toString(color1)=='#ffdeba73'
//     ){
//         toast('战斗结束')
//         if(zdtimer>22){
//             zdtimer=0
//             // 判断是否有消息弹出


//             sleep(2500)
//             while(!click(524,1368))
//             sleep(100)
//             while(!click(524,1368))
//             sleep(100)
//             while(!click(524,1368))
//             toast('确定弹出的信息框')
//             toast('再次战斗')
//             engines.execScriptFile('/sdcard/脚本/冒泡社区-幻想三国-战斗.js',{
//             })
//         }
//         // break
//     }else{
//         toast('没有进入到战斗状态')
//     }
//     sleep(3000)
//     zdtimer+=3
    
// }