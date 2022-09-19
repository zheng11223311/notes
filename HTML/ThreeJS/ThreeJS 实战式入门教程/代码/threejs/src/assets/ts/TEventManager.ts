import { Camera, Object3D, Scene } from 'three';
// 事件管理的内容

import { EventDispatcher, Raycaster, Vector2 } from "three";



export interface TEventManagerParameters{
    dom:HTMLCanvasElement
    scene:Scene
    camera:Camera
}


// 继承事件派发(发布订阅模式)
export class TEventManager extends EventDispatcher{
    //定义鼠标向量
    private mouse:Vector2=new Vector2()
    //射线发射器与物体拾取
    // 从屏幕视角发射一个贯穿于整个三维场景中的射线,去判断三维场景中的物体和
    // 射线有没有产生交点,如果产交点就会返回
    private raycaster:Raycaster=new Raycaster()
    private dom:HTMLCanvasElement
    private scene:Scene
    private camera:Camera
    
    constructor(params:TEventManagerParameters){
        super()
        this.dom=params.dom
        this.scene=params.scene
        this.camera=params.camera

        const mouse=this.mouse
        const raycaster=this.raycaster
        const dom=params.dom

        let cacheObject:Object3D|null=new Object3D()

        dom.addEventListener('mousedown',(event)=>{
            this.raycaster.setFromCamera(mouse,this.camera)
            const intersection=this.raycaster.intersectObjects(this.scene.children)

            this.dispatchEvent({
                type:'mousedown',
                intersection
            })

            // 拾取后添加物体控制器
            if(intersection.length>0){
                // 0 最靠近鼠标下看到的物体,
                // 因为intersection[0] 物体有很多坐标..等信息
                // 这里我们只要获取object 这个物体
                const object=intersection[0].object         
                object.dispatchEvent({
                    type:'mousedown',
                })
            }
        })
        dom.addEventListener('mouseup',(event)=>{
            this.raycaster.setFromCamera(mouse,this.camera)
            const intersection=this.raycaster.intersectObjects(this.scene.children)
            this.dispatchEvent({
                type:'mouseup',
                intersection
            })

            // 拾取后添加物体控制器
            if(intersection.length>0){
                // 0 最靠近鼠标下看到的物体,
                // 因为intersection[0] 物体有很多坐标..等信息
                // 这里我们只要获取object 这个物体
                const object=intersection[0].object         
                object.dispatchEvent({
                    type:'mouseup',
                })
            }
        })


        dom.addEventListener('mousemove',(event)=>{
            mouse.x=(event.offsetX/dom.offsetWidth)*2-1
            mouse.y=(-event.offsetY*2)/dom.offsetHeight+1
            // 设置射线初始值
            // 从指定相机中,根据指定的二维坐标的指针,往场景中发射射线
            // 设置之后,它会通过相机将二维坐标转换为三维场景中的一条射线
            this.raycaster.setFromCamera(this.mouse,this.camera)
            
            //与物体匹配,看看有没有产生交点,
            //鼠标下存在物体,就产生交互现象,比如物体出现边框
            //  参数 场景中的所有物体
            const intersection=this.raycaster.intersectObjects(this.scene.children)

            this.dispatchEvent({
                type:'mousemove',
                intersection
            })

            if(intersection.length>0){
                // 0 最靠近鼠标下看到的物体,
                // 因为intersection[0] 物体有很多坐标..等信息
                // 这里我们只要获取object 这个物体
                const object=intersection[0].object         
                //事件派发器的使用,派发后,物体可以像DOM 一样监听事件,否则不能监听事件
                // 本质是发布订阅模式,object3d 继承了发布订阅类
                //在物体上使用监听
                // plane.addEventListener('mouseenter',()=>{
                //     console.log(1);
                    
                // })
                if(object!=cacheObject){
                    if(cacheObject){
                        cacheObject.dispatchEvent({  
                            type:'mouseleave',  //派发鼠标移出事件
                        })
                    }
                    // 如果当前物体不是上一次缓存物体,重新派发事件
                    object.dispatchEvent({  
                        type:'mouseenter',  //派发鼠标移入事件
                    })
                }else if(object==cacheObject){
                    object.dispatchEvent({  
                        type:'mousemove',  //派发鼠标移动事件
                    })
                }
                cacheObject=object
            }else{
                if(cacheObject){
                    cacheObject.dispatchEvent({  
                        type:'mouseleave',  //派发鼠标移出事件
                    })
                }
                // 没有物体
                cacheObject=null
            }
        })

          // 添加点击事件
          dom.addEventListener('click',(event)=>{
            this.raycaster.setFromCamera(mouse,this.camera)
            const intersection=this.raycaster.intersectObjects(this.scene.children)
            this.dispatchEvent({
                type:'click',
                intersection    //作为参数传递
            })
            // 拾取后添加物体控制器
            if(intersection.length>0){
                // 0 最靠近鼠标下看到的物体,
                // 因为intersection[0] 物体有很多坐标..等信息
                // 这里我们只要获取object 这个物体
                const object=intersection[0].object         
                object.dispatchEvent({
                    type:'click',
                })
            }
        })
    }
}