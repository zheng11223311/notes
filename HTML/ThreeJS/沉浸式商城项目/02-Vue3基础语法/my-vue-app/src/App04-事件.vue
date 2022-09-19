<template>
  <h1>{{ msg }}</h1>
  <button @click="setMsg('帅哥老陈', $event)">点击修改</button>
</template>

<script setup>
// This starter template is using Vue 3 <script setup> SFCs
// Check out https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup
import { ref } from "vue";

let msg = ref("老陈真帅！");

function setMsg(str, event) {
  msg.value = str;
  console.log(str);
  console.log(event);
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
