<template>
  <div class="songlist">
    <div class="songlistheader">
      <div class="songlistheaderleft">
        <img :src="searchResult.pic || listDefaultImg" alt="" />
      </div>
      <div class="songlistheaderright">
        <h3>{{ searchResult.title }}</h3>
        <p>{{ searchResult.uname }}</p>
        <p>
          <span
            v-for="(item, index) in searchResult.tag.split(',')"
            :key="index"
            >{{ item }}</span
          >
        </p>
        <p>{{ searchResult.info }}</p>
      </div>
    </div>
    <div class="songlistoperation">
      <div class="allplay">▶ 播放全部</div>
      <div class="spanicon" title="添加选中歌曲">
        <span class="detailmsgadd iconfont icon-tianjia"> 添加</span>
      </div>
      <div class="spanicon" title="下载选中歌曲" @click="downmusic()">
        <span class="detailmsgadd iconfont icon-xiazai2"> 下载</span>
      </div>
      <div class="spanicon">
        <span class="detailmsgadd iconfont icon-xihuan1"> 收藏</span>
      </div>
      <div class="sharespanicon" @click="shareMusic()">
        <span class="detailmsgadd iconfont icon-lianjie1"> 分享链接</span>
      </div>
    </div>
    <div class="detail">
      <div class="detailoperation">
        <span
          ><input
            v-cloak
            type="checkbox"
            @change="check($event)"
            :checked="isallsubchecked == searchResult.musiclist.length"
          />
          {{ searchResult.total }}</span
        >
        <span>操作 </span>
        <span>歌名</span>
        <span>歌手</span>
        <span>专辑</span>
        <span>热度/100</span>
      </div>
      <div
        class="detailmsg"
        v-for="(item, index) in searchResult.musiclist"
        :key="item"
      >
        <span
          ><input
            type="checkbox"
            :checked="isallchecked"
            @change="subcheck($event)"
            ref="checkbox"
          />
          {{ index + 1 }}</span
        >
        <span>
          <span
            class="detailmsgadd iconfont icon-tianjia"
            title="添加歌曲"
          ></span>
          <span
            class="detailmsgadd iconfont icon-xiazai2"
            title="下载歌曲"
          ></span>
          <span
            class="detailmsgadd iconfont icon-gengduo1"
            title="更多操作"
          ></span>
        </span>
        <span>
          <span
            v-html="item.name"
            @click="sendmusic(item.id, item.mvpayinfo.vid)"
            :title="item.name"
          ></span>
          <span
            v-if="item.mvpayinfo.vid != 0"
            class="playmv iconfont icon-mv2"
            title="播放MV"
            @click="requestMp4(item.id)"
          ></span
        ></span>
        <span v-html="item.artist" :title="item.artist"></span>
        <span v-html="item.album" :title="item.album"></span>
        <span>{{ item.score100 }}</span>
      </div>
    </div>
    <page-change
      :listLength="searchResult.musiclist.length"
      :onePageNum="searchResult.rn"
      :total="searchResult.total"
      @requestsong="requestsong"
    ></page-change>
  </div>
</template>

<script type="text/javascript">
import axios from "axios";
import PageChange from "./common/PageChange.vue";

export default {
  name: "SongList", //歌单进入后的详情界面
  data() {
    return {
      listDefaultImg:
        "https://tse1-mm.cn.bing.net/th/id/R-C.fc3712934d3f14e93bb049cb3be0ee18?rik=0ZlOt7i89hWjVA&riu=http%3a%2f%2fwww.kutoo8.com%2fupload%2fimage%2f17634230%2f5656000.jpg&ehk=ecvpFWTMp4spOXJ7pxOpzNwsdlk591NfEtk31YSdogg%3d&risl=&pid=ImgRaw&r=0",
      isallsubchecked: 0,
      isallchecked: 0,
      searchResult: {
        tag: "",
        musiclist: [],
      },
    };
  },
  components: { PageChange },
  methods: {
    // 根据歌单ID 请求歌单
    requestsong(page=0) {
      // http://nplserver.kuwo.cn/pl.svc?op=getlistinfo&pid=2728569535&pn=0&rn=100&callback=playGeDanMusic&encode=utf-8&keyset=pl2012&identity=kuwo&pcmp4=1&vipver=MUSIC_8.7.6.0_BDS4&_=1650122624674
      axios({
        url:
          // "http://nplserver.kuwo.cn/pl.svc?op=getlistinfo&pid=2728569535&pn=0&rn=100&callback=playGeDanMusic&encode=utf-8&keyset=pl2012&identity=kuwo&pcmp4=1&vipver=MUSIC_8.7.6.0_BDS4&_=1650122624674",
          "http://nplserver.kuwo.cn/pl.svc?op=getlistinfo&pid=" +
          this.$route.query.songlistid +
          "&pn="+page+"&rn=100&callback=playGeDanMusic&encode=utf-8&keyset=pl2012&identity=kuwo&pcmp4=1&vipver=MUSIC_8.7.6.0_BDS4&_=1650122624674",
        headers: {},
      }).then((data) => {
        function jsonError(e) {
          console.log(e);
        }
        let a = this;
        function playGeDanMusic(data1) {
        //   console.log(data1);
          a.searchResult = data1;
        }
        let js = eval(data.data);
      });
    },
    check(e) {
      console.log(e.target.checked);
      if (e.target.checked) {
        console.log("选中");
        this.isallsubchecked = this.searchResult.musiclist.length;
        for (const check of this.$refs.checkbox) {
          check.checked = true;
        }
      } else {
        for (const check of this.$refs.checkbox) {
          check.checked = false;
        }
        this.isallsubchecked = 0;
      }
      // console.log(this.$refs.checkbox);
      // console.log("子长度: " + this.isallsubchecked);
    },
    subcheck(e) {
      if (e.target.checked) {
        this.isallsubchecked += 1;
      } else {
        this.isallsubchecked -= 1;
      }
      console.log(this.isallsubchecked);
    },
    sendmusic(id, mvid) {
      // this.$store.state.bottombar.musicId =id
      this.$store.state.bottombar.requestmusic(id, mvid);
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
      console.log(
        window.location.href
      );
      let url = window.location.href
      const result = await navigator.clipboard.writeText(url);
      alert("已复制好播放地址,发送给好友在浏览器上访问吧~");
    },
  },
  mounted() {
    this.requestsong();
  },
};
</script>

<style scoped>
.songlist {
  width: 100%;
  height: calc(100vh - 130px);
  padding-bottom: 30px;
  /* background-color: aquamarine; */
  overflow-y: scroll;
}
.songlist .songlistheader {
  width: 100%;
  height: 300px;
  padding: 30px;
  /* background-color: rgb(255, 214, 127); */
  display: flex;
}
.songlist .songlistheader .songlistheaderleft {
  margin-right: 10px;
  width: 26%;
  height: 220px;
  box-shadow: 5px 5px 11px rgb(95, 93, 93);
}
.songlist .songlistheader .songlistheaderleft img {
  width: 100%;
  height: 220px;
}
.songlist .songlistheader .songlistheaderright {
  width: 74%;
  height: 220px;

  padding-top: 15px;
  padding-left: 20px;
}
.songlist .songlistheader .songlistheaderright p {
  margin-top: 20px;
  height: 30px;
  line-height: 30px;
  /* background-color: #fff; */
  color: #999;
}
.songlist .songlistheader .songlistheaderright p:nth-child(3) span {
  display: inline-block;
  padding: 0px 10px;
  height: 26px;
  line-height: 26px;
  color: aqua;
  border: 1px solid aqua;
  border-radius: 26px;
  margin-left: 10px;
}
.songlist .songlistheader .songlistheaderright p:nth-child(4) {
  height: 60px;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.songlist .songlistoperation {
  width: 100%;
  height: 40px;
  /* background-color: rgb(28, 191, 101); */
}
.songlist .songlistoperation div {
  float: left;
  margin-left: 10px;
  width: 70px;
  text-align: center;
  height: 30px;
  line-height: 30px;
  color: #37bce2;
  background-color: #fff;
  border-radius: 5px;
  border: 1px solid #ccc;
  cursor: pointer;
}

.songlist .songlistoperation div span:hover {
  color: #37bce2;
}
.songlist .songlistoperation .allplay {
  width: 90px;
  height: 30px;
  line-height: 30px;
  color: #fff;
  background-color: #37bce2;
  border-radius: 5px;
  border: 1px solid rgba(153, 153, 153, 0.467);
  cursor: pointer;
}
.songlist .songlistoperation .sharespanicon {
  width: 90px;
}
.detail {
  width: 100%;
  height: calc(100% - 50px);
  overflow-y: scroll;
}
::-webkit-scrollbar {
  width: 0;
}

.detailoperation,
.detailmsg {
  width: 100%;
  height: 40px;
  line-height: 40px;
  border-top: 1px solid #999;
  border-bottom: 1px solid #999;
  display: flex;
  padding-left: 10px;
}
.detailmsg:hover {
  background-color: rgba(211, 205, 205, 0.714);
}
.detailoperation span,
.detailmsg span {
  flex: 1;
  text-align: left;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  font-size: 14px;
  padding: 0 5px;
}
.detailoperation span {
  color: rgb(97, 97, 97);
}
.detailoperation span:nth-child(3),
.detailmsg span:nth-child(3) {
  flex: 3;
}
.detailoperation span:nth-child(4),
.detailmsg span:nth-child(4) {
  flex: 2;
}
.detailoperation span:nth-child(5),
.detailmsg span:nth-child(5) {
  flex: 2;
}
.detailmsg span {
  cursor: pointer;
}
.detailmsg > span:nth-child(3) {
  color: red;
}
.detailmsg > span:hover {
  color: #37bce2;
}
.detailmsg span.playmv {
  padding-left: 2px;
  color: #37bce2;
}
.detailmsg span.playmv:hover {
  font-weight: 800;
}
.detailmsg > span:nth-child(2) {
  padding: 0;
  font-size: 16px;
}
</style>
