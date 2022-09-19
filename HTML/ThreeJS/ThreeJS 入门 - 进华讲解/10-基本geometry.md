# 基本geometry

`ThreeJS 入门 - 进华讲解\代码\9-基本meometry.html`

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
        import {OrbitControls}} from 'three/examples/jsm/controls/OrbitControls'
    -->

    </script>
    <script>
        // console.log(THREE);
        const w = window.innerWidth
        const h = window.innerHeight
        const stat = new Stats() //查看包 stats.min.js 中的变量可知为Stats

        // 将threejs 和照片中的房间相比较
        // 房间 -3d 容器
        //Scene( 场景)
        const scene = new THREE.Scene()


        // 坐标系   三边的长度
        const axes = new THREE.AxesHelper(2, 2, 2)
        // 添加到场景中,也可以将坐标系添加到物体中
        // scene.add(axes)



        // 材质
        // const material = new THREE.MeshNormalMaterial()
        const material = new THREE.MeshNormalMaterial({
            wireframe:true,     //空心线条状.默认false
        })

        //立方体.默认长宽高都为1, 后三位为长宽高的分段数,分段数越高,菱角越模糊
        // 分段数需要在 wireframe 下才能看到
        // const geometry=new THREE.BoxGeometry()
        // const geometry=new THREE.BoxGeometry(1, 1, 1)
        // const geometry = new THREE.BoxGeometry(1, 1, 1, 10, 10, 10)
         //圆形
        // const geometry = new THREE.SphereGeometry(1)
       
        // 平面 长宽,后两位是长宽的分段数
        const geometry = new THREE.PlaneGeometry(4,4,10,10)
         // 更多geometry 查看官网
        // https://threejs.org/docs/index.html?q=geo#api/zh/geometries/BoxGeometry
        

        const bodyCube1 = new THREE.Mesh(
            new THREE.BoxGeometry(1,1,1),
            material
        )
        const bodyCube2 = new THREE.Mesh(
            // 半径 经纬度的分段数
            new THREE.SphereGeometry(1,10,10),
            material
        )
        scene.add(bodyCube2)

        const bodyCube3 = new THREE.Mesh(
            geometry,
            material
        )
        bodyCube3.rotation.x=-0.5*Math.PI
        bodyCube3.rotation.z=-0.5*Math.PI
        bodyCube3.position.y = 2
        scene.add(bodyCube3)





        // 光线 -台灯,吊灯,太阳光...
        // AmbientLight 创建环境光
        const light = new THREE.AmbientLight()
        scene.add(light)

        // 相机 -
        // 广泛使用的PerspectiveCamera 相机类型
        // 75  角度的范围 相机的看到宽高比 最近距离 最远距离
        const camera = new THREE.PerspectiveCamera(75, w / h, 0.1, 100)
        // 因为最初渲染的位置都是在0,0,0 上,相机和物体重合,相机拍摄不到物体
        // 需要调整相机位置
        camera.position.set(0, 0, 5) //x,y,z
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


            // 渲染场景和相机,每次改变都需要重新渲染视图
            renderer.render(scene, camera)
            stat.update() //实时更新帧率  fps 为分辨率 hz
            orbitcontrol.update() //实时更新鼠标操作后的变化
            requestAnimationFrame(run)
        }
        run()
    </script>

</body>

</html>
```

