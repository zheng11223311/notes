<template>
  <div class="title">
    <div @click="backClick">
      <img class="slot1" src="~assets/img/left.png" alt="" srcset="" style="" />
    </div>
    <span
      v-for="(item, index) in titles"
      :key="item"
      class="detailNavBar"
      :class="{ active: index == currentIndex }"
      @click="detailNavBarClick(index)"
      >{{ item }}</span
    >
  </div>
</template>

<script>
export default {
  name: "DetailNavBar",
  data() {
    return {
      titles: ["商品", "参数", "评论", "推荐"],
      currentIndex: 0,
    };
  },
  props: {},
  components: {},
  methods: {
    backClick() {
      this.$router.go(-1);
    },
    detailNavBarClick(index) {
      this.currentIndex = index;
      console.log(index);
      this.$emit("titleClick", index);
    },
  },
};
</script>

<style scoped>
.title {
  /* position: sticky;
  top: 0; */
  width: 100vw;
  height: 45px;
  display: flex;
  justify-content: center;
  align-self: center;
}
.slot1 {
  position: relative;
  width: 35px;
  height: 35px;
  top: 5px;
}
.detailNavBar {
  width: 20vw;
  height: 45px;
  line-height: 45px;
  flex: 1;
}
.active {
  color: var(--color-height-text);
}
</style>