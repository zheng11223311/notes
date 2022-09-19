// 开始功能 
var da=document.querySelector('.a');
var body=document.body;

// console.log(1);
// alert(111);
da.addEventListener('click',function(){
    setTimeout(function(){
        da.style.display='none';
        // 修改背景无效?
        // body.style.backgroundImage='none';
    },1600);
    
});

// Header 模块
var h=document.querySelector('header');
var hd=h.querySelectorAll('.hd');
// console.log(hd[3]);
var hdspan=h.querySelectorAll('span');
var hd3=hdspan[3].querySelector('div');
var flag=0;
 var nav =document.querySelector('nav');
// console.log(hd3);
// console.log(hdspan[3]);
//点击事件要在判断条件里面,因为在判断条件判断后不能自动点击
hd3.onclick=function(){
              if(flag==0){
             hd3.style.left='80%';
             hd3.innerHTML='关';
             nav.style.display='none';
             flag=1;
           }else{
            // console.log(hd3);
            hd3.style.left='0%';
             hd3.innerHTML='开';
             nav.style.display='block';
             flag=0;
        }
    }
for(var i=0;i<hd.length;i++){
    hdspan[i].style.display='none';
    // console.log(hd.length);
    // console.log(1);
  
(function(arg){
       hd[arg].onclick = function(){
        //    console.log(arg);
        //    console.log(hd[arg]);
        var flag=0;
        if(flag==0){
           hdspan[0].style.left='0';
          
           hdspan[3].style.left='70%';
           hdspan[3].style.width='30%';
           hdspan[3].style.height='1rem';
           hdspan[3].style.borderRadius='0.5rem';
           
           for(var i=0;i<hd.length;i++){
               hdspan[i].style.display='none';
                hd[i].style.color='#fff';
           }
           hdspan[arg].style.display='block';
            hd[arg].style.color='red';
            flag=1;
           
        }else{
            
                console.log(1);
            hdspan[arg].style.display='none';
            flag=0;
       };
    }
   })(i)  
}
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
// nav 模块

 var nd=nav.querySelectorAll('div');