<template>
  <detail-nav-bar
    class="detailnvb"
    @titleClick="titleClick"
    ref="detailNavBar"
  ></detail-nav-bar>
  <!-- 事件名称可以驼峰,属性不能驼峰命名 -->
  <div class="detail">
    <scroll ref="scroll" :probe-type="3" @scroll="scroll1" :pull-up-load="true">
      <div class="detailScroll">
        <detail-swiper></detail-swiper>
        <detail-goods></detail-goods>
        <detailComment></detailComment>
        <listcontrol @putList="putList"></listcontrol>
      </div>
    </scroll>
    <div>{{ $store.state.cartList }}</div>
  </div>
  <detail-bottom-bar @addcart="addcart"></detail-bottom-bar>
  <backTop @bTop="bTop" v-show="isShowBackTop()"></backTop>
</template>

<script>
import DetailNavBar from "views/detail/detailChildren/DetailNavBar";
import DetailSwiper from "./detailChildren/DetailSwiper";
import DetailGoods from "./detailChildren/DetailGoods";
import Listcontrol from "./detailChildren/Listcontrol";
import DetailComment from "./detailChildren/DetailComment";
import DetailBottomBar from "./detailChildren/DetailBottomBar";

import { getDetail } from "network/detail.js";

import scroll from "components/comment/Scroll";
import BackTop from "components/comment/BackTop";

export default {
  name: "Detail",
  components: {
    DetailNavBar,
    DetailSwiper,
    scroll,
    DetailGoods,
    Listcontrol,
    DetailComment,
    BackTop,
    DetailBottomBar,
  },
  data() {
    return {
      id: null,
      topImages: [],
      goods: {}, //写成null 空对象会报错
      shop: {},
      themeTopY: [0, 2150, 3000, 3500],
      saveY: 0,
      currentIndex: 0,
      listData: {},
    };
  },
  methods: {
    putList(data) {
      // console.log(data);
      this.listData = data;
    },
    addcart() {
      // console.log("加入");
      //1.获取商品信息
      const product = {};
      let index = Math.floor(Math.random() * 10 + 6);
      product.image = this.listData.list5[index];
      product.title = this.listData.title1[index];
      product.price = this.listData.price1[index];
      // console.log(product);

      //2.将商品加入到购物车,通过store
      // this.$store.commit("addCart", product);
      this.$store.dispatch("addCart", product);
      // console.log(this.$store.state.cartList);
    },
    isShowBackTop() {
      return -this.saveY > 1000;
    },
    scroll1(position) {
      this.saveY = position.y;
      // console.log(this.saveY);
      // for (let i in this.themeTopY) {
      //   //i 是一个字符串
      //   if (
      //     this.saveY > this.themeTopY[parseInt(i)] &&
      //     this.saveY < this.themeTopY[parseInt(i) + 1]
      //   ) {
      //     console.log(i);
      //   }
      // }
      //滚动内容对应标题
      if (-this.saveY >= this.themeTopY[3]) {
        // console.log(3);
        this.currentIndex = 3;
      } else if (-this.saveY >= this.themeTopY[2]) {
        // console.log(2);
        this.currentIndex = 2;
      } else if (-this.saveY >= this.themeTopY[1]) {
        // console.log(1);
        this.currentIndex = 1;
      } else if (-this.saveY >= this.themeTopY[0]) {
        // console.log(0);
        this.currentIndex = 0;
      }
      this.$refs.detailNavBar.currentIndex = this.currentIndex;
    },
    bTop() {
      // console.log("btn");
      this.$refs.scroll.scroll.scrollTo(0, -this.themeTopY[0], 500);
    },
    titleClick(index) {
      // console.log(index);
      // window.scrollTo(0, 200);
      // console.log(this.$refs.scroll.scroll.scrollTo);
      // console.log(this.$refs.scroll.scroll.getScrollY);
      // console.log(this.$refs.scroll.scroll.scrollHeight);
      this.$nextTick(() => {
        //根据最新的数据,对应的DOM 是已经被渲染出来
        //但是图片依然没有加载完(目前获取到offsetTop 不包含其中的图片)
        //所以获取位置y 时要等到图片调用onload 的函数的里面
      }); //下一帧,等待数据渲染完成时在进行操作
      this.$refs.scroll.scroll.scrollTo(0, -this.themeTopY[index], 500);

      /* 
      滚动到对应的主题:
        获取所有主题1的offsetTop
        问题:在哪里才能获取到正确的offsetTop
        使用 this.refs.scroll.$el.offsetTop  获取组件的实际高度
          1.created 肯定不行,压根不能获取元素
          2.mounted 也不行,数据还没有获取到
          3.获取到数据的回调函数中也不行,DOM 还没有完全渲染完成
          4.$nextTick 也不行,因为图片的高度还没有被计算出来
      应该在图片加载完成后,使用onload 函数获取图片的高度
      
      */
    },
  },
  created() {
    //保存传入的id
    // this.id = this.$router.params.id;
    //2.根据id 请求详情数据
    // getDetail(this.id).then(res=>{
    //   console.log(res);
    //1.获取顶部的图片轮播图数据
    // const data=res.result
    // this.topImages=data.itemInfo.topImages
    //2.获取商品信息,请求时,以class 来命名的Good
    // this.goods=new Good(data.itemInfo,data.columns,data.shopInfo.service)
    //3.创建店铺信息的对象
    // this.shop = new Shop(data.shopInfo);
    // })
  },
};
</script>

<style scoped>
.detailnvb {
  position: sticky;
  top: 0;
  background-color: #fff;
  z-index: 1000;
}
.detail {
  /* 覆盖掉首页导航标签 */
  position: relative;
  z-index: 999;
  background-color: #fff;
}
.detailScroll {
  /* height: calc(1000vh); */
}
</style>