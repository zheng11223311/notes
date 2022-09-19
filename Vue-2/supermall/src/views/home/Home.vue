<template>
  <div id="home">
    <nav-bar>
      <template v-slot:default>购物街</template>
    </nav-bar>
    <tarcontrol
      ref="tabControl2"
      :titles="['流行', '新款', '精选']"
      @add1="add"
      class="tab-control"
      v-show="isTabFixed"
    ></tarcontrol>

    <scroll
      class="content1"
      ref="scroll"
      :probe-type="3"
      @scroll="scroll1"
      :pull-up-load="true"
      @pulligUp="loadMore"
    >
      <template v-slot:default>
        <van-swipe class="swipe"></van-swipe>
        <recommend></recommend>
        <feature-view></feature-view>
        <!-- :titles="['流行','新款','精选']" 将titles 传入自己组件内部 props 接收 -->
        <tarcontrol
          ref="tabControl"
          :titles="['流行', '新款', '精选']"
          @add1="add"
        ></tarcontrol>
        <listcontrol :index1="result"></listcontrol>
      </template>
    </scroll>
    <back-top v-show="isShowBackTop" @bTop="backTop"></back-top>
  </div>
</template>

<script>
import NavBar from "components/comment/NavBar.vue";
import Tarcontrol from "components/content/Tarcontrol.vue";
import Listcontrol from "components/content/Listcontrol.vue";
import BackTop from "components/comment/BackTop.vue";
import Scroll from "components/comment/Scroll.vue";

import { getHome, getHomeGoods } from "network/home.js";

import vanSwipe from "./childHome/Swipe.vue";
import Recommend from "./childHome/Recommend.vue";
import FeatureView from "./childHome/FeatureView.vue";

// import { onMounted } from "vue";

export default {
  name: "Home",
  components: {
    NavBar,
    vanSwipe,
    Recommend,
    FeatureView,
    Tarcontrol,
    Listcontrol,
    BackTop,
    Scroll,
  },
  data() {
    return {
      saveY: 0,
      isTabFixed: false,
      tabOffsetTop: 0,
      isShowBackTop: false,
      scroll: null,
      result: null,
      goods: {
        pop: { page: 1, list: [] },
        new: { page: 1, list: [] },
        sell: { page: 1, list: [] },
      },
    };
  },
  created() {
    //1.请求多个数据
    getHome().then((res) => {
      // console.log(res);
      // this.result = res;
    });

    //2.请求商品数据
    // getHomeGoods("pop", 1).then((res) => {
    //   // console.log(res);
    //   this.goods.pop.list = res;
    // });
    // getHomeGoods("new", 1).then((res) => {
    //   // console.log(res);
    //   this.goods.new.list = res;
    // });
    // getHomeGoods("sell", 1).then((res) => {
    //   // console.log(res);
    //   this.goods.sell.list = res;
    // });
  },
  mounted() {
    //挂载mounted,图片还没有完全加载出来
    //获取tabControl 组件的offsetTop
    //所有的组件都有一个属性$el:用于获取组件中的元素属性
    console.log(this.$refs.tabControl.$el.offsetTop); //获取的是没有等图片加载出来高度,要在图片加载完成时获取
    this.tabOffsetTop = this.$refs.tabControl.$el.offsetTop;

    //移动端滚动设置
    // console.log(this.$refs);
    // console.log(this.$refs.wrapper);
    // let bs = new BScroll(this.$refs.wrapper, {
    //   click: true,
    //   // observeDOM: true,
    //   probeType: 3,
    //   pullUpLoad: true,
    // });
    // bs.on("scroll", (position) => {
    //   console.log(position);
    // });
    // this.scroll = bs;
  },
  unmounted() {
    console.log("被销毁");
  },
  actived() {
    console.log("actived");
    this.$refs.scroll.scrollTo(0, -this.saveY);
  },
  deactivated() {
    console.log("deactivated");
    this.saveY = this.$refs.scroll.getScrollY();
  },
  methods: {
    //   防抖函数
    debounce(func, delay) {
      let timer = null;

      return function () {
        if (timer) clearTimeout(timer);

        timer = setTimeout(() => {}, delay);
      };
    },

    scroll1(position) {
      //1.判断BackTop 是否显示
      // console.log(position.y);
      this.isShowBackTop = -position.y > 1000;

      //2.决定tabControl 是否吸顶(position:fiexd)
      this.isTabFixed = -position.y > this.tabOffsetTop;
    },
    loadMore() {
      console.log("上拉加载更多");
      // this.getHomeGoods(this.currentIndex)
      this.$refs.scroll.scroll.finishPullUp(); //结束回调,可以再次使用回调

      //图片异步加载进来重新刷新计算可滚动的高度,不然
      this.$refs.scroll.scroll.refresh();
    },
    backTop() {
      // console.log(this.$refs.scroll.scroll);
      this.$refs.scroll.scroll.scrollTo(0, 0, 500);
    },

    // 导航事件的监听
    add(data1) {
      // console.log(data1);
      // console.log(typeof data1);
      this.result = data1;
      // this.$refs.tabControl2.currentIndex = this.result;
      // this.$refs.tabControl.currentIndex = this.result;
    },
  },
  //   setup() {
  //     onMounted(() => {
  //       getHome().then((res) => {
  //         console.log(res);
  //       });
  //     });
  //     return {
  //       getHome,
  //     };
  //   },
};
</script>

<style scoped>
* {
  padding: 0;
  margin: 0;
}
#home {
  height: 100vh;
  position: relative;
}
/* .tab-control {  scroll 组件导致position: sticky; 无效
  position: sticky;
  top: 0px;
  z-index: 9;
} */
/* .content {
  height: calc(100vh - 60px);
  overflow-y: scroll;
  margin-top: 45px;
  background-color: gold;
} */
.content1 {
  position: absolute;
  top: 45px;
  bottom: 60px;
  left: 0;
  right: 0;
  overflow-y: scroll;
}
.tab-control {
  position: relative;
  z-index: 9;
}
</style>