<!-- src\layout \AppHeader.vue -->
<template>
  <div class="sc-Axhuy JixXX">
    <div class="logo flex-row">
        <span>
            <a href="/">YouTube Clone</a>
        </span>
    </div>
    <div class="sc-AxjAm iVYHdX">
        <input type="text" class="search" placeholder="Search">
    </div>
    <ul>
        <li>
            <div>
                <label for="video-upload1" @click="isUploadShow=true">
                   <span class="iconfont  icon-videocameraadd"></span>
                </label>
                <!-- <input
                    id="video-upload"
                    type="file"
                    accept= "video/*"
                    style="display: none"/> -->
            </div>
        </li>
        <li>
            <div>
                <span class="iconfont  icon-jingzhong"></span>
            </div>
        </li>
        <li>
            <div>
                <span v-if="!$store.state.user"  class="iconfont  icon-morentouxiang"></span>
                <img v-if="$store.state.user" :src="$store.state.user.avatar" alt="" srcset="">
                <span  v-if="!$store.state.user"><a href="/#/login">SIGN IN</a></span>
                <span><a href="/#/login">SIGN OUT</a></span>
            </div>
        </li>
    </ul>
    <upload-video v-if="isUploadShow" @close="close"></upload-video>
  </div>
</template>

<script type="text/javascript" lang="ts">
// 导入字体
import '@/assets/font/iconfont.css'
import { defineComponent, ref } from '@vue/runtime-core'
import UploadVideo from '../components/UploadVideo/index.vue'

export default defineComponent({
  name: 'AppHeader',
  components: {
    UploadVideo
  },
  setup (props, context) {
    const isUploadShow = ref(false)
    const close = () => {
      isUploadShow.value = false
    }
    return {
      isUploadShow,
      close
    }
  }
})
</script>

<style scoped>
.sc-Axhuy{
    width: 100%;
    height: 70px;
    background-color: rgba(27, 27, 27,1);
    display: flex;
}
.logo{
    flex: 1;
    width: 100%;
    height: 100%;
    font-size: 25px;
    line-height: 70px;
    text-align: left;
    padding-left: 30px;
}
.sc-AxjAm{
    flex: 2;
    width: 100%;
    height: 100%;
    text-align: center;
    line-height: 70px;
}
.search{
    width: 60%;
    height: 37px;
    background-color: black;
    outline: none;
    border: none;
    font-size: 20px;
    padding-left: 20px;
}
ul{
    flex: 2;
    width: 100%;
    height: 100%;
    /* background-color: rgb(209, 74, 74); */
    display: flex;
    line-height: 70px;
    padding-left: 280px;
}
li,li>div,li label{
    flex: 1;
    width: 100%;
    height: 100%;
    text-align: center;
     color: #fff;
     vertical-align: top;
}
li:nth-child(3){
    flex: 5;
}
li:nth-child(3)>div>span:not(.iconfont){
    /* color: #fff; */
    vertical-align: top;
    font-size: 20px;
    cursor: pointer;
}
li>div>span:not(.iconfont):nth-child(3){
    padding-left: 20px;
}
</style>
