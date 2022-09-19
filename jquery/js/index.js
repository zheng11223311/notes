$(function(){
    // function Dog(){
        
    // }
    // Dog.prototype={
    //     // Dog.prototype 表示Dog 函数的原型
    //     //将Dog 默认的属性改为自定义属性
    //     constructor:Dog,
    //     init:function(){
    //         this.name='旺财',
    //         this.age=1
    //     },
    //     say:function(){
    //         console.log(this.name,this.age);
    //     }
    // }
  
    // var d=new Dog();
   // d.say()  //调用之前没有调用init,没有初始化init,就没有name,age
//    d.init()
//      d.say()


// function Dog(){
//         return new Dog.prototype.init()
//         //  new (Dog.prototype.init()) new 一个Dog.prototype.init()
//     }
//     Dog.prototype={
//         // Dog.prototype 表示Dog 函数的原型
//         //将Dog 默认的属性改为自定义属性
//         constructor:Dog,
//         init:function(){
//             this.name='旺财',
//             this.age=1
//         },
//         say:function(){
//             console.log(this.name,this.age);
//         }
//     }
//     Dog.prototype.init.prototype=Dog.prototype
//     var d=new Dog();
//     //这样就不用调用init()
// //    d.say()


//     console.log(Dog.prototype);
//     console.log(d.__proto__);


// $this 只是个变量名，加$是为说明其是个jquery对象。
    var $audio=$('audio')
    var player=new Player($audio)
    //1.加载歌曲列表
     getPlayerList()
    function getPlayerList(){
        $.ajax({
            url:"../json/musiclist.json",   //改成网络地址就是网络播放器
            dataType:"json",
            success:function(data){
                Player.musicList=data
              //3.1 遍历获取到的数据,创建每一条音乐
              $.each(data,function(index,ele){
                  var $item=createMusicItem(index,ele);
                  var $musicList=$('.content_list ul');
                  $musicList.append($item);
              })
            },
            error:function(e){
                console.log(e);
            }
        })
    }
   
    //2.初始化事件监听
    initEvents()
    function initEvents(){
         //1.监听歌曲的移除移除事件
    $('.content_list').delegate('.list_music','mouseenter',function(){
         //显示子菜单
        //find 找出所有后代元素 children 找出子元素
        $(this).find('.list_menu').stop().fadeIn(100);
         $(this).find('.list_time a').stop().fadeIn(100);
        //隐藏时长
         $(this).find('.list_time span').fadeOut(100);
    })
    $('.content_list').delegate('.list_music','mouseleave',function(){
         //隐藏子菜单
         $(this).find('.list_menu').stop().fadeOut(100);
         $(this).find('.list_time a').stop().fadeOut(100);
        //显示时长
        $(this).find('.list_time span').fadeIn(100);
    })
  
    // 2.监听复选框的点击事件
     $('.content_list').delegate('.list_check','click',function(){
         $(this).toggleClass('list_checked')
     })
    //3.添加子菜单播放按钮的监听
    var $musicPlay=$('.music_play')
    $('.content_list').delegate('.list_menu_play','click',function(){
        var $item=$(this).parents('.list_music')
        // console.log($item.get(0).index);
        // console.log($item.get(0).music);
       //3.1切换播放图标
        $(this).toggleClass('list_menu_play2')
        //3.2复原其他的播放图标
        $item.siblings().find('.list_menu_play').removeClass('list_menu_play2');

        //3.3 同步底部播放按钮
        if($(this).attr('class').indexOf('ist_menu_play2')!=-1){
            //当前子菜单的播放按钮是播放状态
            $musicPlay.addClass('music_play2')
            //让文字高亮
            $item.find('div').css('color','#fff')
             //让文字不高亮
             $item.siblings().find('div').css('color','rgba(255,255,255,0.5)')
        }else{
             //当前子菜单的播放按钮不是播放状态
            $musicPlay.removeClass('music_play2')
        }
        //3.4切换序号的状态
       $item.find('.list_number').toggleClass('list_number2')
        $item.siblings().find('.list_number').removeClass('list_number2')

      //3.5播放音乐
      player.playMusic($item.get(0).index,$item.get(0).music)
        
    })
     //4.监听底部控制区域播放按钮的点击

     $musicPlay.click(function(){
         //判断有没有播放过音乐
          if(player.currentIndex==-1){
              //没有播放过音乐
            $('.list_music').eq(0).find('.list_menu_play').trigger('click')
            
          }else{
              //已经播放过音乐
            $('.list_music').eq(player.currentIndex).find('.list_menu_play').trigger('click')
         
        }
      })
      //5.监听底部控制区域上一首按钮的点击
      $('.music_pre').click(function(){
        $('.list_music').eq(player.preIndex()).find('.list_menu_play').trigger('click') 
      })
      //6.监听底部控制区域下一首按钮的点击
      $('.music_next').click(function(){
        $('.list_music').eq(player.nextIndex()).find('.list_menu_play').trigger('click')  
      })
    //   7.监听删除按钮的点击
    $('.content_list').delegate('.list_menu_del','click',function(){
       //找到被点击的音乐
       var $item=$(this) .parents('.list_music')
       $item.removeClass()
       player.changMusic($item.get(0).index)
    })
    
}
   //定义一个方法创建每一条音乐
   function createMusicItem(index,music){
        var $item=$('<li class="list_music">'+
        '<div class="list_check"><i></i></div>'+
        '<div class="list_number ">'+(index+1)+'</div>'+
        '<div class="list_name">'+music.name+'<div class="list_menu">'+
        '<a href="javascript:;" title="播放" class="list_menu_play"></a>'+
        '<a href="javascript:;" title="添加"></a>'+
        '<a href="javascript:;" title="下载"></a>'+
        '<a href="javascript:;" title="分享"></a>'+
        '</div title=""></div>'+
        '<div class="list_singer">'+music.singer+'</div><div class="list_time"><span>'+
        music.time+'</span><a href="javascript:;" title="删除"></a></div></li>')

        $item.get(0).index=index
        $item.get(0).music=music
        return $item;
   }
})