var w = floaty.rawWindow(
    <vertical gravity="center" bg="#55cccccc">
        <text id="text">布局</text>
        <button>按钮</button>
    </vertical>
);


// false 不可被触摸,触摸遮悬浮窗时穿透,直接点击到底部的界面
// true  可被触摸,直接点击到悬浮窗,而不会点击到底部的界面
w.setSize(-1,-1)   //设置悬浮窗的大小,与拖拽一起使用,可以显示大小,-1 表示全屏
w.setTouchable(false); 


ui.run(function(){
    // text 为id
    // 放在外面也可以使用,但是要按照ui 规则使用
    w.text.setText("文本");  //修改文本
});

// w.setPosition(500, 500);   //设置悬浮窗的位置

// w.setAdjustEnabled(true)  //可拖拽,调整

//屏幕是从除去电量wifi顶部显示界面开始计算xy
console.log(w.getX());  //x轴的位置 36
console.log(w.getY());  //y 轴的位置 
// 要保持悬浮窗不被关闭,需保持程序的运行

 

setInterval(()=>{
    // w.close()   //关闭w 悬浮窗
    floaty.closeAll()   //关闭所有本脚本的悬浮窗。
},2000)

w.exitOnClose()  //关闭悬浮窗,脚本自动结束
setInterval(()=>{}, 1000);
toast ('启动服务器')

