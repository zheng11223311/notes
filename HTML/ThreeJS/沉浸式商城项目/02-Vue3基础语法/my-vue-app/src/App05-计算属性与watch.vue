<template>
  <h1>{{ msg }}</h1>
  <h1>{{ reMsg }}</h1>
  <h1>{{ reMsg }}</h1>
  <h1>{{ reMsg }}</h1>
  <button @click="setMsg('帅哥老陈', $event)">点击修改</button>
  <button @click="setReMsg">修改计算属性reMsg</button>

  <h1>{{ user.name }}</h1>

  <button @click="user.name = '小黑'">修改名字</button>
</template>

<script setup>
// This starter template is using Vue 3 <script setup> SFCs
// Check out https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup
import { ref, computed, watch, reactive } from "vue";

let msg = ref("老陈真帅！");
let user = reactive({
  name: "小明",
  age: 16,
});

function setMsg(str, event) {
  msg.value = str;
  console.log(str);
  console.log(event);
}
// const reMsg = computed(function () {
//   console.log(123);
//   return msg.value.split("").reverse().join("");
// });

const reMsg = computed({
  get: () => {
    console.log(123);
    return msg.value.split("").reverse().join("");
  },
  set: (value) => {
    msg.value = value.split("").reverse().join("");
  },
});

function setReMsg() {
  reMsg.value = "王老";
}

watch(msg, (newValue, oldValue) => {
  console.log("newValue", newValue);
  console.log("oldValue", oldValue);
});

watch(
  () => user.name,
  (newValue, oldValue) => {
    console.log("newValue", newValue);
    console.log("oldValue", oldValue);
  }
);

watch([msg, () => user.name], (newValue, oldValue) => {
  console.log("newValue", newValue);
  console.log("oldValue", oldValue);
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
</style>
