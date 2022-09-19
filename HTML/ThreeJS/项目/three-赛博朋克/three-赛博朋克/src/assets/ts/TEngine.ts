import { spaceTimeGroup } from './TGroup';
import { AxesHelper, Clock, MOUSE, Object3D, PerspectiveCamera, Scene, Vector3, WebGLRenderer } from "three"

// 导入性能检测库/帧率检测
// jsm 为js 模块module 包,原生js 使用则导入js  而不是jsm
import Stats from 'three/examples/jsm/libs/stats.module'
// 导入场景控制器/轨道控制器
import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls'
// 导入物体变换控制器
import { TransformControls } from "three/examples/jsm/controls/TransformControls";


export class TEngine {
    // 挂载点
    private dom: HTMLElement
    // 渲染器
    private renderer: WebGLRenderer

    // 场景
    private scene: Scene
    // 相机
    private camera: PerspectiveCamera
    //物体变换控制器
    private transformControls: TransformControls

    constructor(dom: HTMLElement) {
        this.dom = dom
        // 1.实例化场景
        this.scene = new Scene()
        // 初始化性能检测
        const stats = Stats()
        // // 获取其dom 元素,添加到页面中
        const statsDom = stats.domElement














        // 4.实例化相机
        //  拍摄角度大小,宽高比,视野最近距离,最远距离
        this.camera = new PerspectiveCamera(45, this.dom.offsetWidth / this.dom.offsetHeight, 0.1, 1000)
        // 设置相机的位置
        //  x,y,z
        this.camera.position.set(2, 2, 2)
        // 设置相机朝向
        this.camera.lookAt(0, 0, 0)
        // 设置相机的正向拍照/倒立拍照
        this.camera.up = new Vector3(0, 1, 0)  //0,1,0  1在y 轴上,表示相机(三角形)的顶点在y轴上,正立




























        // 5.渲染
        // this.renderer = new WebGLRenderer()
        this.renderer = new WebGLRenderer({
            antialias: true,   //开启抗锯齿,提高画质(像素)  ,antialias 抗锯齿;平滑
        })
        // 或使用渲染器设置画布的大小
        // setSize() 的第三个参数updateStyle 表示设置宽高是否会直接影响其canvas的样式
        this.renderer.setSize(dom.offsetWidth, dom.offsetHeight, true)
        // 设置清空视图的背景颜色,清空(设置)为默认颜色白色
        this.renderer.setClearColor('rgb(255,255,255)')
        // 开始清空
        this.renderer.clearColor()
        // 渲染视图
        // 参数 场景,相机
        this.renderer.render(this.scene, this.camera)
        // 开启阴影渲染
        this.renderer.shadowMap.enabled = true
        // 添加到页面中 
        dom.appendChild(this.renderer.domElement)   //渲染器
        dom.appendChild(stats.domElement)   //帧率检测





        // 初始轨道控制器orbitControls ,即场景控制
        //  可以进行缩放,旋转操作
        // 鼠标左键,旋转视图
        // 鼠标中建按住+移动,或滑动滚轮, 缩放视图
        // 鼠标右键,移动视图
        //  相机,渲染器canvas 元素
        const orbitControls: OrbitControls = new OrbitControls(this.camera, this.renderer.domElement)
        //  轨道场景的自动旋转(即相机的自动旋转),需要设置相机的实时更新
        // orbitControls.autoRotate=true
        // 设置拖拽时有一种阻力感,即惯性
        orbitControls.enableDamping = true
        // 自定义 orbitControls 鼠标的操作,利于用户的体验
        // orbitControls.mouseButtons = {
        //     // 将左键设置为null,表示不做任何事
        //     // 因为在mouse 中定义的时数字0-5,
        //     // null 不被ts 认可,需要转换类型为 unknown 再将unknown 当作为MOUSE,因为 null不能直接转换为MOUSE
        //     LEFT: null as unknown as MOUSE,
        //     MIDDLE: MOUSE.DOLLY,    //DOLLY 拖拽
        //     RIGHT: MOUSE.ROTATE,     //右键旋转
        //     // 默认ctrl+右键 可以移动视图
        // }























        // threejs 本身提供了一个好用的对象处理此不同设备不同帧率导致
        // requestAnimationFrame 不同的渲染
        let clock = new Clock()

        // 实时渲染
        let renderfunc = () => {
            let time = clock.getElapsedTime() //从 0 开始一直在增加的值
            orbitControls.update()  //轨道控制的实时更新,在update 中实时调用 orbitControls.autoRotate=true进行旋转,需要放在渲染之前,先变换在渲染
            this.renderer.render(this.scene, this.camera)
            stats.update()      //实时更新帧率检测
            requestAnimationFrame(renderfunc)
            // 内圈转动
            spaceTimeGroup.rotation.z=time
        }
        renderfunc()



    }


    // 创建添加物体的函数
    // Object3D 为所有物体的基类,所有物体都要继承这个类 [] 数组类型
    addObject(...object: Object3D[]) {
        object.forEach((ele) => {
            this.scene.add(ele)
        })
    }
}