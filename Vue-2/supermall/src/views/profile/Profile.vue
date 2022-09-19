<template>
  <div>
    <nav-bar>
      <template v-slot:default>我的</template>
    </nav-bar>
  </div>
</template>

<script>
import NavBar from "components/comment/NavBar.vue";

export default {
  name: "Profile",
  components: {
    NavBar,
  },
};
</script>

<style>
</style>