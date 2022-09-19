<template>
  <div>
    <nav-bar>
      <template v-slot:default>分类商品</template>
    </nav-bar>
    <div id="mainbox">
      <div class="ordertab">
        <van-tabs v-model="active" @click="tabClick(index)">
          <!-- 点击click 默认会将id 传进来 -->
          <van-tab title="销量排序"></van-tab>
          <van-tab title="好评排序"></van-tab>
          <van-tab title="评论排序"></van-tab>
          <van-tab title="价格排序"></van-tab>
        </van-tabs>
      </div>
      <div class="leftmenu">
        <van-collapse v-model="activeNames">
          <van-collapse-item title="前沿" name="1">
            <van-sidebar v-model="activeKey">
              <!-- <van-sidebar-item v-for="item in categories" :title="item.name" /> -->
              <van-sidebar-item @click="getGoods" title="区块链" />
              <van-sidebar-item @click="getGoods" title="人工智能" />
              <van-sidebar-item @click="getGoods" title="前沿3" />
              <van-sidebar-item @click="getGoods" title="前沿4" />
              <van-sidebar-item @click="getGoods" title="前沿5" />
            </van-sidebar>
          </van-collapse-item>
          <van-collapse-item title="前端" name="2">
            <van-sidebar v-model="activeKey">
              <van-sidebar-item @click="getGoods" title="小程序" />
              <van-sidebar-item @click="getGoods" title="JavaScript" />
              <van-sidebar-item @click="getGoods" title="HTML/CSS" />
              <van-sidebar-item @click="getGoods" title="Vue" />
              <van-sidebar-item @click="getGoods" title="React" />
            </van-sidebar>
          </van-collapse-item>
          <van-collapse-item title="后端" name="3">
            <van-sidebar v-model="activeKey">
              <van-sidebar-item @click="getGoods" title="java" />
              <van-sidebar-item @click="getGoods" title="PHP" />
              <van-sidebar-item @click="getGoods" title="Python" />
              <van-sidebar-item @click="getGoods" title="CoLang" />
              <van-sidebar-item @click="getGoods" title="后端5" />
            </van-sidebar>
          </van-collapse-item>
          <van-collapse-item title="云计算" name="4">
            <van-sidebar v-model="activeKey">
              <van-sidebar-item @click="getGoods" title="私有云" />
              <van-sidebar-item @click="getGoods" title="公有云" />
              <van-sidebar-item @click="getGoods" title="混合云" />
              <van-sidebar-item @click="getGoods" title="云计算4" />
              <van-sidebar-item @click="getGoods" title="云计算5" />
            </van-sidebar>
          </van-collapse-item>
          <van-collapse-item title="产品设计" name="5">
            <van-sidebar v-model="activeKey">
              <van-sidebar-item @click="getGoods" title="产品设计1" />
              <van-sidebar-item @click="getGoods" title="产品设计2" />
              <van-sidebar-item @click="getGoods" title="产品设计3" />
              <van-sidebar-item @click="getGoods" title="产品设计4" />
              <van-sidebar-item @click="getGoods" title="产品设计5" />
            </van-sidebar>
          </van-collapse-item>
        </van-collapse>
      </div>
      <div class="goodslist">
        <div class="content">
          <!-- content 为了便于以后加载更多数据 -->
          <van-card
            num="21"
            @click="itemClick(index)"
            price="22.00"
            desc="描述信息"
            title="圣经"
            thumb="https://uploadfile.huiyi8.com/2018/af/66/94/78/386250.jpg"
          />
          <van-card
            num="24"
            @click="itemClick(index)"
            tag="火热"
            price="26.00"
            desc="描述信息"
            title="我不爱这世界,我只爱你"
            thumb="https://uploadfile.huiyi8.com/2018/af/ce/a6/92/381066.jpg.270.jpg"
            origin-price="10.00"
          />
          <van-card
            num="28"
            @click="itemClick(index)"
            price="20.00"
            desc="描述信息"
            title="龙族"
            thumb="https://uploadfile.huiyi8.com/2018/af/1e/8b/75/410842.jpg.270.jpg"
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import NavBar from "components/common/navbar/NavBar.vue";
import { getCategory } from "network/category.js";
import { ref, reactive, onMounted } from "vue";
import { useRouter } from "vue-router";
export default {
  name: "Category",
  components: {
    NavBar,
  },
  setup() {
    const router = useRouter();
    let activeKey = ref(0);
    let active = ref(2);
    let activeNames = ref(["1"]);
    let categories = ref([]);
    //当前的分类id
    let currentCid = ref(0);
    onMounted(() => {
      // getCategory().then((res) => {  //暂时获取不到数据
      //   // console.log(res);
      //   categories.value = res.categories;
      // });
    });
    //排序选项卡
    const tabClick = (index) => {
      // let orders = ["salas", "price", "comments_count"];
      // console.log("排序的序号" + orders["index"]);
      console.log("排序的序号" + index);
    };

    //通过分类得到商品
    const getGoods = (cid) => {
      currentCid.value = cid;
      console.log(cid);
      tabClick();
    };
    return {
      activeKey,
      categories,
      activeNames,
      active,
      tabClick,
      getGoods,
      itemClick: (index) => {
        router.push({ path: "/detail", query: { index } });
      },
    };
  },
};
</script>

<style scoped lang='scss'>
#mainbox {
  margin-top: 45px;
  display: flex;
  .ordertab {
    flex: 1;
    float: right;
    height: 50px;
    z-index: 9;
    position: fixed;
    top: 45px;
    right: 0;
    left: 130px;
  }
  .leftmenu {
    position: fixed;
    top: 95px;
    left: 0;
    width: 130px;
    height: 200px;
  }
  .goodslist {
    flex: 1;
    position: absolute;
    top: 100px;
    left: 130px;
    right: 0;
    height: 100vh;
  }
}
</style>