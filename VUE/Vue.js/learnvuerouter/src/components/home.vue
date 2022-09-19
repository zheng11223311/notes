<template>
  <div>
    <h2>我是首页</h2>
    <p>我是首页内容,哈哈哈</p>
    <!-- router-view 嵌套使用,子组件会替换router-view -->
    <router-link to="/home/news">新闻</router-link>
    <router-link to="/home/message">消息</router-link>
    <router-view> </router-view>
    <h2>{{ message }}</h2>
  </div>
</template>

<script>
export default {
  name: "home",
  data() {
    return {
      message: "你好啊",
      path: "/home/news",
    };
  },
  // 当跳转(点击)home 组件时,会调用created 回调函数,具有生命周期
  // 创建组件的时候
  created() {
    // console.log("创建created");
    // document.title = "首页";
  },
  mounted() {
    // 当所有组件模板template 被挂载到DOM 元素上时会触发这个回调函数
    // 具有生命周期
    // console.log("挂载mounted");
  },
  updated() {
    // 界面发生更新的时候,执行这个回调函数,比如message 改变时
    // 具有生命周期
    // console.log("更新update");
  },
  destroyed() {
    // 当路由被销毁时触发
    // console.log("销毁destroyed");
  },

  //  deactivated 和activated 两个函数只有该组件被保持使用了
  // keep-alive 时,才有效过
  activated() {
    // 当路由处于活跃状态的时候, 执行;
    console.log("活跃activated");
    this.$router.push(this.path);
  },
  deactivated() {
    // 当路由处于不活跃状态的时候, 执行;
    console.log("不活跃deactivated");
    // console.log(this.$route.path;);
    // this.$route.path;
    // 内部记录的是点击下一个处于活跃的路由的path 不是当前路由的path
    // this.path = this.$route.path;
  },
  beforeRouteLeave(to, from, next) {
    // 导航离开该组件的对应路由时调用
    //  可以访问组建实例this
    //获取的是当前path
    this.path = this.$route.path;
    next();
  },
};
</script>

<style>
</style>