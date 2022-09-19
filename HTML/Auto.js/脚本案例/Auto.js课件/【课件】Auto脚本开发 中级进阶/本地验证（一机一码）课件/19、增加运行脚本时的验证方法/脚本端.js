


"ui";

ui.layout(
    <vertical padding='10'>

        <button marginTop='150' id='activation' text="激活"/>

        <text id="end" text="到期时间：" textColor="green"/>
        <text id='time' text='未知'/>

        <button id='startScript' text="开始运行"/>

    </vertical>
);

var scriptStatus = false;

var uuid = md5(device.fingerprint);

var storage = storages.create('完善交互demo');
log(storage.get('activation'))

check()

// if(storage.get('activation')){
    
//     var res = validateCode(uuid,storage.get('activation'))
   
//     switch(res){
//             case 0:
//                 break;
//             case 1:
//                 storage.put('activation',activation)
//                 scriptStatus = true; 
//                 break;
//             case 2:    
//                 break;         
//     }
    
// }

ui.activation.click(function(){
    
    dialogs.build({
        title: "机器码：",
        content: uuid,
        negative: "输入激活码",
        positive: "复制机器码"
    }).on("positive", ()=>{

      setClip(uuid);
      toast("机器码已复制");

    }).on("negative", ()=>{
        rawInput("请输入激活码", "", activation => {

            // log(activation)
            
            var res = validateCode(uuid,activation);

            switch(res){
                case 0:
                    toast('激活失败！');
                    break;
                case 1:
                    storage.put('activation',activation)
                    scriptStatus = true;
                    toast('激活成功！');
                    break;
                case 2:
                    toast('激活码时间过期！');
                    break;         
            }


            
            
            // if(validateCode(uuid,activation)){
            //     //存储激活码数据
            //     storage.put('activation',activation)
            //     scriptStatus = true;
            //     toast('激活成功！');
            // }else{
            //     toast('激活失败！');
            // }

        });
    }).show();

})

ui.startScript.click(function(){
    
    check();

    if(!scriptStatus){
        toast('未激活！')
        return;
    }
    threads.start(function(){
        main()
    }); 
})

//脚本主函数
function main(){
    toast('脚本开始运行');
    sleep(1000);
    home();
    toast('脚本运行结束');
}

function check(){
    if(storage.get('activation')){
    
        var res = validateCode(uuid,storage.get('activation'))
       
        switch(res){
                case 0:
                    scriptStatus = false; 
                    break;
                case 1:
                    scriptStatus = true; 
                    break;
                case 2:
                    scriptStatus = false;    
                    break;         
        }
        
    }
}

//验证激活码
function validateCode(uuid,activation){

    var codeArr = activation.split("&");

    var str1 = codeArr[0];

    var encryptTime = codeArr[1];

    var str2 = codeArr[2];

    var timestamp = (Number(encryptTime) * 100000) / 903 -10000;
    
    //格式化时间
    var timestamp2 = dateFormat(new Date(parseInt(timestamp)), "yyyyMMddhhmmss");

    //判断激活码是否有效
    if(str1 === md5(uuid+timestamp) && str2 === md5((md5("litikj" +md5(uuid+timestamp) +"litikj")+"litikj") +encryptTime +md5(uuid)+"112233")){
        //算法一样
        if(validTime(timestamp2)){
            //时间正常
            ui.end.setText('到期时间:');
            ui.time.setText(dateFormat(new Date(parseInt(timestamp)), 'yyyy年MM月dd日 hh:mm:ss'))
            return 1;
        }else{
            //时间过期
            ui.end.setText('时间过期:');
            ui.time.setText(dateFormat(new Date(parseInt(timestamp)), 'yyyy年MM月dd日 hh:mm:ss'))
            return 2;
        }
    }else{
        //算法不一样
        return 0;
    }

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













toast('阿涛qq/微信：656206105')