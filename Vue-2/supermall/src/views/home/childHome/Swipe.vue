<template>
  <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
    <van-swipe-item>
      <img src="~assets/img/2.jpg" alt="" srcset="" />
    </van-swipe-item>
    <van-swipe-item>
      <img src="~assets/img/3.jpg" alt="" srcset="" />
    </van-swipe-item>
    <van-swipe-item>
      <img src="~assets/img/4.jpg" alt="" srcset="" />
    </van-swipe-item>
    <van-swipe-item>
      <img src="~assets/img/5.jpg" alt="" srcset="" />
    </van-swipe-item>
    <van-swipe-item>
      <img src="~assets/img/6.jpg" alt="" srcset="" />
    </van-swipe-item>
  </van-swipe>
</template>

<script>
export default {
  name: "Swipe",
};
</script>

<style scoped>
.my-swipe .van-swipe-item {
  color: #fff;
  font-size: 20px;
  line-height: 150px;
  text-align: center;
  background-color: #39a9ed;
  height: 200px;
}
.my-swipe img {
  width: 100vw;
  height: 200px;
}
</style>