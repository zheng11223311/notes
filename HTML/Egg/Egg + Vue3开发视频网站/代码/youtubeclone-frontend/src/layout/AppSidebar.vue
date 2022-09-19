<!-- src\layout \AppSidebar.vue-->
<template>
<div class="appsidebar">
    <div class="left">
        <div class="sc-Axmtr jDbGNF">
        <a aria-current= "page" class="active" href="/">
            <div class="icon">
                <span class="iconfont icon-home"></span>
                <span>Home</span>
            </div>
        </a>
        <a href="/feed/trending">
            <div class= "icon">
                <span class="iconfont icon-hot"></span>
                <span>Trending</span>
            </div>
        </a>
        <a href="/feed/trending">
            <div class= "icon">
                <span class="iconfont icon-subscriptions2"></span>
                <span>Subscriptions</span>
            </div>
        </a>
    </div>

    <div class="ruler"></div>
    <div class="sc-AxheI bWrCIe">

    <a href="/channel/17396dbd-8cb2-4866-804c-f1c928adc200">
        <div class="icon">
            <span class="iconfont icon-library"></span>
            <span>Library</span>
        </div>
    </a>
    <a href="/channel/bcb6ce6e-2868-4e45-b4ac-d58b84ee22de">
        <div class="icon">
            <span class="iconfont icon-history2"></span>
            <span>History</span>
        </div>
    </a>
    <a href="/channel/0b39ae9c-611b-41e9-99f3-b9e5c1b15596">
    <div class=" icon">
        <span class="iconfont icon-video1"></span>
        <span>Your Videos</span>
    </div>
    </a>
    <a href="/channel/0b39ae9c-611b-41e9-99f3-b9e5c1b15596">
    <div class=" icon">
        <span class="iconfont icon-like1"></span>
        <span>Liked Videos</span>
    </div>
    </a>
    </div>
    <div class="ruler"></div>
    <h6>SUBSCRIPTIONS</h6>
    <div class="xsfas">
        <a href="/channel/17396dbd-8cb2-4866-804c-f1c928adc200">
        <div class="icon">
            <img src="https://tse4-mm.cn.bing.net/th/id/OIP-C.JR4KqH6hd9UM-Nr9VZAyggHaFN?pid=ImgDet&rs=1" alt="" srcset="">
            <span>Library</span>
        </div>
    </a>
    </div>
    </div>
    <div class="right">
        <router-view/>
    </div>
</div>
</template>
<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  components: {
  }
})
</script>
<style scoped>
.appsidebar{
    width: 100vw;
    height: calc(100vh - 70px);
    background-color: rgb(33, 33, 33);
    display: flex;
}
.left{
    width: 300px !important;
    border-right: 1px solid;
}
.sc-Axmtr,.sc-AxheI{
    width: 300px;
    height: 160px;
    display: flex;
    flex-direction: column;
    padding-top: 20px;
}
.sc-AxheI{
    height: 240px;
}
.sc-Axmtr>a,.sc-AxheI>a{
    width: 100%;
    height: 100%;
    flex: 1;
}
.sc-Axmtr>a:hover,.sc-AxheI>a:hover{
     background-color: rgb(55,55,55);
}
.sc-Axmtr>a>.icon,.sc-AxheI>a>.icon{
    width: 100%;
    height: 100%;
    text-align: left;
    padding-left: 30px;
    font-size: 30px;
}
.sc-Axmtr>a>.icon>span:nth-child(n+2),
.sc-AxheI>a>.icon>span:nth-child(n+2){
    padding-left: 10px;
    font-size: 21px;
}
.ruler{
    width: 100%;
    height: 2px;
    background-color: rgb(54,54,54);
}
.xsfas{
    width: 100%;
    height: calc(100vh - 540px);
    display: flex;
    flex-direction: column;
}
h6{
    font-size:24px ;
    padding: 20px;
    padding-bottom: 0;
    height: 70px;
    color: rgba(181, 167, 163, 0.645);
}
.xsfas img{
    width: 60px;
    height: 60px;
    border-radius: 50%;
    vertical-align: middle;
}
.xsfas span{
    font-size: 20px;
    padding-left: 10px;
}
.xsfas a>.icon{
    width: 100%;
    padding-left: 20px;
    padding-top: 10px;
    padding-bottom: 10px;
}
.xsfas a>.icon:hover{
     background-color: rgb(55,55,55);
}

.right{
    width: calc(100vw - 300px);
    height: calc(100vh - 70px);
    background-color: rgb(22,22,22);
    padding: 50px;
}
</style>
