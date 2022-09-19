<template>
  <div class="home">
    <div class="mp4" ref="mp4">
      <mp4 :mvid="mvid" @back="back()" v-if="mvid != 0"></mp4>
    </div>
    <div class="top">
      <lrc-and-comment @playMv="playMv" @sendMusicId="sendMusicId" ref="lrcAndComment" @getAudio="getAudio"
        :audioLabel="audioLabel">
      </lrc-and-comment>
    </div>
    <div class="bottom">
      <bottom-video @requestMusicUrl="requestMusicUrl" @currentMusicMsg="currentMusicMsg"
        :musicIdAndMvId="musicIdAndMvId" ref="bottomVideo">
      </bottom-video>
    </div>
  </div>
</template>

<script setup>
import BottomVideo from "../components/common/BottomVideo.vue";
import LrcAndComment from "../components/LrcAndComment.vue";
import Mp4 from "../components/common/Mp4.vue";

import { ref, reactive, getCurrentInstance, onMounted } from 'vue'

// 音乐ID 及MV ID
let musicIdAndMvId = ref([])
let mvid = ref(0)
// 声明子组件
let bottomVideo = ref()
let lrcAndComment = ref()
let mp4 = ref()
// 音乐url 及歌词
let musicData = reactive({
  value: {}
})
// video 标签,响应式获取传递过来的video 标签,需要使用reactive 不能使用ref 
// ,否则无法获取值,即不能被响应
let audioLabel = reactive({
  value: {}
})



// 使用全局属性,全局属性值在main.js 中定义
const proxy = getCurrentInstance().proxy
// console.log(proxy);
const $http = proxy.$http
// console.log($http);
const searchMusicAndLrc = $http.searchMusicAndLrc




// 接收子组件传递过来的数据,给另一个子组件
function sendMusicId(musicId, mvId, playMv) {
  // console.log(playMv);
  if (playMv == true) {
    // 播放mv ,不播放music
    // console.log(mvId);
    mvid.value = mvId
    mp4.value.style.transform = 'translate(0%)'
    return
  }
  // console.log(musicId, mvId);
  musicIdAndMvId.value = [musicId, mvId]
  // console.log(musicIdAndMvId);
  // 调用子组件的方法,子组件中的属性或方法必须return 返回出去,才能被使用
  // console.log(bottomVideo.value);
  // bottomVideo.value.requestMusicUrl(musicId)
  requestMusicUrl(musicId, mvId)
}
function requestMusicUrl(musicId, mvId) {
  // let musicId=musicIdAndMvId[0]
  searchMusicAndLrc(musicId).then((res) => {
    // console.log(res); //[music,lrc]
    musicData.value = res
    // console.log(res[0].data.data.url);


  // console.log(res[0].data.message );
    if (res[0].data.code == 4001) {
      console.log('歌曲请求失败,不保存记录');
      return
    }
    //本地存储音乐,构建播放列表
    // 数据保存到本地
    // console.log(localStorage.getItem('musicList'));
    if (localStorage.getItem('musicList') == null) {
      localStorage.setItem('musicList', JSON.stringify([{
        musicId, mvId, res
      }]))
    } else {
      // 存在数据
      let musicList = JSON.parse(localStorage.getItem('musicList'))
      // 判断数据是否存在
      let isExistMusic = false
      for (const obj of musicList) {
        if (obj.musicId == musicId) {
          // 存在数据,则不存储数据
          // console.log('数据已存在');
          isExistMusic = true
        }
      }
      if (!isExistMusic) {
        musicList.push({
          musicId, mvId, res
        })
        localStorage.setItem('musicList', JSON.stringify(musicList))
      }

    }

    // setup(){}需要将audio return 返回才能获取到
    // 将获取的music 数据分发给两个子组件
    bottomVideo.value.getFatherMusicUrl(res)
    lrcAndComment.value.getFatherMusicUrl(res[1])
  })
}


// 获取audio 标签给另一个组件
function getAudio() {
  // 获取另一个组件的audio 标签
  // console.log(bottomVideo);
  // console.log(bottomVideo.value);
  // console.log(bottomVideo.value.audio);
  // 将audio 传递给另一个组件
  audioLabel.value = bottomVideo
}
// 接收子组件播放完后切换歌曲的信息
function currentMusicMsg(musicId) {
  // console.log(musicId);
  // 调用组件的方法/属性,加载歌词信息
  //  lrcAndComment.value.getFatherMusicUrl(res.res)

  // 传递music id
  lrcAndComment.value.changeMusicId(musicId)
  requestMusicUrl(musicId, 0)


}


// 接收mp4 组件返回请求事件
function back() {
  // console.log(mp4.value);
  mp4.value.style.transform = 'translate(-100%)'
  mvid.value = 0
}

//播接收子组件的播放mv 请求 
function playMv(musicId) {
  // console.log(musicId);
  sendMusicId(musicId, musicId, true)
}




</script>

<style lang="scss" scoped>
.home {
  position: relative;
  width: 100vw;
  height: 100vh;
  min-height: 600px;
  min-width: 800px;

  .mp4 {
    transition: all 1s;
    position: absolute;
    transform: translate(-100%);
    width: 100%;
    height: 100%;
    z-index: 12;
    overflow: hidden;
  }

  .top {
    width: 100vw;
    height: 85vh;
    // background-color: rgba(255, 255, 255, 0.341);
    overflow: hidden;

  }

  .bottom {
    width: 100vw;
    height: 15vh;
    max-height: 100px;
    position: absolute;
    // bottom: 0;
    // background-color: #fff;
    // overflow: hidden;
    z-index: 199;
  }

}
</style>
