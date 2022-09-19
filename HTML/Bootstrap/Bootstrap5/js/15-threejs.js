let canvas = document.querySelector('.canvas')
// console.log([canvas]);
const w = canvas.offsetWidth
const h = canvas.offsetHeight
// console.log(h);
const stat = new Stats() //查看包 stats.min.js 中的变量可知为Stats
const gui = new dat.GUI()

// 房间 -3d 容器
//Scene( 场景)
const scene = new THREE.Scene()
// 命名,取别名
scene.name = 'scene'

// 坐标系   三边的长度
const axes = new THREE.AxesHelper(8, 8, 8)
axes.name = 'axes'
// 添加到场景中,也可以将坐标系添加到物体中
scene.add(axes)


// 弹窗
function toast(msg) {
    let toast = document.querySelector('.toast')
    let toastBody = toast.children[1]
    console.log('%c' + msg, 'color:gold;background:#000;padding:4px');
    toastBody.innerText = msg
    toast.classList.add('show')

}

// 全部的组
let allGroups = []
// 全部的物体
let allGoods = [scene, axes]

// 获取 全部的物体 的数据
function getNewData() {
    let opt = ''
    allGoods.forEach((element, index) => {
        opt += '<option value="' + index + '">' + element.name + '</option>'
        // console.log(element);
    });
    document.querySelector('[name="fatherAdd"]').innerHTML = opt
    // return opt

}
// 开始时自动刷新获取数据
getNewData()



function sideCreateSphere() {
    // console.log(document.querySelector('[name="material"]').value);

    let radius = document.querySelector('[name="radius"]').value
    let radiusSegmentation = document.querySelector('[name="radiusSegmentation"]').value
    let material = document.querySelector('[name="material"]').value
    let color = document.querySelector('[name="color"]').value
    let wireframe = document.querySelector('[name="wireframe"]').checked

    let positionx = document.querySelector('[name="positionx"]').value
    let positiony = document.querySelector('[name="positiony"]').value
    let positionz = document.querySelector('[name="positionz"]').value

    let rotationx = document.querySelector('[name="rotationx"]').value
    let rotationy = document.querySelector('[name="rotationy"]').value
    let rotationz = document.querySelector('[name="rotationz"]').value

    let scalex = document.querySelector('[name="scalex"]').value
    let scaley = document.querySelector('[name="scaley"]').value
    let scalez = document.querySelector('[name="scalez"]').value

    let fatherAdd = document.querySelector('[name="fatherAdd"]').value
    let name = document.querySelector('[name="name"]').value
    let texture = document.querySelector('[name="texture"]').value

    // 贴图 texture
    const loader = new THREE.TextureLoader() //加载器
    const texture1 = loader.load(texture)

    // 设置边缘,NearestFilter 采用最近的像素填充边缘,这样图像就看其来不会那么模糊
    // 默认是LinearFilter ,会综合旁边的像素进行计算出平均的像素,边缘平均像素,看起来模糊一点
    texture1.magFilter = THREE.NearestFilter
    // 设置x 轴(s 为x 轴) ,使用最简单的重复
    texture1.wrapS = THREE.RepeatWrapping
    // 设置y 轴(t 为y 轴) ,使用最简单的重复
    texture1.wrapT = THREE.RepeatWrapping
    //  设置重复值 ,一行有10个 一列 也有10个 即重复10x10 个
    // texture1.repeat.set(10,10)
    texture1.repeat.set(3, 3)
    // node 本地图片需要使用import   import jpg from './1.jpg'   const texture1=loader.load(jpg)
    // 贴图上也可以接收阴影

    if (radius == '') return toast('请输入半径!!!')
    if (radiusSegmentation == '') return toast('请输入半径分段数!!!')
    if (material == '') return toast('请选择材质!!!')
    if (color == '') color = 0x000 // return toast('请选择颜色!!!')
    if (wireframe == '') // return toast('请选择是否开启显示骨架!!!')

        if (positionx == '') return toast('请输入初始x 轴位置!!!')
    if (positiony == '') return toast('请输入初始y 轴位置!!!')
    if (positionz == '') return toast('请输入初始z 轴位置!!!')

    if (rotationx == '') return toast('请输入初始x 轴角度!!!')
    if (rotationy == '') return toast('请输入初始y 轴角度!!!')
    if (rotationz == '') return toast('请输入初始z 轴角度!!!')

    if (scalex == '') return toast('请输入初始x 轴缩放!!!')
    if (scaley == '') return toast('请输入初始y 轴缩放!!!')
    if (scalez == '') return toast('请输入初始z 轴缩放!!!')
    if (fatherAdd == '') return toast('请选择添加的位置!!!')
    if (name == '') return toast('请为当前物体起名!!!')
    if (texture == '') texture = false //return toast('请为当前物体起名!!!')

    console.log(texture);
    let objectG = {
        radius,
        radiusSegmentation
    }
    let objectM = {
        material,
        color,
        wireframe,
        map: texture1
    }
    let objectTransform = {
        position: {
            x: positionx,
            y: positiony,
            z: positionz,
        },
        rotation: {
            x: rotationx * 180 / Math.PI,
            y: 0,
            z: rotationz * 180 / Math.PI
        },
        scale: {
            x: scalex,
            y: scaley,
            z: scalez,
        }
    }
    fatherAdd = allGoods[fatherAdd]
    // console.log(fatherAdd);
    allGoods.push(createSphere(objectG, objectM, objectTransform, fatherAdd, name))
    console.log(allGoods);
    // 刷新列表数据
    getNewData()
}



// 创建平面
function createPlane(objectG = {
    width: 10,
    height: 10,
    widthSegmentation: 10,
    heightSegmentation: 10,
}, objectM = {
    material: 'MeshBasicMaterial',
    color: 0x000,
    wireframe: true
}, objectTransform = {
    position: {
        x: 1,
        y: 1,
        z: 1
    },
    rotation: -0.5 * Math.PI
}, fatherAdd = scene) {
    // width,height,widthSegmentation,heightSegmentation
    const planeG = new THREE.PlaneGeometry(objectG.width, objectG.height, objectG.widthSegmentation, objectG.heightSegmentation)
    // material color wireframe
    const planeM = new THREE[objectM.material]({
        color: objectM.color,
        wireframe: objectM.wireframe
    })
    const plane = new THREE.Mesh(planeG, planeM)
    // rotation {x,y,z} 
    // position {x,y,z} 
    // scale {x,y,z} 
    plane.rotation.x = objectTransform.rotation.x
    plane.rotation.y = objectTransform.rotation.y
    plane.rotation.z = objectTransform.rotation.z
    console.log(plane.rotation);
    // fatherAdd
    fatherAdd.add(plane)
    return plane //返回当前的物体,供全局使用
}



// 创建球体
function createSphere(objectG = {
    radius: 3,
    radiusSegmentation: 130,
}, objectM = {
    material: 'MeshBasicMaterial',
    color: 'gold',
    // wireframe: true
    wireframe: false,
    map: false,
}, objectTransform = {
    position: {
        x: 1,
        y: 1,
        z: 1
    },
    rotation: {
        x: 0,
        y: 0,
        z: 0
    },
    scale: {
        x: 1,
        y: 1,
        z: 1,
    },
}, fatherAdd = scene, name) {
    // width,height,widthSegmentation,heightSegmentation
    const sphereG = new THREE.SphereGeometry(objectG.radius, objectG.radiusSegmentation, 100)
    // material color wireframe
    const sphereM = new THREE[objectM.material]({
        color: objectM.color,
        wireframe: objectM.wireframe,
        map:objectM.map
    })
    // console.log( sphereM );
    const sphere = new THREE.Mesh(sphereG, sphereM)
    // rotation {x,y,z} 
    // position {x,y,z} 
    // scale {x,y,z} 
    sphere.position.x = objectTransform.position.x
    sphere.position.y = objectTransform.position.y
    sphere.position.z = objectTransform.position.z

    sphere.rotation.x = objectTransform.rotation.x
    sphere.rotation.y = objectTransform.rotation.y
    sphere.rotation.z = objectTransform.rotation.z

    sphere.scale.x = objectTransform.scale.x
    sphere.scale.y = objectTransform.scale.y
    sphere.scale.z = objectTransform.scale.z
    // console.log(sphere.rotation);
    // console.log( objectTransform);

    // fatherAdd
    fatherAdd.add(sphere)
    // console.log(fatherAdd);
    // 定义名称
    sphere.name = name
    return sphere //返回当前的物体,供全局使用
}





























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
dlight.castShadow = true
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
// renderer.setClearColor('#ccc')
// renderer.setClearColor('#000')
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

canvas.append(renderer.domElement)
// 将帧率检测添加到页面中
canvas.append(stat.domElement)
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
    const w = canvas.offsetWidth
    const h = canvas.offsetHeight

    // 视图的改变需要修改的选项
    // 设置相机的宽高比例
    camera.aspect = w / h
    camera.updateProjectionMatrix() //更新相机

    // 设置渲染器大小
    renderer.setSize(w, h)
}