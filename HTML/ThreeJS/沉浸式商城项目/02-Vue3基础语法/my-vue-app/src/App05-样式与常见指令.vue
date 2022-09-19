<template>
  <h1>{{ msg }}</h1>
  <h1 :title="desc" v-bind:class="classname"></h1>
  <h1 :class="classname"></h1>
  <div class="content" v-html="html"></div>
  <div v-on:click="count++">{{ count }}</div>
  <div @click="count++">{{ count }}</div>

  <h1 :class="{ box: true, bgRed: toggle }" @click="toggle = !toggle"></h1>
  <h1 :class="['box', 'bgRed']" @click="toggle = !toggle"></h1>

  <h1 :style="h1style"></h1>
</template>

<script setup>
// This starter template is using Vue 3 <script setup> SFCs
// Check out https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup
import { ref, computed, watch, reactive } from "vue";

let msg = ref("老陈真帅！");

let classname = ref("box bgRed");
let desc = ref("这是一个box");

let html = ref("<h1>这是html内容</h1>");
let count = ref(0);
let toggle = ref(true);
let h1style = reactive({
  backgroundColor: "skyblue",
  width: "200px",
  height: "200px",
  "border-bottom": "20px solid #ccc",
});
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
.box {
  width: 200px;
  height: 200px;
  background-color: purple;
}
.bgRed {
  background-color: red;
}
</style>
