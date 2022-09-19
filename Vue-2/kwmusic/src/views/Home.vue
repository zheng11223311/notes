<template>
  <div class="home">
    <!-- <broad-side></broad-side> -->
    <router-view ></router-view>
    <!-- vue3.0配置 Component是固定写法-->
    <!-- <router-view v-slot="{ Component }">
        <keep-alive>
          <component :is="Component" v-if="$route.meta.keepAlive" />
        </keep-alive>
      </router-view> -->

    <!-- <keep-alive include="MusicDetail">
      <router-view></router-view>
    </keep-alive> -->
    <bottom-bar ref="bottombar"></bottom-bar>
  </div>
</template>

<script>
// @ is an alias to /src
import BottomBar from "@/components/common/BottomBar.vue";
// import Mp4 from "./Mp4.vue";

export default {
  name: "Home",
  components: {
    BottomBar,
    // BroadSide,
    // Mp4
  },
  methods: {
    music(params) {
      // console.log(this.$refs.music);
      // this.$store.commit('audio',this.$refs.music)
      // 提交音乐控制栏
      this.$store.commit("bottombar", this.$refs.bottombar);
    },
  },
  mounted() {
    this.music();
  },
};
</script>

<style lang="scss" scoped>
.home {
  // background-color: rgb(33, 37, 36);
  width: 1200px;
  height: 100vh;
  margin: 0 auto;
  background: url("https://tse1-mm.cn.bing.net/th/id/R-C.4dd789331ca1a42402d354bc685274a9?rik=htQl4tXRmpUAGQ&riu=http%3a%2f%2fwww.dnzhuti.com%2fuploads%2fallimg%2f180723%2f95-1PH3153131.jpg&ehk=KhMoJkBQDDfZRhcU5zi8qmzhFqnbIvF73ynKcVM6Q7s%3d&risl=&pid=ImgRaw&r=0")
    no-repeat -100px 0px;
  box-shadow: 1px 1px 10px #fff, -1px -1px 10px #fff;
  border-radius: 5px;
  overflow: hidden;
}
</style>
