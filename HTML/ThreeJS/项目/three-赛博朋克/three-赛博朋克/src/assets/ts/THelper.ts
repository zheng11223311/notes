import { GridHelper } from 'three';
// 辅助工具
import { AxesHelper,Object3D } from 'three';


//坐标轴 参数 长宽高大小
const axes:AxesHelper=new AxesHelper(100)

// 网格  参数 长宽,每列/行的格子(分界线个数) , 网格十字线的颜色, 网格颜色
const grid:GridHelper=new GridHelper(60,30,'red','#ccc')


export const helperList:Object3D[]=[
    axes,
    grid,
]