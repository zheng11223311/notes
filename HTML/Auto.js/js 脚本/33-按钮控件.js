"ui";  //这里需要带上;

ui.layout(
    <vertical>
       <button id="sure" style="Widget.AppCompat.Button.Colored" text="带颜色的按钮"/>
       <button  style="Widget.AppCompat.Button.Borderless" text="带颜色的按钮"/>
       <button  style="Widget.AppCompat.Button.Borderless.Colored" text="带颜色的无边框按钮"/>
    </vertical>
);


// 按钮点击事件
// ui.sure.click(function func(){
//     // 设置文本值/input
//     // ui.myText.setText('aaa')
//     // 获取input 的值
//     var input=ui.myText.getText()
//     toast(input)
// })

// 按钮点击事件
// ui.sure.on('click',function func(){
//     // 设置文本值/input
//     // ui.myText.setText('aaa')
//     // 获取文本值/input 的值
//     var input=ui.myText.getText()
//     toast(input)
// })

// ui.sure.on('long_click',function func(){
//     toast('123')
// })


toast('启动')

