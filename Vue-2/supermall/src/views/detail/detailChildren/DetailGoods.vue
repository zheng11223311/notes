<template>
  <div class="detailgoods">
    <div class="detailgoodstitle">新款上市~</div>
    <div class="detailclothe">
      穿着效果
      <img src="~assets/img/39.jpg" alt="" srcset="" />
      <img src="~assets/img/40.jpg" alt="" srcset="" />
      <img src="~assets/img/41.jpg" alt="" srcset="" />
      <img src="~assets/img/42.jpg" alt="" srcset="" />
      <img src="~assets/img/43.jpg" alt="" srcset="" />
    </div>
    <div class="detailcanshu">
      <div>材质: 针织</div>
      <div>袖长: 短袖</div>
      <div>风格: 简约</div>
      <div>尺码: 均码（130斤以内）</div>
      <div>衣长: 常规款（51-65cm）</div>
      <div>版型: 直身</div>
      <div>图案: 色块</div>
      <div>颜色: 黑色,白色</div>
      <div>季节: 夏季</div>
      <div>领型: V领</div>
    </div>
  </div>
</template>

<script>
export default {
  name: "DetailGoods",
};
</script>

<style scoped>
.detailgoodstitle {
  padding: 10px;
  color: brown;
  border-bottom: 2px solid #999;
}
.detailclothe {
  text-align: left;
  font-size: 20px;
  font-weight: 600;
}
.detailclothe img {
  width: 100vw;
}
.detailcanshu {
  display: flex;
  justify-content: flex-start;
  align-content: flex-start;
  flex-wrap: wrap;
}
.detailcanshu div {
  width: 50vw;
  text-align: left;
  padding: 5px;
  border: 1px solid #999;
  box-sizing: border-box;
  border-bottom: none;
}
.detailcanshu div:nth-child(n + 9) {
  border-bottom: 1px solid #999;
}
</style>