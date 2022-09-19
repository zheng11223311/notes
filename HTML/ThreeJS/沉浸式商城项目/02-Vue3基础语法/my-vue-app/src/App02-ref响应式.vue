<template>
  <h1>{{ msg }}</h1>
  <h1>{{ revseMsg(msg) }}</h1>
  <button @click="setMsg">点击修改</button>
  <img alt="Vue logo" src="./assets/logo.png" />
  <HelloWorld msg="Hello Vue 3 + Vite" />
</template>

<script setup>
// This starter template is using Vue 3 <script setup> SFCs
// Check out https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup
import HelloWorld from "./components/HelloWorld.vue";
import { ref } from "vue";

let msg = ref("老陈真帅！");

function revseMsg(value) {
  return value.split("").reverse().join("");
}

function setMsg() {
  msg.value = "老陈帅极了！";
  console.log(msg);
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
