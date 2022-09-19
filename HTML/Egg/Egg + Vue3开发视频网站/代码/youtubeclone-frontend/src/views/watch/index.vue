<template>
<div class="sC-AxmLO gmtmqV">
    <div class="sc-fzoXWK fRnHrz">
        <div class="video-container" >
            <div class= "video">
                <video ref="video" src="" controls></video>
            </div>
            <div class="video-info">
                <h3>{{videoinfo.title}}</h3>
                <div class="video-info-stats">
                    <p>
                        <span>0 views</span>
                        <span> · </span>
                        <span>12 hours ago</span>
                    </p>
                    <div class="likes-dislikes flex-row">
                        <p class="flex-row like">
                            <a>👍</a><span>0</span>
                            <a>👎</a><span>0</span>
                        </p>
                    </div>
                </div>
            </div>

            <div class= "channel-info-description">
                <div class="channel-info-flex ">
                        <a href="">
                            <img class="avatar md" src="https://tse4-mm.cn.bing.net/th/id/OIP-C.JR4KqH6hd9UM-Nr9VZAyggHaFN?pid=ImgDet&rs=1"/>
                        </a>
                        <a href="/channel/b41a4163-979c-4224-a879-0a6e009a f309">
                            <span>lipengzhou</span>
                            <span class = "secondary small">5 subscribers</span>
                        </a>
                </div>
            </div>
        </div>

        <div class="sc-fzoyTs fNzLaQ">
            <h3>2 comments</h3>
            <div class= "add-comment">
                <img src="https://tse4-mm.cn.bing.net/th/id/OIP-C.JR4KqH6hd9UM-Nr9VZAyggHaFN?pid=ImgDet&rs=1"/>
                <textarea placeholder= "Add a public comment "></textarea>
                <span class="send"> Send </span>
            </div>
            <div class="comment">
                <a href="/channel/1311e080-5e0e-4b4b-bb83-08f1a6837649">
                    <img src="https://tse4-mm.cn.bing.net/th/id/OIP-C.JR4KqH6hd9UM-Nr9VZAyggHaFN?pid=ImgDet&rs=1"/>
                </a>
                <div class="comment-info">
                    <p class="secondary">
                        <span>
                            <a href="/channe1/1311e080-5e0e-4b4b-bb83-08f1a6837649">akshaydsvg</a>
                        </span>
                        <span style="margin-left: 0.6rem">11 hours ago</span>
                    </p>
                    <p>vnd</p>
                </div>
            </div>
            <div class="comment">
                <a href= " /channel/1311e080-5e0e-4b4b-bb83-08f1a6837649">
                    <img src="https://tse4-mm.cn.bing.net/th/id/OIP-C.JR4KqH6hd9UM-Nr9VZAyggHaFN?pid=ImgDet&rs=1"/>
                </a>
                <div class= " comment-info">
                    <p class="secondary">
                        <span>
                            <a href=" /channe1/1311e080-5e0e-4b4b-bb83-08f1a6837649">akshaydsvg</a>
                        </span>
                        <span style="margin-left: 0.6rem" >11 hours ago</span>
                    </p>
                    <p>test</p>
                </div>
            </div>
        </div>
    </div>
    <!-- 侧边栏 -->
    <div class="related-videos">
        <h3>Up Next</h3>
        <a href=" /watch/3ac30e23-45a6-4eca-9430-3654142a772c">
            <div class="sc-fzozJi dteCCc">
                <img class= "thumb" src="https://tse4-mm.cn.bing.net/th/id/OIP-C.JR4KqH6hd9UM-Nr9VZAyggHaFN?pid=ImgDet&rs=1"/>
                    <div class="video-info" >
                        <h4>Twitter clone</h4>
                        <span class="secondary ">manikandanraji</span>
                        <p class="secondary">
                            <span>7 views </span>
                            <span> · </span>
                            <span> 23 days ago</span>
                        </p>
                    </div>
            </div>
        </a>
        <a href="/watch/b4bafa92-b60d-40a8-ad50-ecd47406edd5 ">
            <div class="sc-fzozJi dteccc">
                <img class= "thumb" src="https://tse4-mm.cn.bing.net/th/id/OIP-C.JR4KqH6hd9UM-Nr9VZAyggHaFN?pid=ImgDet&rs=1"/>
                <div class="video-info-container">
                    <div class="channel-avatar"></div>
                    <div class="video-info">
                        <h4>Instaclone</h4>
                        <span class="secondary " >manikandanraji</span>
                        <p class="secondary">
                            <span>1 views</span>
                            <span>·</span>
                            <span>23 days ago</span>
                        </p>
                    </div>
                </div>
            </div>
        </a>
    </div>
</div>
</template>

<script lang="ts">
import Vue, { defineComponent, onMounted, ref } from 'vue'
import { useRoute } from 'vue-router'
import { getVideo, updateVideo } from '../../api/user'
export default defineComponent({
  name: 'WatchIndex',
  setup () {
    const video = ref(null)
    const videoinfo = ref([])
    const route = useRoute()
    const loadVideoInfo = async () => {
      const videoId = (route.params._id as string)
      const { data } = await getVideo(videoId);
      (video.value as any).src = data.video.playUrl;
      // 视频封面
      (video.value as any).poster = data.video.cover;
      (videoinfo.value as any) = data.video
      console.log((videoinfo.value))
    }
    onMounted(() => {
      loadVideoInfo()
    })
    return {
      video,
      videoinfo
    }
  }
})
</script>

<style scoped>
.sC-AxmLO{
    width: 100%;
    height: calc(100vh - 150px);
    display: flex;
}
.sc-fzoXWK {
    width: 70%;
    height: calc(100vh - 130px);
    overflow-y: scroll;
}
.video-container{
    width: 100%;
    height: calc(100vh - 130px);
}
.video,.video video{
    width: 100%;
    height: 360px;
}
::-webkit-scrollbar{
    width: 0;
}
.video-info{
    width: 100%;
    height: calc(100vh - 610px);
}
.video-info::after{
    content: '';
    width: 100%;
    display: block;
    height: 0px;
    margin-top: 20px;
    border: 1px solid rgb(57, 56, 56);
    background-color: rgb(57, 56, 56);
}
.video-info h3{
    padding: 20px 10px 0px;
    color: white;
}
.video-info-stats{
    width: 100%;
    height: 60px;
    line-height: 60px;
    display: flex;
}
.video-info-stats p{
    padding-left: 10px;
    flex: 1;
}
.video-info-stats p span{
    color: rgb(190, 190, 191);
}
.likes-dislikes{
    flex: 2;
    padding-left: 20px;
}
.like{
    color: #fff;
}
.like span{
    margin-right: 20px;
}
.like a{
    padding-right: 5px;
    color: antiquewhite;
    cursor: pointer;
}
.channel-info-description{
    width: 100%;
    height: 80px;
}
.channel-info-flex{
    width: 100%;
    height: 100px;
    display: flex;
    padding-bottom: 80px;
}
.channel-info-flex a{
    flex: 1;
    height: 100px;
    display: inline-block;
}
.channel-info-flex a img{
    width: 60px;
    height: 60px;
    border-radius: 50%;
    vertical-align: baseline;
}
.channel-info-flex a:nth-child(2){
    flex: 10;
    display: flex;
    flex-direction: column;
    padding-top: 10px;
}
.channel-info-flex a:nth-child(2) span{
    color: #fff;
}
.channel-info-flex a:nth-child(2) span:nth-child(2){
    padding-top: 5px;
    color: rgb(57, 56, 56);
}
.sc-fzoyTs{
    width: 100%;
    height: auto;
    padding-bottom: 20px;
}
.sc-fzoyTs h3{
    width: 100%;
    color: #fff;
}
.add-comment{
    width: 100%;
    height: 200px;
    margin-top: 20px;
    border-radius: 5px;
    display: flex;
}
.add-comment img{
    width: 60px;
    height: 60px;
    border-radius: 50%;
    margin: 20px;
}
.add-comment textarea{
    flex: 1;
    width: 70%;
    height: 160px;
    margin-top: 20px;
    border-radius: 5px;
    padding: 20px;
    font-size: 20px;
}
.send{
    width: 80px;
    height: 45px;
    line-height: 40px;
    text-align: center;
    background-color: rgb(240, 107, 111);
    cursor: pointer;
    border-radius: 10px;
    margin-left: 20px;
    margin-top: 140px;
}
.comment{
    width: 100%;
    /* height: 80px; */
    margin-top: 15px;
    display: flex;
}
.comment a img{
    width: 60px;
    height: 60px;
    border-radius: 50%;
}
.comment-info{
    width: calc(100% - 60px);
    padding-left: 10px;
}
.secondary,.secondary a{
    width: 100%;
    color: rgb(190, 190, 191);
}
.comment-info p:nth-child(2){
    width: 100%;
    padding: 5px 10px;
    color: #fff;
}
.related-videos{
    width: 30%;
    margin-left: 20px;
    overflow-y: scroll;
    background-color:rgba(6, 6, 6, 0.329) ;
    padding: 10px 20px;
}
.related-videos h3{
    color: #fff;
    font-size: 25px;
    padding-bottom: 20px;

}
.related-videos .sc-fzozJi{
    color: #fff;
    padding-bottom: 20px;
}
.related-videos .sc-fzozJi .thumb{
    width: 90%;
    height: 160px;
}
.video-info h4{
    padding-top: 10px;
    padding-bottom: 5px;
}
.video-info .secondary{
    padding-top: 10px;
}
</style>
