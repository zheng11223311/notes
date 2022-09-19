<template>
  <div id="lrc-and-comment">
    <div class="search">
      <div class="search-icon">
        <span class="iconfont icon-sousuo1"> 搜索</span>
      </div>
      <div class="search-box">
        <div class="search-input">
          <input type="text" placeholder="🔍 畅想音乐,想听就听..." @input="sendSearchMuiscKey($event)" />
        </div>
        <div class="show-result">
          <div class="show-key-title">
            <span class="current-route">
              <router-link :to="'/single?keyValue=' + $route.query.keyValue">单曲</router-link>
            </span>
            <span>
              <router-link :to="'/mv?keyValue=' + $route.query.keyValue">M V</router-link>
            </span>
            <span>
              <router-link :to="'/song?keyValue=' + $route.query.keyValue">歌单</router-link>
            </span>
            <!-- <span><router-link to="/transceiver">电台</router-link></span>
            <span><router-link to="/songer">歌手</router-link></span>
            <span><router-link to="/albun">专辑</router-link></span>
            <span><router-link to="/lrc">歌词</router-link></span> -->
          </div>
          <div class="show-key-result">
            <div class="show-key-result-page"></div>
            <div class="show-key-result-content">
              <!-- <router-view v-slot="{ Component }">
                <keep-alive v-if="$route.meta.keepAlive">
                  <component :is="Component">
                    <p>缓存页面</p>
                  </component>
                </keep-alive>
                <component :is="Component" v-if="!$route.meta.keepAlive">
                  <p>没有缓存的页面</p>
                </component>
              </router-view> -->


              <!--路由组件也可以和普通组件一样传值 -->
              <router-view   @playMv="playMv" @sendMusicId="sendMusicId" :about="'a'"></router-view>
            </div>
          </div>
        </div>
      </div>
    </div>
    <header>
      <div class="usermsg">
        <div class="img">
          <img src="~@/assets/img/1.jpg" alt="" />
        </div>
        <div class="username">
          <p>孤独求败</p>
          <p>有种抚摸叫大嘴巴子</p>
        </div>
      </div>
      <div class="side-tip"></div>
      <div class="drop-down-list">
        <span class="iconfont icon-shuangxiangxia1" v-show="!isDowning"></span>
        <span class="iconfont icon-shuangxiangshang1" v-show="isDowning"></span>
      </div>
    </header>
    <footer>
      <div class="side-menu">
        <h2>
          <span class="iconfont icon-application"> 菜单栏</span>
        </h2>
        <ul>
          <li>
            <router-link to="/recommand">
              <span class="iconfont icon-yinle"> 推荐</span>
            </router-link>
          </li>
          <li>
            <router-link to="/recommand">
              <span class="iconfont icon-diantai1"> 电台</span>
            </router-link>
          </li>
          <li>
            <router-link to="/recommand">
              <span class="iconfont icon-paihangbang"> 排行</span>
            </router-link>
          </li>
          <li>
            <router-link to="/recommand">
              <span class="iconfont icon-diantai"> 我的电台</span>
            </router-link>
          </li>
          <li>
            <router-link to="/recommand">
              <span class="iconfont icon-zuixingengxin"> 最近播放</span>
            </router-link>
          </li>
          <li>
            <router-link to="/recommand">
              <span class="iconfont icon-xihuan1"> 我的收藏</span>
            </router-link>
          </li>
        </ul>
      </div>
      <div class="route">
        11112123123
        <!-- <router-view v-slot="{ Component }">
          <keep-alive v-if="$route.meta.keepAlive">
            <component :is="Component">
              <p>缓存页面</p>
            </component>
          </keep-alive>
          <component :is="Component" v-if="!$route.meta.keepAlive">
            <p>没有缓存的页面</p>
          </component>
        </router-view> -->
      </div>
    </footer>
    <div class="side-comment">
      <div class="comment">
        <div class="change">
          <span class="iconfont icon-zuixin2" :class="currentMode ? '' : 'currentMode'" @mouseenter="changeMode(0)">
            最热</span>
          <span class="iconfont icon-zuixin" :class="currentMode ? 'currentMode' : ''" @mouseenter="changeMode(1)">
            最新</span>
        </div>
        <div class="comment-content">
          <ul v-if="currentMode == 0">
            <li v-for="item in hotComment.value.rows" :key="item.uid">
              <div class="usermsg1">
                <p>
                  <img
                    :src="item.u_pic || 'https://tse1-mm.cn.bing.net/th/id/OIP-C.WvhXlHH4SK25FKGEDkafAgHaEo?pid=ImgDet&rs=1'"
                    alt="">
                </p>
                <p>{{ item.u_name || '未知昵称' }}</p>
              </div>
              <div class="user-comment">
                <div>
                  {{ item.msg }}
                  <p>{{ item.time }}</p>
                </div>

              </div>
            </li>
            <li @click="loadMoreHotComment()" v-if="hotComment.value.totalPage = hotComment.value.currentPage"
              class="loadMoreComment"> 加载更多 </li>
          </ul>

          <ul v-if="currentMode == 1">
            <li v-for="item in newComment.value.rows" :key="item.uid">
              <div class="usermsg1">
                <p>
                  <img
                    :src="item.u_pic || 'https://tse1-mm.cn.bing.net/th/id/OIP-C.WvhXlHH4SK25FKGEDkafAgHaEo?pid=ImgDet&rs=1'"
                    alt="">
                </p>
                <p>{{ item.u_name || '未知昵称' }}</p>
              </div>
              <div class="user-comment">
                <div>
                  {{ item.msg }}
                  <p>{{ item.time }}</p>
                </div>

              </div>
            </li>
            <li @click="loadMoreNewComment()" v-if="newComment.value.totalPage = newComment.value.currentPage"
              class="loadMoreComment"> 加载更多 </li>
          </ul>

        </div>
      </div>
      <div class="lrc" ref="lrc">
        <div class="lrc-box">
          <p :class="currentIndex == index ? 'currentLrc' : ''" v-for="(item, index) in musicLrc.value.data?.lrc"
            :key="index">{{ item.lineLyric
            }}</p>
        </div>
      </div>
      <div class="picture">
        <p>
          <!-- {{musicLrc.value}} -->
          <!-- artist_pic -->
          <img
            :src="musicLrc.value.data?.info?.album_pic || 'https://tse1-mm.cn.bing.net/th/id/OIP-C.WvhXlHH4SK25FKGEDkafAgHaEo?pid=ImgDet&rs=1'" />
        </p>
        <div class="song-operation">
          <span class="iconfont icon-fenxiang1"> 分享</span>
          <span class="iconfont icon-xiazai"> 下载</span>
          <span class="iconfont icon-tianjia"> 添加</span>
        </div>
        <div class="music-more">查看更多相似歌曲 >></div>
      </div>
    </div>
  </div>
</template>

<script >
import { ref, getCurrentInstance, reactive, onMounted, watch, toRefs } from "vue";
import { useRoute, useRouter } from "vue-router";

export default {
  props: ['audioLabel'],
  setup(props, context) {
    //   是否处于下拉状态
    let isDowning = ref(false);
    // 音乐歌词
    let musicLrc = reactive({
      value: {}
    })

    // 获取lrc 部分的元素
    let lrc = ref()

    //歌曲id
    let musicID = ref()
    //定义当前歌词位置
    let currentIndex = ref(0)
    // 热门评论
    let hotComment = reactive({
      value: {}
    })
    // 热门评论页数
    let hotCommentPage = ref(1)
    // 最新评论
    let newComment = reactive({
      value: {}
    })
    // 最新评论页数
    let newCommentPage = ref(1)
    //当前是热门
    let currentMode = ref(0)








    // 初始化路由
    const route = useRoute();
    const router = useRouter();
    // console.log(props);
    const {
      proxy: {
        $http: { searchHotComment, searchNewComment },
      },
    } = getCurrentInstance();


    // 定时器索引
    let index = ref();

    //发送搜索关键字到路由
    function sendSearchMuiscKey(e) {
      // console.log(e.target.value);
      let keyValue = e.target.value;
      clearTimeout(index);
      index = setTimeout(() => {
        // context.emit('keyValue',keyValue)
        // 路由跳转
        router.push({
          path: "/single",
          query: { keyValue },
        });
      }, 1000);
    }
    // 接收 路由 子组件发送的消息
    function sendMusicId(musicId, mvId, playMv) {
      // console.log(playMv);
      // console.log(musicId, mvId);
      musicID.value = musicId
      // 发射事件到父组件
      context.emit("sendMusicId", musicId, mvId, playMv);



      // //  请求热门评论
      // requestHotComment(musicId)
      // // 请求最新评论
      // requestNewComment(musicId)
      // //初始化页数
      // hotCommentPage.value = 1
      // newCommentPage.value = 1
    }
    // 获取父组件传递过来的music 信息
    // 被父组件调用,需要将函数return 出去
    function getFatherMusicUrl(data) {
      // console.log(data);
      musicLrc.value = data.data
      let musicId = data.data.data.info.id
      //  请求热门评论
      requestHotComment(musicId)
      // 请求最新评论
      requestNewComment(musicId)
      //初始化页数
      hotCommentPage.value = 1
      newCommentPage.value = 1
      // 初始化歌词位置
      currentIndex.value=0
    }
    // 请求热门评论
    function requestHotComment(musicId) {
      searchHotComment(musicId, 1).then(res => {
        // console.log(res.data);
        hotComment.value = res.data
      })
    }
    // 请求最新评论
    function requestNewComment(musicId) {
      searchNewComment(musicId, 1).then(res => {
        // console.log(res.data);
        newComment.value = res.data
      })
    }
    //加载更多热门评论
    function loadMoreHotComment() {
      // console.log(musicID);
      hotCommentPage.value++
      searchHotComment(musicID.value, hotCommentPage.value).then(res => {
        console.log(res.data);
        hotComment.value.rows = [...hotComment.value.rows, ...res.data.rows]
        // console.log(hotComment.value);
      })
    }
    //加载更多最新评论
    function loadMoreNewComment() {
      newCommentPage.value++
      searchNewComment(musicID.value, newCommentPage.value).then(res => {
        // console.log(res.data);
        newComment.value.rows = [...newComment.value.rows, ...res.data.rows]
        // console.log(hotComment.value);
      })
    }
    // 切换热门评论 与最新评论
    function changeMode(mode) {
      currentMode.value = mode
    }
    //历史播放时,父组件修改music id
    function changeMusicId(musicId) {
      musicID.value = musicId
    }

    onMounted(() => {
      // 发射获取audio 事件
      context.emit('getAudio')
      // let index= setInterval(()=>{
      //     console.log(props);
      //     if(props.audioLabel!=undefined){
      //       clearInterval(index)
      //     }
      //  },1000)
      // console.log(props.audioLabel.value.audio);
      // console.log(audioLabel);
      // console.log(audioLabel.value);
      props.audioLabel.value.audio.addEventListener('timeupdate', () => {
        //  console.log(musicLrc.value);
        // console.log( props.audioLabel.value.audio.currentTime);
        // console.log(props.audioLabel.value.audio.ended);
        if (props.audioLabel.value.audio.ended) {
          // 播放结束
          currentIndex.value = 0
          // console.log(currentIndex);
          return
        }
        if (musicLrc.value.data?.lrc.length == 0) return
        if (currentIndex.value + 1 >= musicLrc.value.data?.lrc.length) return
        if (parseFloat(props.audioLabel.value.audio.currentTime) >= parseFloat(musicLrc.value.data?.lrc[currentIndex.value + 1].time)) {
          currentIndex.value++
          // console.log(currentIndex.value);
          lrc.value.scrollTop = 90 + parseFloat(currentIndex.value) * 30
        }

        // console.log(lrc.value);
      })
    })

    //接收子组件播放Mv ,传递到父组件,需要将此函数导出去才能传递到父组件
    function playMv(musicId) {
      context.emit('playMv', musicId)
    }







    // 暴露给模板
    // return 导出去才能被父组件调用这个属性或方法
    return {
      isDowning,
      sendSearchMuiscKey,
      sendMusicId,
      getFatherMusicUrl,
      musicLrc,
      currentIndex,
      lrc,
      hotComment,
      loadMoreHotComment,
      loadMoreNewComment,
      changeMode,
      currentMode,
      newComment,
      requestHotComment,
      hotCommentPage,
      newCommentPage,
      musicID,
      changeMusicId,
      requestNewComment,
      playMv,
    };
  },
};
</script>

<style lang="scss" scoped>
#lrc-and-comment {
  position: relative;
  width: 100vw;
  height: 100%;
  //   background-color: rgba(255, 255, 255, 0.341);
  overflow: hidden;

  header {
    position: relative;
    transform: translateY(-106%);
    width: 80vw;
    margin: 1% auto;
    height: 86%;
    background-color: rgba(255, 255, 255, 0.205);
    border-top: 3px solid rgba(255, 255, 255, 0.4);
    border-right: 3px solid rgba(255, 255, 255, 0.4);
    background: linear-gradient(to top right,
        rgba(90, 149, 207, 0.1),
        rgba(58, 76, 99, 0.4));
    box-shadow: 10px -10px 20px rgba(0, 0, 0, 0.2),
      -10px 10px 20px rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(6px);
    border-radius: 20px;
    transition: all 1.5s;
    background: url("https://tse1-mm.cn.bing.net/th/id/R-C.d4ce0d04cacc849e93c1743324caf6de?rik=816FZUUsY5E7KQ&riu=http%3a%2f%2fwww.shuaigefaxing.com%2fuploadfile%2f2019%2f0403%2f20190403080755180.jpg&ehk=mMxLGee9odFSrtS3FHU59ZWVDpxEsOWp%2fLkcLrRYPgE%3d&risl=&pid=ImgRaw&r=0") no-repeat center center/cover;
    z-index: 11;

    &:hover {
      transform: translateY(0) translateX(0);
    }

    &:hover~.side-comment .comment {
      //   background-color: #fff;
      transform: translate(-100%);
      //   transform: translate(-80%);
    }

    &:hover~.side-comment .lrc {
      //   background-color: #fff;
      transform: translate(110%);
    }

    .side-tip {
      width: 100%;
      height: calc(100% - 120px);
      overflow: hidden;
    }

    .usermsg {
      padding-top: 20px;
      width: 100%;
      max-height: 130px;
      //   background-color: #fff;

      display: flex;
      overflow: hidden;
      border-radius: 10px;

      .img {
        flex: 2;
        text-align: right;
        padding-right: 10px;

        img {
          width: 80px;
          height: 80px;
          padding: 5px;
          border: 4px solid transparent;
          border-top: 4px solid rgb(255, 128, 0);
          border-bottom: 4px solid rgb(255, 128, 0);
          border-radius: 50%;
          animation: imgRotate 2s linear infinite forwards;
        }
      }

      .username {
        padding-top: 8px;
        flex: 7;
        width: 100%;
        height: 60px;

        //   background-color: aquamarine;
        p {
          overflow: hidden;
          white-space: nowrap;
          text-overflow: ellipsis;
          color: #fff;
        }

        p:nth-child(2) {
          color: red;
        }
      }
    }

    .drop-down-list {
      width: 50px;
      position: absolute;
      bottom: -50px;
      height: 50px;
      left: 15px;
      line-height: 50px;
      //  background-color: violet;
      text-align: center;
      border-bottom-left-radius: 20px;
      border-bottom-right-radius: 20px;
      //   border: 2px solid rgb(151, 150, 150);
      cursor: pointer;

      //  filter: blur(1px);
      &::before {
        content: "";
        display: block;
        position: absolute;
        top: 0;
        width: 100%;
        height: 100%;
        border-bottom-left-radius: 20px;
        border-bottom-right-radius: 20px;
        border: 2px solid rgba(255, 255, 255, 0.434);
        border-top: none;
        // background-color: #fff;
        z-index: 11;
      }

      span {
        font-size: 2rem;
        color: #fff;
      }
    }
  }

  footer {
    position: relative;
    transform: translateY(5%);
    width: 80vw;
    margin: 1% auto;
    height: 86%;
    background-color: rgba(255, 255, 255, 0.205);
    border-top: 3px solid rgba(255, 255, 255, 0.4);
    border-right: 3px solid rgba(255, 255, 255, 0.4);
    background: linear-gradient(to top right,
        rgba(90, 149, 207, 0.1),
        rgba(58, 76, 99, 0.4));
    box-shadow: 10px -10px 20px rgba(0, 0, 0, 0.2),
      -10px 10px 20px rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(6px);
    border-radius: 20px;
    transition: all 1.5s;
    background: url("https://tse1-mm.cn.bing.net/th/id/R-C.d4ce0d04cacc849e93c1743324caf6de?rik=816FZUUsY5E7KQ&riu=http%3a%2f%2fwww.shuaigefaxing.com%2fuploadfile%2f2019%2f0403%2f20190403080755180.jpg&ehk=mMxLGee9odFSrtS3FHU59ZWVDpxEsOWp%2fLkcLrRYPgE%3d&risl=&pid=ImgRaw&r=0") no-repeat center center/cover;
    z-index: 11;
    overflow: hidden;
    display: flex;

    &:hover {
      transform: translateY(-95%) translateX(0);
      width: 100%;
    }

    &:hover~.side-comment .comment {
      //   background-color: #fff;
      transform: translate(-100%);
      //   transform: translate(-80%);
    }

    &:hover~.side-comment .lrc {
      //   background-color: #fff;
      transform: translate(110%);
    }

    .side-menu {
      width: 30%;
      height: 100%;
      background-color: rgba(255, 255, 255, 0.56);

      h2 {
        width: 100%;
        height: 20%;
        padding: 8% 50px;
        // background-color: #fff;
      }

      ul {
        width: 100%;
        height: 80%;
        padding: 0 50px;

        //  background-color: #fff;
        li {
          line-height: 100%;
          width: 100%;
          // background-color: aqua;
          cursor: pointer;
          padding: 10px 0;
          border-bottom: 2px solid;
          display: flex;

          &:hover a {
            color: rgb(183, 20, 77) !important;
          }

          a {
            width: 100%;
            color: aqua !important;
          }
        }
      }
    }

    .route {
      width: 70%;
      height: 100%;
    }
  }

  .side-comment {
    position: absolute;
    top: 10vh;
    width: 160vw;
    height: calc(100% - 100px);
    // background-color: #fff;
    display: flex;
    overflow: hidden;

    .comment {
      width: 20vw;
      height: 100%;
      backdrop-filter: blur(10px);
      border-top: 2px solid rgba(255, 255, 255, 0.4);
      border-right: 2px solid rgba(255, 255, 255, 0.4);
      background: linear-gradient(to top right,
          rgba(90, 149, 207, 0.1),
          rgba(58, 76, 99, 0.4));
      box-shadow: 10px -10px 20px rgba(0, 0, 0, 0.2),
        -10px 10px 20px rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(6px);
      border-radius: 10px;
      transition: all 1s;

      &:hover {
        width: 80vw;
        transform: translate(8vw);
        margin-right: 10vw;
      }

      .change {
        width: 100%;
        height: 5vh;
        line-height: 5vh;
        text-align: center;
        // background-color: yellow;
        display: flex;

        .currentMode {
          color: red;
        }

        span {
          flex: 1;
          cursor: pointer;
          border-left: 1px solid rgb(34, 33, 33);
          border-bottom: 1px solid rgb(34, 33, 33);
        }

        span:nth-child(1) {
          border-left: none;
        }

        span:hover {
          color: #fff;
        }
      }

      .comment-content {
        width: 100%;
        height: calc(100% - 5vh);
        padding: 0 10px;

        //    background-color: #fff;
        ul {
          width: 100%;
          height: 100%;
          overflow-y: scroll;
          // background-color: #fff;
          padding-bottom: 100px;

          &::-webkit-scrollbar {
            width: 0;
          }

          li {
            margin-top: 10px;

            // background-color: rgba(0, 255, 255, 0.459);
            .usermsg1 {
              width: 100%;
              height: 100%;
              display: flex;
              cursor: pointer;

              p {
                flex: 1;
                width: 70px;
                height: 70px;
                color: rgb(255, 0, 140);

                &:nth-child(2) {
                  flex: 7;
                  padding: 0 10px;
                  //  background-color: #fff;
                  line-height: 60px;
                  overflow: hidden;
                  text-overflow: ellipsis;
                  white-space: nowrap;
                }

                img {
                  width: 60px;
                  height: 60px;
                  border-radius: 50%;
                  border: 2px solid rgb(255, 255, 255);
                }
              }
            }

            .user-comment {
              padding: 10px;

              //  background-color: #fff;
              div {
                width: 100%;
                padding: 10px;
                font-size: 0.8rem;
                word-break: break-all;
                white-space: wrap;
                border: 1px solid rgb(251, 0, 255);
                border-radius: 10px;
                color: #fff;

                p {
                  padding-right: 10px;
                  text-align: right;
                }
              }
            }
          }

          .loadMoreComment {
            text-align: center;
            padding: 10px;
            color: #fff;
            cursor: pointer;

            &:hover {
              color: rgb(252, 95, 84);
            }
          }
        }
      }
    }

    .lrc {
      width: 60vw;
      margin-left: 5vw;
      margin-top: 2%;
      height: 90%;
      border-top: 2px solid rgba(255, 255, 255, 0.4);
      border-left: 2px solid rgba(255, 255, 255, 0.4);
      background: linear-gradient(to top right,
          rgba(90, 149, 207, 0.1),
          rgba(58, 76, 99, 0.4));
      box-shadow: 6px -6px 20px rgba(0, 0, 0, 0.2),
        -6px 6px 20px rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(6px);
      border-radius: 20px;
      transition: all 1s;
      overflow-y: scroll;

      &::-webkit-scrollbar {
        width: 0;
      }

      &:hover {
        transform: translate(-45%);
        width: 50vw;
      }

      &:hover~.picture {
        margin-left: 1vw;
        transform: translate(-45%);
      }

      // &::before {
      //   content: "";
      //   display: block;
      //   position: absolute;
      //   top: 10px;
      //   width: 80%;
      //   left: 10%;
      //   height: 2px;
      //   background-color: #fff;
      // }

      // &::after {
      //   content: "";
      //   display: block;
      //   position: absolute;
      //   bottom: 10px;
      //   width: 80%;
      //   left: 10%;
      //   height: 2px;
      //   background-color: #fff;
      // }

      .lrc-box {
        width: 100%;
        // height: 80%;
        //   background-color: #fff;
        margin-top: 10%;
        padding: 20% 0%;
        text-align: center;




        p {
          color: #fff;
          padding-top: 10px;
        }

        .currentLrc {
          color: aqua;
          font-size: 1.8rem;
          margin: 3% 0;
        }
      }
    }

    .picture {
      margin-left: 10vw;
      width: 40vw;
      height: 100%;
      border-top: 2px solid rgba(255, 255, 255, 0.4);
      border-left: 2px solid rgba(255, 255, 255, 0.4);
      background: linear-gradient(to top right,
          rgba(90, 149, 207, 0.1),
          rgba(58, 76, 99, 0.4));
      box-shadow: 6px -6px 20px rgba(0, 0, 0, 0.2),
        -6px 6px 20px rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(6px);
      border-radius: 20px;
      transition: all 1s;

      &:hover {
        transform: translate(-100%);
        width: 50vw;
        // padding: 3vw 10vw;
      }

      p {
        width: 100%;

        img {
          display: block;
          margin-left: 10%;
          margin-top: 10%;
          width: 80%;
          max-height: 40vh;
          border: 1px solid aqua;
          border-radius: 10px;
        }
      }

      .song-operation {
        width: 80%;
        margin-left: 10%;
        margin-top: 5%;
        height: 5vh;
        //   background-color: #fff;
        display: flex;
        text-align: center;
        justify-content: space-around;

        span {
          width: 15%;
          height: 4.5vh;
          min-width: 70px;
          line-height: 4.5vh;
          cursor: pointer;
          padding: 0 5px;
          //   background-color: aqua;
          border: 1px solid;
          color: aqua;

          &:hover {
            color: rgba(239, 117, 3, 0.8);
            border-color: rgba(239, 117, 3, 0.8);
          }
        }
      }

      .music-more {
        padding-top: 4vh;
        text-align: center;
        cursor: pointer;
        color: aqua;

        &:hover {
          color: rgb(255, 170, 0);
        }
      }
    }
  }

  .search {
    position: absolute;
    top: 10px;
    right: 0;
    width: 10%;
    height: 5vh;
    // background-color: #fff;
    background-color: rgba(255, 255, 255, 0.205);
    border-top: 3px solid rgba(255, 255, 255, 0.4);
    border-right: 3px solid rgba(255, 255, 255, 0.4);
    background: linear-gradient(to top right,
        rgba(90, 149, 207, 0.1),
        rgba(58, 76, 99, 0.4));
    box-shadow: 10px -10px 20px rgba(0, 0, 0, 0.2),
      -10px 10px 20px rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(6px);
    border-radius: 20px;
    transition: all 1.5s;
    background: url("https://img.phbzj.com/xiaohua/0906/090609305987.jpg") no-repeat center center/cover;
    z-index: 11;

    &:hover {
      width: 100vw;
      margin: 1% auto;
      height: 86%;
      transform: translateY(1%) translateX(0);
    }

    &:hover .search-box {
      display: block;
    }

    &:hover~.side-comment .comment {
      //   background-color: #fff;
      transform: translate(-100%);
      //   transform: translate(-80%);
    }

    &:hover~.side-comment .lrc {
      //   background-color: #fff;
      transform: translate(110%);
    }

    &:hover .search-icon {
      // display: none;
      top: 6%;
      left: 0%;
      width: 10%;
      padding: 0;
      text-align: center;
      color: #000;
      border-right: 2px solid;
      font-weight: 800;
    }

    .search-icon {
      position: absolute;
      padding-left: 10%;
      color: rgb(255, 115, 0);
    }

    .search-box {
      display: none;
      width: 100%;
      height: 100%;
      text-align: center;
      overflow: hidden;

      .search-input {
        position: relative;
        margin-top: 2%;
        margin-bottom: 2%;
        width: 100%;
        height: 10%;

        input {
          outline: #fff;
          border: none;
          width: 50%;
          height: 100%;
          border-radius: 100px;
          padding-left: 20px;

          &::-webkit-input-placeholder {
            /* WebKit browsers */
            padding-left: 5px;
            color: rgb(239, 117, 10);
          }

          &::-moz-placeholder {
            /* Mozilla Firefox 4 to 18 */
            color: rgb(239, 117, 10);
          }

          &::-moz-placeholder {
            /* Mozilla Firefox 19+ */
            color: rgb(239, 117, 10);
          }

          &::-ms-input-placeholder {
            /* Internet Explorer 10+ */
            color: rgb(239, 117, 10);
          }

          &:hover~.search-result {
            display: block;
          }
        }

        // .search-result {
        //   display: none;
        //   margin: 0 auto;
        //   width: 50%;
        //   height: 50vh;
        //   // background-color: rgb(98, 48, 48);
        //   border-radius: 10px;
        //   &:hover {
        //     display: block;
        //   }
        //   ul {
        //     padding-top: 5%;
        //     width: 100%;
        //     height: 100%;
        //     background-color: rgb(255, 255, 255);
        //     border-top: 3px solid rgba(255, 255, 255, 0.4);
        //     border-right: 3px solid rgba(255, 255, 255, 0.4);
        //     border-radius: 10px;
        //     padding: 10px 0;
        //     overflow-y: scroll;
        //     &::-webkit-scrollbar {
        //       width: 0;
        //     }
        //     li {
        //       padding: 0 10px;
        //       width: 100%;
        //       height: 15%;
        //       line-height: 260%;
        //       text-align: left;
        //       color: #000;
        //       cursor: pointer;
        //       &:hover {
        //         background-color: rgba(233, 151, 37, 0.578);
        //         color: aqua;
        //       }
        //       display: flex;
        //       span {
        //         flex: 8;
        //         overflow: hidden;
        //         white-space: nowrap;
        //         text-overflow: ellipsis;
        //         &:nth-child(2) {
        //           flex: 2;
        //           // background-color: aqua;
        //         }
        //       }
        //     }
        //   }
        // }
      }

      .show-result {
        width: 100%;
        height: 80%;
        background-color: rgba(255, 255, 255, 0.392);
        overflow: hidden;

        .show-key-title {
          padding: 0 20%;
          width: 100%;
          height: 10%;
          line-height: 200%;
          // background-color: violet;
          display: flex;

          span {
            flex: 1;
            cursor: pointer;
            border: 1px solid rgb(0, 204, 255);
            color: rgb(0, 204, 255);
            display: flex;

            &:hover {
              border: 1px solid rgb(153, 0, 255);
            }

            &:hover a {
              color: rgb(153, 0, 255);
            }

            a {
              flex: 1;
              color: rgb(0, 204, 255);
            }
          }
        }

        .show-key-result {
          width: 100%;
          height: 90%;
          border-radius: 10px;
          display: flex;

          .show-key-result-content {
            width: 80%;
            height: 100%;
            // background-color: #fff;
            overflow-y: scroll;

            &::-webkit-scrollbar {
              width: 0;
            }
          }

          .show-key-result-page {
            width: 20%;
            height: 100%;
            // background-color: rgb(243, 95, 95);
          }
        }
      }
    }
  }
}

.current-route {
  border: 1px solid rgb(153, 0, 255) !important;

  a {
    color: rgb(153, 0, 255) !important;
  }
}

// 头像旋转
@keyframes imgRotate {
  from {
    transform: rotate(0);
  }

  to {
    transform: rotate(360deg);
  }
}
</style>
