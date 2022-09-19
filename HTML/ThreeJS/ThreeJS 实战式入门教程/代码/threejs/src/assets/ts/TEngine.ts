import { groupPromise } from './TGroup';
import { TEventManager } from './TEventManager';
import { AmbientLight, AxesHelper, BoxBufferGeometry, Clock, GridHelper, Group, Material, Mesh, MeshStandardMaterial, MOUSE, Object3D, PerspectiveCamera, Raycaster, Scene, Vector2, Vector3, WebGLRenderer } from "three";
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
    //定义鼠标向量
    // private mouse:Vector2
    //射线发射器与物体拾取
    // 从屏幕视角发射一个贯穿于整个三维场景中的射线,去判断三维场景中的物体和
    // 射线有没有产生交点,如果产交点就会返回
    // private raycaster:Raycaster
    // 导入事件管理
    private eventManager: TEventManager


    constructor(dom: HTMLElement) {
        // console.log('实例化');

        this.dom = dom
        // console.log(dom);


        // 1.实例化场景
        this.scene = new Scene()

        // // 创建坐标系
        // // x,y,z 轴的长度
        // const axesHelper: AxesHelper = new AxesHelper(500)
        // // 向场景中添加辅助坐标
        // this.scene.add(axesHelper)
        // // 创建辅助网格
        // // 长度/宽度,每列/行网格数量,中心十字架颜色,其余边框颜色
        // const gridHelper: GridHelper = new GridHelper(40, 20, 0xff0000, 'rgb(100,100,300)')
        // this.scene.add(gridHelper)
        // 初始化性能检测
        const stats = Stats()
        // 获取其dom 元素,添加到页面中
        // const statsDom=stats.domElement






        // // 2.创建立方体
        // // 几何体骨架
        // // 长,宽,高的大小
        // const boxG: BoxBufferGeometry = new BoxBufferGeometry(10, 10, 10)
        // // 材质
        // // const boxM:MeshStandardMaterial=new MeshStandardMaterial()  
        // const boxM: MeshStandardMaterial = new MeshStandardMaterial({
        //     color: 'red',        //设置材质的颜色
        // })
        // // 合并几何体和材质,mesh 网格(面) 合并面使用,点线使用其他的方式合并
        // const box: Mesh = new Mesh(boxG, boxM)
        // 向场景中添加立方体
        // this.scene.add(box)

        // 使用组合物体的组
        groupPromise.then(group=>{
            // 将组(组合物体)添加到场景中,组也可以像物体一样操作
            // 组中也能添加组
            this.scene.add(group)
        })








        // 3.创建灯光
        // AmbientLight 环境光 
        // 颜色 光照强度
        // const ambientLight: AmbientLight = new AmbientLight(0xffffff, 1)
        // // 添加到场景中
        // this.scene.add(ambientLight)





        // 4.实例化相机
        //  拍摄角度大小,宽高比,视野最近距离,最远距离
        this.camera = new PerspectiveCamera(45, this.dom.offsetWidth / this.dom.offsetHeight, 0.1, 1000)
        // 设置相机的位置
        //  x,y,z
        this.camera.position.set(20, 20, 20)
        // 设置相机朝向
        this.camera.lookAt(0, 0, 0)
        // 设置相机的正向拍照/倒立拍照
        this.camera.up = new Vector3(0, 1, 0)  //0,1,0  1在y 轴上,表示相机(三角形)的顶点在y轴上,正立













        // 5.渲染
        // this.renderer = new WebGLRenderer()
        this.renderer = new WebGLRenderer({
            antialias: true,   //开启抗锯齿,提高画质(像素)  ,antialias 抗锯齿;平滑
        })
        // 设置画布的大小
        // this.renderer.domElement.width=dom.offsetWidth
        // this.renderer.domElement.height=dom.offsetHeight
        // 或使用渲染器设置画布的大小
        // setSize() 的第三个参数updateStyle 表示设置宽高是否会直接影响其canvas的样式
        this.renderer.setSize(dom.offsetWidth, dom.offsetHeight, true)
        // 设置清空视图的背景颜色,清空(设置)为默认颜色白色
        // this.renderer.setClearColor('rgb(255,255,255)')
        // // 开始清空
        // this.renderer.clearColor()      //黑色的立方体就会显示出来
        // 渲染视图
        // 参数 场景,相机
        this.renderer.render(this.scene, this.camera)
        // 阴影渲染步骤
        // 1. 开启renderer 阴影渲染
        // 2.灯光开启使物体产生阴影
        // 3.物体开启阴影
        // 4.地面开启接收阴影
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
        orbitControls.mouseButtons = {
            // 将左键设置为null,表示不做任何事
            // 因为在mouse 中定义的时数字0-5,
            // null 不被ts 认可,需要转换类型为 unknown 再将unknown 当作为MOUSE,因为 null不能直接转换为MOUSE
            LEFT: null as unknown as MOUSE,
            MIDDLE: MOUSE.DOLLY,    //DOLLY 拖拽
            RIGHT: MOUSE.ROTATE,     //右键旋转
            // 默认ctrl+右键 可以移动视图
        }



        //初始射线发射器
        // this.raycaster=new Raycaster()
        // 射线的本质是,在材质material 上存在raycast 函数,计算与射线的交互
        // 存在交点就将物体返回给 raycaster.intersectObjects
        // 有时候我们需要一些物体不被发射器拾取,比如坐标轴,网格,台灯,辅助线
        // 这时候就需要屏蔽(改变)材质material 上的 raycast 函数
        // 比如  坐标轴的mesh.raycast=()=>{} 此物体就不会被拾取了

        //初始化物体变换控制器
        // 相机,控制器在哪个DOM 中可以使用
        this.transformControls = new TransformControls(this.camera, this.renderer.domElement)
        // 测试,创建一个物体,生成物体控制器
        // const target=new Object3D()
        // this.transformControls.attach(target)    //将要被控制的物体赋予给控制器
        // this.scene.add(target)  
        // 添加到场景中
        this.scene.add(this.transformControls)


        // 定义键盘事件
        document.addEventListener('keyup', (event) => {
            console.log(event);
            if (event.key == "e") {
                // 改变物体控制器的模式,不在为默认的移动
                //控制物体缩放物体
                this.transformControls.mode = 'scale'
                return
            }
            if (event.key == "r") {
                // 控制物体旋转
                this.transformControls.mode = 'rotate'
                return
            }
            if (event.key == "t") {
                // 控制物体的移动
                this.transformControls.mode = 'translate'
                return
            }

        })

        // 初始化事件管理
        const eventManager = new TEventManager({
            dom: this.renderer.domElement,
            scene: this.scene,
            camera: this.camera
        })


        let cacheObject: Mesh | null
        // 全局的事件
        eventManager.addEventListener('mousemove', (event) => {
            // console.log(event);     //event 没有事件,需要传递intersection 参数
            // console.log('全局的事件');


            if (event.intersection.length) {
                const object = event.intersection[0].object
                if (object != cacheObject && cacheObject) {
                    // console.log( (cacheObject.material as MeshStandardMaterial));
                    // console.log( (cacheObject.material as MeshStandardMaterial).color);

                    // multiplyScalar 将此颜色rgb 乘以给定的参数值
                    console.log("材质改变");
                    (cacheObject.material as MeshStandardMaterial).color.multiplyScalar(0.5)
                } else if (object == cacheObject) {
                    return
                }
                if (object.material) {
                    // multiplyScalar 将此颜色rgb 乘以给定的参数值
                    object.material.color.multiplyScalar(2)
                    cacheObject = object
                }
            } else {
                if (cacheObject) {
                    // multiplyScalar 将此颜色rgb 乘以给定的参数值

                    (cacheObject.material as MeshStandardMaterial).color.multiplyScalar(0.5)
                }
                cacheObject = null
            }

        })


        // 修改后的添加点击事件
        eventManager.addEventListener('click', (event) => {
            if (transing) {
                transing = false
                return
            }


            // 在与场景中的物体交互前,先移除物体控制器,因为物体控制器也是物体
            // 也会被交互,导致bug,物体控制器作用在物体控制器上,无法移动
            // 我们需要先移除物体控制器,交互后再添加回去
            this.scene.remove(this.transformControls)
            if (event.intersection.length > 0) {
                // 0 最靠近鼠标下看到的物体,
                // 因为intersection[0] 物体有很多坐标..等信息
                // 这里我们只要获取object 这个物体
                const object = event.intersection[0].object
                // console.log(object);



                // 拾取后添加物体控制器
                this.scene.add(this.transformControls)
                // 判断是否需要拾取
                if (object.type == 'TransformControlsPlane') {
                    // 如果物体是物体控制器本身
                    //不作用
                    this.transformControls.detach();
                    this.scene.remove(this.transformControls)
                } else {
                    // 即点击哪个物体,哪个物体就应用上物体控制器
                    // 如果父元素是group 组,就作用在父元素上,如果父元素是不是组group,就作用在object 上
                    // 如果一个物体1对物体2使用add,物体1就会称为物体2的parent 
                    this.transformControls.attach(object.parent instanceof Group?object.parent:object)
                    // 这里使用鼠标点击移动控制器和轨道控制器都是用左键
                    // 会同时触发,导致移动时和轨道一起移动,
                    // 需要改变轨道的鼠标控制
                    // console.log(object);
                }


            } else {
                //不作用
                this.transformControls.detach();
                this.scene.remove(this.transformControls)
            }
        })


        //定义是否正在控制,判断此次鼠标事件是否是移动物体的事件
        let transing = false

        //因为鼠标点击会触发拾取物体,将物体控制器添加到物体上
        // 再次点击物体拖动,也会导致重新拾取物体,导致拖动失败
        //three 提供解决方法,使用其定义的事件 与js 的写法onmousedown 不同
        this.transformControls.addEventListener('mouseDown', (event) => {
            console.log('点击了物体控制器,触发 鼠标按下');
            transing = true
        })
        this.transformControls.addEventListener('mouseUp', (event) => {
            console.log('物体控制器,触发 鼠标抬起');

        })

        // this.renderer=renderer  优化,使用renderer 代替this.renderer,最后将this.renderer 绑定到renderer,这样就不用每次访问地址了

        //转化为three的二维向量,使用three 的长度单位
        // this.mouse=new Vector2()
        // let x=0
        // let y=0
        // let width=0
        // let height=0
        // //设置一个缓存物体
        // let cacheObject:Object3D|null=null
        // //给renderer 的canvas 对象添加鼠标事件
        // this.renderer.domElement.addEventListener('mousemove',(event)=>{
        //     // console.log(event.offsetX,event.offsetY);
        //      x=event.offsetX
        //      y=event.offsetY
        //     //设置以画布中心点,鼠标的位置  上下 -1,1  左右-1,1 中间0,0
        //      width= this.renderer.domElement.offsetWidth
        //      height=this.renderer.domElement.offsetHeight
        //     this.mouse.x=x/width*2 -1
        //     this.mouse.y=-y*2/height+1
        //     // console.log(this.mouse);
        //     // 设置射线初始值
        //     // 从指定相机中,根据指定的二维坐标的指针,往场景中发射射线
        //     // 设置之后,它会通过相机将二维坐标转换为三维场景中的一条射线
        //     this.raycaster.setFromCamera(this.mouse,this.camera)
        //     //与物体匹配,看看有没有产生交点,
        //     //  参数 场景中的所有物体 ,是否递归拾取物体中的物体, false 就只拾取第一层,比如灯光辅助线,里面的线段就不会被拾取,只需要屏蔽灯光辅助线就行
        //     // const intersection=this.raycaster.intersectObjects(this.scene.children,false)
        //     // if(intersection.length>0){
        //     //     // console.log(intersection);
        //     //     //获取第一个物体的信息,即鼠标位置下最靠近我们视角看到的最前面的物体
        //     //     // console.log(intersection[0].object);

        //     // }

        //      // 我们需要先移除物体控制器,交互后再添加回去
        //      this.scene.remove(this.transformControls)
        //     //与物体匹配,看看有没有产生交点,
        //     //鼠标下存在物体,就产生交互现象,比如物体出现边框
        //     //  参数 场景中的所有物体
        //     const intersection=this.raycaster.intersectObjects(this.scene.children)
        //      // 拾取后添加物体控制器
        //      this.scene.add(this.transformControls)
        //     if(intersection.length>0){
        //         // 0 最靠近鼠标下看到的物体,
        //         // 因为intersection[0] 物体有很多坐标..等信息
        //         // 这里我们只要获取object 这个物体
        //         const object=intersection[0].object         
        //         //事件派发器的使用,派发后,物体可以像DOM 一样监听事件,否则不能监听事件
        //         // 本质是发布订阅模式,object3d 继承了发布订阅类
        //         //在物体上使用监听
        //         // plane.addEventListener('mouseenter',()=>{
        //         //     console.log(1);

        //         // })
        //         if(object!=cacheObject){
        //             if(cacheObject){
        //                 cacheObject.dispatchEvent({  
        //                     type:'mouseleave',  //派发鼠标移出事件
        //                 })
        //             }
        //             // 如果当前物体不是上一次缓存物体,重新派发事件
        //             object.dispatchEvent({  
        //                 type:'mouseenter',  //派发鼠标移入事件
        //             })
        //         }else if(object==cacheObject){
        //             object.dispatchEvent({  
        //                 type:'mousemove',  //派发鼠标移动事件
        //             })
        //         }
        //         cacheObject=object
        //     }else{
        //         if(cacheObject){
        //             cacheObject.dispatchEvent({  
        //                 type:'mouseleave',  //派发鼠标移出事件
        //             })
        //         }
        //         // 没有物体
        //         cacheObject=null
        //     }
        // })
        // // 添加点击事件
        // this.renderer.domElement.addEventListener('click',(event)=>{
        //     if(transing){
        //         transing=false
        //         return
        //     }
        //     this.raycaster.setFromCamera(this.mouse,this.camera)
        //     // 在与场景中的物体交互前,先移除物体控制器,因为物体控制器也是物体
        //     // 也会被交互,导致bug,物体控制器作用在物体控制器上,无法移动
        //     // 我们需要先移除物体控制器,交互后再添加回去
        //     this.scene.remove(this.transformControls)

        //     //与物体匹配,看看有没有产生交点,
        //     //  参数 场景中的所有物体
        //     const intersection=this.raycaster.intersectObjects(this.scene.children)
        //     // 拾取后添加物体控制器
        //     this.scene.add(this.transformControls)
        //     if(intersection.length>0){
        //         // 0 最靠近鼠标下看到的物体,
        //         // 因为intersection[0] 物体有很多坐标..等信息
        //         // 这里我们只要获取object 这个物体
        //         const object=intersection[0].object         
        //         // 即点击哪个物体,哪个物体就应用上物体控制器
        //         this.transformControls.attach(object)   
        //         // 这里使用鼠标点击移动控制器和轨道控制器都是用左键
        //         // 会同时触发,导致移动时和轨道一起移动,
        //         // 需要改变轨道的鼠标控制
        //         console.log(object);

        //     }
        // })













        // threejs 本身提供了一个好用的对象处理此不同设备不同帧率导致
        // requestAnimationFrame 不同的渲染
        let clock = new Clock()

        // 实时渲染
        let renderfunc = () => {
            let time = clock.getElapsedTime() //从 0 开始一直在增加的值

            // box.rotation.x = time * 0.5


            this.renderer.render(this.scene, this.camera)
            stats.update()      //实时更新帧率检测
            // orbitControls.update()  //轨道控制的实时更新,在update 中实时调用 orbitControls.autoRotate=true进行旋转,需要放在渲染之前,先变换在渲染
            requestAnimationFrame(renderfunc)
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