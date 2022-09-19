<template>
  <div class="cartbtn">
    <div class="check-content">
      <van-checkbox
        class="cartcheckbtn"
        @click="cartcheckbtnClick"
        v-model="isSelectAll"
      >
      </van-checkbox>
      <span>全选</span>
    </div>

    <div class="price">合计:{{ tatalPrice() }}</div>

    <div class="calculate">去计算:({{ checkLength() }})</div>
  </div>
</template>

<script>
export default {
  name: "CartBottomBar",
  data() {
    return {};
  },
  methods: {
    //   点击事件放在computed 里面不会执行
    cartcheckbtnClick() {
      //   console.log("底部点击");
      if (this.isSelectAll) {
        //全部选中
        this.$store.state.cartList.forEach((item) => (item.id = false));
      } else {
        //部分或者全部选中
        this.$store.state.cartList.forEach((item) => (item.id = true));
      }

      //错误
      //   this.$store.state.cartList.forEach(
      //     (item) => (item.id = !this.isSelectAll)
      //   );
    },

    tatalPrice() {
      console.log(this.$store.state.cartList);
      return (
        "$" +
        this.$store.state.cartList
          .filter((item) => {
            //   console.log(item.id);
            //   console.log(item.price);
            return item.id == true;
          })
          .reduce((preValue, item) => {
            // console.log(preValue + item.price * item.count);
            return preValue + item.price * item.count;
          }, 0)
          .toFixed(2)
      );
    },
    checkLength() {
      return this.$store.state.cartList.filter((item) => {
        return item.id;
      }).length;
    },
  },
  computed: {
    //   v-model  绑定计算属性里的方法,会报警告,不能绑定methods 里的方法,因为绑定时方法不能带()
    isSelectAll() {
      if (this.$store.state.cartList.length === 0) return false;
      //法一 使用filter
      //   return !this.$store.state.cartList.filter((item) => !item.id).length;
      //法二 使用find
      //   return !this.$store.state.cartList.find((item) => !item.id);

      //法三 普通遍历
      for (let item of this.$store.state.cartList) {
        if (!item.id) {
          return false;
        }
      }
      return true;
    },
  },
};
</script>

<style scoped>
.cartbtn {
  position: fixed;
  bottom: 50px;
  height: 8vh;
  width: 100vw;
  display: flex;
  background-color: #999;
  text-align: center;
  z-index: 10000000;
}
.check-content {
  width: 15vw;
  color: #000;
  font-size: 16px;
}
.check-content .cartcheckbtn {
  display: inline-block;
  padding-top: 13px;
  padding-right: 5px;
}
.check-content span {
  position: absolute;
  top: 15px;
}
.price {
  padding-top: 15px;
  padding-left: 10px;
  width: 40vw;
  color: #000;
  font-size: 16px;
}
.calculate {
  padding-top: 13px;
  width: 45vw;
  color: #fff;
  background-color: rgb(223, 21, 21);
}
</style>