<template>
  <div id="list">
    <div v-if="index1 == 2" :key="index1" class="flexx">
      <div
        v-for="(item, index) in list1()"
        :key="item"
        style="float: left"
        class="flexxx"
        @click="itemClick"
      >
        <img :src="item" alt="" />
        <p class="title">{{ list.title[index] }}</p>
        <span class="price">{{ list.price[index] }}</span>
        <span class="shop">购买</span>
      </div>
    </div>

    <div v-else-if="index1 == 1" :key="index1" class="flexx">
      <div>
        <div
          v-for="(item, index) in list4()"
          :key="item"
          style="float: left"
          class="flexxx"
          @click="itemClick"
        >
          <img :src="item" alt="" />
          <p class="title">{{ list.title1[index] }}</p>
          <span class="price">{{ list.price1[index] }}</span>
          <span class="shop">购买</span>
        </div>
      </div>
    </div>

    <div v-else :key="index1" class="flexx">
      <div>
        <div
          v-for="(item, index) in list6()"
          :key="item"
          style="float: left"
          class="flexxx"
          @click="itemClick"
        >
          <img :src="item" alt="" />
          <p class="title">{{ list.title2[index] }}</p>
          <span class="price">{{ list.price2[index] }}</span>
          <span class="shop">购买</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Listcontrol",
  data() {
    return {
      list: {},
    };
  },
  props: {
    index1: {
      type: Number,
      default() {
        return 1;
      },
    },
  },
  methods: {
    list1() {
      this.list.list2 = {
        //直接将地址设为变量是不能响应的,会加载不出来,要先将地址导入进来,才会响应
        // <img src="~assets/img/12.webp" alt="" />  直接使用可以响应,将地址作为变量直接使用不用响应,要先导入
        1: require("../../assets/img/12.webp"),
        2: require("../../assets/img/13.webp"),
        3: require("../../assets/img/14.webp"),
        4: require("../../assets/img/15.webp"),
        5: require("../../assets/img/16.webp"),
        6: require("../../assets/img/17.webp"),
        7: require("../../assets/img/18.webp"),
        8: require("../../assets/img/19.webp"),
        9: require("../../assets/img/12.webp"),
        10: require("../../assets/img/13.webp"),
        11: require("../../assets/img/14.webp"),
        12: require("../../assets/img/15.webp"),
        13: require("../../assets/img/16.webp"),
        14: require("../../assets/img/17.webp"),
        15: require("../../assets/img/18.webp"),
        16: require("../../assets/img/19.webp"),
      };
      this.title();
      this.price();
      return this.list.list2;
    },
    title() {
      this.list.title = {
        1: "新款女神气质黑色连衣裙短袖v领中长款收腰长裙",
        2: "夏季彩色字母短裤松紧腰022",
        3: "小香风短袖体恤",
        4: "【7天内发】加厚雪纺衬衫棉麻裤子两件套松紧腰",
        5: "夏季花边泡泡冰袖防晒蕾丝冰袖",
        6: "夏季花边泡泡冰袖防晒蕾丝冰袖",
        7: "法式赫本风长裙方领泡泡袖收腰连衣裙",
        8: "【果果】时尚新潮中长款衬衣两件套HH0419FL",
        9: "新款女神气质黑色连衣裙短袖v领中长款收腰长裙",
        10: "夏季彩色字母短裤松紧腰022",
        11: "小香风短袖体恤",
        12: "【7天内发】加厚雪纺衬衫棉麻裤子两件套松紧腰",
        13: "夏季花边泡泡冰袖防晒蕾丝冰袖",
        14: "夏季花边泡泡冰袖防晒蕾丝冰袖",
        15: "法式赫本风长裙方领泡泡袖收腰连衣裙",
        16: "【果果】时尚新潮中长款衬衣两件套HH0419FL",
      };
      return this.list.title;
    },
    price() {
      this.list.price = {
        1: "￥76.89",
        2: "￥32.89",
        3: "￥39.49",
        4: "￥39.90",
        5: "￥9.90",
        6: "￥9.90",
        7: "￥65.89",
        8: "￥59.90",
        9: "￥76.89",
        10: "￥32.89",
        11: "￥39.49",
        12: "￥39.90",
        13: "￥9.90",
        14: "￥9.90",
        15: "￥65.89",
        16: "￥59.90",
      };
      return this.list.price;
    },
    list4() {
      this.list.list5 = {
        //直接将地址设为变量是不能响应的,会加载不出来,要先将地址导入进来,才会响应
        // <img src="~assets/img/12.webp" alt="" />  直接使用可以响应,将地址作为变量直接使用不用响应,要先导入
        1: require("assets/img/20.webp"),
        2: require("assets/img/21.webp"),
        3: require("assets/img/22.webp"),
        4: require("assets/img/23.webp"),
        5: require("assets/img/24.webp"),
        6: require("assets/img/25.webp"),
        7: require("assets/img/26.webp"),
        8: require("assets/img/27.webp"),
        9: require("assets/img/20.webp"),
        10: require("assets/img/21.webp"),
        11: require("assets/img/22.webp"),
        12: require("assets/img/23.webp"),
        13: require("assets/img/24.webp"),
        14: require("assets/img/25.webp"),
        15: require("assets/img/26.webp"),
        16: require("assets/img/27.webp"),
      };
      this.title1();
      this.price1();
      return this.list.list5;
    },
    title1() {
      this.list.title1 = {
        1: "新款女神气质黑色连衣裙短袖v领中长款收腰长裙",
        2: "夏季彩色字母短裤松紧腰022",
        3: "小香风短袖体恤",
        4: "【7天内发】加厚雪纺衬衫棉麻裤子两件套松紧腰",
        5: "夏季花边泡泡冰袖防晒蕾丝冰袖",
        6: "夏季花边泡泡冰袖防晒蕾丝冰袖",
        7: "法式赫本风长裙方领泡泡袖收腰连衣裙",
        8: "【果果】时尚新潮中长款衬衣两件套HH0419FL",
        9: "新款女神气质黑色连衣裙短袖v领中长款收腰长裙",
        10: "夏季彩色字母短裤松紧腰022",
        11: "小香风短袖体恤",
        12: "【7天内发】加厚雪纺衬衫棉麻裤子两件套松紧腰",
        13: "夏季花边泡泡冰袖防晒蕾丝冰袖",
        14: "夏季花边泡泡冰袖防晒蕾丝冰袖",
        15: "法式赫本风长裙方领泡泡袖收腰连衣裙",
        16: "【果果】时尚新潮中长款衬衣两件套HH0419FL",
      };
      return this.list.title1;
    },
    price1() {
      this.list.price1 = {
        1: "￥76.89",
        2: "￥32.89",
        3: "￥39.49",
        4: "￥39.90",
        5: "￥9.90",
        6: "￥9.90",
        7: "￥65.89",
        8: "￥59.90",
        9: "￥76.89",
        10: "￥32.89",
        11: "￥39.49",
        12: "￥39.90",
        13: "￥9.90",
        14: "￥9.90",
        15: "￥65.89",
        16: "￥59.90",
      };
      return this.list.price1;
    },
    list6() {
      this.list.list7 = {
        1: require("assets/img/28.webp"),
        2: require("assets/img/29.webp"),
        3: require("assets/img/30.webp"),
        4: require("assets/img/31.webp"),
        5: require("assets/img/32.webp"),
        6: require("assets/img/33.webp"),
        7: require("assets/img/34.webp"),
        8: require("assets/img/35.webp"),
        9: require("assets/img/28.webp"),
        10: require("assets/img/29.webp"),
        11: require("assets/img/30.webp"),
        12: require("assets/img/31.webp"),
        13: require("assets/img/32.webp"),
        14: require("assets/img/33.webp"),
        15: require("assets/img/34.webp"),
        16: require("assets/img/35.webp"),
      };
      this.title2();
      this.price2();
      return this.list.list7;
    },
    title2() {
      this.list.title2 = {
        1: "新款女神气质黑色连衣裙短袖v领中长款收腰长裙",
        2: "夏季彩色字母短裤松紧腰022",
        3: "小香风短袖体恤",
        4: "【7天内发】加厚雪纺衬衫棉麻裤子两件套松紧腰",
        5: "夏季花边泡泡冰袖防晒蕾丝冰袖",
        6: "夏季花边泡泡冰袖防晒蕾丝冰袖",
        7: "法式赫本风长裙方领泡泡袖收腰连衣裙",
        8: "【果果】时尚新潮中长款衬衣两件套HH0419FL",
        9: "新款女神气质黑色连衣裙短袖v领中长款收腰长裙",
        10: "夏季彩色字母短裤松紧腰022",
        11: "小香风短袖体恤",
        12: "【7天内发】加厚雪纺衬衫棉麻裤子两件套松紧腰",
        13: "夏季花边泡泡冰袖防晒蕾丝冰袖",
        14: "夏季花边泡泡冰袖防晒蕾丝冰袖",
        15: "法式赫本风长裙方领泡泡袖收腰连衣裙",
        16: "【果果】时尚新潮中长款衬衣两件套HH0419FL",
      };
      return this.list.title2;
    },
    price2() {
      this.list.price2 = {
        1: "￥76.89",
        2: "￥32.89",
        3: "￥39.49",
        4: "￥39.90",
        5: "￥9.90",
        6: "￥9.90",
        7: "￥65.89",
        8: "￥59.90",
        9: "￥76.89",
        10: "￥32.89",
        11: "￥39.49",
        12: "￥39.90",
        13: "￥9.90",
        14: "￥9.90",
        15: "￥65.89",
        16: "￥59.90",
      };
      return this.list.price2;
    },
    itemClick() {
      // console.log("跳转到详情页");
      // this.$router.push("/detail" + 111); //动态路由
      this.$router.push("/detail");
      // this.$router.push({        //query
      //   path:"/detail",
      //   query:{

      //   }
      // });
    },
  },
};
</script>

<style scoped>
#list {
  /* 有高度才会有margin-bottom  强制高度不好,没有高度无法距离底部 */
  /*  position: absolute; 影响到上一个组件的 position: sticky */
  /* position: absolute; */
  /* height: 3150px; */
}
.flexx {
  display: flex;
  justify-content: center;
  align-self: center;
  flex-wrap: wrap;
}
.flexxx {
  width: 50vw;
}
img {
  width: 50vw;
  height: 302px;
}
.title {
  width: 50vw;
  font-size: 14px;
  text-align: center;
  padding: 10px 20px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.price {
  position: relative;
  left: -10px;
  color: var(--color-height-text);
  font-size: 18px;
  padding: 5px 20px 10px;
}
.shop {
  width: 50px;
  height: 30px;
  display: inline-block;
  text-align: center;
  line-height: 30px;
  border-radius: 30px;
  background-color: var(--color-height-text);
}
</style>