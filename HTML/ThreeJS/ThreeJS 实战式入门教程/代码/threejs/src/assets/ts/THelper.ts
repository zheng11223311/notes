//  所有的辅助工具

// 导入光源
import {pointLight,spotLight} from './TLights'

import { AxesHelper, GridHelper, Object3D, PointLightHelper, SpotLightHelper } from "three"

// 创建坐标系辅助
// x,y,z 轴的长度
const axesHelper: AxesHelper = new AxesHelper(500)
// 重组函数,使物体不被发射器拾取
// axesHelper.raycast=()=>{}
// 创建网格辅助
// 长度/宽度,每列/行网格数量,中心十字架颜色,其余边框颜色
const gridHelper: GridHelper = new GridHelper(40, 20, 0xff0000, 'rgb(100,100,300)')
gridHelper.raycast=()=>{}

// 创建点光源辅助
// 光源, 辅助线长度大小,辅助线颜色
const pointLightHelper:PointLightHelper=new PointLightHelper(pointLight,pointLight.distance/5,pointLight.color)


// 聚光灯辅助,即台灯光
// 光源,颜色
const spotLightHelper:SpotLightHelper=new SpotLightHelper(spotLight,spotLight.color)
spotLightHelper.raycast=()=>{}
//灯光辅组线,由线段构成 spotLightHelper.children (里面纯在3个线条),这些线也会被点击,
// 需要遍历调用子项.raycast=()=>{},不方便,直接在射线上传递参数就行
// spotLightHelper.update()  //更新光线变化后的辅组光线的新位置
export const helperList: Object3D[] = [
    axesHelper,
    gridHelper,
    // pointLightHelper,
    spotLightHelper
]