<template>
  <div>
    <nav-bar>
      <template v-slot:default>新用户注册</template>
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

    <van-form @submit="onSubmit">
      <van-field
        name="用户名"
        label="用户名"
        placeholder="用户名"
        :rules="[{ required: true, message: '请填写用户名' }]"
      />
      <van-field
        type="password"
        name="密码"
        label="密码"
        placeholder="密码"
        :rules="[{ required: true, message: '请填写密码' }]"
      />
      账号: <input type="text" name="" id="" style="margin: 16px" /><br />
      密码:
      <input type="password" name="" id="" style="margin: 16px" />
      <div style="margin: 16px">
        <div class="link-login" @click="onSubmit">已有账号,立即登入</div>
      </div>
      <div style="margin: 16px">
        <van-button round block type="primary" native-type="submit">
          提交
        </van-button>
      </div>
    </van-form>
  </div>
</template>

<script>
import { ref } from "vue";
import NavBar from "components/common/navbar/NavBar.vue";
import { useRouter } from "vue-router";
export default {
  name: "Register",
  components: {
    NavBar,
  },
  setup() {
    let username = ref("aa");
    let password = ref("aa");
    const router = useRouter();
    const onSubmit = (values) => {
      setTimeout(() => {
        router.push({ path: "/login" });
      }, 1000);
    };

    return {
      username,
      password,
      onSubmit,
    };
  },
};
</script>

<style scoped >
.link-login {
  font-size: 14px;
  margin-bottom: 20px;
  color: #42b938;
  text-align: left;
  float: left;
}
</style>