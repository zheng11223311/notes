<template>
  <main-tab-bar></main-tab-bar>
</template>

<script>
 import MainTabBar from "./components/content/MainTabbar/MainTabBar";

export default {
  name: "App",
  components: {
    MainTabBar,
  },
};
</script>

<style>
@import "assets/css/base.css";
</style>
