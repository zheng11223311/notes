<template>
  <div class="pagechange" v-if="listLength >= onePageNum">
    <span class="prepage" @click="prenum()">上一页</span>
    <span
      @click="clickcurrentpage(1)"
      :class="currentIndex + 1 == 1 ? 'currentpage' : ''"
      v-if="currentIndex + 1 != 1"
      >1</span
    >
    <span v-if="currentIndex + 1 > 4">...</span>
    <span
      v-if="currentIndex + 1 > 3"
      @click="clickcurrentpage(currentIndex - 1)"
      :class="currentpage == currentIndex ? 'currentpage' : ''"
      >{{ currentIndex - 1 }}</span
    >
    <span
      v-if="currentIndex + 1 > 2"
      @click="clickcurrentpage(currentIndex)"
      :class="currentpage == currentIndex ? 'currentpage' : ''"
      >{{ currentIndex }}</span
    >
    <span
      @click="clickcurrentpage(currentIndex + 1)"
      :class="currentpage == currentIndex + 1 ? 'currentpage' : ''"
      >{{ currentIndex + 1 }}</span
    >
    <span
      @click="clickcurrentpage(currentIndex + 2)"
      :class="currentpage == currentIndex + 2 ? 'currentpage' : ''"
      >{{ currentIndex + 2 }}</span
    >
    <span
      @click="clickcurrentpage(currentIndex + 3)"
      :class="currentpage == currentIndex + 3 ? 'currentpage' : ''"
      >{{ currentIndex + 3 }}</span
    >
    <span v-if="parseInt(total / onePageNum) + 1 - (currentIndex + 1) > 3">...</span>
    <span
      @click="clickcurrentpage(parseInt(total / onePageNum) + 1)"
      v-if="parseInt(total / onePageNum) + 1 > 4"
      :class="currentpage == currentIndex + 4 ? 'currentpage' : ''"
      >{{ parseInt(total / onePageNum) + 1 }}</span
    >
    <span class="nextpage" @click="nextnum()">下一页</span>
  </div>
</template>
<script>
export default {
  name: "PageChange",
  data() {
    return {
    //   list: [], //遍历的数据列表
    //   onePageNum: 0, //每页显示的最少数量,即具备翻页的条件
      currentIndex: 0, //当前请求数据的索引
      currentpage: 1, //当前页数,高亮显示
    //   total: 0, //所有数据总共长度
    };
  },
  props:[
      "listLength",   
      "onePageNum",
    //   "currentpage",
      "total",
  ],
  methods: {
    prenum() {
      console.log("当前index :" + this.currentIndex);
      console.log("当前page :" + this.currentpage);
      console.log(
        "当前总 page :" + (parseInt(this.total / this.onePageNum) + 1)
      );
      if (this.currentIndex + 1 < this.currentpage) {
        this.currentpage--;
        console.log("index 不变:" + this.currentIndex);
        console.log("减少后的page :" + this.currentpage);
        this.requestsong(this.currentpage - 1);
      } else if (this.currentIndex > 0) {
        this.currentIndex--;
        this.currentpage--;
        console.log(" 减少后的 index :" + this.currentIndex);
        console.log("减少后的page :" + this.currentpage);
        console.log("请求的page :" + (this.currentpage - 1));
        this.requestsong(this.currentIndex);
      } else return;
    },
    nextnum() {
      console.log("当前index :" + this.currentIndex);
      console.log("当前page :" + this.currentpage);
      console.log(
        "当前总 page :" + (parseInt(this.total / this.onePageNum) + 1)
      );
      // console.log(this.searchResult.abslist);
      if (
        this.currentIndex + 1 + 3 <
        parseInt(this.total / this.onePageNum) + 1
      ) {
        this.currentIndex++;
        this.currentpage++;
        console.log("增加后的index :" + this.currentIndex);
        this.requestsong(this.currentIndex);
      } else if (this.currentpage < parseInt(this.total / this.onePageNum) + 1) {
        this.currentpage++;
        console.log("index 不变:" + this.currentIndex);
        console.log("增加后的page :" + this.currentpage);
        this.requestsong(this.currentpage - 1); //page 比index 大1,减一后就等同于使用index 的页数请求
      } else return;
    },
    clickcurrentpage(page) {
      if (page == this.currentpage) {
        console.log("点击当前页码");
        return;
      }
      // 如果当前点击index 大于最后位置-3 ,则增加page 而index 只增加到最大值-3
      if (page - 1 + 1 + 3 > parseInt(this.total / this.onePageNum) + 1) {
        console.log(
          "如果当前点击index 大于最后位置-3 ,则增加page 而index 只增加到最大值-3"
        );
        this.currentIndex = parseInt(this.total / this.onePageNum) + 1 - 3 - 1;
        this.currentpage = page;
        console.log("当前请求index : " + this.currentIndex);
        console.log("点击当前page : " + this.currentpage);
      }
      // 如果点击的index 小于0+3 ,则使用page -1 为index
      else if (page - 1 < 0 + 3) {
        console.log("如果点击的index 小于0+3 ,则使用page -1 为index");

        // if (page - 1 == 2) {    //如果倒回点时,index 为2 时,需要显示前面的
        // console.log('如果倒回点时,index 为2 时,需要显示前面的');
        //   this.currentIndex = 2;
        //   this.currentpage = page;
        // } else {
        this.currentIndex = page - 1;
        this.currentpage = page;
        // }

        console.log("当前请求index : " + this.currentIndex);
        console.log("点击当前page : " + this.currentpage);
      }
      // 如果点击位置与之前相差0 或以上,则使用点击的 index位置
      else if (Math.abs(page - 1 - this.currentIndex) >= 0) {
        console.log("如果点击位置与之前相差3 以上,则使用3的 index位置");
        this.currentIndex = page - 1; // page -1 是 index 值,
        this.currentpage = page;
        console.log("当前请求index : " + this.currentIndex);
        console.log("点击当前page : " + this.currentpage);
      }

      this.requestsong(this.currentpage - 1);
    },
    requestsong(page=1){
        this.$emit('requestsong',page)
    }
  },
};
</script>
<style lang="scss">
.pagechange {
  width: 100%;
  height: 30px;
  line-height: 30px;
  padding-top: 10px;
  text-align: center;
  // background-color: violet;
}
.pagechange span {
  width: 30px;
  display: inline-block;
  font-size: 14px;
  // border: 1px solid red;
  // background-color: #fff;
  margin-right: 5px;
  cursor: pointer;
}
.pagechange span.nextpage,
.pagechange span.prepage {
  width: 50px;
}
.pagechange span:hover {
  color: #37bce2;
}
.currentpage {
  background-color: #37bce2 !important;
  color: #fff;
}
.currentpage:hover {
  background-color: #37bce2 !important;
  color: #fff !important;
}
</style>