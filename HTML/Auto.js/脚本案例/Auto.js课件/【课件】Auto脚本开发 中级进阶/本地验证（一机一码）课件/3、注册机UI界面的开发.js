


"ui";
ui.layout(
    <vertical padding='10'>

        <horizontal>
            <text text="机器码："/>
            <input id="machineCode" w='*'/>
        </horizontal>

        <button id='activation' text="生成激活码"/>

        <text text="激活码：" textColor="red"/>
        <text id='activationCode' text='未生成'/>

    </vertical>
);

ui.activation.on('click',function(){
    ui.activationCode.setText('123456')
})



toast('阿涛 QQ/微信：656206105')