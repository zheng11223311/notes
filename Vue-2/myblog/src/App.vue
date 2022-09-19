<template>
  <div id="nav">
    <Header></Header>

    <router-view />
    <Foot></Foot>
  </div>
</template>


<script>
import Header from "./components/Header";
import Foot from "./components/Foot";

export default {
  name: "App",
  props: {},
  components: {
    Header,
    Foot,
  },
};
</script>
<style lang="scss" >
@import url("./assets/css/base.css");
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  font-size: 20px;
}
a {
  text-decoration: none;
}
#nav {
  width: 1000px;
  height: 80px;
  margin: 0 auto;
  box-shadow: 0px -2px 10px rgba(65, 181, 183, 0.8);
}
</style>
