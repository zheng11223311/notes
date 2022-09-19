# 贴图filter 和repeat

texture

- magFilter
  - 放大方式
    - nearest   采用最近的像素点放大
    - linear   采用旁边多个像素点,经过计算综合,生成平均像素点,默认为linear
- minFilter
  - 缩小方式
    - nearest	舍弃最近的一个像素点
    - linear   将多个像素点合并成一个像素点
    - mipMap 
      - 会生成贴图图片的所有大小尺寸,匹配最适合物体大小的尺寸贴图
      - mipMap 和nearest 和linear 搭配使用,故有4 种方式,如下
      - NearestMipMapNearestFilter
      - NearestMipMapLinearFilter
      - LinearMipMapNearestFilter
      - LinearMipMapLinearFilter



```js
 const texture5=loader.load('../img/1.jpeg')

        // 设置边缘,NearestFilter 采用最近的像素填充边缘,这样图像就看其来不会那么模糊
        // 默认是LinearFilter ,会综合旁边的像素进行计算出平均的像素,边缘平均像素,看起来模糊一点
        texture5.magFilter=THREE.NearestFilter
        // 设置x 轴(s 为x 轴) ,使用最简单的重复
        texture5.wrapS=THREE.RepeatWrapping
        // 设置y 轴(t 为y 轴) ,使用最简单的重复
        texture5.wrapT=THREE.RepeatWrapping
        //  设置重复值 ,一行有10个 一列 也有10个 即重复10x10 个
        // texture5.repeat.set(10,10)
        texture5.repeat.set(3,3)
```



`ThreeJS 入门 - 进华讲解\代码\19-贴图filter 和repeat.html`

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            overflow: hidden;
        }
    </style>
</head>

<body>
    <!-- js文件引入 -->
    <script src="../../js/three.js-master/build/three.min.js"></script>

    <!--cdn 引入文件  -->
    <!-- https://cdnjs.com/ 搜索 threejs -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js" referrerpolicy="no-referrer"> -->
    <!-- 引入帧率检测文件 -->
    <!-- <script src="../../js/node_modules/three/examples/js/libs/stats.min.js"></script> -->
    <!--
         node 中使用 导入
        import Stat from 'three/examples/jsm/libs/stats.module'
    -->
    <script src="../../js/three.js-master/examples/js/libs/stats.min.js"></script>

    <!-- 引入鼠标交互文件 orbitcontrol-->
    <!-- 鼠标操作三维场景 -->
    <script src="../../js/three.js-master/examples/js/controls/OrbitControls.js"></script>
    <!--
         node 中使用 导入
        import {OrbitControls} from 'three/examples/jsm/controls/OrbitControls'
    -->

    <!-- 引入dat.gui  -->
    <script src="../../js/dat.gui.min.js"></script>
    <!-- 
         node 中使用 npm install dat.gui
          导入
        import *as dat from 'dat.gui'
     -->

    <!-- 引入 RectAreaLightHelper 矩形辅助光线 -->
    <script src="../../js/node_modules/three/examples/js/helpers/RectAreaLightHelper.js"></script>
    <!-- 模块包 -->
    <!-- <script src="../../js/node_modules/three/examples/jsm/helpers/RectAreaLightHelper.js"></script> -->
    <!-- 
         node 中使用导入
        import {RectAreaLightHelper} dat from 'three/examples/jsm/helpers/RectAreaLightHelper.js'
      -->

    </script>
    <script>
        // console.log(THREE);
        const w = window.innerWidth
        const h = window.innerHeight
        const stat = new Stats() //查看包 stats.min.js 中的变量可知为Stats
        const gui = new dat.GUI()



    
        // 将threejs 和照片中的房间相比较
        // 房间 -3d 容器
        //Scene( 场景)
        const scene = new THREE.Scene()


        // 坐标系   三边的长度
        const axes = new THREE.AxesHelper(2, 2, 2)
        // 添加到场景中,也可以将坐标系添加到物体中
        scene.add(axes)
        
        // 贴图 texture
        const loader=new THREE.TextureLoader()  //加载器
        // loader.load(url)加载图片的地址
        const texture=loader.load('https://threejs.org/manual/examples/resources/images/wall.jpg')
        const texture2=loader.load('https://www4.bing.com//th?id=OHR.MarinHeadlands_ZH-CN9876016714_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp&w=256&h=128')
        const texture3=loader.load('https://ts1.cn.mm.bing.net/th?id=OIP-C.KKrO2jaXCIxDru82QRkonAHaHa&w=174&h=170&c=8&rs=1&qlt=90&o=6&dpr=1.25&pid=3.1&rm=2')
        const texture4=loader.load('https://tse3-mm.cn.bing.net/th/id/OIP-C.ddb3YdLw0-9mVp6M2oz10QHaE8?w=296&h=197&c=7&r=0&o=5&dpr=1.25&pid=1.7')
        // const texture5=loader.load('https://tse3-mm.cn.bing.net/th/id/OIP-C.ddb3YdLw0-9mVp6M2oz10QHaE8?w=296&h=197&c=7&r=0&o=5&dpr=1.25&pid=1.7')
        const texture5=loader.load('../img/1.jpeg')

        // 设置边缘,NearestFilter 采用最近的像素填充边缘,这样图像就看其来不会那么模糊
        // 默认是LinearFilter ,会综合旁边的像素进行计算出平均的像素,边缘平均像素,看起来模糊一点
        texture5.magFilter=THREE.NearestFilter
        // 设置x 轴(s 为x 轴) ,使用最简单的重复
        texture5.wrapS=THREE.RepeatWrapping
        // 设置y 轴(t 为y 轴) ,使用最简单的重复
        texture5.wrapT=THREE.RepeatWrapping
        //  设置重复值 ,一行有10个 一列 也有10个 即重复10x10 个
        // texture5.repeat.set(10,10)
        texture5.repeat.set(3,3)
        // node 本地图片需要使用import   import jpg from './1.jpg'   const texture4=loader.load(jpg)
        // 贴图上也可以接收阴影
       

        const roadPlaneG=new THREE.PlaneGeometry(8,4)
        const roadPlaneM = new THREE.MeshStandardMaterial({
            // color: 0x4c4a4b,    //同时使用会和贴纸混合,两者一起显示
            map:texture2,        //使用贴图
            side:THREE.DoubleSide,  //同时背面也显示
        })
        const roadPlane=new THREE.Mesh(roadPlaneG,roadPlaneM)
        roadPlane.rotation.x=-0.5*Math.PI
        // 接收阴影
        roadPlane.receiveShadow=true
        scene.add(roadPlane)

        // cube
        const cubeG=new THREE.BoxGeometry(1,1,1)
        // 网上搜索 texture 就会有各种贴图
        // const cubeM=new THREE.MeshBasicMaterial({
        const cubeM=new THREE.MeshStandardMaterial({
            color:0xffffff,
            map:texture5,        //六个面都有贴图
        })
        const cube=new THREE.Mesh(cubeG,cubeM)
        // 产生阴影
        cube.castShadow=true
        cube.position.y=0.5
        scene.add(cube)
        // cube.onclick=function(){
        //     alert(11)    //没有用
        // }



        // 一个立方体上有6个贴图
        const cubeM1=new THREE.MeshStandardMaterial({
            map:loader.load('https://tse1-mm.cn.bing.net/th/id/OIP-C.fhbUnfNip6dTEVdG1pbBigHaFj?w=252&h=187&c=7&r=0&o=5&dpr=1.25&pid=1.7'),       
        })
        const cubeM2=new THREE.MeshStandardMaterial({
            map:loader.load('https://tse1-mm.cn.bing.net/th/id/OIP-C.UST8QmklMBTBhaRPruUvygHaEo?w=295&h=184&c=7&r=0&o=5&dpr=1.25&pid=1.7'),       
        })
        const cubeM3=new THREE.MeshStandardMaterial({
            map:loader.load('https://tse1-mm.cn.bing.net/th/id/OIP-C.cUwPGQ1dx91Ja4LDFT90IwHaHa?w=182&h=182&c=7&r=0&o=5&dpr=1.25&pid=1.7'),          
        })
        const cubeM4=new THREE.MeshStandardMaterial({
            map:loader.load('https://tse2-mm.cn.bing.net/th/id/OIP-C.J2nNrSd9LlHu1LO9vJQ-hQHaHa?w=171&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7'),              
        })
        const cubeM5=new THREE.MeshStandardMaterial({
            map:loader.load('https://tse3-mm.cn.bing.net/th/id/OIP-C.Hh_aIfuX-85d8dedMUfZBwHaHa?w=189&h=189&c=7&r=0&o=5&dpr=1.25&pid=1.7'),             
        })
        const cubeM6=new THREE.MeshStandardMaterial({
            map:loader.load('https://tse3-mm.cn.bing.net/th/id/OIP-C.lCFQW518cHpvOl4XYp4gmQHaEo?w=257&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7'),             
        })
        // 传入6个材质
        const cube1=new THREE.Mesh(cubeG,[cubeM1,cubeM2,cubeM3,cubeM4,cubeM5,cubeM6])
        scene.add(cube1)
        cube1.position.y=3



        // 光线 -台灯,吊灯,太阳光...
        // AmbientLight 创建环境光,用来提亮
        // const light = new THREE.AmbientLight()
        // 颜色,强度
        const alight = new THREE.AmbientLight(0xffffff, 1)
        // alight.intensity = 0.2 //  也可以这样添加光线强度
        scene.add(alight)


        // 创建太阳光
        const dlight = new THREE.DirectionalLight(0xffffff)
        dlight.intensity = 1 //光线强度,默认为1
        // 产生阴影
        dlight.castShadow=true
        // dlight.intensity=200  //光线强度
        // 定义方向光的方向
        dlight.position.set(0, 1, 2)

        scene.add(dlight)






        // 相机 -
        // 广泛使用的PerspectiveCamera 透视相机类型
        // 75  角度的范围 相机的看到宽高比 最近距离 最远距离
        const camera = new THREE.PerspectiveCamera(75, w / h, 0.1, 100)
        // console.log(camera);  //根据对象上的属性进行调节,如 camera.fov 为角度
        // // 因为最初渲染的位置都是在0,0,0 上,相机和物体重合,相机拍摄不到物体
        // // 需要调整相机位置
        camera.position.set(0, 0.5, 3) //x,y,z
        camera.lookAt(0, 0, 0) //相机朝向哪里
        // // 由于存在场景控制 orbitcontrol.update() //实时更新鼠标操作后的变化
        // // 会导致camera.lookAt 无法使用,因为视图方向由用户自己控制场景
        // // 如果需要看到效果,需要关闭场景控制
        // // 相机的缩放,缩放也需要实时的更新 camera.updateProjectionMatrix()
        // camera.zoom=2




        // 渲染器- Renderer 计算机进行渲染数据
        // css 渲染器,canvas 渲染器,webGL 渲染器(我们用的)
        const renderer = new THREE.WebGLRenderer()
        // 设置渲染器的渲染的大小
        renderer.setSize(w, h)
        // 设置渲染的背景颜色,即没有物体的位置颜色
        renderer.setClearColor('skyblue')
        // 是否开启渲染阴影, 还需要一个物体开启接收阴影,一个物体开启产生阴影,光线开启产生阴影,共4步
        // 需要在 renderer.render 渲染之前开启,渲染之后开启无效
        renderer.shadowMap.enabled = true
        // 大致4 个步骤
        // 1.renderer 开启阴影
        // 2.设置何种光线开启阴影
        // 3.设置何种物体产生阴影
        // 4.设置何种物体接收阴影
        // 计算机计算式从灯光的位置看向物体,物体挡住的部分,就会在被渲染成阴影

        // 渲染场景和相机
        renderer.render(scene, camera)





        // 渲染器最终渲染出来的是一个canvas
        // 我们需要将渲染器添加到页面中
        document.body.append(renderer.domElement)
        // 将帧率检测添加到页面中
        document.body.append(stat.domElement)
        console.log(renderer
            .domElement); //canvas 画布 <canvas width="762" height="511" style="width: 762px; height: 511px;"></canvas>




        // 实例化鼠标交互
        // 如果不是在npm 中导入,而是使用直接使用本地文件的,应先查看本地文件
        // 内此文件的中的变量名是否为 THREE.OrbitControls,根据文件中的变量名来实例化
        // 参数 相机,renderer的canvas 元素
        // 实现放大,移动
        const orbitcontrol = new THREE.OrbitControls(camera, renderer.domElement)




        // threejs 本身提供了一个好用的对象处理此问题
        let clock = new THREE.Clock()
        // console.log(clock);
        // console.log(clock.getElapsedTime());


        function run() {
            let time = clock.getElapsedTime() //从 0 开始一直在增加的值
            // console.log(time); 


            // 渲染场景和相机,每次改变都需要重新渲染视图
            renderer.render(scene, camera)
            stat.update() //实时更新帧率  fps 为分辨率 hz
            // updateProjectionMatrix 与  orbitcontrol.update()  谁在前,谁控制场景
            camera.updateProjectionMatrix() //实时渲染相机的变化,相机创建出来默认是不会被修改的,需要自己添加更新
            orbitcontrol.update() //实时更新鼠标操作后的变化
            // spotLightHelper.update()  //实时更新辅助线上的最远距离小圆环
            requestAnimationFrame(run)
        }
        run()

        // 监听屏幕的缩放事件resize
        window.onresize = function () {
            const w = window.innerWidth
            const h = window.innerHeight

            // 视图的改变需要修改的选项
            // 设置相机的宽高比例
            camera.aspect = w / h
            camera.updateProjectionMatrix() //更新相机

            // 设置渲染器大小
            renderer.setSize(w, h)
        }

        // 监听鼠标移动事件
        // window.addEventListener('mousemove',(e)=>{

        //     // console.log((e.clientX/w - 0.5)*2);   //-1到1
        //     // 小范围观察物体
        //     let mousePosX=(e.clientX/w - 0.5)*2
        //     let mousePosY=(e.clientY/h )*2
        //     camera.position.x=-mousePosX
        //     camera.position.y=mousePosY
        // })
    </script>

</body>

</html>
```

