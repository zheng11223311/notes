<template>
  <div class="home-index">
    <div class="swipe" @mouseleave="spanleave()" @mouseenter="imghover()">
      <span class="left iconfont icon-xiangzuo1" @click="left()"></span>
      <img
        v-for="item in list.focusPicture.list"
        :src="item.pic"
        :alt="item.name"
        :key="item.sourceId"
        v-show="isdisplay == item.sourceId"
      />
      <!-- {{ list.focusPicture.list[0].pic }} -->
      <span class="right iconfont icon-xiangyou1" @click="right()"></span>
      <span class="play iconfont icon-bofang" title="立即播放"></span>
      <div class="point">
        <span
          v-for="(item, index) in list.focusPicture.list"
          :key="item.sourceId"
          :title="item.name"
          :class="isdisplay == item.sourceId ? 'spanhover' : ''"
          @mouseenter="spanhover($event, item.sourceId, index)"
        ></span>
      </div>
    </div>
    <div class="all-song">
      <div class="all-song-user">用户hhhhhhhh哈哈哈哈哈哈哈</div>
      <div class="num">累计播歌: <span> 0</span></div>
    </div>
  </div>
  <!-- 分类 -->
  <div class="classify">
    <div class="recommend">
      <div class="recommend-bg">{{ new Date().getDate() }}</div>
      <p>每日歌曲推荐</p>
    </div>
    <div class="new">
      <div class="new-bg">新 歌</div>
      <p>每日最新单曲</p>
    </div>
    <div class="hot">
      <div class="hot-bg">榜 单</div>
      <p>酷我热歌榜</p>
    </div>
    <div class="transceiver">
      <div class="transceiver-bg">私人FM</div>
      <p>私人电台</p>
    </div>
  </div>
  <!-- 推荐歌单 -->
  <div class="recommand-song">
    <h2>推荐歌单</h2>
    <span class="iconfont icon-xiangyou1"></span>
    <div class="recommand-song-box">
      <div class="item" v-for="item in recommandList" :key="item.sourceid">
        <div class="ico">
          <span class="iconfont icon-erji"></span>
          {{ changeNumber(item.playcnt) }}
        </div>
        <div class="imghover">
          <img :src="item.pic" :alt="item.name" :title="item.name" />
          <span
            class="recommand-song-box-play iconfont icon-bofang"
            title="直接播放"
          ></span>
        </div>
        <p>{{ item.name }}</p>
      </div>
    </div>
  </div>
  <!-- 推荐电台 -->
  <div class="recommand-transceiver">
    <h2>推荐电台</h2>
    <span class="iconfont icon-xiangyou1"></span>
    <div class="recommand-transceiver-box">
      <div class="recommand-transceiver-item"
        v-for="item in recommandTransceiver.child[6].child.slice(0, 5)"
        :key="item.id"
      >
        <div class="ico">
          <span class="iconfont icon-erji"></span>
          {{ changeNumber(item.listen) }}
        </div>
        <div class="imghover">
          <img :src="item.pic" :alt="item.name" :title="item.name" />
          <span
            class="recommand-song-box-play iconfont icon-bofang"
            title="直接播放"
          ></span>
        </div>
        <p>{{ item.name }}</p>
      </div>
    </div>
  </div>
  <!-- 最潮视频 -->
  <div class="current">
    <h2>最潮视频</h2>
    <span class="iconfont icon-xiangyou1"></span>
    <div class="current-box">
      <div class="current-item" v-for="item in list.hotMv.list" :key="item.id">
        <div class="imghover">
          <img :src="item.pic" :alt="item.name" :title="item.name" />
          <span
            class="current-box-play iconfont icon-bofang"
            title="直接播放"
          ></span>
        </div>
        <p>{{ item.inFo }}</p>
      </div>
    </div>
  </div>
  <!--主播电台  -->
  <div class="anchor">
    <h2>主播电台</h2>
    <span class="iconfont icon-xiangyou1"></span>
    <div class="anchor-box">
      <div class="anchor-item" v-for="item in list.original.list.slice(0,6)" :key="item.id">
        <div class="imghover">
          <img :src="item.pic" :alt="item.name" :title="item.name" />
          <p>{{ item.name }}</p>
        </div>
      </div>
    </div>
  </div>
  <!-- 新碟上架 -->
  <div class="new-plate">
    <h2>新碟上架</h2>
    <div class="new-plate-box">
      <div class="new-plate-item" v-for="item in list.newDiscShelves.list.slice(0,4)" :key="item.id">
        <div class="imghover">
          <img :src="item.pic" :alt="item.name" :title="item.name" />
          <p>{{ item.name }}</p>
          <p v-html="item.inFo"></p>
        </div>
      </div>
    </div>
  </div>
  <!-- 音乐周边 -->
  <div class="periphery">
    <h2>音乐周边</h2>
    <div class="periphery-box">
      <div class="periphery-item" v-for="item in list.huoDong.list.slice(0,5)" :key="item.sourceId">
        <div class="imghover">
          <img :src="item.pic" :alt="item.name" :title="item.name" />
          <p>{{ item.name }}</p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";
import transceiverJson from "@/assets/json/api.json"

export default {
  name: "HomeIndex",
  data() {
    return {
      list: {
        //首页数据
        focusPicture: {
          list: [
            {
              pic: "",
            },
          ],
        },
        // 最潮视频
        hotMv:{
          list:[
            {
              id:''
            }
          ]
        },
        // 主播电台
        original:{
          list:[
            {
              id:''
            }
          ]
        },
        // 新碟上市
        newDiscShelves:{
          list:[
            {
              id:''
            }
          ]
        },
        // 活动
        huoDong:{
          list:[
            {
              id:''
            }
          ]
        }
      },
      isdisplay: false,
      intervalIndex: 0,
      index: 0,
      recommandList: [], //推荐歌单
      recommandTransceiver: {
        child:[
          {
            child:[]
          }
        ]
      }, //推荐电台
    };
  },
  methods: {
    //   请求数据
    requestIndex(params) {
      // console.log(axios);
      axios
        .get("http://www.kuwo.cn/pc/index/info")
        .then((response) => {
          this.list = response.data.data;
          //   console.log(this.list.focusPicture);
          console.log(this.list.hotMv);
        })
        .catch(function (error) {
          console.log(error);
        });
    },
    requestRecommand() {
      axios
        .get(
          "http://mgxhtj.kuwo.cn/mgxh.s?type=rcm_keyword_playlist&uid=170920140"
        )
        .then((response) => {
          this.recommandList = response.data.playlist.slice(0, 10);
          // console.log(this.recommandList);
        })
        .catch(function (error) {
          console.log(error);
        });
    },
    requestTransceiver() {
      //   axios
      //     .get(
      //     //   "http://qukudata.kuwo.cn/q.k?op=query&cont=tree&node=87235&fmt=json&level=3"
      //     // "http://localhost/api"
      //     // "/assets/json/api.json"
      //     )
      //     .then((response) => {
      //       this.recommandTransceiver = response.data.child.slice(0, 5);
      //       console.log(this.recommandTransceiver);
      //     })
      //     .catch(function (error) {
      //       console.log(error);
      //     });
      this.recommandTransceiver = transceiverJson;
      console.log(this.recommandTransceiver);
    },
    // 轮播图
    swipe() {
      this.intervalIndex = setInterval(() => {
        this.index++;
        if (this.index > this.list.focusPicture.list.length - 1) {
          this.index = 0;
        }
        if (this.index < 0) {
          this.index = this.list.focusPicture.list.length - 1;
        }
        this.isdisplay = this.list.focusPicture.list[this.index].sourceId;
        // console.log(this.list.focusPicture.list[index].sourceId);
        // console.log(this.isdisplay);
      }, 2000);
    },
    // 鼠标经过轮播图
    imghover() {
      // 停止轮播
      clearInterval(this.intervalIndex);
    },
    // 鼠标经过轮播图点
    spanhover(e, id, index) {
      // console.log(e.target);
      // console.log(id);
      this.isdisplay = id;
      this.index = index;
      //   console.log(this.isdisplay);
    },
    // 鼠标离开
    spanleave() {
      //   console.log(this.index);
      this.swipe();
    },
    // 左右箭头点击切换
    left() {
      this.index--;
      if (this.index < 0) {
        this.index = this.list.focusPicture.list.length - 1;
      }
      this.isdisplay = this.list.focusPicture.list[this.index].sourceId;
    },
    right() {
      this.index++;
      if (this.index > this.list.focusPicture.list.length - 1) {
        this.index = 0;
      }
      this.isdisplay = this.list.focusPicture.list[this.index].sourceId;
    },
  },
  created: function () {
    this.requestIndex();
    this.requestRecommand();
    this.requestTransceiver();
    this.swipe();
  },
  //   过滤器在v3 中已经被弃用,使用计算属性代替
  //   filters: {
  //     changeNumber: function (value) {
  //         return value
  //     },
  //   },

  computed: {
    changeNumber() {
      // 计算属性在html 中传递值需要使用return 返回一个函数,在js 中传递参数使用set:function(){return }
      return function (value) {
        // toFixed 保留一位小数
        return value > 10000 ? parseFloat(value / 10000).toFixed(1) + "万" : "";
      };
    },
  },
};
</script>
<style lang="scss" scoped>
.home-index {
  width: 100%;
  height: 220px;
  padding-top: 20px;
  padding-left: 20px;
  padding-right: 20px;
  background-color: #fff;
  display: flex;
  justify-content: space-between;
}
.swipe {
  position: relative;
  width: 585px;
  height: 180px;
  //   background-color: aquamarine;
  overflow: hidden;
}
.swipe img {
  width: 585px;
  height: 180px;
  cursor: pointer;
}
.swipe:hover span {
  display: block;
}
.swipe > span {
  position: absolute;
  font-size: 45px;
  z-index: 10;
  color: #ccc;
  top: 40px;
  cursor: pointer;
  background-color: rgba(255, 255, 255, 0.396);
  height: 80px;
  line-height: 80px;
  display: none;
}
.swipe .right {
  right: 0;
}
.swipe > span.play {
  height: 0;
  width: 0;
  right: 45px;
  top: 100px;
  font-size: 35px;
}
.swipe .point {
  position: absolute;
  z-index: 10;
  right: 0;
  bottom: 10px;
  width: 100%;
  text-align: center;
  //  border: 1px solid #ccc;
}
.swipe .point span {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin: 0 5px;
  background-color: rgba(0, 0, 0, 0.163);
  border: 1px solid #ccc;
}
.swipe .point span:hover {
  background-color: rgb(11, 246, 199);
  border: 1px solid #ccc;
}
.spanhover {
  background-color: rgb(11, 246, 199) !important;
}
.all-song {
  width: 260px;
  height: 180px;
  background-color: rgba(204, 204, 204, 0.238);
  text-align: center;
  font-size: 14px;
  padding-top: 40px;
  border: 1px solid #ccc;
}
.all-song-user {
  width: 150px;
  margin: 0 auto;
  font-weight: 700;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.num {
  color: rgb(107, 105, 105);
}
.num span {
  color: orange;
}

.classify {
  width: 100%;
  height: 200px;
  padding-top: 20px;
  padding-left: 20px;
  padding-right: 20px;
  background-color: #ffff;
  display: flex;
  justify-content: space-between;
  text-align: center;
  color: rgb(72, 68, 68);
  font-size: 14px;
}
.recommend-bg,
.new-bg,
.hot-bg,
.transceiver-bg {
  margin-bottom: 10px;
  width: 180px;
  height: 110px;
  line-height: 110px;
  color: #fff;
  font-size: 30px;
  background-color: #7f75ef;
  cursor: pointer;
}
.recommend p:hover,
.new p:hover,
.hot p:hover,
.transceiver p:hover {
  cursor: pointer;
  color: #90cff6;
}
.new-bg {
  background-color: #f79866;
}
.hot-bg {
  background-color: #f7b731;
}
.transceiver-bg {
  background-color: #74cf96;
}
.recommand-song,
.recommand-transceiver,
.anchor,
.current {
  position: relative;
  width: 100%;
  height: 550px;
  text-align: center;
  background-color: #fff;
}

.anchor{
  height: 400px;
  // background-color: #f79866;
}

.recommand-song > span,
.recommand-transceiver > span,
.anchor > span,
.current > span {
  position: absolute;
  top: 8px;
  right: 15px;
  font-size: 20px;
  color: rgb(117, 114, 114);
  cursor: pointer;
}
.recommand-song-box,
.anchor-box {
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
  //   background-color: #fff;
}
.recommand-song-box > div.item {
  position: relative;
  width: 20%;
  height: 240px;
  font-size: 14px;
  padding: 5px 3px;
  color: rgb(73, 71, 71);
  cursor: pointer;
  //   border: 1px solid red;
}
.recommand-song-box > div.item > div.ico {
  width: 90%;
  position: relative;
  top: 25px;
  left: 10px;
  text-align: right;
  color: #fff;
  font-size: 15px;
  padding-right: 7px;
  //   background-color: #f79866;
}
.recommand-song-box > div.item > div.imghover > span {
  font-size: 15px;
  color: #fff;
  //   background-color: rgb(180, 10, 10);
}
.recommand-song-box .imghover img {
  width: 90%;
}
.recommand-song-box-play {
  display: none;
  position: absolute;
  bottom: 65px;
  right: 25px;
  font-size: 30px !important;
}
.imghover img:hover ~ .recommand-song-box-play {
  display: block;
}
.recommand-song-box-play:hover {
  display: block;
}
.recommand-song-box div p:hover {
  color: #90cff6;
}
.recommand-transceiver,
.current {
  //   background-color: #7f75ef;
  height: 220px;
}
.recommand-transceiver-box,
.current-box {
  width: 100%;
  display: flex;
  justify-content: space-around;
  text-align: center;
}

.recommand-transceiver-item,
.current-item {
  position: relative;
  padding-top: 15px;
  width: 20%;
  height: 180px;
  padding: 10px 10px 0;
}
.current-item {
  height: 100px;
}
.recommand-transceiver-item .ico {
  position: absolute;
  top: 125px;
  right: 30px;
  //   background-color: #797881;
  z-index: 10;
  font-size: 14px;
}
.recommand-transceiver-item .imghover,
.current-item .imghover {
  position: relative;
  width: 90%;
  height: 140px;
  margin: 0 5px;
  background-color: #aeadb532;
}
.current-item .imghover {
  height: 100px;
}
.recommand-transceiver-item .imghover::before,
.current-item .imghover::before {
  content: "";
  position: absolute;
  left: 0;
  height: 140px;
  width: 100%;
  background-color: #403f3e4e;
  display: none;
}
.current-item .imghover::before{
  height: 100px;
}
.recommand-transceiver-item .imghover:hover::before,
.current-item .imghover:hover::before {
  display: block;
}
.recommand-transceiver-item
  .imghover:hover
  .recommand-transceiver-item
  .imghover::before {
  display: block;
}
.recommand-transceiver-item .imghover:hover span ,
.current-item .imghover:hover span {
  display: block;
  top: 52px;
  left: 28px;
  font-size: 40px;
}
.current-item .imghover span {
  display: none;
}
.current-item .imghover:hover span {
  display: block;
  position: absolute;
  top: 30px;
  left: 55px;
  font-size: 40px;
}
.recommand-transceiver-item .imghover img{
  margin-top: 10px;
  width: 70%;
  border-radius: 50%;
  border: 10px solid rgba(255, 255, 255, 0.384);
}
.current-item .imghover img {
  width: 100%;
  height: 100px;
  border: 10px solid rgba(255, 255, 255, 0.384);
}
.recommand-transceiver-item p,
.current-item p {
  margin: 5px 0;
  font-size: 14px;
  color: rgb(73, 71, 71);
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  padding: 0 2px;
}

.anchor-item{
  width: 50%;
  height: 100px;
  padding:5px 10px ;
  // background-color: #7f75ef;
  // border: 1px solid red;
}
.anchor-item .imghover{
  width: 100%;
  height: 100%;
  line-height: 100px;
  background-color: #f5f6f2;
  text-align: left;
  margin-top: 10px;
}
.anchor-item .imghover img{
  height: 100%;
  float: left;
  padding-right: 10px;

}
.anchor-item .imghover p{
  width: 100%;
  height: 100%;
  line-height: 50px;
  color: rgb(74, 72, 72);
  font-size: 20px;
  // background-color: #fff;
}
.new-plate,
.periphery{
  width: 100%;
  height: 300px;
  background-color: #fff;
  text-align: center;
}
.new-plate .new-plate-box,
.periphery-box{
  width: 100%;
  height: 240px;
  display: flex;
  // background-color: #f690f6;
  text-align: center;
  padding: 10px;
}
.new-plate .new-plate-box .new-plate-item,
.periphery .periphery-box .periphery-item{
  width: 25%;
  height: 180px;
  display: flex;
  // background-color: #1eacc8;
  text-align: center;
}
.periphery .periphery-box .periphery-item{
  width: 20%;
}
.new-plate .new-plate-box .new-plate-item .imghover,
.periphery .periphery-box .periphery-item .imghover{
  position: relative;
  width: 90%;
  height: 180px;
  // background-color: #adf690;
  text-align: center;
}
.new-plate .new-plate-box .new-plate-item .imghover img,
.periphery-box .periphery-item .imghover img{
  position: relative;
  width: 85%;
  text-align: center;
  border-radius: 50%;
}
.periphery-box .periphery-item .imghover img{
  border-radius:0;
}
.new-plate .new-plate-box .new-plate-item .imghover img{
  width: 85%;
  border: 10px solid rgb(206, 201, 201);
  border-radius: 50%;
  margin-bottom: 5px;
}
.new-plate .new-plate-box .new-plate-item .imghover::before{
  content: '';
  display: block;
  position: absolute;
  top:60px;
  left: calc(50% - 30px);
  width: 60px;
  height: 60px;
  text-align: center;
  border-radius: 50%;
  background-color: #ebe5eba8;
  z-index: 10;
}
.new-plate .new-plate-box .new-plate-item .imghover::after{
  content: '';
  display: block;
  position: absolute;
  top:80px;
  left: calc(50% - 10px);
  width: 20px;
  height: 20px;
  text-align: center;
  border-radius: 50%;
  background-color: #e8eff0e9;
  z-index: 10;
}
.new-plate .new-plate-box .new-plate-item .imghover p,
.periphery-box .periphery-item .imghover p{
  height: 20px;
  font-size: 14px;
  color: rgb(132, 131, 131);
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
p:hover{
  color: #90cff6!important;
  cursor: pointer;
}
img:hover{
  cursor: pointer;
}
</style>