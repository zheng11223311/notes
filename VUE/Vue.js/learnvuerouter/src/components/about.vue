<template>
  <div>
    <h2>我是about</h2>
    <p>我是about内容,哈哈哈</p>
  </div>
</template>

<script>
export default {
  name: "about",
  // 当跳转(点击)about 组件时,会调用created 回调函数,具有生命周期
  // 创建组件的时候
  created() {
    console.log("created");
    // document.title = "关于";
  },
};
</script>

<style>
</style>