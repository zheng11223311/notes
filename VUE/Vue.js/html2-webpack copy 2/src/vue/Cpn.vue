<template>
  <div>
    <h2>我是cpn 里面的标签</h2>
    <p>我是cpn 里面的内容,哈哈哈</p>
    <h2>{{ name }}</h2>
  </div>
</template>
<script>
export default {
  name: "Cpn",
  data() {
    return {
      name: "codewhy",
    };
  },
  methods: {},
};
</script>