
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
var mainEngine;
var index;

var ii=setInterval(()=>{},1000)
events.on("prepare",function(i,obj){
    mainEngine=obj;
    index=i;
    main();
    clearInterval(ii);
});


//执行逻辑
function main(){
   for(var i=0;i<10;i++){
      log("这里是脚本3 loop"+i);
      sleep(100);
   }
   mainEngine.emit("control",index);
}


//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
