<template>
  <div class="select" ref="span">
    <span data-url="./imgs/hdr/Living.hdr">场景1</span>
    <span data-url="./imgs/hdr/ersisd-Merksem_Appartment_Living_4k.hdr"
      >场景2</span
    >
    <span data-url="./imgs/hdr/ersisd-Beerse_Kitchen_4k.hdr">场景3</span>
  </div>
  <div class="container" ref="container"></div>
</template>

<script setup>
import * as THREE from "three";
import { OrbitControls } from "three/examples/jsm/controls/OrbitControls";
import { RGBELoader } from "three/examples/jsm/loaders/RGBELoader";
import { ref, onMounted } from "vue";
// 初始化场景
const scene = new THREE.Scene();
// 初始化相机
const camera = new THREE.PerspectiveCamera(
  75,
  window.innerWidth / window.innerHeight,
  0.1,
  1000
);
// 设置相机位置
camera.position.z = 0.1;
// 初始化渲染器
const renderer = new THREE.WebGLRenderer();
renderer.setSize(window.innerWidth, window.innerHeight);

const container = ref(null);
const span = ref(null);

const render = () => {
  renderer.render(scene, camera);
  requestAnimationFrame(render);
};

// 添加立方体
// const geometry = new THREE.BoxGeometry(10, 10, 10);
// // const material = new THREE.MeshBasicMaterial({ color: 0x00ff00 });
// // const cube = new THREE.Mesh(geometry, material);
// // scene.add(cube);

// // 4_b,
// var arr = ["4_l", "4_r", "4_u", "4_d", "4_b", "4_f"];
// var boxMaterials = [];

// arr.forEach((item) => {
//   // 纹理加载
//   let texture = new THREE.TextureLoader().load(`./imgs/living/${item}.jpg`);
//   // 创建材质
//   if (item === "4_u" || item === "4_d") {
//     texture.rotation = Math.PI;
//     texture.center = new THREE.Vector2(0.5, 0.5);
//     boxMaterials.push(new THREE.MeshBasicMaterial({ map: texture }));
//   } else {
//     boxMaterials.push(new THREE.MeshBasicMaterial({ map: texture }));
//   }
// });
// const cube = new THREE.Mesh(geometry, boxMaterials);
// cube.geometry.scale(1, 1, -1);
// scene.add(cube);

// 添加球
const geometry = new THREE.SphereGeometry(5, 32, 32);
//创建hdr 加载器
const loader = new RGBELoader();
// loader.load("./imgs/hdr/Living.hdr", (texture) => {
//   const material = new THREE.MeshBasicMaterial({ map: texture });
//   const sphere = new THREE.Mesh(geometry, material);
//   sphere.geometry.scale(1, 1, -1);  //图像向球内部展示
//   scene.add(sphere);
// });
// loader.load("./imgs/hdr/ersisd-Merksem_Appartment_Living_4k.hdr", (texture) => {
//   const material = new THREE.MeshBasicMaterial({ map: texture });
//   const sphere = new THREE.Mesh(geometry, material);
//   sphere.geometry.scale(1, 1, -1);
//   scene.add(sphere);
// });
 let sphere ;
  const material = new THREE.MeshBasicMaterial();
loader.load("./imgs/hdr/ersisd-Beerse_Kitchen_4k.hdr", (texture) => {
  material.map=texture
   sphere = new THREE.Mesh(geometry, material);
  sphere.geometry.scale(1, 1, -1);
  scene.add(sphere);
});

// 挂载完毕之后获取dom
onMounted(() => {
  console.log(span.value.children);
  for (const iterator of span.value.children) {
    iterator.addEventListener("click", () => {
      // alert(iterator);
      console.log(iterator);
      console.log(iterator.dataset.url);
      loader.load(iterator.dataset.url, (texture) => {
        // scene.remove(sphere)
        material.map=texture
        //  sphere = new THREE.Mesh(geometry, material);
        // sphere.geometry.scale(1, 1, -1);
        // scene.add(sphere);
      });
    });
  }
  

  // 添加控制器
  const controls = new OrbitControls(camera, container.value);
  controls.enableDamping = true;
  container.value.appendChild(renderer.domElement);
  render();
});
</script>

<style>
* {
  margin: 0;
  padding: 0;
}
.container {
  height: 100vh;
  width: 100vw;
  background-color: #f0f0f0;
  overflow: hidden;
}
.select {
  position: absolute;
  width: 200px;
  height: 60px;
  display: flex;
  align-items: space-around;
}
.select span {
  flex: 1;
  background-color: rgba(222, 184, 135, 0.804);
  line-height: 60px;
  font-size: 20px;
  color: #f0f0f0;
}
.select span:hover {
  color: aqua;
}
</style>
