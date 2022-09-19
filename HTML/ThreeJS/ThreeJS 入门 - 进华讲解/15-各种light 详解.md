# 各种light 详解

```js
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
        dlight.position.set(1,1,1)

        // 添加太阳光辅助光线 参数 光线
        const dLightHelper=new THREE.DirectionalLightHelper(dlight)
        // 添加到场景中
        // scene.add(dLightHelper)

        // 台灯光
        const spotLight=new THREE.SpotLight(0xffffff)
        spotLight.position.set(1,1,1)
        //  调解台灯光照射的范围大小
        spotLight.angle=30/180*Math.PI
        //  调解台灯光照射的最远距离,在辅助线上出现小圆环,顶点到圆环之间的才会被照射
        spotLight.distance=3
         // 添加台灯辅助光线 参数 光线
         const spotLightHelper=new THREE.SpotLightHelper(spotLight)
        // 添加到场景中
        // scene.add(spotLightHelper)


        // 点光线
        const pointLight=new THREE.PointLight(0xffffff)
        pointLight.position.y=2
        pointLight.intensity=1      //光线强度
        pointLight.distance=2       //照射最远距离
        // scene.add(pointLight)       //

         // 添加台灯辅助光线 参数 光线
         const pointLightHelper=new THREE.PointLightHelper(pointLight)
        //  console.log(pointLightHelper);
        // 添加到场景中
        // scene.add(pointLightHelper)



        // 矩形区域灯光 -只争对MeshStandardMaterial 和MeshPhysicalMaterial 材质有效
        // 参数 颜色 强度 长宽
        // 矩形的辅助光线需要自己导入包 RectAreaLightHelper,不在维护,无效
        // 矩形区域灯光 只有一面可以照射光线
        // 初始位置,  0,0,0 的竖直矩形
        const rectAreaLight=new THREE.RectAreaLight(0xffffff,1,12,12)
        rectAreaLight.position.set(0,1,1)
        rectAreaLight.rotation.x=0.5*Math.PI    //向下照射
        // scene.add(rectAreaLight)
        // 实例化辅助光线
        const helper=new THREE.RectAreaLightHelper(rectAreaLight)
        // console.log(helper);
        scene.add(helper)


        // HemisphereLight  半球光, 需要传入天空颜色和地面颜色
        // const hLight=new THREE.HemisphereLight(0xff0000,0x0000ff)
        const hLight=new THREE.HemisphereLight('red','white')
        console.log(hLight);    //color 属性为地面颜色 red  groundColor 天空颜色 white
        scene.add(hLight)


        // scene.add(alight,dlight,spotLight)

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
        
        const folder2 = gui.addFolder('台灯光控制器') //折叠版名称
        folder2.add(spotLight.position, 'x', -5, 5).name('台灯光的x 位置')
        folder2.add(spotLight.position, 'y', -5, 5).name('台灯光的y 位置')
        folder2.add(spotLight.position, 'z', -5, 5).name('台灯光的z 位置')
        folder2.add(spotLight, 'intensity', -5, 5).name('台灯光的强度')
        folder2.add(spotLight, 'angle',0,180/180*Math.PI).name('台灯光的照射范围')
        // 灯光照射的最远距离 ,需要实时渲染辅助线上的小圆环 spotLightHelper.update()
        folder2.add(spotLight, 'distance',0,6).name('灯光照射的最远距离')
        folder2.addColor(colors,'slight').onChange(()=>{
            spotLight.color.set(colors.slight)
        }).name('台灯光的颜色')


        const folder3 = gui.addFolder('点灯光控制器') //折叠版名称
        folder3.add(pointLight.position, 'x', -5, 5).name('点灯光的x 位置')
        folder3.add(pointLight.position, 'y', -5, 5).name('点灯光的y 位置')
        folder3.add(pointLight.position, 'z', -5, 5).name('点灯光的z 位置')
        folder3.add(pointLight, 'intensity', -5, 5).name('点灯光的强度')
        // 灯光照射的最远距离 ,需要实时渲染辅助线上的小圆环 pointLightHelper.update()
        folder3.add(pointLight, 'distance',0,6).name('灯光照射的最远距离')
        folder3.addColor(colors,'plight').onChange(()=>{
            pointLight.color.set(colors.plight)
        }).name('点灯光的颜色')


        const folder4 = gui.addFolder('矩形灯光控制器') //折叠版名称
        folder4.add(rectAreaLight.position, 'x', -5, 5).name('矩形灯光的x 位置')
        folder4.add(rectAreaLight.position, 'y', -5, 5).name('矩形灯光的y 位置')
        folder4.add(rectAreaLight.position, 'z', -5, 5).name('矩形灯光的z 位置')
        folder4.add(rectAreaLight, 'intensity', -5, 5).name('矩形灯光的强度')
        folder4.addColor(colors,'plight').onChange(()=>{
            rectAreaLight.color.set(colors.plight)
        }).name('矩形灯光的颜色')
```





`ThreeJS 入门 - 进华讲解\代码\13-灯光介绍.html`

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
            color:0xff00ff
        })
        // plane 平面地面
        const planeM=new THREE.MeshPhongMaterial({
            color:0xcccccc
        })
        const planeG=new THREE.PlaneGeometry(4,4)
        const plane=new THREE.Mesh(planeG,planeM)
        plane.rotation.x=-0.5*Math.PI
        
        // 球
        const sphereG=new THREE.SphereGeometry(0.25)
        const sphere=new THREE.Mesh(sphereG,m)
        sphere.position.y=0.125

        // 立方体
        const cubeG=new THREE.CubeGeometry(0.5,0.5,0.5)
        const cube=new THREE.Mesh(cubeG,m)
        cube.position.set(1,0.8,0)
        

        //圆环
        const torusG=new THREE.TorusGeometry(0.3,0.1,10,20)
        const torus=new THREE.Mesh(torusG,m)
        torus.position.set(-1,0.8,0)
        torus.rotation.x=-0.5*Math.PI

        
        
        scene.add(plane,sphere,cube,torus)



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
        dlight.position.set(1,1,1)

        // 添加太阳光辅助光线 参数 光线
        const dLightHelper=new THREE.DirectionalLightHelper(dlight)
        // 添加到场景中
        // scene.add(dLightHelper)

        // 台灯光
        const spotLight=new THREE.SpotLight(0xffffff)
        spotLight.position.set(1,1,1)
        //  调解台灯光照射的范围大小
        spotLight.angle=30/180*Math.PI
        //  调解台灯光照射的最远距离,在辅助线上出现小圆环,顶点到圆环之间的才会被照射
        spotLight.distance=3
         // 添加台灯辅助光线 参数 光线
         const spotLightHelper=new THREE.SpotLightHelper(spotLight)
        // 添加到场景中
        // scene.add(spotLightHelper)


        // 点光线
        const pointLight=new THREE.PointLight(0xffffff)
        pointLight.position.y=2
        pointLight.intensity=1      //光线强度
        pointLight.distance=2       //照射最远距离
        // scene.add(pointLight)       //

         // 添加台灯辅助光线 参数 光线
         const pointLightHelper=new THREE.PointLightHelper(pointLight)
        //  console.log(pointLightHelper);
        // 添加到场景中
        // scene.add(pointLightHelper)



        // 矩形区域灯光 -只争对MeshStandardMaterial 和MeshPhysicalMaterial 材质有效
        // 参数 颜色 强度 长宽
        // 矩形的辅助光线需要自己导入包 RectAreaLightHelper,不在维护,无效
        // 矩形区域灯光 只有一面可以照射光线
        // 初始位置,  0,0,0 的竖直矩形
        const rectAreaLight=new THREE.RectAreaLight(0xffffff,1,12,12)
        rectAreaLight.position.set(0,1,1)
        rectAreaLight.rotation.x=0.5*Math.PI    //向下照射
        // scene.add(rectAreaLight)
        // 实例化辅助光线
        const helper=new THREE.RectAreaLightHelper(rectAreaLight)
        // console.log(helper);
        scene.add(helper)


        // HemisphereLight  半球光, 需要传入天空颜色和地面颜色
        // const hLight=new THREE.HemisphereLight(0xff0000,0x0000ff)
        const hLight=new THREE.HemisphereLight('red','white')
        console.log(hLight);    //color 属性为地面颜色 red  groundColor 天空颜色 white
        scene.add(hLight)


        // scene.add(alight,dlight,spotLight)

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
        
        const folder2 = gui.addFolder('台灯光控制器') //折叠版名称
        folder2.add(spotLight.position, 'x', -5, 5).name('台灯光的x 位置')
        folder2.add(spotLight.position, 'y', -5, 5).name('台灯光的y 位置')
        folder2.add(spotLight.position, 'z', -5, 5).name('台灯光的z 位置')
        folder2.add(spotLight, 'intensity', -5, 5).name('台灯光的强度')
        folder2.add(spotLight, 'angle',0,180/180*Math.PI).name('台灯光的照射范围')
        // 灯光照射的最远距离 ,需要实时渲染辅助线上的小圆环 spotLightHelper.update()
        folder2.add(spotLight, 'distance',0,6).name('灯光照射的最远距离')
        folder2.addColor(colors,'slight').onChange(()=>{
            spotLight.color.set(colors.slight)
        }).name('台灯光的颜色')


        const folder3 = gui.addFolder('点灯光控制器') //折叠版名称
        folder3.add(pointLight.position, 'x', -5, 5).name('点灯光的x 位置')
        folder3.add(pointLight.position, 'y', -5, 5).name('点灯光的y 位置')
        folder3.add(pointLight.position, 'z', -5, 5).name('点灯光的z 位置')
        folder3.add(pointLight, 'intensity', -5, 5).name('点灯光的强度')
        // 灯光照射的最远距离 ,需要实时渲染辅助线上的小圆环 pointLightHelper.update()
        folder3.add(pointLight, 'distance',0,6).name('灯光照射的最远距离')
        folder3.addColor(colors,'plight').onChange(()=>{
            pointLight.color.set(colors.plight)
        }).name('点灯光的颜色')


        const folder4 = gui.addFolder('矩形灯光控制器') //折叠版名称
        folder4.add(rectAreaLight.position, 'x', -5, 5).name('矩形灯光的x 位置')
        folder4.add(rectAreaLight.position, 'y', -5, 5).name('矩形灯光的y 位置')
        folder4.add(rectAreaLight.position, 'z', -5, 5).name('矩形灯光的z 位置')
        folder4.add(rectAreaLight, 'intensity', -5, 5).name('矩形灯光的强度')
        folder4.addColor(colors,'plight').onChange(()=>{
            rectAreaLight.color.set(colors.plight)
        }).name('矩形灯光的颜色')




        
        // 相机 -
        // 广泛使用的PerspectiveCamera 相机类型
        // 75  角度的范围 相机的看到宽高比 最近距离 最远距离
        const camera = new THREE.PerspectiveCamera(75, w / h, 0.1, 100)
        // 因为最初渲染的位置都是在0,0,0 上,相机和物体重合,相机拍摄不到物体
        // 需要调整相机位置
        camera.position.set(4, 5, 5) //x,y,z
        camera.lookAt(0, 0, 0) //相机朝向哪里



       




        // 渲染器- Renderer 计算机进行渲染数据
        // css 渲染器,canvas 渲染器,webGL 渲染器(我们用的)
        const renderer = new THREE.WebGLRenderer()
        // 设置渲染器的渲染的大小
        renderer.setSize(w, h)
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

            torus.rotation.x=time*0.4
            torus.rotation.y=time*0.4
            cube.rotation.x=time*0.4
            cube.rotation.y=time*0.4

            // 渲染场景和相机,每次改变都需要重新渲染视图
            renderer.render(scene, camera)
            stat.update() //实时更新帧率  fps 为分辨率 hz
            orbitcontrol.update() //实时更新鼠标操作后的变化
            spotLightHelper.update()  //实时更新辅助线上的最远距离小圆环
            requestAnimationFrame(run)
        }
        run()
    </script>

</body>

</html>
```

