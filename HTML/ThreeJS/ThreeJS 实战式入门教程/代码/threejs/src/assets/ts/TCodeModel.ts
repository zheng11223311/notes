//  代码建模,非常的繁琐,建议使用blender 建模工具建模



import { pictureTexture } from './TTextures';
import { BufferAttribute, BufferGeometry, Color, DoubleSide, MeshStandardMaterial, Object3D } from 'three';

import { Mesh } from "three";
// 引入顶点法线辅助
import { VertexNormalsHelper } from 'three/examples/jsm/helpers/VertexNormalsHelper'

// 手动创建立方体

// 创建点集,记录顶点的位置
const size: number = 10

// 平面映射,贴图坐标xy 轴范围为0-1,根据立方体的长度计算百分比进行绘制贴图
// 图片的坐标,图片坐标和物体坐标范围都是0-1,最后将图片映射到每一个面中
// 绘制六个面的坐标
// 如果少一个面的uv 就会有一个面没有被映射到贴图
const uv: Float32Array = new Float32Array([
    0, 0,          //绘制坐标, (0,0)
    1, 0,
    1, 1,
    0, 1,     //第一个面的坐标,


    0, 0,          //绘制坐标, (0,0)
    1, 0,
    1, 1,
    0, 1,          //此为物体平面的坐标,会将图片的坐标映射到物体的坐标上


    0, 0,          //绘制坐标, (0,0)
    1, 0,
    1, 1,
    0, 1,          //此为物体平面的坐标,会将图片的坐标映射到物体的坐标上


    0, 0,          //绘制坐标, (0,0)
    1, 0,
    1, 1,
    0, 1,          //此为物体平面的坐标,会将图片的坐标映射到物体的坐标上


    0, 0,          //绘制坐标, (0,0)
    1, 0,
    1, 1,
    0, 1,          //此为物体平面的坐标,会将图片的坐标映射到物体的坐标上


    0, 0,          //绘制坐标, (0,0)
    1, 0,
    1, 1,
    0, 1,          //此为物体平面的坐标,会将图片的坐标映射到物体的坐标上
])

// 定义法线,和顶点个数一致 
// 使每个面颜色统一,使面与面之间菱角分明
const normal: Float32Array = new Float32Array([
    0, 1, 0,        //法线是 0和1 ,xyz 上的值,1代表在此轴上有辅助线段,0 没有
    0, 1, 0,        //每个面的4个顶点为各自法向量的坐标原点
    0, 1, 0,
    0, 1, 0,      //上面的面的所有法线坐标,上面的面为坐标,在每一个顶点上

    0, -1, 0,
    0, -1, 0,
    0, -1, 0,
    0, -1, 0,

    -1, 0, 0,
    -1, 0, 0,
    -1, 0, 0,
    -1, 0, 0,

    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,

    0, 0, 1,
    0, 0, 1,
    0, 0, 1,
    0, 0, 1,

    0, 0, -1,
    0, 0, -1,
    0, 0, -1,
    0, 0, -1,
])




// const points:number[]=[   //[] 并不是真正的数组,原型还是Object,所以数组中可以为浮点型文字扥 ,需要使用 Float32Array 转换为真正的数组
//     -size,size,size,      //每个顶点的xyz
//     size,size,size,
//     size,size,-size,    //三行为三个顶点,确定为一个面,即三行为一个三角形面


//     -size,size,-size,       //第四个顶点
//     -size,size,size,       //重复第一个顶点的值
//     size,size,-size,        //重复第三个顶点的值, 两个三角形形成一个正方形

// ]

// 但是一个立方体只需要八个顶点就够了,需要使用到顶点索引
// const points: number[] = [   //[] 并不是真正的数组,原型还是Object,所以数组中可以为浮点型文字扥 ,需要使用 Float32Array 转换为真正的数组
//     -size, size, size,      //每个顶点的xyz
//     size, size, size,
//     size, size, -size,    //三行为三个顶点,确定为一个面,即三行为一个三角形面
//     -size, size, -size,       //第四个顶点

//     -size, -size, size,      //每个顶点的xyz
//     size, -size, size,
//     size, -size, -size,    //三行为三个顶点,确定为一个面,即三行为一个三角形面
//     -size, -size, -size,       //第四个顶点

// ]
// 但是八个顶点的法线就只有八个,会导致面的颜色不够,菱角不分明,
// 需要为每个顶点分配4个法线(即每个面分配4根法线,重复的边共用一个法线8*4-8),
// 创建6个面的顶点,可以直接绘制面,也可以提供给索引使用顶点绘制面
const points: number[] = [   //[] 并不是真正的数组,原型还是Object,所以数组中可以为浮点型文字扥 ,需要使用 Float32Array 转换为真正的数组
    -size, size, size,      //每个顶点的xyz
    size, size, size,
    size, size, -size,    //三行为三个顶点,确定为一个面,即三行为一个三角形面
    -size, size, -size,       //第四个顶点

    -size, -size, size,
    size, -size, size,
    size, -size, -size,
    -size, -size, -size,

    -size, size, size,
    -size, size, -size,
    -size, -size, -size,
    -size, -size, size,

    size, size, size,
    size, size, -size,
    size, -size, -size,
    size, -size, size,

    -size, size, size,
    size, size, size,
    size, -size, size,
    -size, -size, size,

    -size, size, -size,
    size, size, -size,
    size, -size, -size,
    -size, -size, -size,

]
// 定义索引
// const index: number[] = [
//     0, 1, 2,      //表示三个顶点的索引,0 表示第一个顶点的索引,1 表示第二个顶点的索引,对应points 中的每个顶点
//     2, 3, 0,       //三个顶点索引构成一个三角形面

//     0, 4, 5,
//     5, 1, 0,

//     1, 5, 6,
//     6, 2, 1,

//     2, 6, 7,
//     7, 3, 2,

//     0, 7, 4,      // 0,4,7  会渲染同一个位置,但是是背面被渲染出来,正面看不见, webgl 默认顺时针顺序连接的面是朝向人
//     0, 3, 7,       //如果背面被渲染出来,使用side:DoubleSide 双面渲染并不能解决正面看不到的问题,因为这里背面根据法线渲染出效果是不一样的

//     4, 6, 5,
//     7, 6, 4

// ]

// 重新定义索引,有24个点
// 索引绘制每一个图形的面
const index: number[] = [
    0, 1, 2,      //每一个 索引对应 points 中的每一个顶点(即每一行),0 对应points 第一行的顶点
    2, 3, 0,       //三个顶点索引构成一个三角形面

    4, 5,6,
    6, 7, 4,

    8,9,10,
    10,11,8,

    12,14,13,
    14,12,15,

    16,18,17,      // 0,4,7  会渲染同一个位置,但是是背面被渲染出来,正面看不见, webgl 默认顺时针顺序连接的面是朝向人
    18,16,19,       //如果背面被渲染出来,使用side:DoubleSide 双面渲染并不能解决正面看不到的问题,因为这里背面根据法线渲染出效果是不一样的

    20,21,22,
    22,23,20

]

// 剑 sword
const sword: Array<number> = [

]


// 使用偏底层的几何体 BufferGeometry 自定义高复杂度的几何模型,每三个顶点就可以确定一个面,每个顶点由xyz 三个点构成
const codeBoxG: BufferGeometry = new BufferGeometry()

// 将点集传入 BufferGeometry 中 ,   3 表示xyz 的坐标信息表示一个顶点,三个值确定一个顶点
// 默认是三个顶点绘制一个面,多了一个顶点由于没有其他的顶点组合,就步绘制面
// 这是我们不想要的,我们想要四个顶点绘制一个面,
// 所以就需要重复上面的顶点,多余的一个顶点和重复的第1,2 个顶点结合,再次绘制成一个面
codeBoxG.setAttribute('position', new BufferAttribute(new Float32Array(points), 3))
// position 为黑色材质 ,需要同时开启 normal,normal 会显示材质的颜色,具有顶点的法线信息
//  法线数量和顶点数量一致,否者过少会导致颜色的丢失,一个顶点对应一个法线
// codeBoxG.setAttribute('normal', new BufferAttribute(new Float32Array(points), 3))
// 使用一个顶点对应4个法线
codeBoxG.setAttribute('normal', new BufferAttribute(new Float32Array(normal), 3))
// 应用索引
codeBoxG.setIndex(index)
// 设置坐标
codeBoxG.setAttribute('uv', new BufferAttribute(uv, 2))     //xy 两个值,作为一个顶点

const codeBoxM: MeshStandardMaterial = new MeshStandardMaterial({
    color: 'gold',
    side: DoubleSide,     //两面都渲染,都看得到
    map: pictureTexture,     //使用贴图,但是建模的不能直接使用,需要指定贴图的xy 轴位置
    // wireframe:true
})
const codeBox: Mesh = new Mesh(codeBoxG, codeBoxM)
codeBox.position.z = 30
codeBox.position.y = 30
codeBox.rotation.x = Math.PI / 3


// 实例化法线辅助
//  物体,法线长度,颜色
const boxNormalHelper = new VertexNormalsHelper(codeBox, 10, new Color('blue').getHex())
// 自己建模出来的立方体法线每个顶点只有一根,与官方的立方体法线(每个顶点4根)不一致,每个顶点使用每个顶点的法线,光照清晰度处理,比一根的好
// 光照的处理是根据法线的角度处理的,法线垂直面,面的颜色就会更统一,菱角分明

export const codeModelList: Object3D[] = [
    codeBox,
    boxNormalHelper,
]

