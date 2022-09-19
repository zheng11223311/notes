<template>
  <scroll
    :probe-type="3"
    @scroll="scroll1"
    :pull-up-load="true"
    class="cartlistscroll"
  >
    <van-swipe-cell v-for="item in cartList" :key="item">
      <div class="check">
        <van-checkbox v-model="item.id"> </van-checkbox>
        <van-card
          :num="item.count"
          :price="item.price"
          desc="描述信息"
          :title="item.title"
          class="goods-card"
          :thumb="item.image"
        />
      </div>

      <template #right>
        <van-button square text="删除" type="danger" class="delete-button" />
      </template>
    </van-swipe-cell>
  </scroll>
</template>

<script>
// 映射store 里面的方法, ...mapGetters(["cartList"]),
// ...mapActions(["cartList"]),  映射到methods 里面
import { mapGetters, mapActions, mapState, mapMutations } from "vuex";

import scroll from "components/comment/Scroll";

export default {
  name: "CartList",
  data() {
    return {
      id: true,
    };
  },
  components: {
    scroll,
  },
  methods: {},
  computed: {
    // 将getters 的方法映射成计算属性
    ...mapGetters(["cartList"]),
    // 以键值对形式
    // ...mapGetters({
    //   llll: "cartList", //键值对形式,使用别名lll,代替cartList
    //   length: "cartLength",
    // }),
  },
};
</script>

<style scoped>
.cartlistscroll {
  height: calc(92vh - 45px - 50px);
}
.delete-button {
  height: 100%;
}
.check {
  display: flex;
}
.checkbtn {
  width: 10vw;
  padding-left: 10px;
}
.goods-card {
  width: 90vw;
}
</style>