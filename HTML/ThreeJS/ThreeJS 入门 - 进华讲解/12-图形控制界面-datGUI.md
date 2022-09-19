# 图形控制界面-datGUI

```js
  <!-- 引入dat.gui  -->
    <script src="../../js/dat.gui.min.js"></script>
    <!-- 
         node 中使用 npm install dat.gui
          导入
        import *as dat from 'dat.gui'
     -->

         const gui =new dat.GUI()

        // 增加 控制相机, x 轴方向,范围-5,5,步进1
        // name 为控制的属性取别名,没有name() 默认为控制的属性名
        gui.add(camera.position,'x',-5,5,1).name('相机x 轴位置')
        gui.add(camera.position,'y',-5,5).name('相机y 轴位置')
        gui.add(camera.position,'z',-5,5).name('相机z 轴位置')

        // 控制cube 的位置
        gui.add(wheelMesh.position,'x',-20,100).name('立方体的x 位置')

        // gui 可以控制对象
        const obj={
            name:'jack',
            age:10
        }
        gui.add(obj,'name',1,100).name('哈哈哈')
        // 但是不能控制单独的变量,必须要先加入到对象中
        let speed=10
        // gui.add(speed,)  错误的方式
        
        
           const controls={
            r:1.5,
            speed1:1,
            stop:()=>{
                controls.speed1=0
            },
            wireframe:true,
            // wireframe:()=>{
            //     // console.log(this);
            // },
            aa:'aa'

        }
        // 如果是数字,会变成进度条
        gui.add(controls,'r',-5,5).name('运动半径')
        gui.add(controls,'speed1',0,5).name('运动速度')
        // 没有第三个参数传入时,如果是函数,则变成点击事件
        gui.add(controls,'stop')
        // 如果是布尔值,会变成 勾选框
       gui.add(controls,'wireframe').onChange(()=>{
            // 如果有多个监听同一个值,onChange只监听此添加的wireframe 点击
            console.log('监听值的改变');
        })
        // 如果是字符串,会变成输入框
        gui.add(controls,'wireframe')
```



`ThreeJS 入门 - 进华讲解\代码\11-图形控制界面-datGUI.html`

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
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
        const gui =new dat.GUI()

        // 将threejs 和照片中的房间相比较
        // 房间 -3d 容器
        //Scene( 场景)
        const scene = new THREE.Scene()


        // 坐标系   三边的长度
        const axes = new THREE.AxesHelper(2, 2, 2)
        // 添加到场景中,也可以将坐标系添加到物体中
        scene.add(axes)

        // 公共材质
        const m = new THREE.MeshNormalMaterial()



        // 圆环 TorusGeometry 半径,粗细,粗度的分段,圆的分段
        const wheelG = new THREE.TorusGeometry(0.5, 0.1, 10, 30)
        const wheelMesh = new THREE.Mesh(wheelG, m)
        scene.add(wheelMesh)
        
        // 球
        const circle = new THREE.SphereGeometry(0.5)
        const circleM = new THREE.MeshBasicMaterial({
            wireframe:true,
            color:'gold'
        })
        // console.log(circleM);
        circleM.wireframe=true  //也可以为空心
        // circleM.wireframe.set(false) // 也可以为空心
        // circleM.color.set(0xffffff)     //MeshBasicMaterial 才有,Normal 没有color 属性
        // circleM.color=new THREE.Color(0xfffffff) // 使用three 的Color将16 进制数字转换为color  字符串
        const circleMesh = new THREE.Mesh(circle, circleM)
        scene.add(circleMesh)

        gui.add(circleM,'wireframe')    //没有第三个参数就是为选择框





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
        camera.position.set(4, 5, 5) //x,y,z
        camera.lookAt(0, 0, 0) //相机朝向哪里

        // 增加 控制相机, x 轴方向,范围-5,5,步进1
        // name 为控制的属性取别名,没有name() 默认为控制的属性名
        gui.add(camera.position,'x',-5,5,1).name('相机x 轴位置')
        gui.add(camera.position,'y',-5,5).name('相机y 轴位置')
        gui.add(camera.position,'z',-5,5).name('相机z 轴位置')

        // 控制cube 的位置
        // gui.add(wheelMesh.position,'x',-20,40).name('立方体的x 位置')
        // gui.add(wheelMesh.position,'y',-20,40).name('立方体的y 位置')
        // gui.add(wheelMesh.position,'z',-20,40).name('立方体的z 位置')

        // 如果非常多的时候,直接过多使用gui.add() 渲染出来的时候会照成排版过长问题
        // 使用文件夹的形式,界面形成折叠板
        const folder1=gui.addFolder('立方体控制器') //折叠版名称
        folder1.add(wheelMesh.position,'x',-20,40).name('立方体的x 位置')
        folder1.add(wheelMesh.position,'y',-20,40).name('立方体的y 位置')
        folder1.add(wheelMesh.position,'z',-20,40).name('立方体的z 位置')

        // gui 可以控制对象
        const obj={
            name:'jack',
            age:10
        }
        gui.add(obj,'name',1,100).name('哈哈哈')
        // 但是不能控制单独的变量,必须要先加入到对象中
        let speed=10
        // gui.add(speed,)  错误的方式




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
        let r=1.5, speed1=1
        const controls={
            r:1.5,
            speed1:1,
            stop:()=>{
                controls.speed1=0
            },
            wireframe:true,
            // wireframe:()=>{
            //     // console.log(this);
            // },
            aa:'aa'

        }
        // 如果是数字,会变成进度条
        gui.add(controls,'r',-5,5).name('运动半径')
        gui.add(controls,'speed1',0,5).name('运动速度')
        // 没有第三个参数传入时,如果是函数,则变成点击事件
        gui.add(controls,'stop')
        // 如果是布尔值,会变成 勾选框
        gui.add(controls,'wireframe').onChange(()=>{
            // 如果有多个监听同一个值,onChange只监听此添加的wireframe 点击
            console.log('监听值的改变');
        })
        // 如果是字符串,会变成输入框
        gui.add(controls,'wireframe')


        function run() {
            let time = clock.getElapsedTime() //从 0 开始一直在增加的值
            // console.log(time); 

            circleMesh.position.x=Math.sin(time*controls.speed1)*controls.r
            circleMesh.position.z=Math.cos(time*controls.speed1)*controls.r

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

