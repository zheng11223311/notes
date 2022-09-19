<template>
  <nav-bar>
    <template v-slot:default>商品详情</template>
  </nav-bar>

  <van-image
    style="margin-top: 50px"
    width="100%"
    lazy-load
    src="https://uploadfile.huiyi8.com/2018/af/1e/8b/75/410842.jpg.270.jpg"
  />

  <van-card
    num="2"
    price="2.00"
    desc="描述信息"
    title="龙族"
    thumb="https://uploadfile.huiyi8.com/2018/af/1e/8b/75/410842.jpg.270.jpg"
  >
    <template #tags>
      <van-tag plain type="danger">流行</van-tag>
      <van-tag plain type="danger">新书</van-tag>
      <van-tag plain type="danger">推荐</van-tag>
    </template>
    <template #footer>
      <van-button type="warning" @click="handleAddCart">加入购物车</van-button>
      <van-button type="danger" @click="goToCart">立即购买</van-button>
    </template>
  </van-card>

  <van-tabs v-model="active">
    <van-tab title="概述">
      <div class="content">啥都没有,爱买不买</div>
    </van-tab>
    <van-tab title="热评"
      >..啥都没有,爱买不买啥都没有, 啥都没有,爱买不买啥都没有,爱买不买
      啥都没有,爱买不买啥都没有,爱买不买 啥都没有,爱买不买啥都没有,爱买不买
      啥都没有,爱买不买啥都没有,爱买不买 啥都没有,爱买不买啥都没有,爱买不买
      爱买不买啥都没有,爱买不买...</van-tab
    >
    <van-tab title="相关图书">内容 3</van-tab>
  </van-tabs>
</template>

<script>
import NavBar from "components/common/navbar/NavBar.vue";
import { useRouter } from "vue-router";
import { ref, reactive, onMounted, toRefs } from "vue";
import { addCart } from "network/cart.js";
import { Toast } from "vant";
import { useStore } from "vuex";

export default {
  name: "Detail",
  components: {
    NavBar,
  },
  setup() {
    let active = ref(1);
    const router = useRouter();
    const store = useStore();
    let id = ref(0);
    let book = reactive({
      detail: {},
      like_goods: [],
      comments: [],
    });

    onMounted(() => {
      //   id.value=router.query.id
      //   getDetail(id.value).then(res=>{
      //     console.log(res);
      //   })
    });

    //添加购物车
    const handleAddCart = () => {
      // console.log("添加成功");
      // store.state.count += 1;
      store.commit("addCart");
      // addCart({ goods_id: book.id, num: 1 }).then((res) => {
      //   if (res.statue == "201" || res.statue == "204") {
      //     Toast.success("添加成功");
      //   }
      // });
    };

    //立即购买
    const goToCart = () => {
      console.log("goToCart");
    };
    return {
      id,
      book,
      active,
      handleAddCart,
      goToCart,
    };
  },
};
</script>

<style scoped lang="scss">
.content {
  padding: 10px;
  img {
    max-width: 100%;
    height: auto;
  }
}
</style>