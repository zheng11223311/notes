<template>
  <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
    <van-swipe-item>
      <img src="~assets/img/36.jpg" alt="" srcset="" />
    </van-swipe-item>
    <van-swipe-item>
      <img src="~assets/img/37.jpg" alt="" srcset="" />
    </van-swipe-item>
    <van-swipe-item>
      <img src="~assets/img/38.jpg" alt="" srcset="" />
    </van-swipe-item>
    <van-swipe-item>
      <img src="~assets/img/36.jpg" alt="" srcset="" />
    </van-swipe-item>
    <van-swipe-item>
      <img src="~assets/img/37.jpg" alt="" srcset="" />
    </van-swipe-item>
  </van-swipe>
  <div class="divDetail">
    <p class="p">
      [仲陌美]2021
      春秋季新款原宿风长袖T恤女bf潮学生韩版拼接白色复古港味宽松百搭上衣打底
    </p>
    <span class="spanPrice">￥76.89</span>
    <span class="delSpanPrice"> ￥108.36</span>
    <span></span>
    <span class="shop">今日特价</span>
  </div>
  <div class="show">
    <span>销量 10442</span>
    <span>收藏 616人</span>
    <span>退货补运费</span>
  </div>
  <div class="faHuo">
    <div>7天无理由退货</div>
    <div>72小时发货</div>
  </div>
  <p class="pShop">仲陌美</p>
  <div class="showShop">
    <div class="showShopLeft">
      <div>
        <div>5.8万</div>
        总销量
      </div>
      <div>
        <div>9.9</div>
        全部宝贝
      </div>
    </div>
    <div class="showShopRight">
      <div><span>描述相符</span><span>4.46</span><span>高</span></div>
      <div><span>价格合理</span><span>4.46</span><span>高</span></div>
      <div><span>质量满意</span><span>4.46</span><span>高</span></div>
    </div>
  </div>
  <div class="goShow1"><div class="goShow">进店逛逛</div></div>
</template>

<script>
export default {
  name: "DetailSwiper",
  components: {},
};
</script>

<style scoped scss>
.my-swipe .van-swipe-item {
  color: #fff;
  font-size: 20px;
  line-height: 150px;
  text-align: center;
  background-color: #39a9ed;
  height: 200px;
}
.my-swipe img {
  width: 100vw;
  height: 200px;
}
.divDetail,
.show,
.faHuo,
.showShop {
  display: flex;
  justify-content: flex-start;
  align-content: center;
  flex-wrap: wrap;
  text-align: left;
}
.divDetail {
  height: 100px;
}
.divDetail .p {
  width: 100vw;
  padding: 8px;
  font-size: 16px;
  text-align: left;
}
.divDetail .spanPrice {
  color: var(--color-height-text);
  font-size: 20px;
  padding: 5px;
}
.divDetail .delSpanPrice {
  text-decoration: line-through;
  color: #999;
  line-height: 40px;
}
span {
  flex: 1;
}
.divDetail .shop {
  flex: 3;
  width: 80px;
  height: 30px;
  display: inline-block;
  text-align: center;
  line-height: 30px;
  border-radius: 30px;
  background-color: var(--color-height-text);
}
.show {
  height: 36px;
  justify-content: space-between;
}
.show span {
  width: 33.3vw;
  padding: 10px;
  font-size: 14px;
  color: #999;
}
.show span:nth-child(3),
.faHuo div:nth-child(2) {
  text-align: right;
}
.faHuo {
  height: 36px;
}
.faHuo div {
  font-size: 14px;
  padding: 10px;
  flex: 1;
}
.showShop {
  height: 96px;
}
.showShopLeft,
.showShopRight {
  width: 50vw;
}
.showShopLeft > div {
  padding: 10px;
  display: inline-block;
  width: 23vw;
}
.showShopLeft > div > div:nth-child(1) {
  font-weight: 700;
}
.showShopRight div {
  padding: 7px;
}
.showShopRight div span {
  padding-left: 7px;
}
.showShopRight div span:nth-child(2) {
  color: green;
  padding-right: 7px;
}
.showShopRight div span:nth-child(3) {
  color: #fff;
  padding: 0;
  background-color: red;
}
.pShop {
  padding: 10px;
  text-align: start;
}
.goShow {
  height: 30px;
  width: 100px;
  transform: translate(calc(50vw - 50px));
  line-height: 27px;
  border-radius: 30px;
  border: 3px solid #999;
}
.goShow1 {
  background-color: #fff;
  padding-bottom: 20px;
  border-bottom: 10px solid #999;
}
</style>