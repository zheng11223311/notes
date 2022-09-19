<template>
</template>

<script>
import * as THREE from 'three'
// 导入控制器
import {OrbitControls} from 'three/examples/jsm/controls/OrbitControls'
// 导入水面
import {Water} from 'three/examples/jsm/objects/Water2'


// 初始化场景
const scene=new THREE.Scene()

//初始化相机
const camera=new THREE.PerspectiveCamera(75,window.innerWidth/window.innerHeight,0.1,2000)

// 设置相机的位置
camera.position.set(-50,50,130)

//更新摄像头宽高的比例
camera.aspect=window.innerWidth/window.innerHeight

//更新摄像头的投影矩阵
camera.updateProjectionMatrix()

scene.add(camera)

// 初始化渲染器
const render=new THREE.WebGL1Renderer({
    // 设置抗锯齿
    antialias:true
})
// 编码
render.outputEncoding=THREE.sRGBEncoding

//设置渲染器的宽高
render.setSize(window.innerWidth,window.innerHeight)


//监听屏幕大小改变,修改渲染器的高度,相机的比例
window.addEventListener('resize',()=>{
    camera.aspect=window.innerWidth/window.innerHeight
    camera.updateProjectionMatrix()
    render.setSize(window.innerWidth,window.innerHeight)
})

// 将渲染器添加到页面
document.body.appendChild(render.domElement)


// 实例化控制器
const control=new OrbitControls(camera,render.domElement)


function renderer(){
    //渲染场景
    render.render(scene,camera)
    //引擎自动更新渲染器
    requestAnimationFrame(renderer)
}

renderer()


// 添加平面
// const planeGeometry=new THREE.PlaneGeometry(100,100)
// const planeMaterial=new THREE.MeshBasicMaterial({
//     color:0xffffff
// })
// const plane=new THREE.Mesh(planeGeometry,planeMaterial)
// scene.add(plane)

// 创建一个巨大的天空球
const skyGeometry=new THREE.SphereGeometry(1000,60,60)
const skyMaterial=new THREE.MeshBasicMaterial({
  map:new THREE.TextureLoader().load('./1.png') 
})
const sky=new THREE.Mesh(skyGeometry,skyMaterial)
scene.add(sky)

// 视频纹理
const video=document.createElement('video')
video.src='./1.mp4'
video.loop=true

window.addEventListener('mousemove',()=>{
  if(video.paused){
    video.play()
    skyMaterial.map=new THREE.VideoTexture(video)
    skyMaterial.map.needsUpdate=true
  }
})



//创建水面
const waterGeometry=new THREE.CircleBufferGeometry(300,64)
const water=new Water(waterGeometry,{
  textureWidth:1024,
  textureHeight:1024,
  color:0xeeeeff,
  flowDirection:new THREE.Vector(1,1) , //水流动方向
  scale:1,  //波纹大小
})
// 水面旋转至水平
water.rotation.x=-Math.PI/2
scene.add(water);










export default {
  name: 'App',

}
</script>

<style>

</style>
