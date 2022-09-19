<template>
  <div class="toast" v-show="isShow">
    <div>{{ message }}</div>
  </div>
</template>

<script>
export default {
  name: "Toast",
  props: {
    message: {
      type: String,
      default: "提示文字",
    },
    isShow: {
      type: Boolean,
      default: false,
    },
    timer: {
      type: Number,
      default: 2,
    },
  },
  // data() {
  //   return {
  //     message: "",
  //     isShow: false,
  //   };
  // },
  methods: {
    // show(message = "提示文字", duration = 2000) {
    //   this.isShow = true;
    //   this.message = message;

    //   setTimeout(() => {
    //     this.isShow = false;
    //     this.message = "";
    //   }, duration);
    // },
  },
  computed: {},
};
</script>

<style scoped>
.toast {
  position: fixed;
  z-index: 10000000000;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: #fff;
  padding: 10px 15px;
  background-color: rgba(0, 0, 0, 0.7);
}
</style>