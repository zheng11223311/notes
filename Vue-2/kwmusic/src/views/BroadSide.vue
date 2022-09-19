<template>
  <div class="broad-side-body">
    <div class="broad-side">
      <div class="user">
        <img
          src="https://img.ixintu.com/upload/jpg/20210524/e9e6d3bdd6ccafcbf6a5043594f829a7_9737_192_192.jpg!ys"
          alt=""
        />
        <span>用户hhhhhhhh哈哈哈哈哈哈哈</span>
      </div>
      <ul class="sidelist">
        <li>
          <router-link to="/">
            <span class="iconfont icon-yinle"></span> 推荐
          </router-link>
        </li>
        <li>
          <router-link to="/">
            <span class="iconfont icon-diantai1"></span> 电台
          </router-link>
        </li>
        <li>
          <router-link to="/">
            <span class="iconfont icon-paihangbang"></span> 排行
          </router-link>
        </li>
        <li>
          <router-link to="/">
            <span class="iconfont icon-gengduo1"></span> 更多
          </router-link>
        </li>
        <li>我的音乐</li>
        <li>自建歌单</li>
      </ul>
    </div>
    <div class="show-page">
      <!-- 头部 -->
      <div class="show-head">
        <div class="search">
          <span
            class="iconfont icon-fanhui1"
            title="返回"
            @click="$router.back()"
          ></span>
          <span
            class="iconfont icon-shuaxin"
            title="刷新"
            @click="$router.go(0)"
          ></span>
          <input type="text" @input="search($event)" @keypress.enter="search1($event)" />
          <!-- <span
            class="iconfont icon-sousuo"
            title="搜索"
          ></span> -->
          <div class="searchresult">
            <div class="noresult" v-if="searchResult.length == 0">
              抱歉,没有你想要的歌曲!
            </div>
            <ul>
              <li
                v-for="item in searchResult"
                :key="item.id"
                @click="skipMoreResult($event,item.name)"
              >
                <p v-html="item.name"></p>
                <p>{{ item.pay }}</p>
              </li>
            </ul>
          </div>
        </div>
        <div class="show-opertion">
          <span class="iconfont icon-pifu2" title="更换皮肤"></span>
          <span class="iconfont icon-shezhi1" title="设置"></span>
          <span class="text"> | </span>
          <span class="iconfont icon-caidan-minimoshi" title="迷你窗口"></span>
          <span class="iconfont icon-zuixiaohua1" title="最小化"></span>
          <span class="iconfont icon-zuidahua1" title="最大化"></span>
          <span class="iconfont icon-guanbi2" title="关闭"></span>
        </div>
      </div>
      <!-- 导航 -->
      <div class="router">
        <!-- 显示不同侧边栏点击时的路由匹配 -->
        <router-view></router-view>
      </div>
    </div>
  </div>
 
</template>

<script>
import axios from "axios";

export default {
  name: "BroadSide",
  data: function () {
    return {
      setTimeoutIndex: 0,
      searchResult: [],
    };
  },
  methods: {
    search(e) {
      // x防抖x 节流阀,延时3秒请求,如果3s 内再次请求,则停止本次请求,开始准备新的请求
      clearTimeout(this.setTimeoutIndex);
      this.setTimeoutIndex = setTimeout(() => {
        axios
          .get(
            "http://120.24.51.158/cv/php/music/search_music.php?song=" +
              e.target.value
          )
          .then((data) => {
            console.log(data.data);
            this.searchResult = data.data[0].data;
            console.log(data.data[0].data);
          })
          .catch((e) => {
            console.log(e);
          });
      }, 1000);
    },
    search1(e) {
      // 隐藏结果界面
      e.target.blur()
      this.$router.push({ path: "/seachmoreresult/single", query: { key:e.target.value+'#'+ Date() } });
        axios
          .get(
            "http://120.24.51.158/cv/php/music/search_music.php?song=" +
              e.target.value
          )
          .then((data) => {
            console.log(data.data);
            this.searchResult = data.data[0].data;
            console.log(data.data[0].data);
             
          })
          .catch((e) => {
            console.log(e);
          });
    },
    skipMoreResult(e,key) {
      // this.$router.go(1)
       e.target.blur()
      this.$router.push({ path: "/seachmoreresult/single", query: { key:key+'#'+ Date() } });
      // this.$router.push({path:'/',query:{key}})
      // console.log(this.$refs);
    },
    shareMusic(){
      //  console.log(this.$route.query);
         this.$store.state.bottombar.requestmusic(this.$route.query.id,this.$route.query.mvid)
    },
  },
  mounted(){
    this.shareMusic()
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.broad-side-body {
  position: relative;
  width: 1200px;
}
.broad-side {
  width: 260px;
  height: calc(100vh - 60px);
  background-color: rgba(221, 80, 24, 0.201);
}

.user {
  width: 100%;
  height: 70px;
  line-height: 70px;
  // background-color: rgb(189, 12, 12);
  padding-left: 5px;
  border-bottom: 1px solid #999 ;
}
.user img {
  width: 50px;
  height: 50px;
  border-radius: 50%;
  vertical-align: middle;
  border: 1px solid ;
}
.user span {
  display: inline-block;
  margin-left: 10px;
  height: 20px;
  line-height: 20px;
  width: 150px;
  // background-color: rgba(24, 209, 230, 0.773);
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  color: rgb(255, 145, 0);
  font-size: 14px;
}
.sidelist {
  width: 100%;
  height: calc(100vh - 130px);
  // background-color: #fff;
}
.sidelist li {
  height: 35px;
  line-height: 35px;
  padding-left: 15px;
  // border-bottom: 1px solid red;
  font-size: 16px;
}
.sidelist li a{
  color: #fff;
}

.show-page {
  position: absolute;
  top: 0;
  right: 0;
  width: calc(1200px - 260px);
  height: calc(100vh - 60px);
  // background-color: burlywood;
}

.show-head {
  width: calc(1200px - 260px);
  height: 50px;
  line-height: 50px;

  background-color: rgba(221, 159, 24, 0.311);
  display: flex;
  justify-content: space-between;
}
.search {
  position: relative;
  padding-left: 10px;
  // background-color: #fff;
}
.search span {
  font-size: 30px;
  margin-right: 10px;
  cursor: pointer;
}

.show-opertion span {
  font-size: 25px;
  margin-right: 12px;
  cursor: pointer;
}
.show-opertion span.text {
  color: rgba(204, 204, 204, 0.747);
}
.search input {
  position: relative;
  top: -10px;
  width: 360px;
  height: 30px;
  outline: none;
  border: none;
  padding-left: 10px;
  border-radius: 5px;
  margin-right: 10px;
}
.search input:focus ~ .searchresult {
  display: block;
}
.search .searchresult {
  position: absolute;
  top: 39px;
  left: 90px;
  width: 360px;
  height: 390px;
  background-color: rgba(255, 255, 255, 0.788);
  box-shadow:1px 1px 10px #46b4e6,inset 1px 1px 1px #46b4e6;
  filter: blur(0.1px);
  z-index: 11;
  display: none;
}
.search .searchresult:hover {
  display: block;
}
.searchresult .noresult {
  text-align: center;
  color: orange;
}
.searchresult ul {
  padding: 1px 0;
  width: 360px;
  height: 390px;
}
.searchresult ul li {
  width: 360px;
  height: 37px;
  // border: 1px solid rebeccapurple;
  text-align: left;
  line-height: 37px;
  padding: 0 7px;
  display: flex;
  color: rgb(93, 91, 91);
  cursor: pointer;
}
.searchresult ul li p:nth-child(1) {
  width: 260px;
  height: 37px;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  font-size: 14px;
}
.searchresult ul li p:nth-child(2) {
  width: 100px;
  height: 37px;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  font-size: 14px;
  text-align: right;
}
.searchresult ul li:hover {
  background-color: #46b3e6cd;
}
.show-opertion {
  padding-right: 10px;
  text-align: right;
}
.router {
  width: calc(1200px - 260px);
  height: calc(100vh - 110px);
  // background-color: rgba(221, 13, 48, 0.555);
  overflow-y: scroll;
}
::-webkit-scrollbar {
  width: 0;
}
</style>
