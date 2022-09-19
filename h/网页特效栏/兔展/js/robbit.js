// header
var li=document.querySelectorAll('header>div>ul>li')
var lidiv=document.querySelectorAll('header>div>ul>li>div')
// console.log(lidiv);
li[1].onmouseenter=function(){
    lidiv[0].style.display='block'
}
li[2].onmouseenter=function(){
    lidiv[1].style.display='block'
}
li[3].onmouseenter=function(){
    lidiv[2].style.display='block'
}
li[4].onmouseenter=function(){
    lidiv[3].style.display='block'
}
li[5].onmouseenter=function(){
    lidiv[4].style.display='flex'
}
li.forEach((e,index) => {
    e.onmouseleave=function(){
    lidiv.forEach((el,i)=>{
        el.style.display='none'
    })
}
});

// nav 部分
var ndiv=document.querySelectorAll('nav div:nth-child(1)>div')
var ndivimg=document.querySelector('nav div:nth-child(1)>div>span')
// console.log(ndivimg);
var trs=0
var time1=setInterval(function(){
    trs -=950;
    // console.log(trs);
    if(trs=== -2850){
            trs=0
            ndivimg.style.transform='translateX('+trs+'px)';
    }else{
         ndivimg.style.transform='translateX('+trs+'px)';
    }
   
},2000)
    var footers=document.querySelector('footer>div>span:nth-child(5)')
    // console.log(footers);
    var y=500;
    footers.addEventListener('click',function(e){
        // console.log(e);
        // ;//获得鼠标在可是窗口中的坐标,如果有控制台面板,控制台面板的面积要除去
    //   console.log( e.clientX);
    // 整个页面的坐标
    //    console.log( e.pageX);
    // console.log(e.screenX);//鼠标在电脑屏幕的x和y坐标
    // var body=document.querySelector('body')
    // 法一
        // window.scrollTo(0,0);   //x,y 坐标
        // 在窗体中如果有滚动条，将横向滚动条移动到相对于窗体宽度为
        // x个像素的位置，将纵向滚动条移动到相对于窗体高度为y个像素
        // 的位置(如果没有滚动条，页面不会发生任何变化)

        // 法二
        // js 利用定时器逐步设置函数减速滚动到顶部
        // 法三
    //      btn.onclick = function(){

    //    $('body,html').animate({scrollTop:0},300)

    // }
    var el= e.clientY
    // 当可视区域小于页面的实际高度时，判定为出现滚动条
    //   console.log(document.documentElement.clientHeight);
    //   console.log(document.documentElement.offsetHeight);
 if ( !document.documentElement.scrollTop==0){
     var time2=setInterval(function(){
      el=el-50
      window.scrollTo(0,el)
    //   console.log(el);
        if(el<=0)clearInterval(time2)
      },40)
      
 }
     
 
           
        

    })