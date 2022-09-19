<template>
  <div id="bottom-video">
    <div class="bottom">
      <div class="change-play">
        <span class="iconfont icon-shangyishoushangyige" @click="preSong()"></span>
        <!-- {{isPlaying}} -->
        <span class="iconfont icon-play" v-show="!isPlaying" @click="playingOrPaused()"></span>
        <span class="iconfont icon-zanting2" v-show="isPlaying" @click="playingOrPaused()"></span>
        <span class="iconfont icon-xiayigexiayishou" @click="nextSong()"></span>
      </div>
      <div class="rate-process">
        <div class="img ">
          <!-- {{musicData}} -->
          <!-- musicData.value[1]?.data.data.info.artist_pic|| -->
          <img
            :src="musicData.value[1]?.data.data.info.pic || 'https://tse1-mm.cn.bing.net/th/id/R-C.d0c72e938a6b783bf2e64afd28b22191?rik=1UmgckuQ%2bUNkTw&riu=http%3a%2f%2faliyunimg.9ku.com%2fgeshoutuji%2fsingertuji%2f1%2f1516%2f1516_1.jpg%3fx-oss-process%3dimage%2fresize%2cm_fill%2cw_190%2ch_190%2climit_0%2fauto-orient%2c0&ehk=WgA1mk6gRyJM7fs%2beHRKbbyNQLkQ6uoovBVF81QSyD4%3d&risl=&pid=ImgRaw&r=0'"
            alt="" srcset="" />
        </div>
        <!--musicData.value[1]?.data.data.info.name artist_name  -->
        <div class="processes">
          <div class="authormsg">
            <div class="song">{{ musicData.value[1]?.data.data.info.name || '未知歌曲' }}</div>
            <div class="time"><span>{{ musicformateCurrentTime }}</span> / <span>{{ musicDuration }}</span></div>
          </div>
          <div class="process" ref="process">
            <div class="bg"></div>
            <div class="bat"></div>
          </div>
        </div>
      </div>
      <div class="mode-operation">
        <div class="mode">
          <ul>
            <li v-show="isLoop == 1">
              <span class="iconfont icon-shunxubofang1">顺序播放</span>
            </li>
            <li v-if="isLoop == 2">
              <span class="iconfont icon-suijibofang">随机播放</span>
            </li>
            <li v-if="isLoop == 3">
              <span class="iconfont icon-xunhuanbofang">循环播放</span>
            </li>
            <li v-if="isLoop == 4">
              <span class="iconfont icon-danquxunhuan">单曲循环</span>
            </li>
          </ul>
        </div>
        <div class="volume">
          <span class="iconfont icon-24gf-volumeMiddle" v-show="!isMuted"></span>
          <span class="iconfont icon-24gf-volumeCross" v-show="isMuted"></span>
          <div class="processes">
            <div class="process">
              <div class="bat"></div>
            </div>
          </div>
        </div>
        <div class="like">
          <span class="iconfont icon-xihuan1" v-if="!isCollect"></span>
          <span class="iconfont icon-xihuan" v-if="isCollect"></span>
        </div>
        <div class="lrc">
          <span class="iconfont icon-lrc"></span>
        </div>
        <div class="more">
          <span class="iconfont icon-gengduo"></span>
          <div class="more-list">
            <p><span class="iconfont icon-xiazai1">下载</span></p>
            <p><span class="iconfont icon-wmv"> MV</span></p>
            <p><span class="iconfont icon-fenxiang1"> 分享</span></p>
          </div>
        </div>
        <div class="list">
          <span class="iconfont icon-24gl-playlistMusic4"></span>
          <div class="song-list">
            <p>
              播放列表共计 {{ musicList.value?.length || 0 }} 首歌
              <!-- 点击弹出菜单列表 -->
              <span class="iconfont icon-tianjia2">添加到</span>
              <span class="iconfont icon-shanchu" @click="removeAllList()">清空</span>
            </p>
            <ul>
              <li v-for="(item, index) in  musicList.value" :key="index" @click="palymusic(item.res[0].data.data.id)">
                <span v-if="currentMuiscPlaying != item.res[0].data.data?.id">{{ index + 1 }}</span>
                <span v-if="currentMuiscPlaying == item.res[0].data.data?.id"><img src="../../assets/img/wave.gif"
                    alt=""></span>
                <span :title="item.res[1].data.data.info.name">{{ item.res[1].data.data.info.name }}</span>
                <span>操作</span>
                <span>{{ item.res[1].data.data.info.artist_name }}</span>
              </li>

            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- <video src="" ref="video"></video> -->
    <audio src="" ref="audio"></audio>
  </div>
</template>

<script >
import { ref, getCurrentInstance, reactive, watch, defineEmits, defineProps, onMounted } from "vue";

export default {
  setup(props, context) {
    //  音乐是否正在播放
    let isPlaying = ref(false);  //自带audio.paused
    // 循环或单曲播放 ...
    let isLoop = ref(1);
    // 是否静音
    let isMuted = ref(false);
    // 是否收藏
    let isCollect = ref(false);
    //  元素video
    let audio = ref(null)
    // 元素 进度条
    let process = ref()
    // 音乐url 及歌词
    let musicData = reactive({
      value: {}
    })
    // music 当前格式化后的时间
    let musicformateCurrentTime = ref('00:00')
    //music 总时间
    let musicDuration = ref('00:00')
    // 历史歌曲记录
    let musicList = reactive({
      value: {}
    })
    // 当前正在播放的音乐
    let currentMuiscPlaying = ref()


    // let  musicIdAndMvId=props.musicIdAndMvId

    // 获取父组件传递过来的music 信息
    // 被父组件调用,需要将函数return 出去
    function getFatherMusicUrl(data) {
      // console.log(data);   //[url,lrc]
      musicData.value = data
      // console.log(audio);
      audio.value.src = data[0].data.data.url
      // 记录id ,与本地历史比对
      audio.value.id = data[0].data.data.id
      // 播放音乐
      audio.value.play()
      // 修改播放图标
      // console.log(audio.value.paused);
      isPlaying.value = !audio.value.paused
      // console.log(isPlaying);
      // 获取localstorage 音乐记录
      getLocalMuiscList()
      // 比对正在播放的歌曲,如果是,则显示播放的波浪图标
      getLocalMuiscListAndShow()
    }

    // 挂载
    onMounted(() => {
      // 需要将audio return 返回才能获取到
      // console.log(audio);


      // 当前进度条
      // console.log(process.value.children[0]);
      let bg = process.value.children[0]
      // 小球
      let bat = process.value.children[1]
      //监听music 进度
      audio.value.addEventListener('timeupdate', () => {
        // 获取进度条长度
        // 实时获取,避免窗口放大,长度变化
        // console.log(process.value.offsetWidth);
        let processLength = ref(process.value.offsetWidth)
        // console.log(audio.value.duration);
        // 比率,总时间与进度条长度比值
        // console.log(parseFloat(processLength.value));
        let rate = parseFloat(audio.value.duration) / parseFloat(processLength.value)
        // console.log(rate);
        // 小球位置
        bat.style.left = -5 + parseFloat(audio.value.currentTime) / rate + 'px'
        // 前置进度条位置
        bg.style.width = parseFloat(audio.value.currentTime) / rate + 'px'

        // 时间格式化
        musicformateCurrentTime.value = formate(audio.value.currentTime)
        musicDuration.value = formate(audio.value.duration)
        // formate(audio.value.duration)
        if (audio.value.ended) {
          // 播放结束,切换播放标签
          isPlaying.value = !audio.value.paused
          // 监听本地存储列表 是否存在歌曲
          let musicList = JSON.parse(localStorage.getItem('musicList'))
          for (let index in musicList) {
            // console.log(musicList[index].res[0]);
            // console.log(musicList[index].res[0].data.data.id);
            // console.log(audio.value.id);
            // console.log(musicList[index].res[0].data.data.id==audio.value.id);
            // 如果列表匹配到播放的歌曲
            console.log(audio.value.id);
            console.log(musicList[index].res[0].data);
            if (musicList[index].res[0].data?.message == "歌曲加载失败") {
                continue
              }
            if (musicList[index].res[0].data.data.id == audio.value.id) {
              // 如果是列表的最后一首歌
              // console.log(musicList.length);
              // console.log(index);
              // console.log(musicList.length==parseInt(index) +1);
              if (musicList.length == parseInt(index) + 1) return

              
              console.log('播放结束,切换下一首');
              // audio.value.src = musicList[(parseInt(index) + 1)].res[0].data.data.url
              // audio.value.play()
              // musicData.value=musicList[(parseInt(index) + 1)].res
              // 修改播放图标
              // isPlaying.value = !audio.value.paused
              // console.log(musicList[(parseInt(index) + 1)].res[1].data);

              // 切换窗口标题
              let titleObj = musicList[(parseInt(index) + 1)].res[1].data.data.info
              document.title = '正在播放 ' + titleObj.name + ' - ' + titleObj.artist_name

              // 发射切换后播放的music id
              context.emit('currentMusicMsg', musicList[(parseInt(index) + 1)].res[0].data.data.id)

              return
            }
          }
        }
      })
      //时间格式化
      function formate(time) {
        // console.log(time);
        // padStart() 方法用另一个字符串填充当前字符串(如果需要的话，会重复多次)，
        // 以便产生的字符串达到给定的长度。从当前字符串的左侧开始填充
        let min = String(parseInt(time / 60)).padStart(2, "0");
        let sec = String(parseInt(time % 60)).padStart(2, "0");
        // console.log(min);
        // console.log(sec);
        return min + ":" + sec;
      }

    });
    // requestMusicUrl()

    // 控制music 的播放与暂停
    function playingOrPaused() {
      // console.log([audio.value]);
      // console.log(window.location);
      // console.log(audio.value.src);
      if (audio.value.src == window.location.origin + '/') return
      if (!audio.value.paused) {  //当前正在播放
        // console.log(audio.value);
        audio.value.pause()
        isPlaying.value = !audio.value.paused
      } else {
        audio.value.play()
        isPlaying.value = !audio.value.paused
      }
    }
    // 控制上一首/下一首
    function preSong() {
      musicList.value = JSON.parse(localStorage.getItem('musicList'))
      // 比对正在播放的歌曲,如果是,则播放上一首
      for (let index in musicList.value) {
        if (musicList.value[index].res[0].data?.message == "歌曲加载失败") {
          continue
        }
        // console.log(obj.res[0].data.data.id);
        if (musicList.value[index].res[0].data.data.id == audio.value.id) {
          if (index == 0) return   //如果第一首,不做操作
          // 发射到父组件,请求歌曲
          context.emit('requestMusicUrl', musicList.value[index - 1].res[0].data.data.id)

        }
      }
    }
    function nextSong() {
      musicList.value = JSON.parse(localStorage.getItem('musicList'))
      // 比对正在播放的歌曲,如果是,则播放上一首
      for (let index in musicList.value) {
        if (musicList.value[index].res[0].data?.message == "歌曲加载失败") {
          continue
        }
        // console.log(obj.res[0].data.data.id);
        if (musicList.value[index].res[0].data.data.id == audio.value.id) {
          if (index == musicList.value.length - 1) return   //如果最后一首,不做操作
          // 发射到父组件,请求歌曲
          // console.log(typeof index);
          context.emit('requestMusicUrl', musicList.value[(parseInt(index) + 1)].res[0].data.data.id)

        }
      }
    }
    // 获取本地存储历史记录
    function getLocalMuiscList() {
      // console.log(JSON.parse(localStorage.getItem('musicList')));
      let musicList1 = JSON.parse(localStorage.getItem('musicList'))
      musicList.value = musicList1
    }
    getLocalMuiscList()
    // 获取本地存储历史记录,比对正在播放的歌曲,如果是,则显示播放的波浪图标
    function getLocalMuiscListAndShow() {
      musicList.value = JSON.parse(localStorage.getItem('musicList'))
      // console.log(musicList);
      // 比对正在播放的歌曲,如果是,则显示播放的波浪图标
      for (const obj of musicList.value) {
        // console.log(obj.res[0].data?.message=="歌曲加载失败");
        if (obj.res[0].data?.message == "歌曲加载失败") {
          continue
        }
        // console.log(obj.res[0].data.data.id);
        if (obj.res[0].data.data.id == audio.value.id) {
          // console.log(audio.value.id);
          currentMuiscPlaying.value = audio.value.id
        }
      }
    }
    // 历史播放列表中点击播放
    function palymusic(muscId) {
      context.emit('requestMusicUrl', muscId)
    }
    // 清除历史列表
    function removeAllList() {
      // localStorage.clear()  //清空所有缓存
      localStorage.removeItem('musicList')
      musicList.value = []
    }





    // 暴露给模板
    return {
      isPlaying,
      isLoop,
      isMuted,
      isCollect,
      audio,
      musicData,
      playingOrPaused,
      getFatherMusicUrl,
      process,
      musicDuration,
      musicformateCurrentTime,
      musicList,
      currentMuiscPlaying,
      palymusic,
      removeAllList,
      preSong,
      nextSong,
    };
  },
};
</script>

<style lang="scss" scoped>
#bottom-video {
  margin-top: 20px;
  width: 100vw;
  height: 100%;
  color: rgba(255, 255, 255, 0.8);

  .bottom {
    width: 100vw;
    height: 100%;
    background-color: #fff;
    text-align: center;
    border-top: 2px solid rgba(255, 255, 255, 0.4);
    border-left: 2px solid rgba(255, 255, 255, 0.4);
    background: linear-gradient(to top right,
        rgba(90, 149, 207, 0.1),
        rgba(58, 76, 99, 0.4));
    box-shadow: 10px -10px 20px rgba(0, 0, 0, 0.2),
      -10px 10px 20px rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(6px);
    border-radius: 20px;
  }
}

#bottom-video .bottom .change-play {
  display: inline-block;
  width: 20%;
  height: 100%;
  padding-top: 13px;

  /* background-color: #fff; */
  // border: 1px solid;
  span {
    display: inline-block;
    font-size: 1.5rem;
    border: 1px solid;
    border-radius: 50%;
    width: 2.5rem;
    height: 2.5rem;
    line-height: 2.3rem;
    text-align: center;
    margin-right: calc((100% - 2.5rem) / 12);
    border: 2px solid rgb(239, 243, 238);
    cursor: pointer;
    // background-color: rgba(255, 254, 254, 0.189);
  }

  span:nth-child(2) {
    padding-left: 0.2rem;
  }

  span:hover {
    color: rgb(0, 145, 255);
    border: 2px solid rgb(0, 145, 255);
  }
}

#bottom-video .bottom .rate-process {
  display: inline-block;
  width: 40%;
  height: 100%;
  // background-color: rgb(46, 7, 7);
  // 解决行内块元素上下错位的问题
  vertical-align: top;
  padding-top: 8px;
  text-align: left;

  // overflow: scroll;
  .img {
    display: inline-block;
    width: 100%;
    max-width: 60px;
    height: 100%;
    vertical-align: top;
    cursor: pointer;

    img {
      max-width: 60px;
      height: 70%;
      max-height: 60px;
      border-radius: 2px;
      box-shadow: 1px 1px 5px rgb(255, 255, 255);
    }
  }

  .processes {
    display: inline-block;
    width: 80%;
    height: calc(100% - 8px);
    // background-color: #fff;
    padding-left: 10px;
    font-size: 0.8rem;

    .authormsg {
      width: 100%;
      height: 40%;

      // background-color: aqua;
      .song {
        display: inline-block;
        width: 50%;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        vertical-align: bottom;
      }

      .time {
        display: inline-block;
        width: 50%;
        text-align: right;
      }
    }

    .process {
      cursor: pointer;
      position: relative;
      margin-top: 2px;
      width: 100%;
      height: 2px;
      background-color: rgba(255, 123, 0, 0.43);

      .bg {
        // width: 20%;
        width: 0;
        height: 2px;
        background-color: rgba(255, 0, 0, 0.771);
      }

      .bat {
        position: absolute;
        top: -4px;
        left: -5px;
        width: 10px;
        height: 10px;
        border-radius: 50%;
        background-color: rgba(204, 204, 204, 0.626);
      }
    }
  }
}

#bottom-video .bottom .mode-operation {
  display: inline-block;
  width: 40%;
  height: 100%;
  // background-color: rgb(198, 212, 37);
  // 解决行内块元素上下错位的问题
  vertical-align: top;
  text-align: left;

  // overflow: scroll;
  .mode {
    display: inline-block;
    padding-left: 2px;
    width: 50%;
    height: 100%;
    line-height: 300%;
    max-width: 100px;

    // background-color: rgb(208, 97, 97);
    ul {
      li {}
    }
  }

  .volume {
    vertical-align: top;
    // width: 50%;
    height: 100%;
    min-width: 25px;
    line-height: 300%;
    text-align: left;
    display: inline-block;
    // border: 1px solid;
    // overflow: scroll;
    transition: all 2s;

    span:hover~.processes {
      display: inline-block;
    }

    .processes {
      display: none;
      width: 75%;
      height: 100%;
      line-height: 300%;

      &:hover {
        display: inline-block;
      }

      // background-color: rgba(255, 123, 0, 0.43);
      .process {
        position: relative;
        margin-left: 5px;
        display: inline-block;
        height: 5px;
        min-width: 100px;
        transform: translateY(-50%);
        background-color: rgba(255, 255, 255, 0.862);
        border-radius: 5px;
        cursor: pointer;

        .bat {
          position: absolute;
          top: -3px;
          left: -2px;
          width: 10px;
          height: 10px;
          border-radius: 50%;
          background-color: rgb(236, 130, 227);
        }
      }
    }
  }

  .like,
  .lrc,
  .more,
  .list {
    margin-left: 10px;
    display: inline-block;
  }

  .more {
    position: relative;

    &:hover .more-list {
      display: block;
    }

    // overflow: scroll;
    .more-list {
      display: none;
      position: absolute;
      // min-width: 90px;
      // height: 200px;
      padding: 10px;
      text-align: center;
      background-color: rgba(255, 255, 255, 0.219);
      bottom: 20px;
      left: -50px;

      &::before {
        content: "";
        display: inline-block;
        width: 100%;
        border: 1px solid;
        background-color: #fff;
        margin-bottom: 2px;
      }

      &::after {
        content: "";
        display: block;
        border: 1px solid;
        width: 100%;
        background-color: #fff;
        margin-top: 2px;
      }

      p {
        padding: 5px;

        span {
          border: 1px solid #fff;
          padding: 4px;
          font-size: 0.8rem;
          border-radius: 2px;
          cursor: pointer;
          white-space: nowrap;
          border-radius: 2px;

          &:hover {
            border: 1px solid rgba(250, 128, 114, 0.415);
            color: rgba(250, 128, 114, 0.415);
            background-color: rgba(255, 255, 255, 0.868);
          }
        }
      }
    }
  }

  .list {
    position: relative;
    display: inline-block;

    &:hover .song-list {
      display: block;
    }

    .song-list {
      display: none;
      position: absolute;
      bottom: 22px;
      left: -260px;
      min-width: 340px;
      max-width: 500px;
      height: 90vh;
      max-height: 600px;
      text-align: center;
      padding: 5px;
      background-color: rgba(125, 122, 122, 0.471);
      border-top: 2px solid rgba(255, 255, 255, 0.4);
      border-left: 2px solid rgba(255, 255, 255, 0.4);
      box-shadow: 10px -10px 20px rgba(0, 0, 0, 0.2),
        -10px 10px 20px rgba(255, 255, 255, 0.1);

      &:hover {
        display: block;
      }

      &::before {
        content: "";
        position: absolute;
        left: 5%;
        top: 6px;
        width: 90%;
        border: 1px solid;
        background-color: #fff;
        margin-bottom: 2px;
      }

      &::after {
        content: "";
        position: absolute;
        bottom: 10px;
        left: 5%;
        border: 1px solid;
        width: 90%;
        background-color: #fff;
      }

      p {
        margin-top: 20px;
        height: 30px;
        font-size: 0.8rem;
        text-align: left;

        span {
          float: right;
          top: 0px;
          left: 5px;

        }

      }

      ul {
        width: 100%;

        li {
          width: 100%;
          display: flex;
          font-size: 0.9rem;

          &:hover {
            background-color: rgba(245, 126, 35, 0.701);
          }

          span {
            width: 12%;
            text-align: left;
            border: none !important;

            &:hover {
              color: #eee;
            }

          }

          span:nth-child(2),
          span:nth-child(3),
          span:nth-child(4) {
            width: 30%;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
          }
        }
      }
    }
  }

  span {
    border: 1px solid #fff;
    padding: 4px;
    font-size: 0.8rem;
    border-radius: 2px;
    cursor: pointer;
    white-space: nowrap;

    &:hover {
      border: 1px solid rgba(250, 128, 114, 0.415);
      color: rgba(250, 128, 114, 0.415);
    }
  }
}

// 流光边框动画效果
.item {
  position: relative;
  text-align: center;
  font-size: 24px;
  border: 2px solid rgb(179, 191, 231);
  border-radius: var(--bRadius);
  transition: all .3s;
  background-color: #eee;

  &::before,
  &::after {
    content: "";
    position: absolute;
    top: -10px;
    left: -10px;
    right: -10px;
    bottom: -10px;
    border: 2px solid rgb(17, 36, 100);
    transition: all .5s;
    border-radius: var(--bRadius);
    animation: clippath 3s infinite linear;
  }

  &::after {
    animation: clippath 3s infinite -1.5s linear;
  }

  @keyframes clippath {

    0%,
    100% {
      clip-path: inset(0 0 98% 0);
    }

    25% {
      clip-path: inset(0 98% 0 0);
    }

    50% {
      clip-path: inset(98% 0 0 0);
    }

    75% {
      clip-path: inset(0 0 0 98%);
    }
  }

}
</style>
