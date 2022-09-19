<template>
  <div class="mp4">
    <div class="operation">
      <span
        class="iconfont icon-quanping"
        title="全屏"
        @click="fullScreen(this.$refs.video)"
      ></span>
      <span class="iconfont icon-xiangxiajiantou" title="收起" @click="packup()"></span>
    </div>
    <div class="video">
      <video
        :src="this.$route.query.url"
        ref="video"
        @dblclick="fullScreen(this.$refs.video)"
        autoplay
        controls
      ></video>
    </div>
  </div>
</template>
<script>
export default {
  name: "Mp4",
  methods: {
    fullScreen(element) {
      if (element.requestFullscreen) {
        element.requestFullscreen();
      } else if (element.mozRequestFullScreen) {
        element.mozRequestFullScreen();
      } else if (element.msRequestFullscreen) {
        element.msRequestFullscreen();
      } else if (element.oRequestFullscreen) {
        element.oRequestFullscreen();
      }
    },
    packup(){
        this.$router.go(-1)
        // 返回时,进行播放歌曲
        // this.$store.state.bottombar.isplay=0
        // this.$store.state.bottombar.$refs.audio.play()
    },
    init(){
        // 关闭音乐,开启视频
         this.$store.state.bottombar.isplay=1
        this.$store.state.bottombar.$refs.audio.pause()
    }
  },
  mounted(){
      this.init()
  }
};
</script>
<style lang="scss" scoped>
.mp4 {
  width: 1200px;
  height: 100vh;
  // background-color: #fff;
  overflow-y: scroll;
}
::-webkit-scrollbar {
  width: 0;
}
.operation {
  width: 100%;
  height: 50px;
  background-color: aqua;
  text-align: right;
  line-height: 50px;
  padding-right: 10px;
}
.operation span {
  font-size: 30px;
  padding-right: 10px;
  cursor: pointer;
}
.operation span:hover {
  color: rgb(222, 217, 217);
  text-shadow: 1px 1px 1px #fff;
}
.video {
  width: 100%;
  height: calc(100vh - 40px - 70px);
  // background-color: yellow;
  overflow: hidden;
}
.video video {
  width: 100%;
  object-fit: fill; //铺满全屏
}
</style>