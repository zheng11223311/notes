//改变跟多图标向上
var more_bottom=document.querySelector('.container li:last-child')
more_bottom.onmouseover=function(){
    // console.log(more_bottom.children[0].children[0]);
    more_bottom.children[0].children[0].classList.add('icon-xiangshang2')
    more_bottom.children[0].children[0].classList.remove('icon-xiangxia2')
    more_bottom.children[1].style.display='block'
}
more_bottom.onmouseout=function(){
    // console.log(more_bottom);
    more_bottom.children[0].children[0].classList.add('icon-xiangxia2')
    more_bottom.children[0].children[0].classList.remove('icon-xiangshang2')
    more_bottom.children[1].style.display='none'
}

//搜索歌曲的显示与隐藏
var search_song=document.querySelector('.search_song')
var search_inp=document.querySelector('.search form input:first-child')
console.log(search_song.children);
search_inp.onmouseover=function(){
    // console.log(more_bottom.children[0].children[0]);
    for(let i of search_song.children){
        i.style.display="block"
    }
}
search_song.onmouseleave=function(){
    for(let i of search_song.children){
        i.style.display="none"
    }
}
//搜索歌曲的点击播放与暂停
var fl=true
for(let i of search_song.children){
    // console.log(i.children[1].children[0]);
    var ico=document.createElement('i')
   var bof=true
    if(bof){
        i.children[1].children[0].onmouseover=function(){
            bof=false
            ico.style.position="absolute"
            ico.classList.add('iconfont')
            if(fl){
                ico.classList.add('icon-bofang')
                ico.classList.remove('icon-zanting')
            }
            ico.style.fontSize='60px'
            ico.style.marginTop='25px'
            ico.style.marginLeft='-70px'
            ico.style.zIndex='999'
            i.children[1].insertBefore(ico,i.children[1].children[0])
            // console.log( i.children[1]);
    }
    

            i.children[1].children[0].addEventListener('click',function(){
                console.log(i.children[1].children[0]);     //i
                for(let ii of search_song.children){
                    ii.children[0].pause()
                }
                if(fl){
                    fl=!fl
                    i.children[0].play()
                    ico.classList.add('icon-zanting')
                    ico.classList.remove('icon-bofang')
                    // if(i.children[0].currentTime>=i.children[0].duration){
                        
                    // }
                }else{
                    fl=!fl
                    i.children[0].pause()
                    ico.classList.add('icon-bofang')
                    ico.classList.remove('icon-zanting')
                }
            },true)
    }
    

    
    
}