<template>
  <div class="searchmoreresult">
    <div class="showmsg">
      搜索到"
      <span class="key" v-html="$route.query.key?.split('#')[0]"></span>
      "的相关歌曲
    </div>
    <div class="showcontent">
      <router-link
        :to="{
          path: '/seachmoreresult/single',
          query: { key: $route.query.key },
        }"
        >单曲</router-link
      >
      <router-link
        :to="{ path: '/seachmoreresult/MV', query: { key: $route.query.key } }"
        >MV</router-link
      >
      <router-link
        :to="{
          path: '/seachmoreresult/song',
          query: { key: $route.query.key },
        }"
        >歌单</router-link
      >
      <router-link
        :to="{
          path: '/seachmoreresult/transceiver',
          query: { key: $route.query.key },
        }"
        >电台</router-link
      >
      <router-link
        :to="{
          path: '/seachmoreresult/singer',
          query: { key: $route.query.key },
        }"
        >歌手</router-link
      >
      <router-link
        :to="{
          path: '/seachmoreresult/album',
          query: { key: $route.query.key },
        }"
        >专辑</router-link
      >
      <router-link
        :to="{ path: '/seachmoreresult/lrc', query: { key: $route.query.key } }"
        >歌词</router-link
      >
      <p></p>
    </div>
    <div class="showrouter">
      <!-- vue3.0配置 Component是固定写法-->
      <!-- <router-view v-slot="{ Component }">
        <keep-alive>
          <component :is="Component" v-if="$route.meta.keepAlive" />
        </keep-alive>
        <component :is="Component" v-if="!$route.meta.keepAlive" />
      </router-view> -->
       <router-view></router-view>
    </div>
  </div>
</template>
<script>
export default {
  name: "SeachMoreResult",
  methods: {
    requestmusicmsg() {
      // http://search.kuwo.cn/r.s?all=%E4%BA%94%E5%8D%81%E5%B9%B4%E4%BB%A5%E5%90%8E&ft=music&newsearch=1&alflac=1&itemset=web_2013&client=kt&cluster=0&pn=0&rn=100&vermerge=1&rformat=json&encoding=utf8&show_copyright_off=1&pcmp4=1&ver=mbox&vipver=MUSIC_8.7.6.0_BDS4&plat=pc&devid=0
    },
  },
};
</script>
<style lang="scss" scoped>
.searchmoreresult {
  width: 940px;
  height: 100%;
  // background-color: #fff;
}
.showmsg {
  padding: 0 20px;
  height: 60px;
  line-height: 60px;
  width: 100%;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.showmsg span {
  color: orange;
}
.showcontent {
  display: flex;
  height: 40px;
  line-height: 40px;
  text-align: center;
  // background-color: cadetblue;
  justify-content: flex-start;
  padding-left: 20px;
}
.showcontent a {
  width: 10%;
  // background-color: aqua;
  // border: 2px solid #ccc;
  border: 2px solid rgb(62, 61, 61);
  cursor: pointer;
  border-right: 0;
}
.showcontent a:last-of-type {
  // border-right: 2px solid #ccc;
  border-right: 2px solid rgb(62, 61, 61);
}
.showcontent p {
  width: 20%;
  height: 40px;
  // border-bottom: 2px solid #ccc;
  border-bottom: 2px solid rgb(62, 61, 61);
}

.showcontent a {
  color: #282929;
}
.showcontent a:hover {
  color: #37bce2;
}

.router-link-active {
  border-top: 3px solid #37bce2 !important;
  border-bottom: none !important;
  color: #37bce2 !important;
  background-color: rgba(255, 255, 255, 0.86);
}
.showrouter {
  width: 940px;
  height: calc(100% - 100px);
  // background-color: #37bce2;
  padding: 10px 20px;
  overflow-y: scroll;
}
::-webkit-scrollbar {
  width: 0;
}
</style>