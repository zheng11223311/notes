<template>
  <nav-bar>
    <template v-slot:default>个人信息</template>
  </nav-bar>
  <div style="margin-top: 50px">
    <div style="text-align: center; padding-top: 50px">
      <van-image
        width="200"
        height="100"
        src="https://www.lmonkey.com/_nuxt/img/logo.ca1ae0c.png"
      />
    </div>
  </div>
  <van-cell title="登入账号" is-link @click="login()" />
  <van-cell title="我的账号" is-link />
  <van-cell title="我的收藏" is-link />
  <van-cell title="我的地址" is-link @click="myAddress()" />

  <div style="margin: 15px">
    <van-button @click="tologout" round block color="#44ba80"
      >退出登入</van-button
    >
  </div>
</template>

<script>
import NavBar from "components/common/navbar/NavBar.vue";
import { useRouter } from "vue-router";
import { ref } from "vue";
export default {
  name: "Proflie",
  components: {
    NavBar,
  },
  setup() {
    const tologout = () => {};
    const router = useRouter();
    function myAddress() {
      router.push({ path: "/address", query: {} });
    }
    function login() {
      router.push({ path: "/login", query: {} });
    }
    return {
      tologout,
      myAddress,
      login,
    };
  },
};
</script>

<style>
</style>