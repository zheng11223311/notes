<template>
  <h1 @click="sendRead">
    <span>{{ props.num }}</span> <span>-------- </span>
    <span>{{ props.title }}</span
    ><span>-------- </span>

    <span>{{ props.article && props.article.num }}</span> <span>-------- </span>
    <span>{{ props.article && props.article.title }}</span>
  </h1>
</template>

<script setup>
// let num = 1;
// let title = "今天是个好日子！";
import { defineProps, defineEmits } from "vue";
const props = defineProps({
  num: Number,
  title: String,
  article: Object,
});

const emit = defineEmits(["finishRead", "reading"]);
function sendRead() {
  emit("finishRead", "【已经阅读】");
}
</script>
