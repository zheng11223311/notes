<template>
  <ListItem :num="article.num" :title="article.title"></ListItem>
  <!-- prop = property -->

  <h1>列表循环</h1>
  <ListItem
    :num="item.num"
    :title="item.title"
    :article="item"
    v-for="(item, i) in articleList"
    @finishRead="changeTitle(i, $event)"
  ></ListItem>
</template>

<script setup>
import ListItem from "./components/ListItem.vue";
import { reactive } from "vue";
let article = reactive({
  num: 10,
  title: "定义props!",
});
let articleList = reactive([
  {
    num: 10,
    title: "定义props!",
  },
  {
    num: 11,
    title: "定义props!",
  },
  {
    num: 12,
    title: "定义props!",
  },
]);

function changeTitle(index, $event) {
  if (articleList[index].title.indexOf($event) == -1) {
    articleList[index].title += $event;
  }
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
.box {
  width: 200px;
  height: 200px;
  background-color: purple;
}
.bgRed {
  background-color: red;
}
</style>
