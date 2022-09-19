# 最简单的threejs 程序



**掌握内容**

- Scene 场景
- 物体: 骨架+皮肤
- 光线
- 相机
- 渲染器









`ThreeJS 入门 - 进华讲解\代码\2-最简单的threejs 程序.html`

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
    </script>
    <script>
        // console.log(THREE);


        // 将threejs 和照片中的房间相比较
        // 房间 -3d 容器
        //Scene( 场景)
        const scene=new THREE.Scene()
        const w=window.innerWidth
        const h=window.innerHeight

        // 东西 -家电,家具...
        // 物体由: geometry(几何体,即骨架) + material(材质,即皮肤) 构成
        // BoxGeometry 立方体材质  长宽高
        const geometry=new THREE.BoxGeometry(1,1,1)
        // 材质 ,这里我们使用 MeshBasicMaterial 最基础的材质
        const material=new THREE.MeshBasicMaterial()
        // cube (立方体) 骨架+材质
        const cube=new THREE.Mesh(geometry,material)
        scene.add(cube)     //加入到场景中

        // 光线 -台灯,吊灯,太阳光...
        // AmbientLight 创建环境光
        const light=new THREE.AmbientLight()
        scene.add(light)

        // 相机 -
        // 广泛使用的PerspectiveCamera 相机类型
        // 75  角度的范围 相机的看到宽高比 最近距离 最远距离
        const camera=new THREE.PerspectiveCamera(75,w/h,0.1,100)
        // 因为最初渲染的位置都是在0,0,0 上,相机和物体重合,相机拍摄不到物体
        // 需要调整相机位置
        camera.position.set(0,0,5)  //x,y,z
        camera.lookAt(0,0,0)        //相机朝向哪里


        // 渲染器- Renderer 计算机进行渲染数据
        // css 渲染器,canvas 渲染器,webGL 渲染器(我们用的)
        const renderer=new THREE.WebGLRenderer()
        // 设置渲染器的渲染的大小
        renderer.setSize(w,h)
        // 渲染场景和相机
        renderer.render(scene,camera)
        // 渲染器最终渲染出来的是一个canvas
        // 我们需要将渲染器添加到页面中
        document.body.append(renderer.domElement)
        console.log(renderer.domElement); //canvas 画布 <canvas width="762" height="511" style="width: 762px; height: 511px;"></canvas>


    </script>

</body>

</html>
```

