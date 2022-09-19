// 头部开发
var h=document.querySelector('.header');
var body=document.body;
// console.log(body);
var hspan=h.querySelectorAll('span');
var hsp=h.querySelectorAll('p');
for(var i=0;i<hspan.length;i++){
    // console.log(hspan[i]);
    (function(i){
        hspan[i].onclick=function(){
           for(var j=0;j<hspan.length;j++){
               hsp[j].style.display='none';
           }
            hsp[i].style.display='block';
        //  放在onclick 内,放在外面也会异步
              h.onmouseleave=function(){
            //   console.log(i);
              hsp[i].style.display='none';
            //   console.log(hsp[i]);
          }
           }
          
    })(i);
}
 var nav=document.querySelector('nav');

window.onscroll=function(){
  // alert('你好');
  // var bodyli=document.createElement('li');
  // var litext=document.createTextNode('你好');
  
  // 括号内不用引号
  // body.appendChild(bodyli);
 nav.style.right='0';
if(nav.style.right='0'){
  setTimeout(function(){
     nav.style.right='-5vh';
  },2000)
}
}
