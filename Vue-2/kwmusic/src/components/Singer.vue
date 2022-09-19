<template >
  <div class="mv">
    <div class="mvvideo">
      <div
        class="video"
        v-for="item in searchResult.abslist"
        :key="item.ARTISTID"
      >
        <div class="mvimg">
          <img :src="item.hts_PICPATH || mvDefaultImg" alt="" srcset="" />
          <div class="mask" :title="item.NAME">
            <span
              class="iconfont icon-24gl-playCircle"
              title="直接播放"
              @click="requestsong(item.playlistid)"
            ></span>
          </div>
        </div>
        <div class="title">
          <p class="name">
            <span v-html="item.ARTIST" :title="item.ARTIST"></span>
          </p>
          <p class="author">{{ item.SONGNUM }} 首歌曲</p>
        </div>
      </div>
      <div class="nomv" v-if="searchResult.abslist.length == 0">
        对不起,暂时没有相关歌手....
      </div>
      <page-change
        :listLength="searchResult.abslist.length"
        :onePageNum="100"
        :total="searchResult.HIT"
        @requestsong="requestsonglist"
      ></page-change>
    </div>
  </div>
</template>
<script>
import axios from "axios";
import PageChange from "./common/PageChange.vue";

export default {
  components: { PageChange },
  name: "Singer", //歌手栏
  data() {
    return {
      mvDefaultImg:
        "https://tse1-mm.cn.bing.net/th/id/R-C.fc3712934d3f14e93bb049cb3be0ee18?rik=0ZlOt7i89hWjVA&riu=http%3a%2f%2fwww.kutoo8.com%2fupload%2fimage%2f17634230%2f5656000.jpg&ehk=ecvpFWTMp4spOXJ7pxOpzNwsdlk591NfEtk31YSdogg%3d&risl=&pid=ImgRaw&r=0",
      searchResult: {
        abslist: [],
      },
    };
  },
  methods: {
    requestsonglist(page = 0) {
      // console.log(page);
      // console.log("http://120.24.51.158/kwmusic/backend/getsonglist.php?key=" +
      //   this.$route.query.key.split('#')[0] +
      //   "&page=" +
      //   page);
      axios({
        //   http://search.kuwo.cn/r.s?all=%E6%83%85%E6%AD%8C&ft=artist&newsearch=1&itemset=artist_2015&client=kt&cluster=0&pn=0&rn=100&rformat=json&encoding=utf8&pcmp4=1&ver=mbox&vipver=MUSIC_8.7.6.0_BDS4&plat=pc&devid=0
        url:
          "http://120.24.51.158/kwmusic/backend/getsonger.php?key=" +
          this.$route.query.key.split("#")[0] +
          "&page=" +
          page,
        headers: {},
      }).then((data) => {
        this.searchResult = JSON.parse(data.data.replace(/'/g, '"'));
        // console.log(data.data);
        console.log(JSON.parse(data.data.replace(/'/g, '"')));
      });
    },
    // 根据歌单ID 请求歌单
    requestsong(playlistid) {
       this.$router.push({
              path: "/songlist",
              query: { songlistid: playlistid},
            });
    },
  },
  mounted() {
    this.requestsonglist();
  },
};
</script>
<style lang="scss" scoped>
.mv {
  width: 100%;
  height: calc(100vh - 130px - 100px);
  padding-bottom: 30px;
  // background-color: aquamarine;
  overflow-y: scroll;
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
  width: 18%;
  height: 220px;
  //   background-color: #c8e237;
  //   flex: auto;
  border-radius: 10px;
  overflow: hidden;
}
.mv .mvvideo .video .mvimg {
  position: relative;
  width: 117px;
  height: 117px;
  // background-color: #37e284;
  border-radius: 10px;
  overflow: hidden;
}
.mv .mvvideo .video .mvimg img {
  width: 117px;
  height: 117px;
  border-radius: 10px;
}
.mv .mvvideo .video .title {
  width: 117px;
  text-align: center;
}
.mv .mvvideo .video .title .name {
  width: 117px;
  color: red;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  padding-top: 5px;
}
.mv .mvvideo .video .title .author {
  width: 117px;
  color: #999;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
}
.mv .video .mask {
  position: absolute;
  top: 0;
  width: 117px;
  height: 140px;
  line-height: 140px;
  // background-color: rgb(159, 32, 32);
  text-align: center;
  display: none;
}
.mv .video .mask span {
  font-size: 30px;
}
.mv .video .mvimg:hover .mask {
  display: block;
}
.nomv {
  width: 100%;
  text-align: center;
  height: 80vh;
  line-height: 50vh;
  font-size: 30px;
  color: #37bce2;
}
</style>