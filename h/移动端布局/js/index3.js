// header 模块
var h=document.querySelector('header');
var hd=h.querySelectorAll('div');
var hds=hd[0].querySelector('span');
var body=document.body;
// var date=new Date();
// console.log(date.getHours());

timer();
setInterval('timer()',1000);
//date 放在函数外部时,定时器不会执行  可能原因是函数无法访问data对象内部
function timer(){
    var date=new Date();
    var h=date.getHours();
    var m=date.getMinutes();
    var s=date.getSeconds();
    h=h<10? '0'+h:h;
    m=m<10? '0'+m:m;
    s=s<10? '0'+s:s;
    hds.innerHTML=h+' : '+m;
}
// console.log(hd[3]);
//下拉模块
hd[3].style.display='none';
h.onclick=function(){
    hd[3].style.display='block';
}
hd[3].onclick=function(event){
    // 阻止冒泡,但不阻止默认的事件发生
    event.stopPropagation();
    hd[3].classList.remove("down");
    hd[3].classList.add("up");
    setTimeout(function(){
         hd[3].style.display='none';
         hd[3].classList.remove("up");
    hd[3].classList.add("down");
    },1000);
}
// nav 模块
var fu=document.querySelector('.fu');
var fud=fu.querySelectorAll('div');
var fudimg=fud[0].querySelector('img');
var bhao=0;
fudimg.onclick=function (event){
    if(bhao==0){
        event.stopPropagation();
    console.log(1);
    console.log(fudimg.src);
    // 这里的这是改变了src 的属性的值,而不是路径,只是修改了字符,路径依然从html文件 处
    // 开始查找所以路径是./ 而不是 ../
    fudimg.src='./img/bhao.jpg';
    fudimg.style.transformOrigin='0 0 0';
    fudimg.style.position='absolute';
    fudimg.style.width='100%';
    fudimg.style.height='100%';
    fudimg.style.top='0';
    fudimg.style.left='0';
    fudimg.style.borderRadius='0';
    bhao=1;
}else{

     event.stopPropagation();
    fudimg.src='./img/12.png';
    fudimg.style.position='relative';
    fudimg.style.width='';
    fudimg.style.height='';
    fudimg.style.top='';
    fudimg.style.left='';
    fudimg.style.borderRadius='';
    bhao=0;
}
}
// for(var i=0;i<hd.length;i++){
  
// (function(arg){
//        hd[arg].onclick = function(){
//         var flag=0;
//         if(flag==0){
//            hdspan[0].style.left='0';
          
//            hdspan[3].style.left='70%';
//            hdspan[3].style.width='30%';
//            hdspan[3].style.height='1rem';
//            hdspan[3].style.borderRadius='0.5rem';
           
//            for(var i=0;i<hd.length;i++){
//                hdspan[i].style.display='none';
//                 hd[i].style.color='#fff';
//            }
//            hdspan[arg].style.display='block';
//             hd[arg].style.color='red';
//             flag=1;
           
//         }else{
            
//                 console.log(1);
//             hdspan[arg].style.display='none';
//             flag=0;
//        };
//     }
//    })(i)  
// }
// 法二 解决闭包问题
// var li = document.getElementsByTagName("li");
// for(var i = 0; i < li.length; i++) {
//     getConsole(i);
// }
 
 
// function getConsole(i){
//     li[i].addEventListener("click", function() {
//         console.log(i);
//     });
     
// }
