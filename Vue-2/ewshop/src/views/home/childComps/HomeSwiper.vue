<template>
  <div>
    <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
      <van-swipe-item><img src="~assets/images/8.jpg" alt="" /></van-swipe-item>
      <van-swipe-item
        ><img src="~assets/images/10.jpg" alt=""
      /></van-swipe-item>
      <van-swipe-item
        ><img src="~assets/images/11.jpg" alt=""
      /></van-swipe-item>
      <van-swipe-item
        ><img src="~assets/images/12.jpg" alt=""
      /></van-swipe-item>
      <van-swipe-item
        ><img src="~assets/images/13.jpg" alt=""
      /></van-swipe-item>
      <van-swipe-item
        ><img src="~assets/images/14.jpg" alt=""
      /></van-swipe-item>
      <van-swipe-item><img src="~assets/images/6.jpg" alt="" /></van-swipe-item>
      <van-swipe-item><img src="~assets/images/7.jpg" alt="" /></van-swipe-item>
    </van-swipe>
  </div>
</template>

<script>
export default {
  name: "HomeSwiper",
};
</script>

<style scoped>
.my-swipe img {
  width: 100vw;
  height: 200px;
}
</style>