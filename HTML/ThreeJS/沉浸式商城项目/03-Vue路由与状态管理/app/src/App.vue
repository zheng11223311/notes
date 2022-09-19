<script setup>
import { useRoute, useRouter } from "vue-router";
// 获取路由信息
let route = useRoute();
// 执行路由的跳转
let router = useRouter();
function goAbout() {
  console.log(route);
  router.push("/about");
}
</script>

<template>
  <div>
    <router-link to="/">跳转至首页</router-link> |
    <router-link to="/about">跳转至about</router-link> |
    <button @click="router.push('/')">跳转至首页</button>
    <button @click="goAbout">跳转至abou</button>
  </div>
  <router-view></router-view>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
