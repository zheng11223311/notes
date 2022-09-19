<template >
  <div class="list" :style="{background:'url('+this.$route.query.pic+') no-repeat',backgroundSize:'cover'}">
    <div class="img">
      <div class="img1" >
        <img :src="this.$route.query.pic||transceiverDefaultImg" alt="" />
        <p>
          <span>{{this.$route.query.name}}电台</span>
          <span class="detailmsgadd iconfont icon-erji"> &nbsp;{{this.$route.query.num}}人</span>
        </p>
      </div>
      <div class="operation">
        <span class="detailmsgadd iconfont icon-soucang3" title="收藏"> </span>
        <span class="detailmsgadd iconfont icon-shanchu4" title="不喜欢">
        </span>
        <span
          class="detailmsgadd iconfont icon-xiayigexiayishou"
          title="下一首"
        >
        </span>
        <span class="detailmsgadd iconfont icon-tianjia2" title="更多"> </span>
      </div>
    </div>
    <div class="title">
      <span>正在播放: 此生不换</span>
    </div>
  </div>
</template>
<script>
import axios from "axios";

export default {
  name: "TransceiverList", //点击电台后进入的播放界面
  data() {
    return {
      transceiverDefaultImg:
        "https://tse1-mm.cn.bing.net/th/id/R-C.fc3712934d3f14e93bb049cb3be0ee18?rik=0ZlOt7i89hWjVA&riu=http%3a%2f%2fwww.kutoo8.com%2fupload%2fimage%2f17634230%2f5656000.jpg&ehk=ecvpFWTMp4spOXJ7pxOpzNwsdlk591NfEtk31YSdogg%3d&risl=&pid=ImgRaw&r=0",
      searchResult: {
        lists: [],
      },
    };
  },
  methods: {
    requestransceiver(page = 0) {
      //返回的数据中,size 表示返回数据的长度,offset 表示此歌之前有几首歌
      // console.log(this.$route.query.radio_id);
      // axios({
      //   //   http://gxh2.kuwo.cn/newradio.nr?type=20&uid=170920140&login=1&ver=MUSIC_8.7.6.0_BDS4&fid=-18418&size=20&offset=0&kid=&paytag=1&m=1&encode=utf8&version=1
      //   url:
      //     "http://120.24.51.158/kwmusic/backend/gettransceiverlist.php?radioid=" +
      //     this.$route.query.radio_id +
      //     "&page=" +
      //     page,
      //   headers: {
      //     "Content-Type": "application/json",
      //   },
      // }).then((data) => {
      //   this.searchResult = data.data;
      //   console.log(data.data);
      //   // console.log(eval(data.data));
      //   // console.log(JSON.parse(data.data.replace(/'/g, '"')));
      // });
      this.$store.state.bottombar.requestTransceiver();
    },
  },
  mounted() {
    this.requestransceiver();
  },
};
</script>
<style lang="scss" scoped>
.list {
  width: 100%;
  height: calc(100vh - 110px);
  padding-bottom: 30px;
  background-color: aquamarine;
  overflow: hidden;
  text-align: center;
}

.list .img {
  position: relative;
  margin: 120px auto 0;
  width: 300px;
  height: 360px;
  // background-color: rgba(103, 102, 102, 0.736);
  text-align: center;
  overflow: hidden;
}
.list .img1::before {
  content: "";
  position: absolute;
  display: block;
  width: 300px;
  height: 300px;
  border-radius: 160px;
  background-color: rgba(243, 242, 241, 0.47);
  z-index: 1;
  filter: blur(1px);
}
.list .img .img1 {
  position: relative;
  width: 300px;
  height: 300px;
  background-color: rgba(92, 92, 91, 0.533);
}
.list .img .img1 p{
  position: absolute;
  bottom: 0;
  width: 300px;
  height: 30px;
  line-height: 30px;
  color: #fff;
  // background-color: rgba(92, 92, 91, 0.533);
  z-index: 11;
}
.list .img .img1 p span{
  padding-left: 10px;
  float: left;
}
.list .img .img1 p span:nth-child(2){
  float: right;
  padding-right: 10px;
}
.list .img img {
  position: relative;
  top: 50px;
  width: 200px;
  height: 200px;
  z-index: 10;
  border-radius: 50%;
  // padding-bottom: 100px;
}
.operation {
  width: 100%;
  height: 60px;
  // background-color: #fff;
  display: flex;
  justify-content: space-around;
  padding-top: 10px;
}
.operation span {
  color: #999;
  font-size: 30px;
}
.operation span:hover{
  color: #fff;
}
.list .title span{
  font-size: 20px;
}
.list .title span:hover{
  color: rgb(240, 141, 65);
}
</style>