<template>

<div class="sc-AxmLo gmtmqv">
    <div class="sc-fzok0t hLgJkJ">
        <h2>Recommended</h2>
        <div class="video">
            <div class="sc-fzoLsD fYZyZu">
                <a href="/watch/3ac30e23-45a6-4eca-9430-3654142a772c">
                    <img class="thumb" src="https://www4.bing.com//th?id=OHR.FourTigresses_ZH-CN4095017352_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp&w=240&h=135" alt="thumbnail"/>
                </a>
            </div>
            <div class="video-info-container">
                <div class="channel-avatar">
                    <img src="https://tse4-mm.cn.bing.net/th/id/OIP-C.JR4KqH6hd9UM-Nr9VZAyggHaFN?pid=ImgDet&rs=1"/>
                        <h4>Twitter clone</h4>
                </div>
                <div class="name">
                    <p class= "secondary ">manikandanraji</p>
                    <p class="secondary" >
                    <span>6 views</span>
                    <span>·</span>
                    <span>22 days ago</span>
                </p>
                </div>
            </div>
        </div>

    </div>
</div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'home'
})
</script>
<style scoped>
.sc-AxmLo{
    width: 100%;
    height: calc(100vh - 200px);
    background-color: rgb(24,24,24);
}
.sc-fzok0t{
     width: 100%;
    height: 100%;
    padding-top: 20px;
    padding-left: 20px;
}
h2{
    color: #fff;
    font-size: 35px;
}
.video{
    margin-top: 20px;
    margin-right: 20px;
    width: 430px;
    height: 400px;
}
.sc-fzoLsD{
    width: 430px;
    height: 230px;
}
.thumb{
    width: 100%;
    height: 100%;
}
.video-info-container{
    margin-top: 10px;
    width: 100%;
    height: 80px;
    font-size: 20px;
}
.channel-avatar{
    width: 100%;
    height: 60px;
    display: flex;
    line-height: 60px;
    padding-top: 2px;
    padding-left: 5px;
    color: #fff;
}
.channel-avatar img{
    width: 50px;
    height: 50px;
    border-radius: 50%;
    vertical-align: bottom;
    margin-right: 10px;
}
.name{
    width: 100%;
    height: 170px;
    padding-left: 60px;
    color: rgb(168, 161, 152);
}
.name p{
    padding: 10px;
    font-size: 16px;
}
</style>
