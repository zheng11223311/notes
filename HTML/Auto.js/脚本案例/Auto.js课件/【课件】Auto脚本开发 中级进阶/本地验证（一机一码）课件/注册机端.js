


"ui";
ui.layout(
    <vertical padding='10'>

        <horizontal marginTop="50">
            <text text="机器码："/>
            <input id="machineCode" w='*' textSize='15'/>
        </horizontal>

        <horizontal>
            <text textSize="16sp">充值类型：</text>
            <spinner id="sp1" entries="小时卡|日卡|月卡|年卡" textColor="red"/>
        </horizontal>

        <button id='activation' text="生成激活码"/>

        <text text="激活码：" textColor="red"/>
        <text id='activationCode' text='未生成'/>

        <text text="到期时间：" textColor="green"/>
        <text id='time' text='未知'/>

    </vertical>
);

//算法是  uuid+"aaa" +timestamp

ui.activation.on('click',function(){

    var machineCode = ui.machineCode.text();

    //获取当前时间戳
    // var d = new Date();

    //13位时间戳
    // var timestamp = d.valueOf() + (24 * 60 * 60 * 1000);

    //加上未来时间的毫米数
    // var timestamp = d.valueOf() + (24 * 60 * 60 * 1000 * 30)

    var index = ui.sp1.getSelectedItemPosition();

    // if(index == 0){
    //     toast("你选择的是小时卡");
    // }

    var d = new Date();

    var timestamp = d.valueOf();

    switch(index){
        case 0:
            // toast("你选择的是小时卡");
            timestamp = timestamp + (60 * 60 * 1000)
            // timestamp = timestamp + 20000;
            break;
        case 1:
            timestamp = timestamp + (24*60 * 60 * 1000)
            // toast("你选择的是日卡");
            break;
        case 2:
            timestamp = timestamp + (31* 24 * 60 * 60 * 1000)
            // toast("你选择的是月卡");
            break;
        case 3:
            timestamp = timestamp + (365 * 24 * 60 * 60 * 1000)
            // toast("你选择的是年卡");
            break;         
    }

    var activationCode = encrypt(machineCode,timestamp)

    // toast(activationCode)

    ui.activationCode.setText(activationCode.toString())
    
    ui.time.setText(dateFormat(new Date(timestamp), 'yyyy年MM月dd日 hh:mm:ss'))

    setClip(activationCode.toString())

    toast('激活码已复制')
})


// 6deaca469f33ab84368937c7cb7eb49f&14497698685.37655&68e4724a3fdec7b964a5d270a8310a3e

//算法函数
function encrypt(machineCode,timestamp){

    var str1 = md5(machineCode+timestamp);

    var encryptTime = ((timestamp-0+10000)*903)/100000;

    var str2 = md5((md5("litikj" +str1 +"litikj")+"litikj") +encryptTime +md5(machineCode)+"112233");

    var activationCode = str1 + '&'+encryptTime + "&" + str2;

    return activationCode;

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

//md5加密函数
function md5(string){
	var res=java.math.BigInteger(1,java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(string).getBytes())).toString(16);
	while(res.length<32)res="0"+res;
	return res;
}


