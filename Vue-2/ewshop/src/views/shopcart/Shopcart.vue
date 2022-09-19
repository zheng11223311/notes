<template>
  <nav-bar>
    <template v-slot:default>购物信息</template>
  </nav-bar>

  <van-submit-bar
    style="bottom: 55px; position: absolute"
    :price="3000"
    button-text="提交订单"
    @submit="onSubmit"
  />

  <van-swipe-cell style="margin-top: 45px">
    <van-checkbox
      v-model="checked"
      style="position: absolute; left: 0; margin-top: 40px; z-index: 11"
    ></van-checkbox>
    <van-card
      style="margin-left: 15px"
      num="2"
      price="2.00"
      desc="描述信息"
      title="商品标题"
      class="goods-card"
      thumb="https://img.yzcdn.cn/vant/cat.jpeg"
    />
    <template #right>
      <van-button
        style="height: 100%"
        square
        text="删除"
        type="danger"
        class="delete-button"
      />
    </template>
  </van-swipe-cell>

  <van-swipe-cell style="margin-top: 45px">
    <van-checkbox
      v-model="checked"
      style="position: absolute; left: 0; margin-top: 40px; z-index: 11"
    ></van-checkbox>
    <van-card
      style="margin-left: 15px"
      num="2"
      price="2.00"
      desc="描述信息"
      title="商品标题"
      class="goods-card"
      thumb="https://img.yzcdn.cn/vant/cat.jpeg"
    />
    <template #right>
      <van-button
        style="height: 100%"
        square
        text="删除"
        type="danger"
        class="delete-button"
      />
    </template>
  </van-swipe-cell>
</template>

<script>
import NavBar from "components/common/navbar/NavBar.vue";
import { ref, onMounted } from "vue";
export default {
  name: "Shopcart",
  components: {
    NavBar,
  },
  setup() {
    const checked = ref(true);

    onMounted(() => {
      let vanCard = document.querySelectorAll(".van-card__price-integer");
      let sum = document.querySelector(".van-submit-bar__price-integer");
      console.log(vanCard);
      console.log(vanCard[0].innerText);
      sum.innerText = eval(vanCard[0].innerText) + eval(vanCard[1].innerText);
    });
    return {
      checked,
    };
  },
};
</script>

<style>
</style>