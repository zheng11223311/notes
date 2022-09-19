    // 禁止图片拖动
    var img=document.querySelectorAll('img')
     img.forEach((el,index1)=>{
            el.setAttribute('ondragstart','return false')
        })
    // 音乐静音
    var musicPlayimg=document.querySelectorAll('header>span>img')[1]
    var musicPlayimg1=document.querySelectorAll('header>span>img')[0]
    var musicPlay=document.querySelector('header>span>audio');
   var musicFlag=1;
    musicPlayimg.onclick=function(){
        console.log(musicPlay);
        if(musicFlag==1){
            //设置静音无效
            musicPlay.pause()
            musicFlag=0
            musicPlayimg1.style.animation='none'
            musicPlayimg.style.opacity='0'
        }else{
            musicPlay.play()
            musicFlag=1
            musicPlayimg1.style.animation='musicPlay 2s linear forwards infinite'
            musicPlayimg.style.opacity='1'
        }
    }
var div=document.querySelectorAll('header>div')
var input=document.querySelectorAll('input')
input.forEach((el,index)=>{
el.onclick=function(e){
    // 如果父元素是mousedown,阻止不了冒泡
   e.stopPropagation();
}
})

var header=document.querySelector('header')
                div[0].style.display='block'
div.forEach((e,index)=>{
    div[index].onmouseenter=function(){
       e.onclick=function(){
                div[index].style.display='none'
                if(index===div.length-1){
                    index=0;
                     div[index].style.display='block'
                }else{
                    div[index+1].style.display='block'
                }
       }
    }
})