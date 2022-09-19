<template>
  <div class="backTop" @click="backtop"></div>
</template>

<script>
export default {
  name: "BackTop",
  //   setup(props,context){
  setup(props, { emit }) {
    return {
      backtop: () => {
        emit("bTop");
      },
    };
  },
};
</script>

<style scoped>
.backTop {
  width: 40px;
  height: 40px;
  position: fixed;
  bottom: 80px;
  right: 30px;
  z-index: 20;
  box-shadow: 5px 5px 5px #888;
  border-radius: 50%;
  background: #fcfcfc url("~assets/images/up.png") no-repeat center center;
  background-size: 44px 44px;
}
</style>