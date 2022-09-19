
// var w = floaty.rawWindow(
//     <frame gravity="center">
//         <text id="text">悬浮文字</text>
//         <button>按钮</button>
//     </frame>
// );
var w = floaty.window(
    <vertical gravity="center">
        <text id="text">布局</text>
        <button>按钮</button>
    </vertical>
);


ui.run(function(){
    // text 为id
    w.text.setText("文本");  //修改文本
});

w.setPosition(500, 500);   //设置悬浮窗的位置

// 要保持悬浮窗不被关闭,需保持程序的运行
setInterval(()=>{}, 1000);
toast ('启动服务器')

