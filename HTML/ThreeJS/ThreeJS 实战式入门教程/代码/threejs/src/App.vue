<template>
  <div class="three-canvas" ref="threeTarget"></div>
</template>

<!--  追更到75集 -->

<script  lang="ts">
// 调试网站
// https://shiotsukikaedesari.gitee.io/#/three/directionalLight
import { defineComponent, onMounted, ref } from "vue";

import { TEngine } from "./assets/ts/TEngine";
// 导入物体
import { basicObjectList } from "./assets/ts/TBasicObject";
// 导入光线
import { lightsList } from "./assets/ts/TLights";
// 导入辅助类
import { helperList } from "./assets/ts/THelper";
// 导入代码建模
import { codeModelList } from "./assets/ts/TCodeModel";

import { TCanvasTextureEditor } from "./assets/ts/TCanvasTextureEditor";
import { frameMaterial, framePromise, getFrame } from "./assets/ts/TLoadModel";
import { Material, Mesh } from "three";
import { groupListPromise } from "./assets/ts/TGroup";

export default defineComponent({
  setup() {
    const threeTarget = ref(null);

    onMounted(() => {
      const TE = new TEngine(threeTarget.value);
      // 使用自定义的addObject 向场景中添加物体
      TE.addObject(...basicObjectList);
      TE.addObject(...lightsList);
      TE.addObject(...helperList);
      TE.addObject(...codeModelList);

      getFrame().then((frame) => {
        frame && TE.addObject(frame);
      });

      groupListPromise.then((groupList)=>{
         TE.addObject(...groupList)
      })

      // framePromise.then(group=>{
      //   console.log(group);
      //   //three 将所有的物体存放在group 中,
      //   // 其中children 里面才是真正的物体/点,线物体,灯光.. 各种类型
      //   // 需要声明一下告诉编辑器此物体为Mesh 类型
      //   const frameMesh:Mesh=group.children[0] as Mesh;
      //   // 因为材质可能是材质组,也可能是单个材质,需要告诉编辑器为单个材质
      //   (frameMesh.material as Material).dispose()    //在内存中清除之前的材质
      //   frameMesh.material=frameMaterial

      //   //将组加入到场景中,整个组为导入的物体
      //   group.position.x=40
      //   group.position.y=45
      //   group.position.z=20
      //   group.rotation.y=Math.PI/180*-90
      //   group.scale.set(2,2,2)
      //   TE.addObject(group)
      // })
      //  framePromise.then(frame=>{
      //    TE.addObject(frame);
      //  })

      // canvas 画布
      // const testCanvas=new TCanvasTextureEditor()
      // testCanvas.draw(ctx=>{
      //   // 开始画画
      //   ctx.beginPath()
      //   // 设置矩形的路径 x 轴位置,y 轴位置,长宽
      //   ctx.rect(10,10,200,200)     //相当于几何体
      //   // 设置空心颜色
      //   ctx.strokeStyle='red'     //相当于材质
      //   //通知空心笔画出矩形
      //   ctx.stroke()      //描边相当于Mesh
      //   // 关闭画画
      //   ctx.closePath()
      // }).preview()
    });

    return {
      threeTarget,
    };
  },
});
</script>

<style>
body{
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
/* canvas{
  width: 100%;
  height: 100%;
} */
</style>
