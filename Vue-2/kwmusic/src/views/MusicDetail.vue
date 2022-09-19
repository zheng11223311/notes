<template >
  <!-- 歌词界面 -->
  <div
    class="music-detail"
    :style="{
      background: 'url(' + musicDefaultPic + ') no-repeat ',
      backgroundSize: 'cover',
    }"
  >
    <div class="operation">
      <!-- <span
        class="iconfont icon-quanping"
        title="全屏"
        @click="fullScreen()"
      ></span> -->
      <span
        class="iconfont icon-xiangxiajiantou"
        title="收起"
        @click="packup()"
      ></span>
    </div>
    <div
      class="broadSide"
      :class="{ noisanamorphosis: mouseenter, isanamorphosis: mouseout }"
      @mouseenter="changisanamorphosis($event)"
      @mouseleave="changisnoanamorphosis($event)"
    >
      <div class="top">
        <p
          @click="singerPhoto($event)"
          :class="showCommentOrSinger == 0 ? 'currentMode' : ''"
        >
          <span class="iconfont icon-mulu"></span> 歌词写真
        </p>
        <p
          @click="recommandComment($event)"
          :class="showCommentOrSinger == 1 ? 'currentMode' : ''"
        >
          <span class="iconfont icon-pinglun1"></span> 推荐评论
        </p>
        <p :class="noexitmv == 1 ? 'ismv' : ''" @click="playmv()">
          <span class="iconfont icon-wmv"></span> MV
        </p>
      </div>
      <div class="bottom">
        <p v-if="isanamorphosis" @click="isAnamorphosis()">
          <span class="iconfont icon-fangxiang"></span> 渐隐边栏
        </p>
        <p v-if="!isanamorphosis" @click="isAnamorphosis()">
          <span class="iconfont icon-lianjie1"></span> 固定边栏
        </p>
        <p title="暂时无法使用">
          <span class="iconfont icon-tupian1"></span> 歌词背景
        </p>
        <p class="fontColorHover">
          <span class="iconfont icon-A"></span> 字体颜色
          <span class="fontColorBox" @click="fontColorBox($event)"
            ><span></span><span></span><span></span><span></span><span></span
            ><span></span><span></span><span></span
          ></span>
        </p>
        <p title="暂时无法使用">
          <span class="iconfont icon-sousuo"></span> 搜索歌词
        </p>
      </div>
    </div>
    <div class="lrc" v-if="showCommentOrSinger == 0" ref="musicLrc1">
      <div class="musicLrc">
        <p
          class="oneLrc"
          :style="{ color: lrcColor }"
          v-for="(item, index) in musicLrc"
          :key="item.time"
          :class="{
            currentLrc: currentIndex - 1 == index,
            currentLrcEnd: currentIndex - 2 == index,
          }"
        >
          {{ item.lineLyric }}
        </p>
        <p v-if="musicLrc.length == 0" class="currentLrc">暂无歌词</p>
      </div>
      <!-- <div class="maskOne"></div>
      <div class="maskTwo"></div> -->
    </div>
    <!-- 评论界面 -->
    <div class="recommendcomment" v-if="showCommentOrSinger == 1">
      <div class="recommendcommentleft">
        <div class="img">
          <img :src="musicDefaultPic" alt="" srcset="" />
        </div>
        <div class="operation">
          <p @click="shareMusic()">
            <span class="iconfont icon-fenxiang1"></span>分享
          </p>
          <p @click="downmusic()">
            <span class="iconfont icon-xiazai2"></span>下载
          </p>
          <p><span class="iconfont icon-tianjia"></span>添加</p>
        </div>
        <div class="like">
          <h2>喜欢听这首歌的的人也听</h2>
          <div
            class="likesong"
            v-for="item in likeMusic.playlist"
            :key="item.sourceid"
          >
            <div class="likeimg">
              <span class="iconfont icon-bofang"></span>
              <img :src="item.pic" alt="" />
            </div>
            <div class="liketitle">
              <p>{{ item.name }}</p>
              <p>
                <span class="iconfont icon-erji"></span>
                {{ formatNum(item.playcnt) }}
              </p>
            </div>
          </div>
        </div>
        <div class="similar">
          <h2>相似歌曲</h2>
          <div
            class="similarsong"
            v-for="item in likeMusic.music?.slice(0, showmore)"
            :key="item.id"
          >
            <div>
              <span>{{ item.name }}</span>
              <span>{{ item.artist }}</span>
              <div class="operation">
                <p><span class="iconfont icon-tianjia1" title="添加"></span></p>
                <p><span class="iconfont icon-xiazai2" title="下载"></span></p>
                <p><span class="iconfont icon-gengduo2" title="更多"></span></p>
              </div>
            </div>
          </div>
          <div
            class="showmore"
            v-if="showmore == 5 && likeMusic.music?.length >= 5"
            @click="showmore1()"
          >
            查看更多 <span class="iconfont icon-xiangxiajiantou"></span>
          </div>
        </div>
        <div class="hotsong">
          <h2>
            <span>{{ hotSong.music?.[0].artist }}</span> 的热门歌曲
          </h2>
          <div
            class="hotsonglist"
            v-for="item in hotSong.music?.slice(0, showmorehotsong)"
            :key="item.id"
          >
            <div class="hotsonglisttop">
              <span>{{ item.name }}</span>
              <p>
                <span class="iconfont icon-tianjia1" title="添加"></span
                ><span class="iconfont icon-xiazai2" title="下载"></span
                ><span class="iconfont icon-gengduo2" title="更多"></span>
              </p>
            </div>
            <div class="hotsonglistbottom">
              <span>{{ item.album }}</span> <span>{{ item.artist }}</span>
            </div>
          </div>
          <div
            class="showmore"
            v-if="showmorehotsong == 5 && hotSong.music?.length >= 5"
            @click="showmorehotsong1()"
          >
            查看更多 <span class="iconfont icon-xiangxiajiantou"></span>
          </div>
        </div>
      </div>
      <div class="recommendcommentright">
        <div class="songinfo">
          <h1>{{ musicInfo[1]?.data.info.name }}</h1>
          <p>
            专辑:
            <span :title="musicInfo[1]?.data.info.album_name || '无'">{{
              musicInfo[1]?.data.info.album_name || "无"
            }}</span>
            歌手:
            <span :title="musicInfo[1]?.data.info.artist_name">{{
              musicInfo[1]?.data.info.artist_name
            }}</span>
          </p>
          <div class="songlrcandoperation">
            <div class="songlrc" ref="a">
              <p
                :style="{ color: recommentLrcColor }"
                v-for="(item, index) in musicLrc"
                :key="item.time"
                :class="{
                  currentLrc: currentIndex - 1 == index,
                  currentLrcEnd: currentIndex - 2 == index,
                }"
              >
                {{ item.lineLyric }}
              </p>
              <p v-if="musicLrc.length == 0" class="currentLrc">暂无歌词</p>
            </div>
            <div class="songoperation">
              <span
                class="iconfont icon-shuangxiangshang1"
                title="后退0.5s"
                @click="changeCurrentTime(0)"
              ></span>
              <span
                class="iconfont icon-huanyuan"
                title="还原"
                @click="changeCurrentTime(1)"
              ></span>
              <span
                class="iconfont icon-shuangxiangxia"
                title="前进0.5s"
                @click="changeCurrentTime(2)"
              ></span>
              <p>
                <span
                  class="iconfont icon-tianjia"
                  title="更多"
                  @mouseenter="showMoreoperation()"
                ></span
                ><span
                  class="songoperationmore"
                  v-show="songoperationmore"
                  @click="duplicateLrc($event)"
                  @mouseleave="hideoperation()"
                  >复制歌词</span
                >
              </p>
            </div>
          </div>
        </div>
        <div class="currentcomment">
          <h2>
            留言评论 <span>{{ hotComment.t_total }} 条</span>
          </h2>
          <textarea name="" id="" style="resize: none"></textarea>
          <div class="commit">
            <span class="iconfont icon-xiaolian1"></span>
            <button>评论</button>
          </div>
        </div>
        <div class="currenthotcomment">
          <h4>热门评论</h4>
          <div
            class="usercomment"
            v-for="item in hotComment.rows"
            :key="item.id"
          >
            <div class="usercommentimg">
              <img :src="item.u_pic || userDefaultImg" alt="" />
            </div>
            <div class="usercommentcontent">
              <p>
                <span>{{ item.u_name }}</span
                ><span>{{ item.time }}</span>
              </p>
              <div class="usercommentcontent1">
                <div class="mycomment">
                  {{ item.msg }}
                </div>
                <div class="aitecomment" v-if="item.reply">
                  @{{ item.reply.u_name }} : {{ item.reply.msg }}
                </div>
              </div>
              <div class="usercommentoperation">
                <span class="reply">回复 | </span>
                <span
                  >{{ item.like_num }} <span class="iconfont icon-zan1"></span>
                </span>
              </div>
            </div>
          </div>
        </div>
        <div class="currenthotcomment">
          <h4>最新评论</h4>
          <div
            class="usercomment"
            v-for="item in newComment.rows"
            :key="item.id"
          >
            <div class="usercommentimg">
              <img :src="item.u_pic || userDefaultImg" alt="" />
            </div>
            <div class="usercommentcontent">
              <p>
                <span>{{ item.u_name }}</span
                ><span>{{ item.time }}</span>
              </p>
              <div class="usercommentcontent1">
                <div class="mycomment">
                  {{ item.msg }}
                </div>
                <div class="aitecomment" v-if="item.reply">
                  @{{ item.reply.u_name }} : {{ item.reply.msg }}
                </div>
              </div>
              <div class="usercommentoperation">
                <span class="reply">回复 | </span>
                <span
                  >{{ item.like_num }} <span class="iconfont icon-zan1"></span>
                </span>
              </div>
            </div>
          </div>
        </div>
        <page-change
          :listLength="newComment.rows?.length || 0"
          :onePageNum="20"
          :total="newComment.total"
          @requestsong="requestsong"
        ></page-change>
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";

import PageChange from "../components/common/PageChange.vue";
export default {
  components: { PageChange },
  name: "MusicDetail",      //歌词详情与评论页面
  data() {
    return {
      showCommentOrSinger: 0,
      showmore: 5,
      showmorehotsong: 5,
      userDefaultImg:
        "https://tse1-mm.cn.bing.net/th/id/R-C.fc3712934d3f14e93bb049cb3be0ee18?rik=0ZlOt7i89hWjVA&riu=http%3a%2f%2fwww.kutoo8.com%2fupload%2fimage%2f17634230%2f5656000.jpg&ehk=ecvpFWTMp4spOXJ7pxOpzNwsdlk591NfEtk31YSdogg%3d&risl=&pid=ImgRaw&r=0",
      isanamorphosis: 1, //是否开启渐变
      mouseenter: 0,
      mouseout: 0,
      lrcColor: "rgb(100, 97, 97)",
      recommentLrcColor: "#fff",
      songoperationmore: false,
    };
  },
  computed: {
    formatNum() {
      return (num) => {
        return num > 10000 ? (num / 10000).toFixed(1) + "万" : num;
      };
    },
  },
  props: [
    "currentIndex",
    "margin",
    "musicDefaultPic",
    "musicLrc",
    "likeMusic",
    "hotSong",
    "musicInfo",
    "hotComment",
    "newComment",
    "musicId",
    "noexitmv",
  ],
  methods: {
    requestsong(page) {
      this.$emit("changenewComment", page);
    },
    packup() {
      this.$store.state.bottombar.open = 0;
    },
    // 打开评论界面
    recommandComment(e) {
      this.showCommentOrSinger = 1; //当前点击显示评论界面
      // console.log( this.showCommentOrSinger);
      // console.log(e.target.className);
      e.target.className = this.showCommentOrSinger == 1 ? "currentMode" : "";
    },
    // 打开歌手写真
    singerPhoto(e) {
      this.showCommentOrSinger = 0; //当前点击显示评论界面
      e.target.className = this.showCommentOrSinger == 0 ? "currentMode" : "";
    },
    // 相似歌曲 显示更多
    showmore1() {
      this.showmore = this.likeMusic.music?.length;
    },
    // 热门歌曲 显示更多
    showmorehotsong1() {
      this.showmorehotsong = this.hotSong.music?.length;
    },
    // 请求mv
    playmv() {
      // 如果没有mv 视频
      // console.log(this.noexitmv);
      if (this.noexitmv == 1) {
        return;
      }
      //收起歌词
      this.$store.state.bottombar.open = 0;
      axios({
        // url: "http://www.kuwo.cn/mvplay/" + id,
        url:
          "http://120.24.51.158/kwmusic/backend/getvideo.php?id=" +
          this.musicId,
        headers: {},
      }).then((data) => {
        // console.log(/sources\:(.*?)\}\]/g.exec(data.data)[1]+'}]');
        // console.log(JSON.stringify((/sources\:(.*?)\}\]/g.exec(data.data)[1]+'}]').replaceAll('\\u002F','/')));
        // 匹配出当前歌曲mp4 的url地址
        // https://other-web-nf03-sycdn.kuwo.cn/1e9001102c8cf2545e0974cdbaef31bc/6252ec36/resource/m2/98/88/2337678367.mp4
        console.log(
          eval(
            (/sources\:(.*?)\}\]/g.exec(data.data)[1] + "}]").replaceAll(
              "\\u002F",
              "/"
            )
          )
        );
        let mp4Url = eval(
          (/sources\:(.*?)\}\]/g.exec(data.data)[1] + "}]").replaceAll(
            "\\u002F",
            "/"
          )
        );
        this.$router.push({ path: "/mp4", query: { url: mp4Url[0].src } });
      });
    },
    // 改变动画
    changisanamorphosis(e) {
      if (this.isanamorphosis != true) return; //关闭渐变退出
      this.mouseenter = true;
      this.mouseout = false;
    },
    changisnoanamorphosis(e) {
      if (this.isanamorphosis != true) return;
      this.mouseenter = false;
      this.mouseout = true;
    },
    // 渐变
    isAnamorphosis() {
      this.isanamorphosis = !this.isanamorphosis;
      // console.log(this.isanamorphosis);
    },
    // 歌词字体颜色
    fontColorBox(e) {
      // console.log(e.target.style);
      let color = window.getComputedStyle
        ? window.getComputedStyle(e.target, null)
        : e.target.currentStyle;
      //  console.log(color.backgroundColor);
      this.recommentLrcColor = this.lrcColor = color.backgroundColor;
      localStorage.setItem("lrcColor", color.backgroundColor);
    },
    // 本地读取歌词字体颜色
    localFontColor() {
      if (localStorage.getItem("lrcColor") == undefined) return;
      this.recommentLrcColor = this.lrcColor = localStorage.getItem("lrcColor");
    },
    // 修改歌词同步事件
    changeCurrentTime(mode) {
      this.$emit("changeCurrentTime", mode);
    },
    // 更多操作-复制歌词
    showMoreoperation() {
      this.songoperationmore = true;
    },
    async duplicateLrc(e) {
      // console.log(this.musicLrc);
      let text = "";
      for (const obj of this.musicLrc) {
        // console.log(obj.lineLyric);
        text += obj.lineLyric + "\n";
      }
      // console.log(window);
      // console.log(typeof text);
      // console.log(text.slice(1,10));
      // http://www.deathghost.cn/article/javascript/89    剪切板复制粘贴 api
      const result = await navigator.clipboard.writeText(text);
      // console.log(result);
      //  const result1 = await navigator.clipboard.readText();
      // console.log(result1);
      e.target.innerText = "歌词已复制";
      e.target.style.color = "#ccc";
      setTimeout(() => {
        e.target.innerText = "复制歌词";
        e.target.style.color = "#fff";
      }, 500);
    },
    hideoperation() {
      this.songoperationmore = false;
    },
    // 下载歌曲
    downmusic() {
      this.$emit("downmusic");

      // // 下载的歌曲地址
      // let downUrl =
      //   "https://other-web-nf03-sycdn.kuwo.cn/f73e1cce3ae01f99fd6986bb71ccefea/625a7cee/resource/a3/98/25/1188026551.aac";
      // // 下载歌曲后的歌曲文件名
      // let fileName = "哈哈.mp3";
      // axios({
      //   method: "get",
      //   url: downUrl,
      //   responseType: "blob",
      //   // headers: {'content-type': 'audio/mpeg'}
      // })
      //   .then((res) => {
      //     let blobType = "application/force-download"; // 设置blob请求头
      //     let blob = new Blob([res.data], { type: res.data.type }); // 创建blob 设置blob文件类型 data 设置为后端返回的文件(例如mp3,jpeg) type:这里设置后端返回的类型 为 mp3
      //     let downa = document.createElement("a"); // 创建A标签
      //     let href = window.URL.createObjectURL(blob); // 创建下载的链接
      //     downa.href = href; // 下载地址
      //     downa.download = fileName; // 下载文件名
      //     document.body.appendChild(downa);
      //     downa.click(); // 模拟点击A标签
      //     document.body.removeChild(downa); // 下载完成移除元素
      //     window.URL.revokeObjectURL(href); // 释放blob对象
      //   })
      //   .catch(function (error) {
      //     console.log(error);
      //   });
    },
    //  分享音乐
    async shareMusic() {
      // console.log(this.musicInfo[1].data.info.id);
      // console.log(
      //   window.location.host + "?id=" + this.musicInfo[1].data.info.id
      // );
      let url = window.location.host + "?id=" + this.musicInfo[1].data.info.id+"&mvid="+this.noexitmv;
      const result = await navigator.clipboard.writeText(url);
      alert("已复制好播放地址,发送给好友在浏览器上访问吧~");
    },
    // p(e){
    //   console.log(this.$refs.a);  //e.target 无法操作
    //  this.$refs.a.scrollTop =100   //滚动
    // }
  },
  created() {},
  mounted() {
    this.localFontColor();
  },
};
</script>
<style lang="scss" scoped>
::-webkit-scrollbar {
  width: 0;
}
.music-detail {
  position: relative;
  width: 100%;
  height: 100%;
  background-color: turquoise;
  // filter: blur(1px);
}

.music-detail > .operation {
  width: 100%;
  height: 50px;
  background-color: rgba(0, 255, 255, 0.436);
  text-align: right;
  line-height: 50px;
  padding-right: 10px;
}
.music-detail > .operation span {
  font-size: 30px;
  padding-right: 10px;
  cursor: pointer;
}
.music-detail > .operation span:hover {
  color: rgb(222, 217, 217);
  text-shadow: 1px 1px 1px #fff;
}

.lrc {
  position: relative;
  width: 100%;
  height: calc(100vh - 40px - 70px);
  // height: 500px;
  // background-color: yellow;
  text-align: center;
  padding: 20px;
  box-shadow: inset 2px 12px 10px #ccc, inset 2px -12px 10px #ccc;
  overflow-y: scroll;
  background-image: linear-gradient(
    to bottom,
    rgb(255, 255, 255) 0%,
    rgba(255, 255, 255, 0) 20%,
    rgba(255, 255, 255, 0) 80%,
    rgb(255, 255, 255) 100%
  );
}
.musicLrc {
  // position: absolute;
  width: 800px;
  margin: 200px auto;
  // background-color: violet;
  // height: 1800px;
}
.musicLrc .oneLrc {
  //   width: 800px;
  line-height: 40px;
  padding-top: 10px;
  //   background-color: rgb(157, 238, 130);
  //   border: 1px solid;
  color: rgb(100, 97, 97);
  font-size: 20px;
  cursor: pointer;
}
// .maskOne {
//   position: absolute;
//   top: 50px;
//   left: 0;
//   width: 100%;
//   height: 160px;
//   background-image: linear-gradient(
//     to bottom,
//     rgba(255, 255, 255, 1),
//     rgba(255, 255, 255, 0)
//   );
// }
// .maskTwo {
//   position: absolute;
//   top: calc(100% - 210px);
//   left: 0;
//   width: 100%;
//   height: 160px;
//   //  css 渐变透明
//   background-image: linear-gradient(
//     to top,
//     rgb(255, 255, 255),
//     rgba(255, 255, 255, 0)
//   );
// }
.currentLrc {
  // color: yellow !important;
  // font-size: 25px !important;
  animation: fontChange 1s forwards;
}
@keyframes fontChange {
  0% {
    font-size: 20px;
    color: yellow;
  }
  100% {
    font-size: 25px;
    color: yellow;
  }
}
.currentLrcEnd {
  animation: fontChangeEnd 3s forwards;
}
@keyframes fontChangeEnd {
  0% {
    font-size: 25px;
    // color: yellow;
    color: rgb(100, 97, 97);
  }
  100% {
    font-size: 20px;
    // color: rgb(100, 97, 97);
  }
}
.broadSide {
  position: absolute;
  left: 10px;
  // top: 120px;
  width: 140px;
  // height: calc(100vh - 40px - 260px);
  top: 130px;
  min-height: 330px;
  background-color: rgba(0, 0, 0, 0.096);
  text-align: left;
  z-index: 11;
  opacity: 0;
}
.broadSide .top {
  padding-left: 20px;
  padding-top: 20px;
  width: 140px;
  // height:110px;
  // background-color: rgb(0, 255, 30);
  // border: 1px solid red;
}
.broadSide .bottom {
  padding-top: 40px;
  padding-left: 20px;
  width: 140px;
  height: 110px;
  // background-color: rgb(0, 255, 30);
}
.isanamorphosis {
  animation: isanamorphosis 1s forwards;
}
.noisanamorphosis {
  opacity: 1 !important;
  animation: noisanamorphosis 1s forwards;
}
// 鼠标移出动画
@keyframes isanamorphosis {
  0% {
    opacity: 1;
    // transform: translate(-0px);
  }
  100% {
    opacity: 0;
    // transform: translate(0px);
  }
}
// 鼠标靠近动画
@keyframes noisanamorphosis {
  0% {
    opacity: 0;
    // transform: translate(-0px);
  }
  100% {
    opacity: 1;
    // transform: translate(0px);
  }
}
.broadSide p {
  position: relative;
  height: 30px;
  // border: 1px solid;
  cursor: pointer;
  color: #fff;
}
.broadSide p:hover {
  text-shadow: 1px 1px 3px #fff;
}
.broadSide .fontColorHover .fontColorBox {
  position: absolute;
  top: -20px;
  left: 100px;
  width: 160px;
  height: 60px;
  // background-color: rgb(236, 100, 100);
  display: none;
}
.broadSide .fontColorHover:hover > .fontColorBox {
  width: 100%;
  background-color: #fff;
  display: flex;
  justify-content: space-around;
  align-content: space-around;
  flex-wrap: wrap;
}
.broadSide .fontColorHover > .fontColorBox span {
  width: 21%;
  background-color: rgb(215, 53, 207);
  display: inline-block;
  overflow: hidden;
  height: 26px;
  // color: rgba(255, 255, 255, 0);
}
.broadSide .fontColorHover > .fontColorBox span:nth-child(2) {
  background-color: rgb(8, 250, 246);
}
.broadSide .fontColorHover > .fontColorBox span:nth-child(3) {
  background-color: rgb(243, 76, 10);
}
.broadSide .fontColorHover > .fontColorBox span:nth-child(4) {
  background-color: rgb(251, 4, 4);
}
.broadSide .fontColorHover > .fontColorBox span:nth-child(5) {
  background-color: rgb(246, 174, 5);
}
.broadSide .fontColorHover > .fontColorBox span:nth-child(6) {
  background-color: rgb(2, 2, 2);
}
.broadSide .fontColorHover > .fontColorBox span:nth-child(7) {
  background-color: rgb(253, 254, 254);
}
.broadSide .fontColorHover > .fontColorBox span:nth-child(8) {
  background-color: rgb(246, 5, 182);
}

.broadSide span:hover {
  color: #fff;
  text-shadow: 1px 1px 3px #fff;
}
.ismv {
  color: rgba(97, 95, 95, 0.463) !important;
  text-shadow: none !important;
}
.ismv span:hover {
  color: rgba(97, 95, 95, 0.425) !important;
  text-shadow: none !important;
}
.currentMode {
  color: yellow !important;
}
// 评论页面
.recommendcomment {
  position: relative;
  width: 100%;
  height: calc(100vh - 40px - 70px);
  background-color: rgba(131, 128, 128, 0.725);
  text-align: center;
  display: flex;
  justify-content: space-between;
  overflow-y: scroll;
}
.recommendcommentleft {
  width: 40%;
  // height: 1600px;
  // background-color: orange;
  padding-left: 60px;
}
.recommendcommentleft div.img {
  width: 100%;
  padding-top: 140px;
  // background-color: rgb(68, 255, 0);
}
.recommendcommentleft div.img::before {
  position: absolute;
  top: 130px;
  content: "";
  display: block;
  width: 260px;
  height: 200px;
  margin-left: 80px;
  background-color: rgba(134, 216, 200, 0.762);
}
.recommendcommentleft div.img::after {
  position: absolute;
  top: 120px;
  content: "";
  display: block;
  width: 220px;
  height: 200px;
  margin-left: 100px;
  background-color: rgba(109, 215, 194, 0.463);
}
.recommendcommentleft div.img img {
  position: relative;
  width: 300px;
  height: 300px;
  z-index: 10;
}
.recommendcommentleft > .operation {
  width: 300px;
  margin: 0 auto;
  text-align: center;
  font-size: 16px;
  display: flex;
  justify-content: space-around;
  margin-top: 10px;
}
.recommendcommentleft > .operation p {
  border: 1px solid rgb(201, 198, 198);
  height: 30px;
  line-height: 25px;
  padding: 3px 8px;
  color: rgb(232, 226, 226);
  border-radius: 3px;
}
.recommendcommentleft > .operation p:hover {
  border: 1px solid #fff;
  height: 30px;
  line-height: 25px;
  color: #fff;
}
.recommendcommentleft > .operation p span:hover {
  color: #fff !important;
}
.recommendcommentleft > .operation p span {
  text-align: center;
  font-size: 16px;
}
.recommendcommentleft .like {
  width: 100%;
  // background-color: violet;
  padding-top: 60px;
  padding-bottom: 30px;
  border-bottom: 1px solid rgba(153, 153, 153, 0.656);
}
.recommendcommentleft .like h2,
.recommendcommentleft .hotsong h2,
.recommendcommentleft .similar h2 {
  text-align: left;
  color: rgb(218, 211, 211);
}
.recommendcommentleft .like .likesong {
  width: 100%;
  height: 80px;
  cursor: pointer;
  display: flex;
  padding-top: 10px;
}
.recommendcommentleft .like .likesong:hover {
  background-color: rgba(209, 206, 206, 0.371);
}
.recommendcommentleft .like .likesong .likeimg {
  position: relative;
  width: 60px;
  height: 60px;
}
.recommendcommentleft .like .likesong .likeimg img {
  width: 60px;
  height: 60px;
}
.recommendcommentleft .like .likesong .likeimg span {
  position: absolute;
  font-size: 30px;
  left: 15px;
  top: 15px;
  display: none;
}
.recommendcommentleft .like .likesong .likeimg span:hover {
  color: #000;
  text-shadow: none;
}
.recommendcommentleft .like .likesong .likeimg:hover span {
  display: block;
}
.recommendcommentleft .like .likesong .liketitle {
  width: calc(100% - 60px);
  height: 60px;
  // background-color: aqua;
}
.recommendcommentleft .like .likesong .liketitle p {
  overflow: hidden;
  height: 30px;
  line-height: 30px;
  text-overflow: ellipsis;
  white-space: nowrap;
  color: #fff;
  padding-left: 20px;
  text-align: left;
}
.recommendcommentleft .like .likesong .liketitle p:nth-child(2) {
  color: rgb(150, 141, 141);
}
.recommendcommentleft .similar {
  padding-top: 20px;
  // background-color: aqua;
  padding-bottom: 20px;
  border-bottom: 1px solid rgba(153, 153, 153, 0.656);
}
.recommendcommentleft .similar .showmore {
  color: rgb(155, 153, 153);
  cursor: pointer;
}
.recommendcommentleft .similarsong {
  width: 100%;
  height: 40px;
  line-height: 40px;
  // background-color: rgb(244, 71, 8);
  cursor: pointer;
  color: #fff;
}
.recommendcommentleft .similarsong > div {
  position: relative;
  display: flex;
  justify-content: space-between;
}
.recommendcommentleft .similarsong > div:hover {
  background-color: rgba(241, 237, 237, 0.792);
}
.recommendcommentleft .similarsong > div span {
  width: 70%;
  // background-color: #fff;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  text-align: left;
}
.recommendcommentleft .similarsong .operation {
  position: absolute;
  top: 0;
  right: 0;
  width: 30%;
  // background-color: rgb(122, 220, 117);
  display: flex;
  justify-content: space-around;
  z-index: -11;
}
.recommendcommentleft .similarsong .operation p {
  width: 33%;
  font-size: 14px;
}
.recommendcommentleft .similarsong .operation p span:hover {
  color: #fff;
}
.recommendcommentleft .similarsong > div span:nth-child(2) {
  width: 30%;
  color: #ccc;
  // background-color: rgb(215, 34, 34);
}
.recommendcommentleft .similarsong > div:hover span:nth-child(2) {
  display: none;
}
.recommendcommentleft .similarsong > div:hover .operation {
  opacity: 1;
  z-index: 10;
}
.recommendcommentleft .hotsong {
  padding-top: 30px;
  // height: 600px;
  // background-color: #fff;
  padding-bottom: 20px;
  border-bottom: 1px solid rgba(153, 153, 153, 0.656);
}
.recommendcommentleft .hotsong .hotsonglist:hover {
  background-color: rgba(241, 237, 237, 0.792);
}
.recommendcommentleft .hotsong .hotsonglist {
  padding: 10px 0;
  width: 100%;
  height: 70px;
  // background-color: aquamarine;
}
.recommendcommentleft .hotsong .hotsonglist:hover .hotsonglisttop p {
  opacity: 1;
}
.recommendcommentleft .hotsong h2 span {
  color: #fff;
}

.recommendcommentleft .hotsong .hotsonglist .hotsonglisttop {
  color: #fff;
  height: 25px;
}
.recommendcommentleft .hotsong .hotsonglist .hotsonglisttop > span {
  width: 70%;
  float: left;
  text-align: left;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.recommendcommentleft .hotsong .hotsonglist .hotsonglisttop p {
  opacity: 0;
  width: 30%;
  float: right;
  // background-color: aqua;
  display: flex;
  justify-content: space-around;
}
.recommendcommentleft .hotsong .hotsonglist .hotsonglisttop p span {
  font-size: 16px;
}
.recommendcommentleft .hotsong .hotsonglist .hotsonglistbottom {
  color: #999;
  text-align: left;
}
.recommendcommentleft .hotsong .hotsonglist .hotsonglistbottom span {
  width: 70%;
  float: left;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.recommendcommentleft
  .hotsong
  .hotsonglist
  .hotsonglistbottom
  span:nth-child(2) {
  width: 30%;
  float: right;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.recommendcommentright {
  width: 60%;
  // height: 1300px;
  // background-color: burlywood;
  text-align: left;
}
.recommendcommentright .songinfo {
  width: 100%;
  height: 550px;
  // background-color: rgb(103, 100, 12);
}
.recommendcommentright .songinfo h1 {
  color: #fff;
  padding: 10px 0;
}

.recommendcommentright .songinfo > p {
  color: rgb(44, 43, 43);
}
.recommendcommentright .songinfo > p > span {
  color: #fff;
  padding-right: 30px;
  cursor: pointer;
}
.recommendcommentright .songinfo .songlrcandoperation {
  width: 100%;
  height: 400px;
  // background-color: wheat;
  display: flex;
  padding-top: 30px;
}
.recommendcommentright .songinfo .songlrcandoperation .songlrc {
  width: 80%;
  height: 370px;
  // background-color: rgb(179, 245, 197);
  // border: 1px solid rgba(221, 220, 220, 0.234);
  // text-shadow: 1px 1px 10px #fff;
  // box-shadow:inset 1px 1px 10px #fff;
  // border-radius: 5px;
  overflow-y: scroll;
}
.recommendcommentright .songinfo > .songlrcandoperation > .songlrc > p {
  padding: 5px 0;
  color: #fff;
}
.recommendcommentright .songinfo .songlrcandoperation .songoperation {
  width: 5%;
  height: 370px;
  // background-color: rgb(241, 245, 179);
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  align-content: space-around;
}
.recommendcommentright .songinfo .songlrcandoperation .songoperation > span {
  flex: 1;
  max-height: 50px;
  line-height: 50px;
  font-size: 20px;
  text-align: center;
  // background-color: rgb(241, 245, 179);
  border: 1px solid rgb(162, 160, 160);
  margin-bottom: 10px;
  color: #fff;
  border-radius: 5px;
}
.recommendcommentright
  .songinfo
  .songlrcandoperation
  .songoperation
  span:hover {
  border: 1px solid #fff;
}
.recommendcommentright .songinfo .songlrcandoperation .songoperation p {
  flex: 2;
  width: 100%;
  padding-top: 120px;
  // border: 1px solid red;
}
.recommendcommentright .songinfo .songlrcandoperation .songoperation p span {
  display: inline-block;
  text-align: center;
  font-size: 20px;
  width: 35px;
  height: 35px;
  line-height: 35px;
  border: 1px solid rgb(162, 160, 160);
  color: #fff;
  border-radius: 5px;
}
.recommendcommentright
  .songinfo
  .songlrcandoperation
  .songoperation
  p
  span.songoperationmore {
  width: 100px;
  height: 35px;
  line-height: 35px;
  border-radius: 5px;
  font-size: 16px;
  cursor: pointer;
}
.recommendcommentright .currentcomment {
  width: 100%;
  // height: 500px;
  // background-color: #fff;
  padding-bottom: 20px;
  font-size: 14px;
}
.recommendcommentright .currentcomment h2 {
  color: rgb(243, 224, 224);
}
.recommendcommentright .currentcomment h2 span {
  font-size: 14px;
  color: #999;
}
.recommendcommentright .currentcomment textarea {
  width: 85%;
  height: 100px;
  outline: none;
  padding: 10px;
  margin-top: 20px;
  border-radius: 5px;
  // border: 1px solid rgb(40, 229, 204);
  // background-color: rgb(40, 229, 204);
  border: 1px solid #fff;
  background-color: #fff;
  font-size: 20px;
}
.recommendcommentright .currentcomment .commit {
  width: 85%;
  font-size: 16px;
  display: flex;
  justify-content: space-between;
}
.recommendcommentright .currentcomment button {
  width: 60px;
  height: 30px;
  line-height: 30px;
  background-color: rgb(40, 229, 204);
  border: 1px solid #fff;
  cursor: pointer;
  color: rgb(255, 251, 251);
  border-radius: 3px;
}
.recommendcommentright .currentcomment span {
  width: 60px;
  height: 30px;
  font-size: 26px;
  line-height: 30px;
  color: #999;
  cursor: pointer;
}
.recommendcommentright .currentcomment span:hover {
  color: #999;
  text-shadow: none;
}
.recommendcommentright .currenthotcomment {
  padding-bottom: 60px;
  width: 100%;
  // height: 300px;
  // background-color: blanchedalmond;
}
.recommendcommentright .currenthotcomment h4 {
  color: rgb(243, 224, 224);
  padding-bottom: 20px;
}
.recommendcommentright .currenthotcomment .usercomment {
  width: 85%;
  // min-height: 60px;
  // background-color: #999;
  cursor: pointer;
  display: flex;
  padding-bottom: 30px;
  border-bottom: 1px solid #999;
  padding-top: 10px;
}
.recommendcommentright .currenthotcomment .usercommentcontent:hover .reply {
  opacity: 1;
}

.recommendcommentright .currenthotcomment .usercommentimg {
  width: 15%;
  // min-height: 180px;
  // background-color: yellowgreen;
  text-align: center;
}
.recommendcommentright .currenthotcomment .usercommentimg img {
  width: 60px;
  height: 60px;
  border-radius: 50%;
}
.recommendcommentright .currenthotcomment .usercommentcontent {
  width: 85%;
  color: #999;
  // background-color: rgb(50, 205, 78);
}
.recommendcommentright .currenthotcomment .usercommentcontent p {
  width: 100%;
  height: 30px;
  line-height: 30px;
  font-size: 14px;
}
.recommendcommentright .currenthotcomment .usercommentcontent p span {
  width: 200px;
  // background-color: #fff;
  float: left;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.recommendcommentright
  .currenthotcomment
  .usercommentcontent
  p
  span:nth-child(2) {
  float: right;
  text-align: right;
}
.recommendcommentright .currenthotcomment .usercommentcontent1 {
  width: 100%;
  // height: 100px;
  // background-color: tomato;
  color: #fff;
}
.recommendcommentright .currenthotcomment .usercommentoperation {
  width: 100%;
  height: 40px;
  line-height: 40px;
  font-size: 14px;
  // background-color: rgb(246, 255, 71);
  text-align: right;
}
.recommendcommentright .currenthotcomment .usercommentoperation span:hover {
  color: chocolate;
}
.recommendcommentright .currenthotcomment .usercommentoperation .reply {
  opacity: 0;
}
.recommendcommentright .currenthotcomment .aitecomment {
  width: 70%;
  border: 2px solid #999;
  background-color: rgb(238, 159, 159);
  box-shadow: 1px 1px 10px #fff;
  border-radius: 5px;
  padding: 2px 10px;
}
</style>