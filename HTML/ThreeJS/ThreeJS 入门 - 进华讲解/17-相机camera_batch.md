# 相机camera_batch

- Perspective Camera  透视相机
  - 在相机中看到的为近大远小,视线为锥体形状,视线之外的物体无法被看到
  - 参数
    - 角度fov
    - 宽高比aspect
    - 看到的最近距离near,无单位,如0.1
    - 看到的最远距离far,无单位,如,100
- OrthographicCamera 正交相机
  - 在相机中看到的为两个相同平面之间的之间的空间,有最近距离和最远距离
    - 参数
      - 相机距离平面左边left
      - 相机距离平面右边right
      - 相机距离平面顶部top
      - 相机距离平面底部button
      - 看到的最近距离near,无单位,如0.1
      - 看到的最远距离far,无单位,如,100





![Snipaste_2022-05-27_17-09-14](D:\学习\wanye\HTML\ThreeJS\ThreeJS 入门 - 进华讲解\img\Snipaste_2022-05-27_17-09-14.png)

![Snipaste_2022-05-27_17-18-27](D:\学习\wanye\HTML\ThreeJS\ThreeJS 入门 - 进华讲解\img\Snipaste_2022-05-27_17-18-27.png)

![Snipaste_2022-05-27_17-21-23](D:\学习\wanye\HTML\ThreeJS\ThreeJS 入门 - 进华讲解\img\Snipaste_2022-05-27_17-21-23.png)

```js
 // 相机 -
        // 广泛使用的PerspectiveCamera 透视相机类型
        // 75  角度的范围 相机的看到宽高比 最近距离 最远距离
        // const camera = new THREE.PerspectiveCamera(75, w / h, 0.1, 100)
        // console.log(camera);  //根据对象上的属性进行调节,如 camera.fov 为角度
        // // 因为最初渲染的位置都是在0,0,0 上,相机和物体重合,相机拍摄不到物体
        // // 需要调整相机位置
        // camera.position.set(4, 5, 5) //x,y,z
        // camera.lookAt(0, 0, 0) //相机朝向哪里
        // // 由于存在场景控制 orbitcontrol.update() //实时更新鼠标操作后的变化
        // // 会导致camera.lookAt 无法使用,因为视图方向由用户自己控制场景
        // // 如果需要看到效果,需要关闭场景控制
        // // 相机的缩放,缩放也需要实时的更新 camera.updateProjectionMatrix()
        // camera.zoom=2

        // 正交相机,与透视相机的区别就是不会近大远小,
        // 在地面使用wireframe:true 可以观察
        // 平面宽度 1+1 高度 1+1
        // 参数 相机距离平面的左边/右边/顶部/底部,最近,最远距离
        const camera=new THREE.OrthographicCamera(-1,1,1,-1,0.1,100)
        camera.position.set(14, 15, 10) //x,y,z
        camera.lookAt(0, 0, 0) //相机朝向哪里
         // 相机的缩放,缩放也需要实时的更新 camera.updateProjectionMatrix()
        // camera.zoom=1

        // 添加相机辅助线
        const helper=new THREE.CameraHelper(camera)
        scene.add(helper)

        // 也可以使用多个相机,制作场景组,形成动画,像拍戏一样,有多个视角
```



`ThreeJS 入门 - 进华讲解\代码\15-相机camera_batch.html`

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

        // 材质
        // const m=new THREE.MeshPhongMaterial({
        //     color:0xff00ff
        // })
        const m=new THREE.MeshStandardMaterial({
            color:0xffff00
        })
        // plane 平面地面
        const planeM=new THREE.MeshStandardMaterial({
            color:0xcccccc,
            // wireframe:true
        })
        const planeG=new THREE.PlaneGeometry(4,4,10,10)
        const plane=new THREE.Mesh(planeG,planeM)
        plane.rotation.x=-0.5*Math.PI
        // 开启接收阴影 接收物体产生的阴影
        plane.receiveShadow=true

        const plane2=new THREE.Mesh(
            new THREE.PlaneGeometry(2,4),
            new THREE.MeshBasicMaterial({
            })
        )
        // 两个地板重合会产生打架现象z-flighting,颜色混乱
        // 解决,错开位置,提高层次,如,y提升0.0001,,不能太小0.00001 无法使用,还是会重合
        plane2.position.y=0.0001



        plane2.rotation.x=-0.5*Math.PI
        scene.add(plane2)

        // 球
        const sphereG=new THREE.SphereGeometry(0.5)
        const sphere=new THREE.Mesh(sphereG,m)
        sphere.position.y=0.5
        // 开启产生阴影
        sphere.castShadow=true

       
        
        
        scene.add(plane,sphere)



        // 光线 -台灯,吊灯,太阳光...
        // AmbientLight 创建环境光,用来提亮
        // const light = new THREE.AmbientLight()
        // 颜色,强度
        const alight = new THREE.AmbientLight(0xffffff,0.2)
        alight.intensity=0.2    //  也可以这样添加光线强度
        scene.add(alight)


        // 创建太阳光
        const dlight = new THREE.DirectionalLight(0xffffff)
        dlight.intensity=1  //光线强度,默认为1
        // dlight.intensity=200  //光线强度
        // 定义方向光的方向
        dlight.position.set(3,3,3)
        // 光线开启产生阴影
        dlight.castShadow=true
        // 设置阴影的大小(清晰度),在光线这里设置,默认是5~25M
        // 即设置阴影中每个像素的大小,越大越清晰
        dlight.shadow.mapSize.width=1024*2
        dlight.shadow.mapSize.height=1024*2
        // 阴影的计算量比较大,一般使用贴图来模拟

        scene.add(dlight)

        // 添加太阳光辅助光线 参数 光线
        const dLightHelper=new THREE.DirectionalLightHelper(dlight)
        // 添加到场景中
        // scene.add(dLightHelper)

      


       





        const colors={
            dlight:0xffffff,
            slight:0xffffff,
            plight:0xffffff,
        }
         // 如果非常多的时候,直接过多使用gui.add() 渲染出来的时候会照成排版过长问题
        // 使用文件夹的形式,界面形成折叠板
        const folder1 = gui.addFolder('太阳光控制器') //折叠版名称
        folder1.add(dlight.position, 'x', -5, 5).name('太阳光的x 位置')
        folder1.add(dlight.position, 'y', -5, 5).name('太阳光的y 位置')
        folder1.add(dlight.position, 'z', -5, 5).name('太阳光的z 位置')
        folder1.add(dlight, 'intensity', -5, 5).name('太阳光的强度')
       
        // addColor 出现颜色选择器
        folder1.addColor(colors,'dlight').onChange(()=>{
            dlight.color.set(colors.dlight)
        }).name('太阳光的颜色')



        
        // 相机 -
        // 广泛使用的PerspectiveCamera 透视相机类型
        // 75  角度的范围 相机的看到宽高比 最近距离 最远距离
        // const camera = new THREE.PerspectiveCamera(75, w / h, 0.1, 100)
        // console.log(camera);  //根据对象上的属性进行调节,如 camera.fov 为角度
        // // 因为最初渲染的位置都是在0,0,0 上,相机和物体重合,相机拍摄不到物体
        // // 需要调整相机位置
        // camera.position.set(4, 5, 5) //x,y,z
        // camera.lookAt(0, 0, 0) //相机朝向哪里
        // // 由于存在场景控制 orbitcontrol.update() //实时更新鼠标操作后的变化
        // // 会导致camera.lookAt 无法使用,因为视图方向由用户自己控制场景
        // // 如果需要看到效果,需要关闭场景控制
        // // 相机的缩放,缩放也需要实时的更新 camera.updateProjectionMatrix()
        // camera.zoom=2

        // 正交相机,与透视相机的区别就是不会近大远小,
        // 在地面使用wireframe:true 可以观察
        // 平面宽度 1+1 高度 1+1
        // 参数 相机距离平面的左边/右边/顶部/底部,最近,最远距离
        const camera=new THREE.OrthographicCamera(-1,1,1,-1,0.1,100)
        camera.position.set(14, 15, 10) //x,y,z
        camera.lookAt(0, 0, 0) //相机朝向哪里
         // 相机的缩放,缩放也需要实时的更新 camera.updateProjectionMatrix()
        // camera.zoom=1

        // 添加相机辅助线
        const helper=new THREE.CameraHelper(camera)
        scene.add(helper)

        // 也可以使用多个相机,制作场景组,形成动画,像拍戏一样,有多个视角


        const folder2 = gui.addFolder('相机控控制器') //折叠版名称
        // 这些不会被修改
        // folder2.add(camera, 'fov',-75,75).name('相机的角度范围大小')
        // folder2.add(camera, 'near', -100,100).name('相机看到的最近距离')
        // // 过大导致渲染更多的空间,浪费资源
        // folder2.add(camera, 'far', -100,300).name('相机看到的最远距离')
        // // 视图会变窄或变宽
        // folder2.add(camera, 'aspect', 0,10).name('相机视图的宽高比例')

        const folder3 = gui.addFolder('相机方向') //折叠版名称
        folder3.add(camera.position, 'x',-5,5).name('x 轴')
        folder3.add(camera.position, 'y',-5,5).name('y 轴')
        folder3.add(camera.position, 'z',-5,5).name('z 轴')
        folder3.add(camera, 'zoom',-5,5).name('缩放')




        // 渲染器- Renderer 计算机进行渲染数据
        // css 渲染器,canvas 渲染器,webGL 渲染器(我们用的)
        const renderer = new THREE.WebGLRenderer()
        // 设置渲染器的渲染的大小
        renderer.setSize(w, h)
        // 是否开启渲染阴影, 还需要一个物体开启接收阴影,一个物体开启产生阴影,光线开启产生阴影,共4步
        // 需要在 renderer.render 渲染之前开启,渲染之后开启无效
        renderer.shadowMap.enabled=true
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

            sphere.position.y=Math.abs(Math.sin(time))+0.5

            // 渲染场景和相机,每次改变都需要重新渲染视图
            renderer.render(scene, camera)
            stat.update() //实时更新帧率  fps 为分辨率 hz
            // updateProjectionMatrix 与  orbitcontrol.update()  谁在前,谁控制场景
            camera.updateProjectionMatrix()   //实时渲染相机的变化,相机创建出来默认是不会被修改的,需要自己添加更新
            orbitcontrol.update() //实时更新鼠标操作后的变化
            // spotLightHelper.update()  //实时更新辅助线上的最远距离小圆环
            requestAnimationFrame(run)
        }
        run()
    </script>

</body>

</html>
```

