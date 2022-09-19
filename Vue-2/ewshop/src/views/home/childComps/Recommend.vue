<template>
  <div class="recommend">
    <!-- <div class="recommend-item" v-for="item in recommends" :key="item.id">
      <a href="" @click.stop="itemClick()">
        <img src="~assets/images/2.jpg" alt="" />
        <div>细说PHP</div>
      </a>
    </div> -->
    <div class="recommend-item">
      <a href="" @click.prevent="itemClick()">
        <img src="~assets/images/2.jpg" alt="" />
        <div>细说PHP</div>
      </a>
    </div>
    <div class="recommend-item">
      <a href="" @click.prevent="itemClick()">
        <img src="~assets/images/2.jpg" alt="" />
        <div>细说PHP</div>
      </a>
    </div>
    <div class="recommend-item">
      <a href="" @click.prevent="itemClick()">
        <img src="~assets/images/2.jpg" alt="" />
        <div>细说PHP</div>
      </a>
    </div>
  </div>
</template>

<script>
import { useRouter } from "vue-router";
export default {
  name: "Recommend",
  props: {
    recommends: {
      type: Array,
      default() {
        return [];
      },
    },
  },
  setup() {
    const router = useRouter();
    return {
      itemClick: () => {
        router.push({ path: "/detail", query: {} });
      },
    };
  },
};
</script>

<style scoped lang="scss">
.recommend {
  display: flex;
  width: 100%;
  text-align: center;
  padding: 15px 0 30px;
  border-bottom: 8px solid #eee;
  font-size: 12px;
}
.recommend-item {
  flex: 1;
  img {
    width: 70px;
    height: 70px;
    margin-bottom: 10px;
  }
}
</style>
