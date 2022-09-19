


// var w = floaty.window(
//     <vertical gravity="center">
//         <text id="aaa">悬浮文字</text>
//         {/* <button>按钮</button> */}
//     </vertical>
// );



// ui.run(function(){

//     w.aaa.setText("aaa");

// });


// var w = floaty.rawWindow(
//     <frame gravity="center">
//         <text id="text">悬浮文字</text>
//     </frame>
// );

// w.setPosition(500, 500);
// 保持悬浮窗不被关闭
// setInterval(()=>{}, 1000);


var w = floaty.window(
    <vertical gravity="center">
        <text id="aaa">悬浮文字</text>
        {/* <button>按钮</button> */}
    </vertical>
);
var y = floaty.rawWindow(
    <frame gravity="center">
        <text id="text">悬浮文字</text>
    </frame>
);

y.setPosition(500, 500);


setTimeout(()=>{
    floaty.closeAll();
}, 3000);

// setInterval(()=>{}, 1000);


toast('阿涛QQ656206105')