<template>
  <div class="three-canvas" ref="threeTarget"></div>
</template>

<script  lang="ts">
import { defineComponent, onMounted, ref } from "vue";
import { objectList } from "./assets/ts/TBasicObject";
import { TEngine } from "./assets/ts/TEngine";
import { groupList } from "./assets/ts/TGroup";
import { helperList } from "./assets/ts/THelper";
export default defineComponent({
  setup() {
    const threeTarget = ref(null);

    onMounted(() => {
      const TE=new TEngine(threeTarget.value)
      TE.addObject(...objectList)
      TE.addObject(...helperList)
      TE.addObject(...groupList)
    })

    return{
      threeTarget
    }
  },
});
</script>
<style>
body{
  width: 100vw;
  height: 100vh;
  overflow: hidden;
}
#app {
  width: 100%;
  height: 100%;
}
.three-canvas {
  width: 100%;
  height: 100%;
}
</style>


