$(function(){
    // console.log($('header>ul>li'));
    //  array.forEach(element => {
        //  不能使用
    //  });
   
 var j=0;

    // 背景图片切换
$('header>ul>li').eq(0).mouseenter(function(){
    
    var i=0;
    this.style.backgroundPosition=-357+'px  0px';
    // $('header>ul>li').eq(0).siblings()
    //   console.log( event);
    //   console.log(typeof event);
     $('header>ul>li').eq(0).click(function(){
        j=0;
    this.style.backgroundPosition=-357+'px  0px';
     $('header>ul>li').eq(1).css('backgroundPosition',-47+'px  0px');
      $('header>ul>li').eq(2).css('backgroundPosition',-102+'px  0px');
       $('header>ul>li').eq(3).css('backgroundPosition',-157+'px  0px');
        $('header>ul>li').eq(4).css('backgroundPosition',-212+'px  0px');
         $('header>ul>li').eq(5).css('backgroundPosition',-268+'px  0px');
        // 切换视频
        $('header>div>video').attr('src','./video/gfsj_zy.mp4')
    i=1;
    return i,j;
});

  $('header>ul>li').eq(0).mouseleave(function(event){
    //  console.log(event.target); 
   if(i==1){
       return false;
   }else{
        this.style.backgroundPosition=12+'px  0px';
   }  
});
   })
// 第二个li
   $('header>ul>li').eq(1).mouseenter(function(){
    
    var i=0;
     this.style.backgroundPosition=-416+'px  0px';
     $('header>ul>li').eq(1).click(function(){
          j=1;
     this.style.backgroundPosition=-416+'px  0px';
      $('header>ul>li').eq(0).css('backgroundPosition',12+'px  0px');
      $('header>ul>li').eq(2).css('backgroundPosition',-102+'px  0px');
       $('header>ul>li').eq(3).css('backgroundPosition',-157+'px  0px');
        $('header>ul>li').eq(4).css('backgroundPosition',-212+'px  0px');
         $('header>ul>li').eq(5).css('backgroundPosition',-268+'px  0px');
      // 切换视频
        $('header>div>video').attr('src','./video/gfsj_xj.mp4')
         i=1;
    return i,j;
});
  $('header>ul>li').eq(1).mouseleave(function(event){
   if(i==1){
       return false;
   }else{
        this.style.backgroundPosition=-47+'px  0px';
   }  
});
   })
// 第三个li
   $('header>ul>li').eq(2).mouseenter(function(){
      
    var i=0;
     this.style.backgroundPosition=-471+'px  0px';
     $('header>ul>li').eq(2).click(function(){
         j=2;
     this.style.backgroundPosition=-471+'px  0px';
      $('header>ul>li').eq(0).css('backgroundPosition',12+'px  0px');
      $('header>ul>li').eq(1).css('backgroundPosition',-47+'px  0px');
       $('header>ul>li').eq(3).css('backgroundPosition',-157+'px  0px');
        $('header>ul>li').eq(4).css('backgroundPosition',-212+'px  0px');
         $('header>ul>li').eq(5).css('backgroundPosition',-268+'px  0px');
      // 切换视频
        $('header>div>video').attr('src','./video/gfsj_gy.mp4')
         i=1;
    return i;
});
  $('header>ul>li').eq(2).mouseleave(function(event){
   if(i==1){
       return false;
   }else{
        this.style.backgroundPosition=-102+'px  0px';
   }  
});
   })
// 第四个li
   $('header>ul>li').eq(3).mouseenter(function(){
     
    var i=0;
     this.style.backgroundPosition=-526+'px  0px';
     $('header>ul>li').eq(3).click(function(){
         j=3;
     this.style.backgroundPosition=-526+'px  0px';
      $('header>ul>li').eq(0).css('backgroundPosition',12+'px  0px');
      $('header>ul>li').eq(1).css('backgroundPosition',-47+'px  0px');
       $('header>ul>li').eq(2).css('backgroundPosition',-102+'px  0px');
        $('header>ul>li').eq(4).css('backgroundPosition',-212+'px  0px');
         $('header>ul>li').eq(5).css('backgroundPosition',-268+'px  0px');
    // 切换视频
        $('header>div>video').attr('src','./video/gfsj_sl.mp4')
         i=1;
    return i;
});
  $('header>ul>li').eq(3).mouseleave(function(event){
   if(i==1){
       return false;
   }else{
        this.style.backgroundPosition=-157+'px  0px';
   }  
});
   })
// 第五个li
   $('header>ul>li').eq(4).mouseenter(function(){
      
    var i=0;
     this.style.backgroundPosition=-582+'px  0px';
     $('header>ul>li').eq(4).click(function(){
         j=4;
     this.style.backgroundPosition=-582+'px  0px';
      $('header>ul>li').eq(0).css('backgroundPosition',12+'px  0px');
      $('header>ul>li').eq(1).css('backgroundPosition',-47+'px  0px');
       $('header>ul>li').eq(2).css('backgroundPosition',-102+'px  0px');
        $('header>ul>li').eq(3).css('backgroundPosition',-157+'px  0px');
         $('header>ul>li').eq(5).css('backgroundPosition',-268+'px  0px');
      // 切换视频
        $('header>div>video').attr('src','./video/gfsj_hh.mp4')
         i=1;
    return i;
});
  $('header>ul>li').eq(4).mouseleave(function(event){
   if(i==1){
       return false;
   }else{
        this.style.backgroundPosition=-212+'px  0px';
   }  
});
   })
// 第六个li
   $('header>ul>li').eq(5).mouseenter(function(){
      
     
    var i=0;
     this.style.backgroundPosition=-637+'px  0px';
     $('header>ul>li').eq(5).click(function(){
         j=5;
     this.style.backgroundPosition=-637+'px  0px';
      $('header>ul>li').eq(0).css('backgroundPosition',12+'px  0px');
      $('header>ul>li').eq(1).css('backgroundPosition',-47+'px  0px');
       $('header>ul>li').eq(2).css('backgroundPosition',-102+'px  0px');
        $('header>ul>li').eq(3).css('backgroundPosition',-157+'px  0px');
         $('header>ul>li').eq(4).css('backgroundPosition',-212+'px  0px');
    // 切换视频
        $('header>div>video').attr('src','./video/gfsj_sc.mp4')
         i=1;
    return i;
});
  $('header>ul>li').eq(5).mouseleave(function(event){
   if(i==1){
       return false;
   }else{
        this.style.backgroundPosition=-268+'px  0px';
   }  
});
   })
//    定时切换
$('header>ul>li').eq(5).trigger('mouseenter').trigger('click');
var aa;
var set=function(){
    aa=setInterval(function(){
     
    if(j<6){
        console.log(j);
        $('header>ul>li').eq(j).trigger('mouseenter').trigger('click').trigger('mouseleave');
        j++;
    }else{
        j=0;
    }
   
},4000)
}
set();

})