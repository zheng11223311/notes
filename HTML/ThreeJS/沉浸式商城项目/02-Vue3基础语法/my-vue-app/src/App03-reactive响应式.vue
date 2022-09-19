<template>
  <h1>用户名{{ user.username }}</h1>
  <h1>年龄{{ user.age }}</h1>
  <button @click="setUserAge">点击修改年龄</button>

  <h1>老师：{{ teacher.username }}</h1>
  <button @click="setTeacherName">修改名字</button>

  <h1>用户名{{ user2.username }}</h1>
  <h1>年龄{{ user2.age }}</h1>
  <button @click="setUser2Age">点击修改年龄</button>
</template>

<script setup>
import { ref, reactive } from "vue";
var user = ref({
  username: "老陈",
  age: 18,
});

const teacher = reactive({
  username: "老陈",
  type: "帅呆了",
});

function setUserAge() {
  //   user.age = 14;
  user.value.age = 14;
  console.log(user);
}

function setTeacherName() {
  teacher.username = "老王";
}

let user2 = reactive(user.value);
function setUser2Age() {
  user2.age = 100;
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
