var w = floaty.window(
    <vertical gravity="center">
        <text id="text">布局</text>
        <button>按钮</button>
    </vertical>
);


ui.run(function(){
    // text 为id
    // 放在外面也可以使用,但是要按照ui 规则使用
    w.text.setText("文本");  //修改文本
});

w.setPosition(500, 500);   //设置悬浮窗的位置

// w.setAdjustEnabled(true)  //可拖拽,调整

console.log(w.getX());  //x轴的位置 36
console.log(w.getY());  //y 轴的位置 
// 要保持悬浮窗不被关闭,需保持程序的运行

w.setSize(300,300)  //设置悬浮窗的大小,与拖拽一起使用,可以显示

setInterval(()=>{
    // w.close()   //关闭w 悬浮窗
    floaty.closeAll()   //关闭所有本脚本的悬浮窗。
},2000)

w.exitOnClose()  //关闭悬浮窗,脚本自动结束
setInterval(()=>{}, 1000);
toast ('启动服务器')

