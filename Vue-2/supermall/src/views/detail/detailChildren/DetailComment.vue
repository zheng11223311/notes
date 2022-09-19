<template>
  <div class="detail-comment">
    <div class="detail-comment-header">
      <p class="">用户评论</p>
      <p class="">更多</p>
    </div>
    <div class="detailcustomer">
      <div class="yonhu">
        <img src="~assets/img/9.jpg" alt="" />
        棒棒糖闯江湖
      </div>
      <p class="">
        刚好合适,物美价廉,衣服面料很好,穿着很舒服,版型也好看,非常棒.
      </p>
      <div class="detailtime">
        <span>2021-5-16 15:21 颜色:上衣+裤子 尺码:M</span>
        <img src="~assets/img/9.jpg" alt="" srcset="" />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "DetailComment",
};
</script>

<style scoped>
.detail-comment-header {
  display: flex;
  justify-content: center;
  align-content: center;
}
.detail-comment-header p {
  flex: 1;
  text-align: left;
  padding: 15px;
  padding-bottom: 5px;
  border-bottom: 3px solid #999;
}
.detail-comment-header p:nth-child(2) {
  text-align: right;
}
.detailcustomer {
  padding-left: 10px;
  padding-top: 10px;
  text-align: left;
}
.yonhu img {
  width: 44px;
  height: 44px;
  border-radius: 50%;
  vertical-align: -15px;
}
.yonhu {
  font-weight: 700;
}
.detailtime {
  color: #999;
  font-size: 14px;
}
.detailtime img {
  display: block;
  width: 80vw;
  padding: 10vw;
}
</style>