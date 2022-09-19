<template>
  <div class="header">
    <div class="logo">
      <img src="../assets/img/logo.jpg" alt="" srcset="" />
    </div>
    <div class="link">
      <router-link class="a" to="/add">添加博客</router-link>
      <router-link class="a" to="/show">博客列表</router-link>
    </div>
  </div>
</template>

<script>
export default {
  name: "Header",
  props: {},
};
</script>

<style scoped lang="scss">
.header {
  width: 1000px;
  height: 80px;
  background-color: #0bf17e;
  margin: 0 auto;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.logo img {
  display: block;
  width: 80px;
  height: 80px;
}
.link {
  padding-right: 20px;
  display: flex;
}
.a {
  display: block;
  color: #fff;
  padding: 15px 30px;
  margin: 10px 30px 0;
  border-radius: 8px;
}

.router-link-active {
  color: gold;
  background-color: lightseagreen;
}
</style>
