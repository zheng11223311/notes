<template>
  <nav-bar>
    <template v-slot:default>购物车({{ cartLength }})</template>
  </nav-bar>
  <div class="shopcart">
    <cart-list></cart-list>
  </div>
  <cart-bottom-bar></cart-bottom-bar>
</template>

<script>
import NavBar from "components/comment/NavBar.vue";

import CartList from "./shopcartChildren/CartList";
import CartBottomBar from "./shopcartChildren/CartBottomBar";

import { mapGetters } from "vuex";

export default {
  name: "Shopcart",
  components: {
    NavBar,
    CartList,
    CartBottomBar,
  },
  computed: {
    // 将getters 的方法映射成计算属性
    ...mapGetters(["cartList", "cartLength"]),
    // 以键值对形式
    // ...mapGetters({
    //   llll: "cartList", //键值对形式,使用别名lll,代替cartList
    //   length: "cartLength",
    // }),
  },
};
</script>

<style>
</style>