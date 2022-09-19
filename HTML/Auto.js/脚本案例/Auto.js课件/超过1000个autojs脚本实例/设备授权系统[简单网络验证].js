
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
/**
autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
1群:168196007 
2群:830810438 
3群:571854376 
4群:63732194
5群:592916456
 */

//启用本地存储
 var id_data = storages.create("本地id存储");
 
 if(!id_data.get("设备id")){
     //检查设备id是否存在,不存在则随机生成24位
     var yourId = randomId(false,24);
     //把设备id存入本地
     id_data.put("设备id",yourId);
     var ChooseItem = ["复制到粘贴板","不用了谢谢"]
var item_i = dialogs.select("首次使用你的设备id如下：\n"+yourId,ChooseItem);
if(item_i == 0){
    //复制id到粘贴板
    setClip(yourId);
    toastLog("\n已复制设备id到输入法粘贴板");
    }
     
     } 
     
     
         
     var 你的收藏链接id_ = "4385a9d0e28d4ae8529e086f54673556";//这里一次性就可以了，之前思路搞错了
 var 获取链接内容_ = http.get("https://api.uomg.com/api/get.weiyun?wid=" + 你的收藏链接id_ + "&format=json").body.json().text;
 var 需要检查的id = id_data.get("设备id");
//https://api.uomg.com/api/get.weiyun?wid=17aa4b8e9a8f03990b8a99dc111a5a2c&format=json这里打不开，不用试了
 
 var Permissions_result = CheckId(需要检查的id);

 if (Permissions_result.授权状态_ == "已授权") {
     //授权了可以执行什么
     toastLog("恭喜，你的设备已授权"+"\n设备过期时间为："+Permissions_result.过期时间_);
  //如果此处写授权成功代码，到期后会正常运作，没达到效果
 } else {
     //未授权该怎么做，这里是结束脚本
     toastLog("\n抱歉，你的设备未授权，如需授权请联系管理员\n你的设备id已复制到粘贴板");
     setClip(需要检查的id);
     exit();
 }
id_data.put("到期时间",Permissions_result.过期时间_);
 function CheckId(id) {
     for (v of 获取链接内容_) {

         if (v.id == id && v.授权_ == "已授权") {
             return {
                 "授权状态_": "已授权",
                 "过期时间_": v.过期时间_
             };
         }
     }
     return {
         "授权状态": "未授权",
         "过期时间_": v.过期时间_
     };
}
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

 //心跳线程检查过期时间
 threads.start(function() {
     setInterval(() => {
         var nowTime = IntTime();
   //   toastLog(typeof nowTime)
       
     //    toastLog(typeof Permissions_result.过期时间_)
         if (nowTime > Permissions_result.过期时间_) {
             toastLog("你的设备授权已过期,如需继续使用，请联系管理员\n设备id已复制到您的粘贴板");
             setClip(需要检查的id);
             exit();
         }else{engines.execScriptFile("./主体.js");exit()}
//最终授权成功运行代码应在此处
     }, 1000)

 })

 //获取网络时间，防止本地时间被修改
 function IntTime() {
     try {
         var recode_suning = http.get("http://quan.suning.com/getSysTime.do");
         var suningTime = recode_suning.body.json();
         return suningTime.sysTime1;
     } catch (e) {
         toastLog("网络错误,请检查")
         return 0;
     }
 }
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

//随机产生设备id
 function randomId(randomFlag, min, max){
    var str = "",
        range = min,
        arr = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
 
    if(randomFlag){
        range = Math.round(Math.random() * (max-min)) + min;
    }
    for(var i=0; i<range; i++){
        pos = Math.round(Math.random() * (arr.length-1));
        str += arr[pos];
    }
    return str;
}
 /*catch(e){
    toastLog("当前设备还没有给予授权，请联系作者"); 
     }*/
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
