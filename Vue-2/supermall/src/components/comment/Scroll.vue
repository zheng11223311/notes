<template>
  <div class="wrapper" ref="wrapper">
    <div class="content">
      <slot></slot>
    </div>
  </div>
</template>

<script>
import BScroll from "better-scroll";
// import BScroll from "@better-scroll/core";
// import Pullup from "@better-scroll/pull-up";

// BScroll.use(Pullup);

export default {
  name: "Scroll",
  components: {},
  props: {
    probeType: {
      type: Number,
      default: 0,
    },
    pullUpLoad: {
      type: Boolean,
      default: false,
    },
  },
  data() {
    return {
      scroll: null,
    };
  },
  mounted() {
    //document.querySelector(".wrapper") 或this.$refs.wrapper
    //创建BScroll 对象
    this.scroll = new BScroll(this.$refs.wrapper, {
      click: true,
      //   observeDOM: true,
      probeType: this.probeType,
      pullUpLoad: this.pullUpLoad,
    });
    // console.log(this.scroll);
    // console.log(this.scroll.scrollerHeight);//可滚动的高度
    //2.监听滚动的位置
    this.scroll.on("scroll", (position) => {
      // console.log(position);
      this.$emit("scroll", position);
    });

    //2.监听上拉事件
    this.scroll.on("pullingUp", () => {
      // console.log("上拉加载更多"); //只会回调一次
      this.$emit("pulligUp");
    });
  },
  methods: {},
};
</script>

<style scoped>
.wrapper {
  /* position: relative; */
  height: calc(100vh - 45px - 60px);
  background-color: #fff;
  /* overflow: hidden; */
  overflow-y: scroll;
}
.content {
}
</style>