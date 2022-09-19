
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

        <button id='startScript' text="开始运行"/>

    </vertical>
);

var uuid = md5(device.fingerprint);

ui.machineCode.setText(uuid)

var scriptStatus = false;

var storage = storages.create('激活码');

log(storage.get('activation'));

if(storage.get('activation')){
    
    var res = ui.machineCode.text() +"aaa"

    var res2 = storage.get('activation').split('&');
    var activationCode = res2[0];
    var timestamp = res2[1];

    log(timestamp)
    
    var timestamp2 = dateFormat(new Date(parseInt(timestamp)), "yyyyMMddhhmmss");

    if(activationCode === res.toString() && validTime(timestamp2)){
        scriptStatus = true;
        
        ui.time.setText(dateFormat(new Date(parseInt(timestamp)), 'yyyy年MM月dd日 hh:mm:ss'))
    }else{
        log("没有验证通过")
    }
}


ui.activation.on('click',function(){

    //取算法得到的值
    var res = ui.machineCode.text() +"aaa"

    var res2 = ui.activationCode.text().split('&');
    var activationCode = res2[0];
    var timestamp = res2[1];

    log(timestamp)
    
    // log(typeof(ui.activationCode.text()))

    // log(typeof(res.toString()))

    //验证时间是否过期
    // 1、获取当前的时间
    //2、比较当前的时间和激活码的时间
    var timestamp2 = dateFormat(new Date(parseInt(timestamp)), "yyyyMMddhhmmss");

    // if(toTime() > timestamp || IntTime() > timestamp){
    //     toast("时间已过期")
    // }

    
    if(activationCode === res.toString() && validTime(timestamp2)){
        //存储激活码数据

        storage.put('activation',ui.activationCode.text())

        scriptStatus = true;
        alert('激活成功！');
        ui.time.setText(dateFormat(new Date(parseInt(timestamp)), 'yyyy年MM月dd日 hh:mm:ss'))
    }else{
        alert('激活失败！');
    }

    

    // alert('激活成功！');
})

ui.startScript.click(function(){
    if(!scriptStatus){
        toast('未激活！')
        return;
    }
    threads.start(function(){
        main()
    }); 
})

function main(){
    toast('脚本开始运行');
    sleep(1000);
    home();
    toast('脚本运行结束');
}


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

//获取当前的时间
function toTime() {
    return new java.text.SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
}

//获取网络时间

function IntTime() {
    try {
        var recode_suning = http.get("http://quan.suning.com/getSysTime.do");
        var suningTime = recode_suning.body.json();
        return suningTime.sysTime1;
    } catch (e) {}
}
//验证时间是否过期
function validTime(ntime) {
    if (toTime() < ntime || IntTime() < ntime) {
        return true;
    } else {
        return false;
    }
}