<template>
  <div>
    <nav-bar>
      <template v-slot:default>图书兄弟</template>
    </nav-bar>

    <home-swiper class="home-swiper"></home-swiper>
    <!-- 传递给recommends 组件recommends 方法 -->
    <recommend :recommends="recommends"> </recommend>
    <recommend :recommends="recommends"> </recommend>
    <recommend :recommends="recommends"> </recommend>
    <recommend :recommends="recommends"> </recommend>
    <recommend :recommends="recommends"> </recommend>
    <recommend :recommends="recommends"> </recommend>
    <back-top v-show="isShowBackTop" @bTop="btop"></back-top>
  </div>
</template>

<script>
import NavBar from "components/common/navbar/NavBar.vue";
import BackTop from "components/common/backTop/BackTop.vue";
import Recommend from "./childComps/Recommend.vue";
import HomeSwiper from "./childComps/HomeSwiper.vue";
// import { getHomeAllData } from "network/home.js";
import { onMounted, ref, reactive } from "vue";

export default {
  name: "Home",
  components: {
    NavBar,
    Recommend,
    BackTop,
    HomeSwiper,
  },
  setup() {
    let isShowBackTop = true;
    const recommends = ref([]);
    const demo = reactive({});

    onMounted(() => {
      // getHomeAllData().then((res) => {
      //   // console.log(res);
      // });
    });
    const btop = () => {
      // console.log(1111);
      window.scrollTo(0, 0);
    };

    return {
      recommends,
      isShowBackTop,
      btop,
    };
  },
};
</script>

<style scoped>
.home-swiper {
  margin-top: 50px;
}
</style>