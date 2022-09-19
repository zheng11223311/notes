<template>
  <div>
    <h2>我是用户界面</h2>
    <p>我是用户的相关信息,嘿嘿嘿</p>
    <h2>{{ userId }}</h2>
    <h2>{{ $route.params.userId }}</h2>
    <button @click="btnClick">按钮</button>
  </div>
</template>

<script>
export default {
  name: "User",
  // 当跳转(点击)uesr 组件时,会调用created 回调函数,具有生命周期
  // 创建组件的时候
  created() {
    console.log("created");
    // document.title = "用户";
  },
  computed: {
    userId() {
      //   return this.$router;
      // $route 那个路由处于活跃状态,拿到的就是那个路由
      //   return this.$route;

      // 获取到处于活跃的路由的userId
      //   params ==>parameters 的缩写,参数的意思
      return this.$route.params.userId;
    },
  },
  methods: {
    btnClick() {
      // 所有的组件都继承自vue 类的原型,所以都有原型链上的方法
      // vue 实例对象的原型属性有test() 方法
      // ,所有的子组件都有这个方法

      // 整个路由
      console.log(this.$router);
      //当前处于活跃的路由
      // vue 类的原型链上也有一个$route
      console.log(this.$route);
      this.test();
    },
  },
};
</script>

<style>
</style>