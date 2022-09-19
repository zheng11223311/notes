<template>
  <div id="nav">
    <!-- <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link> -->
    <home></home>
  </div>
  <!-- <router-view/> -->
</template>


<script>

//  输入 tvue 快捷创建模板文件

// @ is an alias to /src
import Home from "@/views/Home.vue";

export default {
  name: "App",
  components: {
    Home,
  },
};

// http://www.kuwo.cn/pc/index/info  首页
//http://mgxhtj.kuwo.cn/mgxh.s?type=rcm_keyword_playlist&uid=170920140   推荐歌单
// http://qukudata.kuwo.cn/q.k?op=query&cont=tree&node=87235&fmt=json&level=3 推荐电台
// 搜索歌曲
// http://search.kuwo.cn/r.s?all=%E4%BA%94%E5%8D%81%E5%B9%B4%E4%BB%A5%E5%90%8E&ft=music&newsearch=1&alflac=1&itemset=web_2013&client=kt&cluster=0&pn=0&rn=100&vermerge=1&rformat=json&encoding=utf8&show_copyright_off=1&pcmp4=1&ver=mbox&vipver=MUSIC_8.7.6.0_BDS4&plat=pc&devid=0
// 热门评论
// http://comment.kuwo.cn/com.s?type=get_rec_comment&uid=170920140&digest=15&sid=6304356&page=1&rows=10&f=web&prod=MUSIC_8.7.6.0_BDS4&devid=0
// http://comment.kuwo.cn/com.s?type=get_rec_comment&uid=170920140&digest=15&sid=186917318&page=1&rows=10&f=web&prod=MUSIC_8.7.6.0_BDS4&devid=0
// 正常评论 sid 音乐id
// uid=170920140&digest=15&sid=6304356&page=1&rows=20&f=web&prod=MUSIC_8.7.6.0_BDS   
// http://comment.kuwo.cn/com.s?type=get_comment&uid=170920140&digest=15&sid=186917318&page=1&rows=20&f=web&prod=MUSIC_8.7.6.0_BDS4&devid=0
</script>


<style lang="scss">
@import url("//at.alicdn.com/t/font_2797504_wr57kztdvod.css");
* {
  margin: 0;
  padding: 0;
  user-select: none;
  list-style: none;
  text-decoration: none;
  box-sizing: border-box;
}
#nav {
  width: 100vw;
  height: 100vh;
  background: url("https://tse1-mm.cn.bing.net/th/id/R-C.fc3712934d3f14e93bb049cb3be0ee18?rik=0ZlOt7i89hWjVA&riu=http%3a%2f%2fwww.kutoo8.com%2fupload%2fimage%2f17634230%2f5656000.jpg&ehk=ecvpFWTMp4spOXJ7pxOpzNwsdlk591NfEtk31YSdogg%3d&risl=&pid=ImgRaw&r=0")
    no-repeat;
}
span.iconfont:hover {
  color: rgb(222, 217, 217);
  text-shadow: 1px 1px 1px #fff;
  cursor: pointer;
}
</style>
