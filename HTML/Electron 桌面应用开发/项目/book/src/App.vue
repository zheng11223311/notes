<template>
  <div id="nav">
    <!-- <landing-page></landing-page> -->
  </div>
  <!-- <router-view /> -->

  <!-- <keep-alive include="LandingPage,Books">
    <router-view />
  </keep-alive> -->

 <router-view v-slot="{ Component }">
    <keep-alive v-if="$route.meta.keepAlive">
      <component :is="Component" >
        <p>缓存页面</p>
      </component>
    </keep-alive>
    <component :is="Component" v-if="!$route.meta.keepAlive">
      <p>没有缓存的页面</p>
    </component>
  </router-view>
</template>
<script>
// import LandingPage from './components/LandingPage/LandingPage.vue'
export default {
  components: {
    // LandingPage
  },
};
</script>
<style lang="scss">
</style>
