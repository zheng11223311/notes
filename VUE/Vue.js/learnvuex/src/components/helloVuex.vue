<template>
  <div>
    <h2>我是hello vuex 组件</h2>
    <h1>{{ $store.state.counter }}</h1>
  </div>
</template>

<script>
export default {
  name: "helloVuex",
  //   props: {
  //     counter: Number,
  //   },
};
</script>

<style>
</style>