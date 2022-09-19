<template>
  <tab-bar>
    <tab-bar-item path="/home" activeColor="deeppink">
      <img slot="item-icon" src="~@/assets/img/TabBar/1.jpg" alt="" />
      <img
        slot="item-icon-active"
        src="../../assets/img/TabBar/11.jpg"
        alt=""
      />
      <div slot="item-text">首页</div>
    </tab-bar-item>
    <tab-bar-item path="/category" activeColor="deeppink">
      <img slot="item-icon" src="../../assets/img/TabBar/2.png" alt="" />
      <img
        slot="item-icon-active"
        src="../../assets/img/TabBar/22.png"
        alt=""
      />
      <div slot="item-text">分类</div>
    </tab-bar-item>
    <tab-bar-item path="/cart" activeColor="deeppink">
      <img slot="item-icon" src="../../assets/img/TabBar/3.jpg" alt="" />
      <img
        slot="item-icon-active"
        src="../../assets/img/TabBar/33.jpg"
        alt=""
      />
      <div slot="item-text">购物车</div>
    </tab-bar-item>
    <tab-bar-item path="/profile" activeColor="deeppink">
      <img slot="item-icon" src="../../assets/img/TabBar/4.jpg" alt="" />
      <img
        slot="item-icon-active"
        src="../../assets/img/TabBar/44.jpg"
        alt=""
      />
      <div slot="item-text">我的</div>
    </tab-bar-item>
  </tab-bar>
</template>

<script>
import TabBar from "../tabbar/TabBar.vue";
import TabBarItem from "../tabbar/TabBarItem.vue";
export default {
  name: "MainTarBar",
  components: {
    TabBar,
    TabBarItem,
  },
  methods: {},
};
</script>

<style>
</style>