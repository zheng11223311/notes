


"ui";
ui.layout(
    <vertical padding='10'>

        <horizontal>
            <text text="机器码："/>
            <input id="machineCode" w='*' textSize='15'/>
        </horizontal>

        <button id='activation' text="生成激活码"/>

        <text text="激活码：" textColor="red"/>
        <text id='activationCode' text='未生成'/>

    </vertical>
);

//算法是  uuid+"aaa" 

ui.activation.on('click',function(){

    var machineCode = ui.machineCode.text();

    var activationCode = machineCode + 'aaa'

    // toast(activationCode)

    ui.activationCode.setText(activationCode.toString())

    setClip(activationCode.toString())

    toast('激活码已复制')
})


