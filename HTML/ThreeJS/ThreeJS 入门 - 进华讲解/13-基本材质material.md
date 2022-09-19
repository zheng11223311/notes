# 基本材质material

```js
 // let g=new THREE.BoxGeometry(2,2,2)
        let g = new THREE.SphereGeometry(0.5, 10, 10)
        // 材质
        // 基本材质,不需要灯光也能看到,可以修改颜色
        // let m=new THREE.MeshBasicMaterial()
        // let m=new THREE.MeshBasicMaterial({
        //     color:'red',    //颜色
        //     wireframe:true, //是否显示线框
        //     visible:true,   //是否显示此几何体
        // })
        // circleM.wireframe=true  //也可以为空心
        // circleM.visible=true  


        // 不需要灯光也能显示,根据各个面的法线,显示不同的的颜色
        // let m=new THREE.MeshNormalMaterial()
        // let m=new THREE.MeshNormalMaterial({
        //     wireframe:true, //是否显示线框
        //     // flatShading:true,   //是否菱角分明
        // })
        // m.flatShading=true 

        // 此材质需要灯光,没有灯光时颜色为黑色,
        // 环境光 下为正常颜色
        // 太阳光下为 渐变色,针棉最亮,背面最暗,不同的太阳光显示不同的颜色
        // 没有高光
        let m = new THREE.MeshLambertMaterial({
            color: 'gold'
        })
        let ms = new THREE.Mesh(g, m)
        ms.position.y = 2
        scene.add(ms)


         // 此材质需要灯光,没有灯光时颜色为黑色,
        // 在MeshLambertMaterial 基础上添加高光,有反光现象
        let m1 = new THREE.MeshPhongMaterial({
            color: 'gold',
            shininess: 30 //高光闪亮程度,反光程度
        })
        let ms1 = new THREE.Mesh(g, m1)
        scene.add(ms1)

         // 此材质需要灯光,没有灯光时颜色为黑色,
        // 标准材质,与 MeshPhongMaterial 一样,但是自定义程度更高
        // 自定义粗糙程度 roughness, 金属性质 metalness,更亮
        let m2 = new THREE.MeshStandardMaterial({
            color: 'gold',
            // roughness:0,  //roughness 粗糙  粗糙程度,反光效果,值越大越不反光(即粗糙)
            metalness:1.1,  //metalness 金属性,值越大越球变黑,金属性越弱,范围 负值到1
        })
        let ms2 = new THREE.Mesh(g, m2)
        ms2.position.z = 2
        scene.add(ms2)
        gui.add(m2, 'roughness', -5, 5).name('粗糙程度')
        gui.add(m2, 'metalness', -5, 5).name('金属程度')
```



`ThreeJS 入门 - 进华讲解\代码\12-基本材质material.html`

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



        // 球
        const circle = new THREE.SphereGeometry(0.5)
        const circleM = new THREE.MeshBasicMaterial({
            // wireframe:true,
            // color:'gold'
        })
        // console.log(circleM);
        circleM.wireframe = true //也可以为空心
        // circleM.color.set(0xffffff)     //MeshBasicMaterial 才有,Normal 没有color 属性
        // circleM.color=new THREE.Color(0xfffffff) // 使用three 的Color将16 进制数字转换为color  字符串
        const circleMesh = new THREE.Mesh(circle, circleM)
        scene.add(circleMesh)




        // let g=new THREE.BoxGeometry(2,2,2)
        let g = new THREE.SphereGeometry(0.5, 10, 10)
        // 材质
        // 基本材质,不需要灯光也能看到,可以修改颜色
        // let m=new THREE.MeshBasicMaterial()
        // let m=new THREE.MeshBasicMaterial({
        //     color:'red',    //颜色
        //     wireframe:true, //是否显示线框
        //     visible:true,   //是否显示此几何体
        // })
        // circleM.wireframe=true  //也可以为空心
        // circleM.visible=true  


        // 不需要灯光也能显示,根据各个面的法线,显示不同的的颜色
        // let m=new THREE.MeshNormalMaterial()
        // let m=new THREE.MeshNormalMaterial({
        //     wireframe:true, //是否显示线框
        //     // flatShading:true,   //是否菱角分明
        // })
        // m.flatShading=true 

        // 此材质需要灯光,没有灯光时颜色为黑色,
        // 环境光 下为正常颜色
        // 太阳光下为 渐变色,针棉最亮,背面最暗,不同的太阳光显示不同的颜色
        // 没有高光
        let m = new THREE.MeshLambertMaterial({
            color: 'gold'
        })
        let ms = new THREE.Mesh(g, m)
        ms.position.y = 2
        scene.add(ms)


         // 此材质需要灯光,没有灯光时颜色为黑色,
        // 在MeshLambertMaterial 基础上添加高光,有反光现象
        let m1 = new THREE.MeshPhongMaterial({
            color: 'gold',
            shininess: 30 //高光闪亮程度,反光程度
        })
        let ms1 = new THREE.Mesh(g, m1)
        scene.add(ms1)

         // 此材质需要灯光,没有灯光时颜色为黑色,
        // 标准材质,与 MeshPhongMaterial 一样,但是自定义程度更高
        // 自定义粗糙程度 roughness, 金属性质 metalness,更亮
        let m2 = new THREE.MeshStandardMaterial({
            color: 'gold',
            // roughness:0,  //roughness 粗糙  粗糙程度,反光效果,值越大越不反光(即粗糙)
            metalness:1.1,  //metalness 金属性,值越大越球变黑,金属性越弱,范围 负值到1
        })
        let ms2 = new THREE.Mesh(g, m2)
        ms2.position.z = 2
        scene.add(ms2)
        gui.add(m2, 'roughness', -5, 5).name('粗糙程度')
        gui.add(m2, 'metalness', -5, 5).name('金属程度')



        // 光线 -台灯,吊灯,太阳光...
        // AmbientLight 创建环境光,用来提亮
        // const light = new THREE.AmbientLight()
        // 颜色,强度
        // const light = new THREE.AmbientLight(0xffffff,0.2)
        // 创建太阳光
        const light = new THREE.DirectionalLight(0xffffff)
        scene.add(light)
        gui.add(light.position, 'x', -5, 5).name('灯光的x 位置')
        gui.add(light.position, 'y', -5, 5).name('灯光的y 位置')
        gui.add(light.position, 'z', -5, 5).name('灯光的z 位置')

        // 相机 -
        // 广泛使用的PerspectiveCamera 相机类型
        // 75  角度的范围 相机的看到宽高比 最近距离 最远距离
        const camera = new THREE.PerspectiveCamera(75, w / h, 0.1, 100)
        // 因为最初渲染的位置都是在0,0,0 上,相机和物体重合,相机拍摄不到物体
        // 需要调整相机位置
        camera.position.set(4, 5, 5) //x,y,z
        camera.lookAt(0, 0, 0) //相机朝向哪里



        // 如果非常多的时候,直接过多使用gui.add() 渲染出来的时候会照成排版过长问题
        // 使用文件夹的形式,界面形成折叠板
        const folder1 = gui.addFolder('圆环控制器') //折叠版名称
        console.log(ms.position);
        folder1.add(ms.position, 'x', -20, 40).name('圆环的x 位置')
        folder1.add(ms.position, 'y', -20, 40).name('圆环的y 位置')
        folder1.add(ms.position, 'z', -20, 40).name('圆环的z 位置')



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

            circleMesh.position.x = Math.sin(time)
            circleMesh.position.z = Math.cos(time)

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

