<template >
  <div class="transceiver">
    <div
      class="transceiveritem"
      v-for="item in searchResult.abslist"
      :key="item.radio_id"
    >
      <div
        class="img"
        :title="item.name"
        :style="{ background: 'url(' + item.pic + ')' }"
      >
        <img :src="item.pic || transceiverDefaultImg" alt="" />
        <p>
          <span class="detailmsgadd iconfont icon-erji"> </span>
          {{ formatListener(item.listen) }}人
        </p>
        <div class="mask">
          <span
            class="iconfont icon-24gl-playCircle"
            title="直接播放"
            @click="
              requestsong(
                item.radio_id,
                item.pic,
                item.name,
                formatListener(item.listen)
              )
            "
          ></span>
        </div>
      </div>
      <div class="title">{{ item.name }}</div>
    </div>
    <div class="nosearch" v-if="searchResult.abslist.length == 0">
      对不起,暂时没有相关电台....
    </div>
  </div>
</template>
<script>
import axios from "axios";

export default {
  name: "transceiver", //电台
  data() {
    return {
      transceiverDefaultImg:
        "https://tse1-mm.cn.bing.net/th/id/R-C.fc3712934d3f14e93bb049cb3be0ee18?rik=0ZlOt7i89hWjVA&riu=http%3a%2f%2fwww.kutoo8.com%2fupload%2fimage%2f17634230%2f5656000.jpg&ehk=ecvpFWTMp4spOXJ7pxOpzNwsdlk591NfEtk31YSdogg%3d&risl=&pid=ImgRaw&r=0",
      searchResult: {
        abslist: [],
      },
    };
  },
  methods: {
    requestransceiver(page = 0) {
      // console.log( "http://120.24.51.158/kwmusic/backend/gettransceiver.php?key=" +
      //   this.$route.query.key.split("#")[0] +
      //   "&page=" +
      //   page);
      axios({
        //   http://search.kuwo.cn/r.s?all=%E7%BD%91%E7%BB%9C%E4%BC%A4%E6%84%9F&pn=0&rn=100&ft=recordlist&encoding=utf8&rformat=json&pay=0&needliveshow=0&ver=mbox&vipver=MUSIC_8.7.6.0_BDS4&plat=pc&devid=0
        url:
          "http://120.24.51.158/kwmusic/backend/gettransceiver.php?key=" +
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
    requestsong(radio_id, pic, name, num) {
      this.$router.push({
        path: "/transceiverlist",
        query: { radio_id,pic, name, num },
      });
      
    },
  },
  mounted() {
    this.requestransceiver();
  },
  computed: {
    formatListener() {
      return (num) => {
        return num / 10000 > 1 ? (num / 10000).toFixed(1) + "万" : num;
      };
    },
  },
};
</script>
<style lang="scss" scoped>
.transceiver {
  width: 100%;
  height: calc(100vh - 240px);
  padding-bottom: 30px;
  //   background-color: aquamarine;
  overflow-y: scroll;
  display: flex;
  flex-wrap: wrap;
  justify-content: flex-start;
  align-content: flex-start;
}
.transceiveritem {
  width: 18%;
  height: 180px;
  margin: 10px 9px;
  //   background-color: #fff;
}

.transceiveritem .img::before {
  content: "";
  position: absolute;
  top: -5px;
  left: calc((100% - 160px) / 2);
  display: block;
  width: 160px;
  height: 160px;
  border-radius: 160px;
  background-color: rgba(243, 242, 241, 0.667);
  z-index: 1;
  filter: blur(1px);
}
.transceiveritem .img {
  position: relative;
  width: 100%;
  height: 150px;
  background-color: rgba(103, 102, 102, 0.736);
  text-align: center;
  padding-top: 25px;
  overflow: hidden;
}
.transceiveritem .img .mask {
  position: absolute;
  top: 0;
  width: 100%;
  height: 150px;
  line-height: 150px;
  text-align: center;
  // background-color: rgb(205, 94, 50);
  background-color: rgba(153, 153, 153, 0.395);
  z-index: 11;
  display: none;
}
.transceiveritem .img .mask span {
  font-size: 40px;
}
.transceiveritem .img:hover .mask {
  display: block;
}
.transceiveritem .img img {
  position: relative;
  width: 100px;
  height: 100px;
  border-radius: 50%;
  z-index: 10;
}
.transceiveritem .img p {
  position: absolute;
  bottom: 10px;
  width: 100%;
  //   background-color: rgb(195, 145, 38);
  text-align: right;
  z-index: 11;
  font-size: 14px;
  color: #fff;
}
.title {
  text-align: center;
  height: 30px;
  line-height: 30px;
  color: rgb(233, 44, 44);
}
</style>