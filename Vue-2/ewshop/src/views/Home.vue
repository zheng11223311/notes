<template>
  <div class="home"></div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from "@/components/HelloWorld.vue";
import { onMounted, ref } from "vue";
import { getHomeAllData, getBanner } from "network/home.js";

export default {
  name: "Home",
  components: {
    HelloWorld,
  },
  setup() {
    const banner = ref([]);
    onMounted(() => {
      getHomeAllData()
        .then((res) => {
          // console.log(res);
          banner.value = res;
        })
        .catch((err) => {
          console.log(err);
        });
    });
    return {
      banner,
    };
  },
};
</script>
