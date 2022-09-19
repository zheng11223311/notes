let sort_song="热歌榜"
url1="https://api.vvhan.com/api/rand.music?type=json&sort="
url=url1+sort_song

var wyymusic_music=document.querySelector(".wyymusic audio")
function get_music(){
    $.ajax({          
        url, 
    type:"GET", 
    async:"true",
    success:function(wyymusic_music_data){
        console.log(wyymusic_music_data);
       
        var wyymusic_img=document.querySelector(".wyymusic .player>img")
        wyymusic_img.src=wyymusic_music_data.info.picUrl ??= "https://picsum.photos/300/300"
    
        var wyymusic_name=document.querySelector(".wyymusic .player .info h1")
        wyymusic_name.innerHTML=wyymusic_music_data.info.name
        
        var wyymusic_auther=document.querySelector(".wyymusic .player .info p")
        wyymusic_auther.innerHTML=wyymusic_music_data.info.auther
    
    
        
        wyymusic_music.src=wyymusic_music_data.info.mp3url
        // 报错原因是chrome新特性，内容大致意思是开发者不能利用手中权限去给用户造成噪音干扰，
        // 首次加载页面需要用户和audio/video进行交互
       
        // 首次点击与audio交互，设置10毫秒用户也并不会听到铃声，再次使用时设置告警时间即可

        // console.log(wyymusic_music.duration);
        // console.log(wyymusic_music.duration/60/60/1000);
    
        var wyymusic_music_time_start=document.querySelector(".wyymusic .player .prog .prog-time .left")
        var wyymusic_music_time_end=document.querySelector(".wyymusic .player .prog .prog-time .right")
        wyymusic_music.ontimeupdate=function(){
            //设置时间
            wyymusic_music_time_start.innerHTML="00:00"
            if(!isNaN(wyymusic_music.duration)){
               let end_min= parseInt(parseInt(wyymusic_music.duration)/60)
               let end_sec= parseInt(wyymusic_music.duration)%60<10?"0"+parseInt(wyymusic_music.duration)%60:parseInt(wyymusic_music.duration)%60
                wyymusic_music_time_end.innerHTML=end_min+":"+end_sec
                 // console.log(parseInt(parseInt(wyymusic_music.duration)/60));
                // console.log(parseInt(wyymusic_music.duration)%60);
    
               let start_min= parseInt(parseInt(wyymusic_music.currentTime)/60 )
               let start_sec= parseInt(wyymusic_music.currentTime)%60<10?"0"+parseInt(wyymusic_music.currentTime)%60:parseInt(wyymusic_music.currentTime)%60
               wyymusic_music_time_start.innerHTML=start_min+":"+start_sec
    
    
                 //时间进度条
            let wyymusic_music_time_bar_out=document.querySelector(".wyymusic .player .prog .prog-bar")
            let wyymusic_music_time_bar_inner=document.querySelector(".wyymusic .player .prog .prog-bar .prog-bar-inner")
            // console.log(wyymusic_music_time_bar.style.width);
            
            function get(element){
                if(element.currentStyle){
                    return element.currentStyle.width; //ie下先获取样式
                }else{
                    return getComputedStyle(element,false).width; //FF下获取样式
                }
            }
    
            // console.log(get(wyymusic_music_time_bar));
             //去除px 单位
             let wyymusic_music_time_bar_long=get(wyymusic_music_time_bar_out).replace(/px/,"")
            let late=parseInt(wyymusic_music_time_bar_long)/parseInt(wyymusic_music.duration)
            //  console.log(late);
             let wyymusic_music_time_bar_result=late*parseInt(wyymusic_music.currentTime)
             wyymusic_music_time_bar_inner.style.width=wyymusic_music_time_bar_result+"px"
    
            
            //  console.log(wyymusic_music.ended);
            var wyymusic_bgimg=document.querySelector(".wyymusic .player")
           let  wyymusic_bgimg1="url("+wyymusic_music_data.info.picUrl+")"
           if(wyymusic_bgimg1!=""||wyymusic_bgimg1!="undefined"){
            wyymusic_bgimg.style.background=wyymusic_bgimg1
            wyymusic_bgimg.style.backgroundSize="cover"
           }
            
    
            }
           
    
    
          
        }
    
    
    },
    error:function(){
        console.log("获取歌曲失败！");
    }
    })
    
}


get_music()



//歌曲分类

var wyymusic_sort=document.querySelectorAll(".wyymusic .player>div.sort span")
// console.log(wyymusic_sort);

wyymusic_sort[0].style.backgroundColor="rgb(134, 124, 124)"
wyymusic_sort[0].style.color="#fff"

wyymusic_sort.forEach(function(item,index){
    
    item.onclick=function(){
        wyymusic_sort.forEach(function(item1,index1){
            item1.style.backgroundColor="rgb(51, 51, 51,0.6)"
            item1.style.color="#000"
        })
        this.style.backgroundColor="rgb(134, 124, 124)"
        this.style.color="#fff"
        sort_song=this.innerHTML
        url=url1+sort_song
        // console.log(url);
        get_music()
    }
})


wyymusic_music.addEventListener("timeupdate",function(){
    //结束自动播放下一首
    if(wyymusic_music.ended){
        get_music()
   }
})



let pause=false
var wyymusic_fn=document.querySelectorAll(".wyymusic .player .buttons  a")
wyymusic_fn[1].onclick=function(){
    get_music()
}
wyymusic_fn[2].onclick=function(){
    pause=!pause
    if(pause){
        wyymusic_music.pause()
        this.children[1].style.display="block"
        this.children[0].style.display="none"
    }else{
        wyymusic_music.play()
        this.children[1].style.display="none"
        this.children[0].style.display="block"
       
    }
    
}

//以下解决了浏览器禁止自动播放
wyymusic_fn[2].click()
wyymusic_fn[2].click()
wyymusic_music.muted = false;
//removeAttribute
wyymusic_music.removeAttribute("muted")
wyymusic_music.volume =1

wyymusic_fn[3].onclick=function(){
    get_music()
}

let wyymusic_pick_up=document.querySelectorAll(".wyymusic>span")
let wyymusic=document.querySelector(".wyymusic")
// console.log(wyymusic_pick_up);
console.log(wyymusic_pick_up[0]);
wyymusic_pick_up[0].onclick=function(){
    console.log(1);
    wyymusic.classList.add("wyymusic_pick_down")
    wyymusic.classList.remove("wyymusic_pick_up")
}
wyymusic_pick_up[1].onclick=function(){
    console.log(2);
    wyymusic.classList.remove("wyymusic_pick_down")
    wyymusic.classList.add("wyymusic_pick_up")
}