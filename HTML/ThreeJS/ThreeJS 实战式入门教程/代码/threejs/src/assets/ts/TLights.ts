import { wall } from './TBasicObject';
// 所有光源的文件

import { AmbientLight, Object3D, PointLight, SpotLight } from "three";

// 3.创建灯光
// AmbientLight 环境光 每一块地方的光照相同,常用于提亮,
// 也会导致立方体都是一个颜色,导致菱角不分明,需要使用其他光进行乘积导致其颜色不同(变成渐变色),显示出菱角
// 颜色 光照强度
const ambientLight: AmbientLight = new AmbientLight(0xffffff, 1)
// 查看环境光的颜色,光与物体作用后的颜色是乘积的关系
// console.log(ambientLight.color);   
// 0-255 被转化为 0-1 进行乘积
// 0 0 0    光照颜色
// 1 0 0    物体颜色
// 0 0 0     最终物体显示的颜色

// 光照强度也是乘积进去
// 0 0 0    光照颜色
// 1 0 0    物体颜色
// 1 1 1    光照强度
// 0 0 0     最终物体显示的颜色



// 创建点光源, 特点 :向四面八方发射光
// 颜色,强度,照射距离,衰减度
export const pointLight:PointLight=new PointLight(0xffffff,0.7,200,0.1)

pointLight.position.set(20,20,20)

// 创建聚光灯,即台灯光
// // 颜色,强度,照射距离, 弧度,距离,衰减度,衰减度
export const spotLight:SpotLight=new SpotLight(0xffffff,1,100,Math.PI/180*30,0,0)
// spotLight.position.set(-50,50,-50)
// 灯光让物体产生阴影
spotLight.castShadow=true
spotLight.position.set(0,100,200)

//台灯光默认照射的target 是0,0,0 调节位置无效,需要手动修改目标位置为墙物体
spotLight.target=wall

// 知识补充
// 3D 物体的变换-->matrixWorld(世界矩阵)->matrix(本地矩阵)->(position,scale,rotation)
// 3d 的变换根据2个矩阵的世界矩阵渲染出来的,世界矩阵由本地矩阵组成,本地矩阵根据(position,scale,rotation) 计算出来本地矩阵

//辅组光线的更新需要手动更新
// wall.updateMatrix()     //先根据position...更新本地矩阵
// wall.updateMatrixWorld()    //根据更新后的本地矩阵更新世界矩阵

// spotLightHelper.update()     //也可以 辅组光线的更新

export const lightsList: Object3D[] = [
    ambientLight,
    // pointLight,
    spotLight
]