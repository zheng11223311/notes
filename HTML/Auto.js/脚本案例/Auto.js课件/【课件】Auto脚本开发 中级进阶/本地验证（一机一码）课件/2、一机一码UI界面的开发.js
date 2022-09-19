



"ui";
ui.layout(
    <vertical padding='10'>

        <horizontal>
            <text text="机器码："/>
            <input id="machineCode" w='*'/>
        </horizontal>

        <horizontal>
            <text text="激活码："/>
            <input id="activationCode" w='*'/>
        </horizontal>

        <button id='activation' text="激活"/>

    </vertical>
);

ui.activation.on('click',function(){
    alert('激活成功！');
})


