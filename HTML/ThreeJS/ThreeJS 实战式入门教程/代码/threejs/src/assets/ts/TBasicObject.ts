import { Color, Object3D, PlaneBufferGeometry } from 'three';
//  专注基础basic 物体
// 分割文件,防止所有物体创建在TEngine.ts 造成臃肿

import { Line,Points,Mesh, BoxBufferGeometry, MeshStandardMaterial, SphereBufferGeometry, CylinderBufferGeometry } from "three";
import { pictureTexture } from './TTextures';
// 引入顶点法线辅助
import {VertexNormalsHelper} from 'three/examples/jsm/helpers/VertexNormalsHelper'


// 2.创建立方体
const boxG: BoxBufferGeometry = new BoxBufferGeometry(10, 10, 10)
// 材质
// const boxM:MeshStandardMaterial=new MeshStandardMaterial()
const boxM: MeshStandardMaterial = new MeshStandardMaterial({
    color: 'red',        //设置材质的颜色
})
// 合并几何体和材质,mesh 网格(面) 合并面使用,点线使用其他的方式合并
const box: Mesh = new Mesh(boxG, boxM)

// 实例化法线辅助
//  物体,法线长度,颜色
const boxNormalHelper=new VertexNormalsHelper(box,10,new Color('blue').getHex())
// const boxNormalHelper=new VertexNormalsHelper(box,10,0xffff00)






// 创建圆
// 半径 5
const sphereG = new SphereBufferGeometry(5)
const sphereM = new MeshStandardMaterial()
const sphere: Mesh = new Mesh(sphereG, sphereM)
// 使用线画出圆,等同于 wireframe 线框图
// const sphere: Line = new Line(sphereG)
// 使用点画出圆,画出由点组成的圆
const spherePoint: Points = new Points(sphereG)
// 改变圆的x 轴位置
sphere.position.x = 10
spherePoint.position.x = -10


// 创建圆柱
// 上/下底 5, 高 10  半径的分段数 32 高度的分段数 5
// 分段数只有在骨架 wireframe 下才能看到
const cylinderG = new CylinderBufferGeometry(5, 5, 10, 32, 5)
const cylinderM = new MeshStandardMaterial({
    color: 'gold',
    wireframe: true,        //显示框架 wireframe 线框图
    roughness:0.5,            //粗超度,范围[0,1],0 表示光滑(反光越明显),1表示粗糙
    metalness:1,            //金属度,范围[0,1] 0 不是金属,1 是金属,这个和粗超度结合使用,粗糙度为0的时候,即使金属度为1,看起来也不像金属
    //  1的 时候变黑,是因为金属的漫反射强,高光效果,光线都反射出去了

})
const cylinder: Mesh = new Mesh(cylinderG, cylinderM)
const cylinderLine: Line = new Line(cylinderG)
// 改变圆的x 轴位置
cylinder.position.x = 20
cylinder.position.y = 5

cylinderLine.position.x = -20
cylinderLine.position.y = 5
// 开启产生阴影
cylinderLine.castShadow=true


// 创建地面
// 长宽高
const planeG=new BoxBufferGeometry(200,10,200)
const planeM=new MeshStandardMaterial({
    color:'#777',
})
const plane=new Mesh(planeG,planeM)
plane.position.y=-5
// 开启接收阴影
plane.receiveShadow=true 
// plane.addEventListener('mouseenter',()=>{
//     console.log('mouseenter');
    
// })
// plane.addEventListener('mouseleave',()=>{
//     (plane.material as MeshStandardMaterial).color=new Color('white')
//     console.log('mouseleave');
    
// })
// plane.addEventListener('mousemove',()=>{
//     (plane.material as MeshStandardMaterial).color=new Color('red')
//     console.log('mousemove');
    
// })

// 创建平面相框
// 长宽
const photoPlaneG=new PlaneBufferGeometry(100,20)
const photoPlaneM=new MeshStandardMaterial({
    map:pictureTexture,     //使用贴图
})
const photoPlane:Mesh=new Mesh(photoPlaneG,photoPlaneM)
// 缩放 xyz
photoPlane.scale.set(0.5,1,2)

photoPlane.position.x=40        
photoPlane.position.y=65        
photoPlane.position.z=-39  


// 创建墙面平面
const wallG:BoxBufferGeometry=new BoxBufferGeometry(200,200,10)
const wallM:MeshStandardMaterial=new MeshStandardMaterial({
    color:"white",
})
export const wall:Mesh=new Mesh(wallG,wallM)
wall.position.y=100
wall.position.z=-50















export const basicObjectList: Object3D[] = [
    box,
    sphere,
    cylinder,
    spherePoint,
    cylinderLine,
    plane,
    photoPlane,
    boxNormalHelper,
    wall
]