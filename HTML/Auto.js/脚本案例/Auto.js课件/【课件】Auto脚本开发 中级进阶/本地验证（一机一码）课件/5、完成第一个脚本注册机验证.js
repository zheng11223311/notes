




"ui";
ui.layout(
    <vertical padding='10'>

        <horizontal>
            <text text="机器码："/>
            <input id="machineCode" w='*' text=''/>
        </horizontal>

        <horizontal>
            <text text="激活码："/>
            <input id="activationCode" w='*'/>
        </horizontal>

        <button id='activation' text="激活"/>

    </vertical>
);

var uuid = device.fingerprint;

ui.machineCode.setText(uuid)

ui.activation.on('click',function(){

    //取算法得到的值
    var res = ui.machineCode.text() +"aaa"

    // log(typeof(ui.activationCode.text()))

    // log(typeof(res.toString()))

    if(ui.activationCode.text() === res.toString()){
        alert('激活成功！');
    }else{
        alert('激活失败！');
    }

    // alert('激活成功！');
})


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

//算法是  uuid+"aaa" 

ui.activation.on('click',function(){

    var machineCode = ui.machineCode.text();

    var activationCode = machineCode + 'aaa'

    // toast(activationCode)

    ui.activationCode.setText(activationCode.toString())

    setClip(activationCode.toString())

    toast('激活码已复制')
})














toast('阿涛 QQ/微信：656206105')