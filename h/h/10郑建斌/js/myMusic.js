//获取音乐信息
function getPlayerList() {
    $.ajax({
        url: "../json/musiclist.json",   //改成网络地址就是网络播放器
        dataType: "json",
        success: function (data) {
            getPlayerList.prototype.musicData = data
            //3.1 遍历获取到的数据,创建每一条音乐
            $.each(data, function (index, ele) {
                //   console.log(ele);
                var ul = $('.content_list ul')
                ul.append(`
                    <li class="list_item">
                            <div class="list_check"><i></i></div>
                            <div class="list_number">`+ (index + 1) + `</div>
                            <div class="list_name">`+ ele.name + `</div>
                            <div class="list_li_pic">
                            <span class="list_li_pic_item"></span>
                            <span class="list_li_pic_item"></span>
                            <span class="list_li_pic_item"></span>
                            </div>
                            <div class="list_singer">`+ ele.singer + `</div>
                            <div class="list_time">`+ ele.time + `</div>
                    </li>
                `)

            })
            playerHover(data)
            player(data)
            footerPlayer(data)
            nextSong(data)
            preSong(data)
            footerProcess(data)
            toggleVolume()
            dropVolume()
            
        },
        error: function (e) {
            console.log(e);
        }
    })

}

getPlayerList()

let status = {
    play: false,      //默认不播放
    index: null,      //li 位置
    currenttime: null,   //获取当前歌曲时间
    totaltime: null,     //获取当前歌曲总时间
    lrc_index:-1,       //歌词进度,默认-1

}
// 经过时显示效果
function playerHover(data) {
    console.log($('ul:eq(1)').children())
    //经过播放按钮
    $('ul:eq(1) .list_item ').hover(
        function () {
            //  console.log(data);

            $(this).children().eq(3).css('display', 'block')
        },
        function () {
            $(this).children().eq(3).css('display', 'none')
        }
    );
}
// 顶部播放按钮
function player(data) {
    $('ul:eq(1) .list_item ').click(function () {
        // console.log(this);
        console.log('当前li 位置' + status.index);

        //改变底部按钮

        if (status.index != $(this).index()) {
            //如果两次点击的音乐id 不一样,记录下来,并重新播放新的地址
            status.index = $(this).index()
            
            // 其他图标暂停
            $(this).parent().children().each((index, item) => {
                // console.log(item);
                $(item).children().eq(3).children().eq(0).css({
                    background: 'url(../img/icon_sprite@2x.png) no-repeat -112px -440px',
                })
            })
            $(this).parent().children().each((index, item) => {
                // console.log(item);
                $(item).children().eq(1).css({
                    background: '',
                    color:'rgba(0,0,0,1)'
                })
            })
            //播放图标
            // console.log($(this).children().eq(3).children().eq(0));
            $(this).children().eq(3).children().eq(0).css({
                background: 'url(../img/player.png) no-repeat -30px 0px',
                backgroundPosition: '-21px 0px',
            })
            // console.log($(this).children().eq(1));
            $(this).children().eq(1).css({
                background: 'url(../img/wave.gif) no-repeat 0px 20px',
                color:'rgba(0,0,0,0)'
            })
            //播放
            $('audio').attr('src', data[status.index - 1]['link_url'])
            $('audio').get(0).play()
            status.play = true
            liveServerFooterPlayer()
            //底部显示歌曲播放信息
            showName(data, status.index - 1)
            //非拖拽时底部进度条变化
            // processChange(data)
            // 修改右侧歌手信息
            singerInfo(data)
            // 获取歌词
            songLrc(data,status.index - 1)
        } else {
            //  两次点击同一个音乐
            status.play = !status.play
            liveServerFooterPlayer()
            //非拖拽时底部进度条变化
            // processChange(data)
            if (status.play) {
                // 其他图标暂停
                $(this).parent().children().each((index, item) => {
                    // console.log(item);
                    $(item).children().eq(3).children().eq(0).css({
                        background: 'url(../img/icon_sprite@2x.png) no-repeat -112px -440px',
                    })
                })
                 
                //播放图标
                $(this).children().eq(3).children().eq(0).css({
                    background: 'url(../img/player.png) no-repeat -30px 0px',
                    backgroundPosition: '-21px 0px',
                })
                $(this).children().eq(1).css({
                background: 'url(../img/wave.gif) no-repeat 0px 20px',
                color:'rgba(0,0,0,0)'
                })
                //播放
                //判断是否是同一首,同一首歌不进行src 加载
                if (status.index == null) {
                    $('audio').attr('src', data[status.index - 1]['link_url'])
                }

                $('audio').get(0).play()
                //底部显示歌曲播放信息
                showName(data, status.index - 1)
            } else {
                // 暂停图标
                $(this).parent().children().each((index, item) => {
                    // console.log(item);
                    $(item).children().eq(3).children().eq(0).css({
                        background: 'url(../img/icon_sprite@2x.png) no-repeat -112px -440px',
                    })
                })
                $(this).parent().children().each((index, item) => {
                $(item).children().eq(1).css({
                    background: '',
                    color:'rgba(0,0,0,1)'
                })
            })
                // 暂停
                $('audio').get(0).pause()
            }
        }
    })
}

// 底部播放按钮
function footerPlayer(data) {
    $('.footer_in .music_play').click(() => {

        //判断是否有歌曲可以播放
        if (status.index) {
            // 修改右侧歌手信息
            singerInfo(data)
            status.play = !status.play
            liveServerPlayer(status.index)
            //非拖拽时底部进度条变化
            // processChange(data)
            if (status.play) {
                console.log('处于播放');
                $('audio').get(0).play()
                //改变图片
                $('.footer_in .music_play').addClass('music_play2')
                //播放图标
                
                 $('.content_list ul').children().eq(status.index).children().eq(1).css({
                background: 'url(../img/wave.gif) no-repeat 0px 20px',
                color:'rgba(0,0,0,0)'
                })
                

            } else {
                console.log('处于暂停');
                $('audio').get(0).pause()
                //改变图片
                $('.footer_in .music_play').removeClass('music_play2')
                 $('.content_list ul').children().each((index, item) => {
                $(item).children().eq(1).css({
                    background: '',
                    color:'rgba(0,0,0,1)'
                })
            })
               
            }
        } else {
            console.log('没有歌曲可以播放');
        }
    })
}
// 同步顶部播放/暂停
function liveServerPlayer(index) {
    //同步顶部播放按钮
    if (status.play) {
        // 其他图标暂停
        $('ul:eq(1) .list_item ').parent().children().each((index, item) => {
            $(item).children().eq(3).children().eq(0).css({
                background: 'url(../img/icon_sprite@2x.png) no-repeat -112px -440px',
            })
        })
        // 当前图标播放
        $('ul:eq(1) .list_item ').parent().children().eq(index).children().eq(3).children().eq(0).css({
            background: 'url(../img/player.png) no-repeat -30px 0px',
            backgroundPosition: '-21px 0px',
        })
    } else {

        // 图标暂停
        $('ul:eq(1) .list_item ').parent().children().each((index, item) => {
            $(item).children().eq(3).children().eq(0).css({
                background: 'url(../img/icon_sprite@2x.png) no-repeat -112px -440px',
            })
        })
    }
}

// 同步底部播放/暂停
function liveServerFooterPlayer() {
    console.log('同步底部播放/暂停');
    //同步底部播放按钮
    if (status.play) {
        //改变图片
        $('.footer_in .music_play').addClass('music_play2')

    } else {
        //改变图片
        $('.footer_in .music_play').removeClass('music_play2')
    }
}


// 底部下一首歌曲点击事件
function nextSong(data) {
    $('.footer_in .music_next').click(() => {
        // console.log('执行');
        console.log(status.index);
        // 获取当前播放li 的位置,判断是否有播放列表
        if (status.index) {

            // console.log(status.index+1);
            // 当前li 为1,而data 为0
            //播放下一首歌的位置
            status.index = status.index + 1
            //判断是否播放完全部列表,切换到第一首歌
            if (status.index > data.length) {
                status.index = 1
            }
            // 获取歌词
            songLrc(data,status.index - 1)
            $('audio').attr('src', data[status.index - 1]['link_url'])
            $('audio').get(0).play()
            // 其他图标暂停
            $('.content_list ul').children().each((index, item) => {
                $(item).children().eq(1).css({
                    background: '',
                    color:'rgba(0,0,0,1)'
                })
            })
            //播放图标
             $('.content_list ul').children().eq(status.index).children().eq(1).css({
            background: 'url(../img/wave.gif) no-repeat 0px 20px',
            color:'rgba(0,0,0,0)'
            })
            //设置播放状态为true
            status.play = true
            // 调用顶部和底部同步函数
            liveServerFooterPlayer()
            liveServerPlayer(status.index)
            //底部显示歌曲播放信息
            showName(data, status.index - 1)
            // 修改右侧歌手信息
            singerInfo(data)
            
        } else {
            console.log('没有可以切换的歌曲');
        }

    })
}

// 底部上一首歌曲点击事件
function preSong(data) {
    $('.footer_in .music_pre').click(() => {
        // console.log(status.index);
        // 获取当前播放li 的位置,判断是否有播放列表
        if (status.index) {

            //播放下一首歌的位置
            status.index = status.index - 1
            //判断当前是否在第一首,切换到最后一首歌
            if (status.index == 0) {
                status.index = data.length
            }
            $('audio').attr('src', data[status.index - 1]['link_url'])
            $('audio').get(0).play()
            // 其他图标暂停
            $('.content_list ul').children().each((index, item) => {
                $(item).children().eq(1).css({
                    background: '',
                    color:'rgba(0,0,0,1)'
                })
            })
            //播放图标
             $('.content_list ul').children().eq(status.index).children().eq(1).css({
            background: 'url(../img/wave.gif) no-repeat 0px 20px',
            color:'rgba(0,0,0,0)'
            })
            //设置播放状态为true
            status.play = true
            // 调用顶部和底部同步函数
            liveServerFooterPlayer()
            liveServerPlayer(status.index)
            //底部显示歌曲播放信息
            showName(data, status.index - 1)
            // 修改右侧歌手信息
            singerInfo(data)
            // 获取歌词
            songLrc(data,status.index - 1)
        } else {
            console.log('没有可以切换的歌曲');
        }
    })
}

// 底部显示播放名称信息
function showName(data, index) {
    //获取当前播放li 位置
    // console.log(data[index]['link_url']);
    // 更换歌曲名称
    $('.music_progress_top .music_progress_name').html(data[index]['name'])
    $('.music_progress_top .music_progress_name').css('color', '#fff')

    // 更换歌曲时间
    $('audio').get(0).ontimeupdate = function () {
        //获取歌曲总时长
        // console.log(this.duration);
        // console.log(this.currentTime);
        let totalTime = this.duration
        let currenttime = this.currentTime
        //获取并保存时间
        status.currenttime = this.currentTime
        status.totaltime = this.duration
        // console.log(currenttime);
        // 格式化进度时间
        let seconds = parseInt(currenttime % 60) >= 10 ? parseInt(currenttime % 60) : '0' + parseInt(currenttime % 60)
        let minutes = parseInt(currenttime / 60) >= 10 ? parseInt(currenttime / 60) : '0' + parseInt(currenttime / 60)
        //格式化总的时间
        let totalSeconds = parseInt(totalTime % 60) >= 10 ? parseInt(totalTime % 60) : '0' + parseInt(totalTime % 60)
        let totalMinutes = parseInt(totalTime / 60) >= 10 ? parseInt(totalTime / 60) : '0' + parseInt(totalTime / 60)
        // console.log(minutes+' : '+seconds);
        // 去除开始的 NaN
        // totalTime!=NaN 不起效果
        if (!isNaN(totalMinutes)) {
            $('.music_progress_top .music_progress_time').html(minutes + ' : ' + seconds + ' / ' + totalMinutes + ' : ' + totalSeconds)
            $('.music_progress_top .music_progress_time').css('color', '#fff')
            // 自动播放下一首
            // if(this.currentTime>=totalTime){
            //    $('audio').attr('src',data[index-1]['link_url'])
            //     $('audio').get(0).play()
            // }
        }
       
        // else{
        //     $('.music_progress_top .music_progress_time').html('00 : 00 / 00 : 00')
        //     $('.music_progress_top .music_progress_time').css('color','#fff')
        // }

    }
}
//拖拽底部进度条显示
function footerProcess(data) {
    //监听鼠标按下事件
    $('.music_progress_bar').mousedown(function () {
        //   bar 距离右边的宽度
        var normalLeft = $(this).offset().left

        //监听鼠标移动事件
        $(document).mousemove(function (e) {
            var eventLeft = e.pageX
            var length = eventLeft - normalLeft
            if (0 <= length && length <= 640) {
                $('.footer .music_progress_bar .music_progress_line').css('width', length)
                $('.footer .music_progress_bar .music_progress_dot').css('left', length - 7)
                let totalTime = $('audio').get(0).duration
                //改变音乐进度,将播放音乐的当前时间调整为移动的进度条
                $('audio').get(0).currentTime = length / 640 * totalTime
            $('audio').on('timeupdate', function () {
                    // console.log(this.currentTime);
                    length = this.currentTime / totalTime * 640
                    //获取并保存时间
                    status.currenttime = this.currentTime
                    status.currenttime = this.duration
                    $('.footer .music_progress_bar .music_progress_line').css('width', length)
                    $('.footer .music_progress_bar .music_progress_dot').css('left', length - 7)
                    
                    // 自动播放下一首
                    // console.log( this.currentTime);
                    // console.log( totalTime);
                    // console.log(this.currentTime>=totalTime-0.2);
                    //大于号点击跳转会出现，有时候会直接跳转到下一首歌
                    if (this.currentTime == totalTime) {
                        // console.log(this.currentTime);
                        // console.log(status.index);
                        // console.log(data.length);       //12
                        //判断是否为最后一首歌
                        if (status.index == data.length) {
                            console.log(status.index, data.length);
                            status.index = 0
                        }
                        // 更换歌曲名称
                        $('.music_progress_top .music_progress_name').html(data[status.index]['name'])
                        $('.music_progress_top .music_progress_name').css('color', '#fff')
                        $('audio').attr('src', data[status.index]['link_url'])
                        $('audio').get(0).play()


                        // 底部显示播放名称信息
                        status.index = status.index + 1
                        // 更换歌曲时间
                        let seconds = parseInt(this.currentTime % 60) >= 10 ? parseInt(this.currentTime % 60) : '0' + parseInt(this.currentTime % 60)
                        let minutes = parseInt(this.currentTime / 60) >= 10 ? parseInt(this.currentTime / 60) : '0' + parseInt(this.currentTime / 60)
                        //格式化总的时间
                        let totalSeconds = parseInt(totalTime % 60) >= 10 ? parseInt(totalTime % 60) : '0' + parseInt(totalTime % 60)
                        let totalMinutes = parseInt(totalTime / 60) >= 10 ? parseInt(totalTime / 60) : '0' + parseInt(totalTime / 60)
                        if (!isNaN(totalMinutes)) {
                            $('.music_progress_top .music_progress_time').html(minutes + ' : ' + seconds + ' / ' + totalMinutes + ' : ' + totalSeconds)
                            $('.music_progress_top .music_progress_time').css('color', '#fff')
                        }
                        // 其他图标暂停
                        $('.content_list ul').children().each((index, item) => {
                            $(item).children().eq(1).css({
                                background: '',
                                color:'rgba(0,0,0,1)'
                            })
                        })
                        //播放图标
                        $('.content_list ul').children().eq(status.index).children().eq(1).css({
                        background: 'url(../img/wave.gif) no-repeat 0px 20px',
                        color:'rgba(0,0,0,0)'
                        })
                        //设置播放状态为true
                        status.play = true
                        // 修改播放图标
                        liveServerFooterPlayer()
                        liveServerPlayer(status.index-1)
                         // 获取歌词
                        songLrc(data,status.index-1)
                        // 修改右侧歌手信息
                         singerInfo(data)
                        

                    }



                })
            }
        })


    })

    //监听鼠标抬起事件
    $(document).mouseup(function () {
        //移除事件
        $(document).off('mousemove')
    })
}
//非拖拽时底部进度条变化
function processChange(data) {
   
    songLrc(data,status.index)
}

// 点击音量图标切换音量
function toggleVolume() {
    //获取DOM 元素
    $('.music_voice_icon').click(() => {


        if ($('audio').get(0).volume != 0) {
            $('audio').get(0).volume = 0
            $('.music_voice_bar .music_voice_line').css('width', '0')
            $('.music_voice_bar .music_voice_dot').css('left', '-3px')
            $('.music_voice_icon').css('background','url(../img/player.png) no-repeat 0px -181px')
        } else {
            $('audio').get(0).volume = 0.5
            //  进度比例
            let rate = 50 / 70 * 0.5 * 100
            console.log(rate);
            $('.music_voice_bar .music_voice_line').css('width', rate)
            $('.music_voice_bar .music_voice_dot').css('left', rate)
             $('.music_voice_icon').css('background','url(../img/player.png) no-repeat 0px -143px')
            //  console.log( $('.music_voice_bar').css('width'));   //70px
            //  console.log( $('.music_voice_bar .music_voice_line').css('width'));   //50px


        }

    })
}

//拖拽音量进度条
function dropVolume() {
    $('.music_voice_bar').mousedown(function () {
        var normalLeft = $(this).offset().left
        //监听音量的移动事件
        $(document).mousemove(function (e) {
            var eventLeft = e.pageX
            var length = eventLeft - normalLeft
            if (0 < length && length <= 70) {
                $('.music_voice_bar .music_voice_line').css('width', length)
                $('.music_voice_bar .music_voice_dot').css('left', length - 5)
                $('audio').get(0).volume = length / 70
            }
        })
    })

    //监听鼠标抬起事件
    $(document).mouseup(function () {
        //移除事件
        $(document).off('mousemove')
    })
}
// 修改右侧歌手信息
function singerInfo(data) {
    // console.log(status);
    // console.log(status.index);
    // console.log(data);
    // console.log($('.song_info  a img'));
    // console.log($('.mask_bg '));
    $('.song_info  a img').attr('src', data[status.index - 1]['cover'])
    $('.mask_bg ').css('background', 'url(' + data[status.index - 1]['cover'] + ')')
    $('.song_info .song_info_name a').html(data[status.index - 1]['name'])
    $('.song_info .song_info_singer a').html(data[status.index - 1]['singer'])
    $('.song_info .song_info_ablum a').html(data[status.index - 1]['album'])
}
//获取歌词
function songLrc(data,index) {
    // console.log(status);
    // console.log(index);
    // console.log(data[1]['link_lrc']);
    $.ajax({
        url: data[index]['link_lrc'],   //改成网络地址就是网络播放器
        success: function (data1) {
            //清除上一次的歌词
            $('.song_lyric li').remove()
          let sentence= data1.split('\n')
        //    console.log(sentence);
       let playTime=[]
       let playContent=[]
      for(var i=0;i<sentence.length;i++){
        //   console.log(sentence[i]);
          let time=/\[(\d*:\d*\.\d*)\]/.exec(sentence[i])
           
        //   console.log(time);
        //   console.log(content);
          if(time!=null){
             let minutes=time[1].split(':')[0]
            let seconds=time[1].split(':')[1]
            // console.log(minutes);
            // console.log(seconds);
            let current=parseFloat((parseInt(minutes)*60+parseFloat(seconds))       )
            // console.log(current);
            let content=sentence[i].split(']')[1]
              playTime.push(current)
              playContent.push(content)
          }
       
      }
      
     
    //    console.log(playContent); 
    //   console.log(playTime);
    //    console.log(playContent.length); 
    //   console.log(playTime.length);
            
      var ul=$('.song_lyric')
      for(var k=0;k<playContent.length;k++){

                ul.append(`<li class="">`+playContent[k]+`</li>`)
            }
        
            //修改歌词
            songLrcChange(data,playTime)
            //重置歌词播放进度
            status.lrc_index=-1
      }
               
        })
}
//修改歌词和底部进度条
function songLrcChange(data,playTime){
    $('.song_lyric').css('marginTop',0)
     let playTime1=playTime
     //移除audio 中所有timeupdate 事件
     //多个timeupdate 事件时间会叠加
     $('audio').off('timeupdate')
  $('audio').on('timeupdate',function(){
      let current=this.currentTime
    //   console.log(current);
    //   console.log(playTime[status.lrc_index+1]);
   
        if(current>=playTime1[0]){
            playTime1.shift()
            status.lrc_index+=1
            $('.song_lyric').children().removeClass('cur')
            $('.song_lyric').children().eq(status.lrc_index).addClass('cur')
            // 如果是3行开始时才开始滚动
            if(status.lrc_index>2){
                $('.song_lyric').css('marginTop',-status.lrc_index*30)
            }
        }

        //底部进度条
        //获取并保存时间
        status.currenttime = this.currentTime
        status.totaltime = this.duration
        // console.log(this.currentTime);
        let totalTime = this.duration
        let length = this.currentTime / totalTime * 640
        $('.footer .music_progress_bar .music_progress_line').css('width', length)
        $('.footer .music_progress_bar .music_progress_dot').css('left', length - 7)

        // 自动播放下一首
        if (this.currentTime == totalTime) {
            console.log('非拖拽自动播放下一首歌');
            // console.log(this.currentTime);
            // console.log(status.index);
            // console.log(data.length);       //12
            //判断是否为最后一首歌
            if (status.index == data.length) {
                console.log(status.index, data.length);
                status.index = 0
            }
            // 更换歌曲名称
            $('.music_progress_top .music_progress_name').html(data[status.index]['name'])
            $('.music_progress_top .music_progress_name').css('color', '#fff')
            $('audio').attr('src', data[status.index]['link_url'])
            $('audio').get(0).play()


            // 底部显示播放名称信息
            status.index = status.index + 1
            // 更换歌曲时间
            let seconds = parseInt(this.currentTime % 60) >= 10 ? parseInt(this.currentTime % 60) : '0' + parseInt(this.currentTime % 60)
            let minutes = parseInt(this.currentTime / 60) >= 10 ? parseInt(this.currentTime / 60) : '0' + parseInt(this.currentTime / 60)
            //格式化总的时间
            let totalSeconds = parseInt(totalTime % 60) >= 10 ? parseInt(totalTime % 60) : '0' + parseInt(totalTime % 60)
            let totalMinutes = parseInt(totalTime / 60) >= 10 ? parseInt(totalTime / 60) : '0' + parseInt(totalTime / 60)
            if (!isNaN(totalMinutes)) {
                $('.music_progress_top .music_progress_time').html(minutes + ' : ' + seconds + ' / ' + totalMinutes + ' : ' + totalSeconds)
                $('.music_progress_top .music_progress_time').css('color', '#fff')
            }
            // 其他图标暂停
            $('.content_list ul').children().each((index, item) => {
                $(item).children().eq(1).css({
                    background: '',
                    color:'rgba(0,0,0,1)'
                })
            })
            //播放图标
             $('.content_list ul').children().eq(status.index).children().eq(1).css({
            background: 'url(../img/wave.gif) no-repeat 0px 20px',
            color:'rgba(0,0,0,0)'
            })
            //设置播放状态为true
            status.play = true
            // 修改播放图标
            liveServerFooterPlayer()
            liveServerPlayer(status.index)
            // 修改歌词
            songLrc(data,status.index-1)
            // 修改右侧歌手信息
            singerInfo(data)

        }



    });
  
    
}