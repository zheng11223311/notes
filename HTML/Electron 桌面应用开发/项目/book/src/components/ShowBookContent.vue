<template>
  <div id="showbookcontent" ref="a">
    <!-- {{ $route.query }} -->
    <h1>{{ bookData.chapterName }}</h1>
    <div class="boxcontent" v-html="bookData.content"></div>
  </div>
</template>

<script type="text/javascript">
import { BookContent } from "../untils/axiosrequest";

import {  message } from "ant-design-vue";

export default {
  name: "ShowBookContent",
  data() {
    return {
      bookData: {},
    };
  },
  components: {},
  methods: {
    requestShowContent(charter) {
      message.info("章节加载中...");
      BookContent(this.$route.query.bookid, charter).then((res) => {
        // console.log(res.data);
        this.bookData = res.data;
        message.success(
          "<<" + res.data.chapterName + ">> 章节内容已加载,祝您阅读愉快!"
        );
      });
    },
  },
  created() {
    console.log("创建激活1");
    this.requestShowContent(1);
  },
  updated() {
    console.log("更新激活1");
    // this.requestShowContent(this.$route.query.sortid);
  },
  // mounted(){
  //   console.log('挂载激活1');
  // },
  // activated(){
  //    console.log('路由激活1');
  // },
  // onActivated (){
  //   console.log('路由激活111');
  // }
  watch: {
    //    $route(to,from){
    //   console.log(to.path);
    // }
    $route: function (to, from) {
      // console.log(to);
      // console.log(from);
      // console.log(this.a);
      // console.log(this);
      // 路由跳转到 查看所有书籍 组件时,不执行获取章节内容
      if (to.query.bookid == undefined) return;
      if (to.href != from.href) {
        message.info("章节加载中...");
        BookContent(to.query.bookid, to.query.sortid).then((res) => {
          // console.log(res.data);
          
          this.bookData = res.data;
          //  console.log([document.body]);
          // scrollTop 对父元素使用
          this.$refs.a.parentElement.scrollTop = 0;
          if (res.data.content == "内容获取失败，请刷新重试。") {
            message.warning("VIP 章节无法获取");
          }else{
            message.success(
              "<<" + res.data.chapterName + ">> 章节内容已加载,祝您阅读愉快!"
            );
          }
        });
      }
    },
  },

  // 监听,当路由发生变化的时候执行
  // watch:{
  //   $route(to,from){
  //     console.log(to.path);
  //   }
  // },
  // 或者
  // // 监听,当路由发生变化的时候执行
  // watch: {
  //   $route: {
  //     handler: function(val, oldVal){
  //       console.log(val);
  //     },
  //     // 深度观察监听
  //     deep: true
  //   }
  // },
  // 或者
  // // 监听,当路由发生变化的时候执行
  // watch: {
  //   '$route':'getPath'
  // },
};
</script>

<style scoped>
#showbookcontent {
  background-color: #fff;
  margin-bottom: 60px;
}
.boxcontent {
  width: 100%;
  height: 100%;
  font-size: 20px;
  line-height: 40px;
}
</style>
