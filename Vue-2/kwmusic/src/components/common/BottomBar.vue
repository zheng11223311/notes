<template>
  <div class="bottom-bar">
    <div class="operation">
      <span
        class="iconfont icon-shangyishoushangyige"
        @click="presong()"
      ></span>
      <span
        class="iconfont icon-play"
        @click="playsong()"
        @keypress="play()"
        v-show="isplay == 1"
      ></span>
      <span
        class="iconfont icon-zanting2"
        @click="playsong()"
        v-show="isplay == 0"
      ></span>
      <span class="iconfont icon-xiayigexiayishou" @click="nextsong()"></span>
    </div>
    <div class="music">
      <span class="launchUp">
        <span
          class="iconfont"
          :class="open == 0 ? 'icon-shuangxiangshang1' : 'icon-shuangxiangxia1'"
          :title="open == 0 ? '打开音乐详情' : '关闭音乐详情'"
          @click="openMusicDetail()"
        ></span>
        <img :src="musicDefaultPic" />
      </span>
      <span>
        <div class="singer" :title="musicName">{{ musicName }}</div>
        <div class="time">
          <span>{{ current }} </span>/ <span>{{ duration }}</span>
        </div>
        <div class="process" ref="process">
          <div class="bg"></div>
          <div class="bot"></div>
        </div>
      </span>
    </div>
    <div class="volume-operation">
      <span class="mode">
        <span class="iconfont icon-shunxubofang1" title="顺序播放"></span>
        <!-- <span class="iconfont icon-danquxunhuan"></span>
        <span class="iconfont icon-suijibofang"></span>
        <span class="iconfont icon-suijibofang"></span> -->
      </span>
      <span class="volume">
        <span class="iconfont icon-24gf-volumeMiddle"></span>
        <!-- <span class="iconfont icon-24gf-volumeCross"></span> -->
      </span>
      <span class="lrc">
        <span class="iconfont icon-lrc"></span>
      </span>
      <span class="like">
        <span class="iconfont icon-xihuan1"></span>
        <!-- <span class="iconfont icon-xihuan"></span> -->
      </span>
      <span class="more">
        <span class="iconfont icon-gengduo"></span>
      </span>
      <span class="list">
        <span class="iconfont icon-24gl-playlistMusic4"></span>
      </span>
    </div>
  </div>
  <div class="overscreen" v-show="open">
    <music-detail
      ref="musicDetail"
      :currentIndex="currentIndex"
      :musicDefaultPic="musicDefaultPic"
      :musicLrc="musicLrc"
      :musicId="musicId"
      :likeMusic="likeMusic"
      :hotSong="hotSong"
      :musicInfo="musicInfo"
      :hotComment="hotComment"
      :newComment="newComment"
      :noexitmv="noexitmv"
      @changenewComment="changenewComment"
      @changeCurrentTime="changeCurrentTime"
      @downmusic="downmusic"
    ></music-detail>
  </div>
  <audio ref="audio" src=""></audio>
</template>

<script>
//  底部播放控件栏

import axios from "axios";

import MusicDetail from "@/views/MusicDetail.vue";

export default {
  name: "BottomBar",
  data: function () {
    return {
      isplay: 0, // 是否正在播放音乐,0 暂停, 1播放
      musicName: "好音乐,用酷我", //歌曲名称
      //默认图片
      musicDefaultPic:
        "https://img.ixintu.com/download/jpg/201912/d04f80afca7b4b364dc902cae2dcfd63.jpg!ys",
      musicId: null, //歌曲id
      musicLrc: [], //歌词信息
      current: "00:00 ", //歌曲当前时间
      duration: "00:00", //歌曲总时间
      open: 0, //是否显示歌词面板
      currentIndex: 0, //歌词当前位置
      currentTime: 0, //歌曲当前时间
      isRecommandComment: 1, //是否显示评论界面
      likeMusic: [], //相似歌曲
      hotSong: [], //热门歌曲
      musicInfo: [], //歌曲url 和歌词
      lrcTimeDelay: 0, // 歌词延时
      hotComment: [], //热门评论
      newComment: [], //最新评论
      noexitmv: 1, //不存在mv
      transceiverResult: {
        //电台音乐
        lists: [],
      },
      transceiverIdList: [], //电台歌曲id 列表
      transceiverIndex: 0, //电台播放第几首歌曲
    };
  },
  components: {
    MusicDetail,
  },
  methods: {
    // 初始化歌曲
    requestmusic(id, mvid = 0) {
      if (this.$route.query.radio_id != undefined) return; //如果是电台音乐,退出
      //是否是点击的歌曲
      let isclickPlaysong = 0;
      // 分享 直接访问的地址
      // console.log(this.$route.query.id);
      if (this.$route.query.id != undefined) {
        id = this.musicId = this.$route.query.id;
        if (this.$route.query.mvid == undefined) {
          this.noexitmv = 1; //不存在mv,不能播放mv
          localStorage.setItem("noexitmv", 1);
        } else {
          this.noexitmv = this.$route.query.mvid;
          localStorage.setItem("noexitmv", this.$route.query.mvid);
        }
        this.isplay = 0; //禁止播放
      } else {
        //正常刷新 和 点击播放栏
        // console.log(this.noexitmv);
        if (id == undefined) {
          //刷新时,没有id 传入
          // console.log("从loaclstore 获取id");
          id = localStorage.getItem("musicId");
          this.musicId = id;
          this.isplay = 1; //禁止播放

          if (this.musicId == localStorage.getItem("noexitmv")) {
            //  如果id 等于mv 存入的id,则可以播放mv
            this.noexitmv = localStorage.getItem("noexitmv");
          } else {
            this.noexitmv = 1; //不存在mv,不能播放mv
          }

          if (id == undefined) {
            console.log("没有id");
            return;
          }
        } else {
          //点击歌曲时
          this.isplay = 1; //允许播放
          isclickPlaysong = 1;
          console.log("传入id");
          //点击时,传入id
          if (this.musicId != id) {
            //  记录id
            this.musicId = id;
          }
          // 存在mv 视频
          if (mvid != 0) {
            this.noexitmv = mvid;
            localStorage.setItem("noexitmv", id); //此 id 存在mv
          } else {
            this.noexitmv = 1;
          }
        }
      }

      // console.log('noexitmv : '+this.noexitmv);

      axios({
        url: "http://120.24.51.158/cv/php/music/play_music.php?songid=" + id,
        headers: {
          "Content-Type": "application/json",
        },
      })
        .then((data) => {
          console.log(data.data);
          this.$refs.audio.src = data.data[0].data.url;

          this.musicDefaultPic = data.data[1].data.info.album_pic;
          this.musicName =
            data.data[1].data.info.name +
            " - " +
            data.data[1].data.info.artist_name;
          this.duration = this.formatTime(data.data[0].data.duration);
          this.musicLrc = data.data[1].data.lrc;
          this.musicInfo = data.data;
          //初始化歌词进度
          localStorage.setItem("currentLrc", 0);
          this.currentIndex = 0;

          if (isclickPlaysong) {
            //如果是点击的,就播放音乐
            this.playsong();
          }
          this.musicUpdate(data.data[0].data.duration);
          // console.log(location);
          localStorage.setItem("musicId", id);

          // http://artistpic.kwcdn.kuwo.cn/pic.web?type=rid_pic&pictype=url&size=500&rid=177504089
          // this.$store.state.bottombar.musicDefaultPic = data.data[1].data.info.pic;
        })
        .catch((e) => {
          console.log(e);
        });
      // 请求 大家都喜欢的 歌曲
      let requestLikeMusic = (id) => {
        // console.log(id);
        axios({
          url:
            "http://nmobi.kuwo.cn/mobi.s?f=web&q=12345&type=rcm_sim_pl&uid=170920140&devid=0&platform=pc&rid=" +
            id +
            "&plnum=3&musicnum=10",
          headers: {
            "Content-Type": "application/json",
          },
        }).then((data) => {
          // console.log(data.data);
          this.likeMusic = data.data;
        });
      };
      requestLikeMusic(id);
      // 请求 当前歌手热门歌曲
      let requestHotSong = (id) => {
        //  console.log(id);
        axios({
          url:
            "http://nmobi.kuwo.cn/mobi.s?f=web&q=12345&type=rcm_sim_pl&uid=170920140&platform=pc&musicnum=18&devid=0&rid=" +
            id +
            "&plnum=0&version=2",
          headers: {
            "Content-Type": "application/json",
          },
        }).then((data) => {
          // console.log(data.data);
          this.hotSong = data.data;
        });
      };
      requestHotSong(id);
      // 请求 热门评论
      let requestHotComment = (id) => {
        //  console.log(id);
        axios({
          url:
            "http://comment.kuwo.cn/com.s?type=get_rec_comment&uid=170920140&digest=15&sid=" +
            id +
            "&page=1&rows=10&f=web&prod=MUSIC_8.7.6.0_BDS4&devid=0",
          headers: {
            "Content-Type": "application/json",
          },
        }).then((data) => {
          // console.log(data.data);
          this.hotComment = data.data;
        });
      };
      requestHotComment(id);
      // 请求 最新评论
      let requestNewComment = (id) => {
        //  console.log(id);
        axios({
          url:
            "http://comment.kuwo.cn/com.s?type=get_comment&uid=170920140&digest=15&sid=" +
            id +
            "&page=1&rows=20&f=web&prod=MUSIC_8.7.6.0_BDS4&devid=0",
          headers: {
            "Content-Type": "application/json",
          },
        }).then((data) => {
          // console.log(data.data);
          this.newComment = data.data;
        });
      };
      requestNewComment(id);
    },
    // 请求电台音乐列表
    requestTransceiver(page = 0) {
      // 是否是电台歌曲,这里存在多出刷新时,也会请求一次数据,浪费数据
      // console.log('电台');
      //返回的数据中,size 表示返回数据的长度,offset 表示此歌之前有几首歌
      axios({
        //   http://gxh2.kuwo.cn/newradio.nr?type=20&uid=170920140&login=1&ver=MUSIC_8.7.6.0_BDS4&fid=-18418&size=20&offset=0&kid=&paytag=1&m=1&encode=utf8&version=1
        url:
          "http://120.24.51.158/kwmusic/backend/gettransceiverlist.php?radioid=" +
          this.$route.query.radio_id +
          "&page=" +
          page,
        headers: {
          "Content-Type": "application/json",
        },
      }).then((data) => {
        // this.transceiverResult = data.data;
        console.log(data.data.lists);
        this.transceiverIdList = data.data.lists;
        this.requestTransceiverMusic(0);
        // this.$refs.audio.
        // console.log(eval(data.data));
        // console.log(JSON.parse(data.data.replace(/'/g, '"')));
      });
    },
    // 请电台列表中的音乐
    requestTransceiverMusic(index = 0) {
      // console.log(this.transceiverIdList[index].id);
      let id = this.transceiverIdList[index].id;
      axios({
        url: "http://120.24.51.158/cv/php/music/play_music.php?songid=" + id,
        headers: {
          "Content-Type": "application/json",
        },
      }).then((data) => {
        console.log(data.data);
        this.$refs.audio.src = data.data[0].data.url;

        this.musicDefaultPic = data.data[1].data.info.album_pic;
        this.musicName =
          data.data[1].data.info.name +
          " - " +
          data.data[1].data.info.artist_name;
        this.duration = this.formatTime(data.data[0].data.duration);
        this.musicLrc = data.data[1].data.lrc;
        this.musicInfo = data.data;
        //初始化歌词进度
        localStorage.setItem("currentLrc", 0);
        this.currentIndex = 0;
        this.isplay = 1;
        this.playsong();
        this.musicUpdate(data.data[0].data.duration);
        // console.log(location);
        localStorage.setItem("musicId", id);
      });
    },
    // 音乐播放切换
    playsong() {
      if (this.isplay) {
        this.$refs.audio.play();
      } else {
        this.$refs.audio.pause();
      }
      this.isplay = !this.isplay;
    },
    presong() {
      if (this.transceiverIndex > 0) {
        this.transceiverIndex--;
        // 修改为播放状态
        this.isplay = 1;
        console.log("上一首");
        this.requestTransceiverMusic(this.transceiverIndex)
      }
    },
    nextsong() {
      // 电台的下一首歌曲
      if (this.transceiverIndex < this.transceiverIdList.length - 1) {
        this.transceiverIndex++;
        this.isplay = 1;
        console.log("下一首");
        this.requestTransceiverMusic(this.transceiverIndex)
      }else if(this.transceiverIndex > this.transceiverIdList.length - 1){
        console.log('本次本页电台所有歌曲以播放,请请求下一页电台歌曲');
      }
    },
    // 监听歌曲时间的变化
    musicUpdate(duration) {
      // console.log(this.$refs.process.children);
      // console.log(this.$refs.process.offsetWidth); //580
      // console.log(this.$refs.process.children[1].offsetWidth); //10
      let ratio = this.$refs.process.offsetWidth / duration;
      this.$refs.audio.ontimeupdate = () => {
        // this.$refs.process.children[1].style.position='absolute'
        // 小球偏移
        this.$refs.process.children[1].style.left =
          this.$refs.audio.currentTime * ratio - 5 + "px";
        // 进度条
        this.$refs.process.children[0].style.width =
          this.$refs.audio.currentTime * ratio + "px";
        this.current = this.formatTime(this.$refs.audio.currentTime);
        // 播放结束.改变为暂停标签
        if (this.$refs.audio.ended) {
          this.isplay = 1;
          this.currentIndex = 0;
          this.margin = "200px";
          localStorage.setItem("currentLrc", 0);
          this.$refs.musicDetail.$refs.a
            ? (this.$refs.musicDetail.$refs.a.scrollTop = 0)
            : null;
          this.$refs.musicDetail.$refs.musicDetail
            ? (this.$refs.musicDetail.$refs.musicDetail.scrollTop = 0)
            : null;
          console.log("歌曲播放完毕,重置index 为0");
        }

        // 歌词改变
        this.currentTime = this.$refs.audio.currentTime;
        let lrc = parseInt(localStorage.getItem("currentLrc"));
        // console.log("lrc : " + lrc);
        // console.log("currentIndex : " + this.currentIndex);
        if (
          this.currentIndex != this.musicLrc.length ||
          lrc != this.musicLrc.length
        ) {
          // 歌词没有到达结束
          if (
            parseFloat(this.currentTime) + this.lrcTimeDelay >=
            parseFloat(
              this.musicLrc[
                // lrc ||
                this.currentIndex
              ].time
            )
          ) {
            if (this.currentIndex > 4) {
              // console.log( this.$refs.musicDetail.$refs);
              //  scrollTop 给父元素设置,且父元素的高度需要小于子元素高度才能产生scroll
              this.$refs.musicDetail.$refs.a
                ? (this.$refs.musicDetail.$refs.a.scrollTop =
                    -100 + this.currentIndex * 30)
                : null;
              this.$refs.musicDetail.$refs.musicLrc1
                ? (this.$refs.musicDetail.$refs.musicLrc1.scrollTop =
                    -100 + this.currentIndex * 50)
                : null;
              //  console.log(this.$refs.musicDetail.$refs.musicLrc1.scrollTop);
            }
            if (
              this.currentIndex >= this.musicLrc.length - 1 ||
              (lrc != NaN && lrc >= this.musicLrc.length - 1)
            ) {
              // 歌词播放到最后
              console.log(" 歌词播放到最后");
              console.log("结束" + this.currentIndex);
              this.currentIndex = this.musicLrc.length;
              localStorage.setItem("currentLrc", this.musicLrc.length);
            } else {
              this.currentIndex++; //this.currentIndex++  为选中的字幕
              localStorage.setItem("currentLrc", this.currentIndex);
            }
          }
        }
      };
    },
    // 歌曲时间格式化
    formatTime(time) {
      let min = String(parseInt(time / 60)).padStart(2, "0");
      let sec = String(parseInt(time % 60)).padStart(2, "0");
      // console.log(min);
      // console.log(sec);
      return min + ":" + sec;
    },
    // 打开音乐详情
    openMusicDetail() {
      this.open = !this.open;
    },
    // 子组件发射事件
    changenewComment(page) {
      console.log(page);
      // this.newComment=page
      axios({
        url:
          "http://comment.kuwo.cn/com.s?type=get_comment&uid=170920140&digest=15&sid=" +
          this.musicId +
          "&page=" +
          (page + 1) +
          "&rows=20&f=web&prod=MUSIC_8.7.6.0_BDS4&devid=0",
        headers: {
          "Content-Type": "application/json",
        },
      }).then((data) => {
        // console.log(data.data);
        this.newComment = data.data;
      });
    },
    // 子组件发射事件,修改歌词延时
    changeCurrentTime(mode) {
      // console.log(mode);
      if (mode == 0) {
        // 向后延迟0.5s
        console.log(this.currentTime);
        console.log(this.lrcTimeDelay);
        this.lrcTimeDelay -= 0.5;
      } else if (mode == 1) {
        this.lrcTimeDelay = 0;
      } else if (mode == 2) {
        this.lrcTimeDelay += 0.5;
      }
    },
    // 子组件发射事件,下载歌曲
    downmusic() {
      let downa = document.createElement("a"); // 创建A标签
      downa.href = this.$refs.audio.src; // 下载地址
      downa.download = "fileName.aac"; // 下载文件名
      document.body.appendChild(downa);
      downa.click(); // 模拟点击A标签
      document.body.removeChild(downa); // 下载完成移除元素
    },
  },
  mounted() {
    this.requestmusic();
  },
};
</script>

<style lang="scss" scoped>
// @import "~@/assets/font/iconfont.css";
// @import url("//at.alicdn.com/t/font_2797504_kq9pn16ppbt.css");
.bottom-bar {
  width: 1200px;
  height: 60px;
  margin: 0 auto;
  background-color: rgb(14, 243, 232);
  position: fixed;
  bottom: 0;
  display: flex;
  line-height: 60px;
}
.overscreen {
  position: absolute;
  width: 1200px;
  height: calc(100vh - 60px);
  top: 0;
  z-index: 11;
  // background-color: #fff;
}
.operation {
  width: 200px;
  //   background-color: blueviolet;
  display: flex;
  align-content: space-around;
  padding-left: 20px;
}
.operation span {
  flex: 1;
  font-size: 35px;
  //   background-color: aqua;
}

.music {
  width: 700px;
  display: flex;
  // background-color: yellow;
}

.music span {
  position: relative;
  width: 50px;
  height: 60px;
  color: #d60cf1;
}

.music span:nth-child(1) img {
  position: absolute;
  top: 5px;
  width: 50px;
  height: 50px;
  border-radius: 11px;
}

.music span:nth-child(2) {
  width: 600px;
  height: 60px;
  //   background-color: rgb(148, 196, 37);
}
.music .launchUp span {
  position: absolute;
  z-index: 10;
  top: 0px;
  left: 8px;
  font-size: 26px;
  color: rgba(255, 255, 255, 0.592);
}

.process {
  position: absolute;
  top: 35px;
  left: 20px;
  width: 580px;
  height: 1px;
  // background-color: violet;
  background-color: #fff;
}
.bot {
  position: absolute;
  top: -5px;
  left: -5px;
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background-color: #fff;
}
.bg {
  position: absolute;
  top: 0px;
  left: 0;
  width: 0px;
  height: 1px;
  background-color: #ffc75f;
}
.time,
.singer {
  position: absolute;
  top: -10px;
  right: 0;
  font-size: 16px;
}
.singer {
  left: 20px;
  width: 300px;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.volume-operation {
  width: 500px;
}
.mode,
.volume,
.lrc,
.more,
.list,
.like {
  height: 60px;
  width: 30px;
  // background-color: bisque;
  margin-left: 30px;
}

.lrc,
.list {
  margin-left: 35px;
}
.mode span,
.volume span,
.like span,
.more span,
.list span,
.lrc span {
  font-size: 25px;
}
.volume {
}
</style>
