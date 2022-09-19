# Autojs 本地验证（一机一码）

主讲：**阿涛 QQ/微信：656206105**

**官方网站：www.litikj.com**

**微信公众号：立体空间**

![](dyh.jpg)

### 1、一机一码的实现原理

```
机器码：设备的唯一标识

注册机：用于激活设备，生成激活码。

激活码：用于激活设备
```



### 2、一机一码UI界面的开发

```js
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
```



### 3、注册机UI界面的开发

```js
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
```



### 4、获取手机唯一标识

```js
// var uuid = device.fingerprint;

var imei = device.getIMEI()

toast(imei)
```



### 5、完成第一个脚本注册机验证

```js
脚本端

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


```

```js

注册机端

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



```



### 6、对手机唯一标识符进行加密

```js
function md5(string){
	var res=java.math.BigInteger(1,java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(string).getBytes())).toString(16);
	while(res.length<32)res="0"+res;
	return res;
}
```



### 7、增加时间验证

```js

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
```



### 8、增加时间验证（二）





### 9、开发日卡、月卡、年卡功能

```
<horizontal>
    <text textSize="16sp">充值类型</text>
    <spinner id="sp1" entries="月卡|年卡" textColor="red"/>
</horizontal>
```

```js
ui.sp1.getSelectedItemPosition();
```



### 10、激活码限制脚本运行

```js
function validTime(ntime) {
    if (toTime() < ntime || IntTime() < ntime) {
        return true;
    } else {
        return false;
    }
}

function toTime() {
    return new java.text.SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
}

function IntTime() {
    try {
        var recode_suning = http.get("http://quan.suning.com/getSysTime.do");
        var suningTime = recode_suning.body.json();
        return suningTime.sysTime1;
    } catch (e) {}
}
```



### 11、保存激活状态到本地

```
var storage = storages.create('activation');
```



### 12、解决时间验证bug方法



### 13、完善激活码交互逻辑

```js
dialogs.build({
        title: "机器码：",
        content: uuid,
        negative: "输入激活码",
        positive: "复制机器码"
    }).on("positive", ()=>{
      setClip(uuid);
      toast("机器码已复制");
    }).on("negative", ()=>{
        rawInput("请输入激活码", "", 激活码 => {
            
       });
    }).show();
```



### 14、封装验证激活码函数(一)

```js

//验证激活码
function validateCode(uuid,activation){
    //取算法得到的值
    var res = uuid +"aaa";
    //解密激活码
    var res2 = activation.split('&');
    var activationCode = res2[0];
    var timestamp = res2[1];

    //获取未来的格式化时间
    var timestamp2 = dateFormat(new Date(parseInt(timestamp)), "yyyyMMddhhmmss");

    if(activationCode === res.toString() && validTime(timestamp2)){
        return true;
    }else{
        return false;
    }
}
```



### 15、封装验证激活码函数(二)

```js
//验证激活码
function validateCode(uuid,activation){
    //取算法得到的值
    var res = uuid +"aaa";
    //解密激活码
    var res2 = activation.split('&');
    var activationCode = res2[0];
    var timestamp = res2[1];

    //获取未来的格式化时间
    var timestamp2 = dateFormat(new Date(parseInt(timestamp)), "yyyyMMddhhmmss");

    if(activationCode === res.toString()){
        if(validTime(timestamp2)){
            return 1;
        }else{
            return 2;
        }
    }else{
        return 0;
    }
}
```



### 16、封装注册机加密函数

```js
//算法函数
function encrypt(machineCode,timestamp){

    var activationCode = machineCode + 'aaa&'+timestamp;

    return activationCode;

}
```



### 17、升级加密复杂度（一）

```js
var 加密字符串1 = md5(uuid+timestamp);
var 加密时间 = ((timestamp-0+10000)*903)/100000;
var 加密字符串2 = md5((md5("litikj" +加密字符串1 +"litikj")+"litikj") +加密时间 +md5(uuid)+"112233");

var 激活码 = 加密字符串1+"&"+加密时间+"&"+加密字符串2
```



### 18、升级加密复杂度（二）

```js
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
```



### 19、增加运行脚本时的验证方法

```js
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
```



### 20、给脚本添加一机一码功能（一）



### 21、给脚本添加一机一码功能（二）



### 22、





