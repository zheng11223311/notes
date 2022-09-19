
"ui";
ui.layout(
    <vertical padding='10'>

        <horizontal>
            <text text="机器码："/>
            <input id="machineCode" w='*' text='' textSize='15'/>
        </horizontal>

        <horizontal>
            <text text="激活码："/>
            <input id="activationCode" w='*'/>
        </horizontal>

        <button id='activation' text="激活"/>

    </vertical>
);

var uuid = md5(device.fingerprint);

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


//md5加密函数
function md5(string){
	var res=java.math.BigInteger(1,java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(string).getBytes())).toString(16);
	while(res.length<32)res="0"+res;
	return res;
}