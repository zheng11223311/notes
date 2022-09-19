<template>
  <div id="tab-control">
    <div
      v-for="(item, index) in titles"
      :key="item"
      class="tab-control-item"
      :class="{ active: index == currentIndex }"
      @click="tarClick(index)"
    >
      <span>{{ item }}</span>
    </div>
  </div>
</template>

<script>
export default {
  name: "Tarcontrol",
  components: {},
  props: {
    //父传子
    titles: {
      type: Array,
      default() {
        return [];
      },
    },
  },
  data() {
    return {
      currentIndex: 0,
    };
  },
  methods: {
    tarClick(index) {
      this.currentIndex = index;
      //传到父组件的方法add1() ,接收参数index
      this.$emit("add1", index);
      // console.log(this.$emit);
    },
  },
};
</script>

<style scoped>
#tab-control {
  display: flex;
  text-align: center;
  background-color: #fff;
}
.tab-control-item {
  flex: 1;
  height: 44px;
  line-height: 44px;
  font-size: 15px;
}
.active {
  color: var(--color-height-text);
}
.active span {
  padding-bottom: 10px;
  border-bottom: 3px solid var(--color-height-text);
}
</style>