<template>
  <div id="app">
    <h2>我是App 组件</h2>
    <!-- 5 教程 -->
    <!-- <router-view></router-view>
    <router-link to="/home" replace active-class="active"> 首页</router-link>
    <router-link to="/about" replace> 关于</router-link>
    <router-link to="/about" tag="button">关于</router-link>
    <button @click="homeClick">首页</button>
    <button @click="aboutClick">关于</button> -->
    <!-- <router-view></router-view> -->
    <!-- 6 教程 -->
    <router-link to="/home" replace active-class="active"> 首页</router-link>
    <router-link to="/about" replace> 关于</router-link>
    <!-- <router-link v-bind:to="'/user/' + userId" replace> 用户</router-link> -->
    <!-- <router-link to="/profile">档案</router-link> -->
    <!-- 如果需要传递参数 to="/profile" 就不能是单独的字符串,而是一个对象 -->
    <!-- <router-link :to="{ path: '/profile' }">档案</router-link> -->

    <!-- url 发生变化 -->
    <!-- <router-link
      :to="{ path: '/profile', query: { name: 'why', age: 18, height: 1.88 } }"
      >档案</router-link
    > -->

    <button @click="userClick">用户</button>
    <button @click="profileClick">档案</button>
    <!-- <router-view></router-view> -->

    <!-- 组件的name 逗号中间不要有空格(正则表达式空格有特殊含义)-->
    <keep-alive exclude="home,User">
      <!-- 这样路由就会保持原来状态,切换路由不会重新加载 
      不会再次执行销毁,创建方法,path 默认的时候会路径无效
      不会保持原来的状态-->
      <router-view></router-view>
    </keep-alive>
  </div>
</template>

<script>
export default {
  name: "App",
  data() {
    return {
      // vue-router 在所有的组件里面偶添加了$router 这个属性
      // $router: "",
      userId: "lisi",
    };
  },
  methods: {
    homeClick() {
      //普通标签通过代码的方式修改路由 vue-router
      // push=pushState
      // this.$router.push("/home");
      // replace=replaceState
      // replace 重复定位会报错(既点两次)
      // 需要重新打包才可以,重新刷新无效
      this.$router.replace("/home");
      console.log("home");
    },
    aboutClick() {
      this.$router.push("/about");
      console.log("about");
    },
    userClick() {
      this.$router.push("/user/" + this.userId);
    },
    profileClick() {
      this.$router.push({
        path: "/profile",
        query: {
          name: "why",
          age: 18,
          height: 1.88,
        },
      });
    },
  },
};
</script>

<style>
.active {
  color: red;
}
</style>
