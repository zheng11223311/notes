<template>
  <div class="foot">
    &copy;版权所有新视觉实训基地 1993-2021 copyright newsight
  </div>
</template>

<script>
export default {
  name: "Foot",
};
</script>

<style  scoped>
.foot {
  /* 行高等于高时直接line-height */
  line-height: 60px;
  background-color: #2f6f52;
  color: #fff;
  text-align: center;
  /* 大写 */
  text-transform: uppercase;
}
</style>