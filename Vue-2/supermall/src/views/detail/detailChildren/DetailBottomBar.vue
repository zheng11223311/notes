<template>
  <div class="detailbottombar">
    <div class="bar-item">
      <div @click="kefuClick">
        <i class="iconfont icon-kefu"></i>
        <div class="text">客服</div>
      </div>
    </div>

    <div class="bar-item">
      <div>
        <i class="iconfont icon-icon_A"></i>
        <div class="text">店铺</div>
      </div>
    </div>

    <div class="bar-item">
      <div @click="shoucang">
        <i class="iconfont icon-shoucang" :class="{ active: isshoucang }"></i>
        <div class="text">收藏</div>
      </div>
    </div>

    <div class="bar-item" @click="showClick">
      <div>加入购物车</div>
    </div>

    <div class="bar-item">
      <div>购买</div>
    </div>
  </div>
  <!-- <toast :message="message" :isShow="show"></toast> -->
</template>

<script>
import { Toast } from "vant";


export default {
  name: "DetailBottomBar",
  data() {
    return {
      isshoucang: false,
      message: "",
      show: false,
    };
  },
  components: {
  },
  methods: {
    shoucang() {
      this.isshoucang = !this.isshoucang;
    },
    showClick() {
      //   console.log("点击了加入购物车");
      Toast.success("加入购物车成功");
      // console.log(Toast);
  // console.log(11111);
  //     this.show = true;
  //     this.message = "加入购物车成功";
  //     setTimeout(() => {
  //       this.show = false;
  //       this.message = null;
  //     }, 2000);
      this.$emit("addcart");
    },
  },
};
</script>

<style scoped>
.detailbottombar {
  display: flex;
  justify-content: flex-start;
  position: absolute;
  height: 60px;
  width: 100vw;
  background-color: aqua;
  bottom: 0;
  z-index: 9999999;
}
.active {
  color: red;
}
.bar-item {
  width: 15vw;
  height: 60px;
  font-size: 16px;
  padding-top: 10px;
  background-color: #fff;
}
.bar-item:nth-child(n + 4) {
  width: 27.5vw;
  height: 60px;
  font-size: 17px;
  padding-top: 20px;
  background-color: yellow;
}
.bar-item:nth-child(5) {
  background-color: var(--color-height-text);
}

.bar-item i {
  font-size: 30px;
}
.detailbottombar > div:nth-child(1) > div > i {
  color: pink;
}
</style>