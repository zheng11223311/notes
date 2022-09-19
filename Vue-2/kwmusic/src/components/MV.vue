<template >
  <div class="mv">
    <div class="mvoperation" v-if="!searchResult.abslist.length==0">
      <div class="allplay">▶ 播放全部</div>
      <div class="allnum">共 {{ searchResult.HIT }} 首</div>
    </div>
    <div class="mvvideo">
      <div
        class="video"
        v-for="item in searchResult.abslist"
        :key="item.MP3RID"
      >
        <div class="mvimg">
          <img :src="item.hts_MVPIC || mvDefaultImg" alt="" srcset="" />
          <div class="mask" :title="item.NAME">
            <span
              class="iconfont icon-24gl-playCircle"
              title="直接播放"
              @click="requestMp4(item.MP3RID.slice(4))"
            ></span>
          </div>
        </div>
        <div class="title">
          <p class="name"><span v-html="item.NAME"></span></p>
          <p class="author">{{ item.ARTIST }}</p>
        </div>
      </div>
      <div class="nomv" v-if=" searchResult.abslist.length==0">
        对不起,暂时没有相关视频....
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";

export default {
  name: "MV",
  data() {
    return {
      mvDefaultImg:
        "https://tse1-mm.cn.bing.net/th/id/R-C.fc3712934d3f14e93bb049cb3be0ee18?rik=0ZlOt7i89hWjVA&riu=http%3a%2f%2fwww.kutoo8.com%2fupload%2fimage%2f17634230%2f5656000.jpg&ehk=ecvpFWTMp4spOXJ7pxOpzNwsdlk591NfEtk31YSdogg%3d&risl=&pid=ImgRaw&r=0",
      searchResult: {
         abslist:[]
      }
    };
  },
  methods: {
    requestmv() {
      // console.log(this.$route.query.key.split('#')[0]);
      // console.log("http://120.24.51.158/kwmusic/backend/getallrelevantmv.php?key="+this.$route.query.key.split('#')[0]);
      axios({
        url:
          // "http://search.kuwo.cn/r.s?all="+this.$route.query.key.split('#')[0]+"&ft=music&newsearch=1&itemset=web_2013&client=kt&cluster=0&pn=0&rn=80&rformat=json&hasmkv=1&encoding=utf8&show_copyright_off=1&pcmp4=1&ver=mbox&vipver=MUSIC_8.7.6.0_BDS4&plat=pc&devid=0",
          "http://120.24.51.158/kwmusic/backend/getallrelevantmv.php?key=" +
          this.$route.query.key.split("#")[0],
        headers: {
          "Content-Type": "application/json",
        },
      })
        .then((data) => {
          this.searchResult = JSON.parse(data.data.replace(/'/g, '"'));
          // console.log(data.data);
          // console.log(JSON.parse(data.data.replace(/'/g, '"')));
        })
        .catch((e) => {
          console.log(e);
        });
    },
    requestMp4(id) {
      axios({
        // url: "http://www.kuwo.cn/mvplay/" + id,
        url: "http://120.24.51.158/kwmusic/backend/getvideo.php?id=" + id,
        headers: {},
      }).then((data) => {
        // console.log(/sources\:(.*?)\}\]/g.exec(data.data)[1]+'}]');
        // console.log(JSON.stringify((/sources\:(.*?)\}\]/g.exec(data.data)[1]+'}]').replaceAll('\\u002F','/')));
        // 匹配出当前歌曲mp4 的url地址
        // https://other-web-nf03-sycdn.kuwo.cn/1e9001102c8cf2545e0974cdbaef31bc/6252ec36/resource/m2/98/88/2337678367.mp4
        // console.log(
        //   eval(
        //     (/sources\:(.*?)\}\]/g.exec(data.data)[1] + "}]").replaceAll(
        //       "\\u002F",
        //       "/"
        //     )
        //   )
        // );
        let mp4Url = eval(
          (/sources\:(.*?)\}\]/g.exec(data.data)[1] + "}]").replaceAll(
            "\\u002F",
            "/"
          )
        );
        this.$router.push({ path: "/mp4", query: { url: mp4Url[0].src } });
      });
    },
  },
  mounted() {
    this.requestmv();
  },
};
</script>
<style lang="scss" scoped>
.mv {
  width: 100%;
  height: calc(100vh - 130px - 100px);
  // background-color: aquamarine;
  overflow-y: scroll;
}
.mv .mvoperation {
  position: relative;
  width: 100%;
  height: 40px;
  //   background-color: rgb(255, 200, 127);
}
.mv .mvoperation .allplay {
  width: 90px;
  height: 30px;
  line-height: 30px;
  color: #fff;
  background-color: #37bce2;
  border-radius: 5px;
  border: 1px solid rgba(153, 153, 153, 0.467);
  margin-right: 10px;
  cursor: pointer;
  margin: 0 10px;
}
.mv .mvoperation .allnum {
  position: absolute;
  top: 0;
  right: 0;
  width: 90px;
  height: 30px;
  line-height: 30px;
  text-align: center;
  color: #fff;
  font-size: 14px;
  //   border: 1px solid rgba(153, 153, 153, 0.467);
}
.mv .mvvideo {
  width: 100%;
  // height: 430px;
  color: #fff;
  // background-color: #37bce2;
  display: flex;
  justify-content: flex-start;
  flex-wrap: wrap;
}
.mv .mvvideo .video {
  position: relative;
  margin-left: 10px;
  margin-top: 10px;
  width: 23%;
  height: 200px;
  // background-color: #c8e237;
  //   flex: auto;
  border-radius: 10px;
  overflow: hidden;
}
.mv .mvvideo .video .mvimg {
  position: relative;
  width: 100%;
  height: 117px;
  // background-color: #37e284;
  border-radius: 10px;
  overflow: hidden;
}
.mv .mvvideo .video .mvimg img {
  width: 100%;
  height: 117px;
  border-radius: 10px;
}
.mv .mvvideo .video .title {
  width: 100%;
  text-align: center;
}
.mv .mvvideo .video .title .name {
  color: red;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  padding-top: 5px;
}
.mv .mvvideo .video .title .author {
  color: #999;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
}
.mv .video .mask {
  position: absolute;
  top: 0;
  width: 100%;
  height: 140px;
  line-height: 140px;
  // background-color: rgb(159, 32, 32);
  text-align: center;
  display: none;
}
.mv .video .mask span {
  font-size: 50px;
}
.mv .video .mvimg:hover .mask {
  display: block;
}
.nomv{
  width: 100%;
  text-align: center;
  height:80vh ;
  line-height: 50vh;
  font-size: 30px;
  color: #37bce2;
}
</style>