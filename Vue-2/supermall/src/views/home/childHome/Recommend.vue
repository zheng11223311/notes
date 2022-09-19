<template>
  <div id="recommend">
    <span @click="itemClick">
      <div><img src="~assets/img/7.jpg" alt="" srcset="" /></div>
      <div>十点抢券</div>
    </span>
    <span @click="itemClick">
      <div><img src="~assets/img/8.jpg" alt="" srcset="" /></div>
      <div>好物特卖</div>
    </span>
    <span @click="itemClick">
      <div><img src="~assets/img/9.jpg" alt="" srcset="" /></div>
      <div>内购福利</div>
    </span>
    <span @click="itemClick">
      <div><img src="~assets/img/10.jpg" alt="" srcset="" /></div>
      <div>初秋上新</div>
    </span>
  </div>
</template>

<script>
export default {
  name: "Recommend",
  methods: {
    itemClick() {
      this.$router.push("/detail");
    },
  },
};
</script>

<style scoped>
#recommend {
  width: 100vw;
  height: 120px;
  display: flex;
  text-align: center;
  border-bottom: 8px solid #eee;
}
#recommend img {
  width: 70px;
  height: 70px;
  border-radius: 50%;
}
#recommend span {
  flex: 1;
  width: 70px;
  height: 70px;
}
#recommend div {
  font-size: 14px;
  margin-top: 10px;
}
</style>