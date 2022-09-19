
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

        <text text="到期时间：" textColor="green"/>
        <text id='time' text='未知'/>

    </vertical>
);

var uuid = md5(device.fingerprint);

ui.machineCode.setText(uuid)

ui.activation.on('click',function(){

    //取算法得到的值
    var res = ui.machineCode.text() +"aaa"

    var res2 = ui.activationCode.text().split('&');
    var activationCode = res2[0];
    var timestamp = res2[1];

    log(timestamp)
    
    // log(typeof(ui.activationCode.text()))

    // log(typeof(res.toString()))

    if(activationCode === res.toString()){
        alert('激活成功！');
    }else{
        alert('激活失败！');
    }

    ui.time.setText(dateFormat(new Date(parseInt(timestamp)), 'yyyy年MM月dd日 hh:mm:ss'))

    // alert('激活成功！');
})


//md5加密函数
function md5(string){
	var res=java.math.BigInteger(1,java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(string).getBytes())).toString(16);
	while(res.length<32)res="0"+res;
	return res;
}

//格式化时间
function dateFormat(thisDate, fmt) {
    var o = {
        "M+": thisDate.getMonth() + 1,
        "d+": thisDate.getDate(),
        "h+": thisDate.getHours(),
        "m+": thisDate.getMinutes(),
        "s+": thisDate.getSeconds(),
        "q+": Math.floor((thisDate.getMonth() + 3) / 3),
        "S": thisDate.getMilliseconds()
    };
    if (/(y+)/.test(fmt))
        fmt = fmt.replace(RegExp.$1, (thisDate.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}