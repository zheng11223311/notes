<template>
  <div id="nav">

    <home></home>
    <!-- <router-link to="/about">About</router-link> -->
  </div>
</template>

<script setup>
import Home from "./views/Home.vue";
</script>

<style lang="scss">
@import "//at.alicdn.com/t/font_2797504_t0dngm1sdhj.css";
/* 初始化样式 */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  list-style: none;
  text-decoration: none;
  user-select: none;
}
body {
  min-height: 600px;
  min-width: 800px;
  overflow: hidden;
   background: url('https://tse1-mm.cn.bing.net/th/id/OIP-C.WvhXlHH4SK25FKGEDkafAgHaEo?pid=ImgDet&rs=1') no-repeat center center/cover;
}
html {
  font-size: 16px;
}

@media screen and (min-width:1200px) and (min-height:600px) {
  html {
  font-size: 20px;
}

}
#nav {
  width: 100vw;
  height: 100vh;
  min-height: 600px;
  min-width: 800px;
  overflow-x: hidden;
  overflow: hidden;
}

</style>
