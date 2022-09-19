"ui";  //这里需要带上;
// ui.layout(
//     <vertical padding="16">
//         <text id="name" text="选择第几行的怪"/>
//         <input
//         id="myText"
//          gravity="right"
//           w="*" 
//           h="auto"
//            text="靠右的文字"
//            margin='20'
//            textSize='150'
//            textStyle='italic'
//             hint="默认提示文字"
                // inputType="none"  //none 不可编辑类型
                // inputType="number"  //只能数字
                // password="true"   //密码
                // digits="指定输入的数字/字符"   //有bug ,无效果
                // singleLine="true"
//            />
//            <button id="sure" text="确定"/>
           
//     </vertical>
// );
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


// 按钮点击事件
// ui.sure.click(function func(){
//     // 设置文本值/input
//     // ui.myText.setText('aaa')
//     // 获取input 的值
//     var input=ui.myText.getText()
//     toast(input)
// })

// 按钮点击事件
ui.sure.on('click',function func(){
    // 设置文本值/input
    // ui.myText.setText('aaa')
    // 获取文本值/input 的值
    var input=ui.myText.getText()
    toast(input)
})



toast('启动')

