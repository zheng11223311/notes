## 1-什么是PBR

- 基于物理渲染
- 以前的渲染是在模仿灯的外观
- 现在是在模仿光的实际行为
- 使图形看起来更加真实

> 可以使用PBR 的材质 : 标准网格材质(MeshStandardMaterial)



## 2-PBR 组成部分

- **灯光属性:**直接照明, 间接照明, 直接高光 , 间接高光 , 阴影 , 环境光闭塞
- **表明属性: **基础色 , 法线 , 高光 , 粗超度 , 金属度



## 3-灯光属性

#### 1.光线类型

![6-1](D:\学习\wanye\HTML\ThreeJS\2022全网最全three.js最新入门课程【搞定前端前沿技术】\笔记\img\6-1.png)

**入射光**

- 直接照明:直接从光源发射阴影物体表面的光
- 间接照明:环境光和直接光经过反弹第二次进入的光

**反射光**

- 镜面光:在经过表面反射聚焦在同一方向上进入人眼的高亮光
- 漫反射:光被散射并沿着各个方向离开表面



#### 2-光与表面相互作用的类型

![6-2](D:\学习\wanye\HTML\ThreeJS\2022全网最全three.js最新入门课程【搞定前端前沿技术】\笔记\img\6-2.png)

- **直接漫反射:**从源头到四面八方散发出来的直接高光
- **直接高光:**直接来自光源并被集中反射的光
- **间接漫反射:**来自环境的光被表面散射的光
- **间接高光:**来自环境光并被集中反射的光



#### 3-法线(Normal)

- 定义曲线的形状每个像素代表一个矢量
- 该矢量指示表面所面对的方向即使网格是完全平坦的
- 法线贴图会使表面显得凹凸不平
- 用于添加表面形状的细节,这里三角形是实现不了的
- 因为它们表示矢量数据,所以法线贴图是无法手工绘制的



## 4-置换贴图与顶点细分

**越白的颜色值会越突出,呈现凹凸感**

```js
//导入纹理
const textureLoader=new THREE.TextureLoader()  //实例化
const texture=textureLoader.load('1.jpg') //加载纹理图片
const texture2=textureLoader.load('置换贴图.jpg') //置换贴图.jpg 与1.jpg 一样,颜色呈黑白色

const MeshStandardMaterial=new THREE.MeshStandardMaterial({
    color:"#ffff00", //材质颜色
    //map:texture,	//指定使用的纹理,
    alphaMap:texture,	//使用透明纹理,将纹理透明化,需要先开启允许透明
    transparent:true,	//开启透明
    //opacity:0.5,	//指定透明度
    side:THREE.DoubleSide,	//指定渲染平面的两面(前面和后面),为性能考虑,默认值为渲染前面,因为后面不需要被看到
    displacementMap:texture1,  //使用置换贴图,呈现凹凸感,需要为几何体的骨架的分段数多才能显示出凹凸感,分段数越多凹凸越大
    displacementScale:0.01,		//凹凸程度(凹凸最大多少)
})

//几何体
const plane=new THREE.PlaneGeometry(1,1,200,200)
const box=new THREE.BoxBufferGeometry(1,1,200,200,200)  //立方体的每个面都会有凹凸感
```

 

## 5-设置粗超度与粗超度贴图

```js
//导入纹理
const textureLoader=new THREE.TextureLoader()  //实例化
const texture=textureLoader.load('1.jpg') //加载纹理图片
const texture1=textureLoader.load('置换贴图.jpg') //凹凸感贴图,置换贴图.jpg 与1.jpg 一样,颜色呈黑白色,越白越凸
const texture2=textureLoader.load('粗糙贴图.jpg')  //指定图片中某个位置的粗糙度,粗糙贴图.jpg 与1.jpg 一样,颜色呈黑白色,黑色被渲染成粗糙,白色的被渲染成光滑

const MeshStandardMaterial=new THREE.MeshStandardMaterial({
    color:"#ffff00", //材质颜色
    //map:texture,	//指定使用的纹理,
    alphaMap:texture,	//使用透明纹理,将纹理透明化,需要先开启允许透明
    transparent:true,	//开启透明
    //opacity:0.5,	//指定透明度
    side:THREE.DoubleSide,	//指定渲染平面的两面(前面和后面),为性能考虑,默认值为渲染前面,因为后面不需要被看到
    displacementMap:texture1,  //使用置换贴图,呈现凹凸感,需要为几何体的骨架的分段数多才能显示出凹凸感,分段数越多凹凸越大
    displacementScale:0.01,		//凹凸程度(凹凸最大多少)
    roughness:0,	//设置材质表面的粗糙度,0 光滑,反光效果强,1 粗糙,漫反射,反光效果差
    roughnessMap:texture2,	//使用粗糙度贴图,贴图的黑色被渲染成粗糙,白色的被渲染成光滑,如果同时开启了roughness,两个粗糙值会相乘
})

//几何体
const plane=new THREE.PlaneGeometry(1,1,200,200)
const box=new THREE.BoxBufferGeometry(1,1,200,200,200)  //立方体的每个面都会有凹凸感
```



## 6-设置金属度与金属贴图

```js
//导入纹理
const textureLoader=new THREE.TextureLoader()  //实例化
const texture=textureLoader.load('1.jpg') //加载纹理图片
const texture1=textureLoader.load('置换贴图.jpg') //凹凸感贴图,置换贴图.jpg 与1.jpg 一样,颜色呈黑白色,越白越凸
const texture2=textureLoader.load('粗糙贴图.jpg')  //指定图片中某个位置的粗糙度,粗糙贴图.jpg 与1.jpg 一样,颜色呈黑白色,黑色被渲染成粗糙,白色的被渲染成光滑
const texture3=textureLoader.load('金属贴图.jpg')  //指定图片中某个位置的金属度,金属贴图.jpg 与1.jpg 一样,颜色呈黑白色,黑色不被渲染成金属,越白的被渲染成越像金属
const texture4=textureLoader.load('法线贴图.jpg')  //指定图片中不同凹凸位置的不同显示强度,法线贴图.jpg 与1.jpg 一样,颜色呈五颜六色,不同法线位置的颜色不一样

const MeshStandardMaterial=new THREE.MeshStandardMaterial({
    color:"#ffff00", //材质颜色
    //map:texture,	//指定使用的纹理,
    alphaMap:texture,	//使用透明纹理,将纹理透明化,需要先开启允许透明
    transparent:true,	//开启透明
    //opacity:0.5,	//指定透明度
    side:THREE.DoubleSide,	//指定渲染平面的两面(前面和后面),为性能考虑,默认值为渲染前面,因为后面不需要被看到
    displacementMap:texture1,  //使用置换贴图,呈现凹凸感,需要为几何体的骨架的分段数多才能显示出凹凸感,分段数越多凹凸越大
    displacementScale:0.01,		//凹凸程度(凹凸最大多少)
    roughness:0,	//设置材质表面的粗糙度,0 光滑,反光效果强,1 粗糙,漫反射,反光效果差
    roughnessMap:texture2,	//使用粗糙度贴图,贴图的黑色被渲染成粗糙,白色的被渲染成光滑,如果同时开启了roughness,两个粗糙值会相乘
    metalness:1,	//材质表面完全金属
    metalnessMap:texture3,	//指定贴图位置渲染成金属,此时还缺少法相设置,凹进去的地方金属感不应该那么强
    normalMap:texture4,	//设置法线贴图,凹凸不同的位置,显示不同效果
})

//几何体
const plane=new THREE.PlaneGeometry(1,1,200,200)
const box=new THREE.BoxBufferGeometry(1,1,200,200,200)  //立方体的每个面都会有凹凸感
```



## 7-如何获取各类型纹理贴图

-  [Poliigon - Textures, Models and HDRIs for 3D rendering](https://www.poliigon.com/) 

-  [3D TEXTURES | Free seamless PBR textures with Diffuse, Normal, Displacement, Occlusion, Specularity and Roughness Maps.](https://3dtextures.me/) 

-  [Arroway Textures – Professional Textures (arroway-textures.ch)](https://www.arroway-textures.ch/) 

- 虚幻引擎(游戏开发),内部含有多种建模/纹理,在官网下载软件( [Quixel Bridge - Manage 3D content and export with one click](https://quixel.com/bridge) ),免费注册账号即可使用 

  账号:z32404243334@qq.com

  密码:19101546261a

  网页端: [Quixel Megascans](https://quixel.com/megascans/free) 



## 8-纹理加载进度情况

```js
//导入纹理
const textureLoader=new THREE.TextureLoader()  //实例化


//单张纹理图的加载
let event={}
event.onLoad=function(){
    console.log('图片加载完成')
}
event.onProcess=function(url,loaded,total){
    console.log('图片加载的进度')
     console.log('图片地址:',url)
    console.log('此加载器总的图片数量:',total) 
     console.log('图片已加载的数量:',loaded)
}
event.onError=function(e){
    console.log('图片加载出错')
    console.log(e)
}
const texture=textureLoader.load('1.jpg',event.onLoad,event.onProcess,event.onError) //加载纹理图片

//threejs 本身提供进度管理器,设置加载进度管理器
const loadingManager=new THREE.LoadingManager(event.onLoad,event.onProcess,event.onError)
const textureLoader=new THREE.TextureLoader(loadingManager)  //实例化,所有纹理都会统一被loadingManager 管理
```



## 9-环境(立方体贴图)贴图

映射出周围环境的影子的贴图,实质是把环境的图片贴到材质中

n  为负方向(ny,nx,nz) ,p 为正方向(py,pz,px)

```js
//设置cube 纹理加载器(环境加载器)
const cubeTextureLoader=new THREE.CubeTextureLoader()
const envMapTexture=cubeTextureLoader.load([	//六张图片
    'px.png',
    'nx.png',
    'py.png',
    'ny.png',
    'pz.png',
    'nz.png',
])

const MeshStandardMaterial=new THREE.MeshStandardMaterial({
	metalness:0.7, //设置金属度,映射环境效果更加明显
    roughness:0.1, //设置光滑度,映射环境效果更加明显
    envMap:envMapTexture, //使用环境贴图
})

//几何体
const plane=new THREE.PlaneGeometry(1,1,200,200)
const mesh=new THREE.Mesh(plane,MeshStandardMaterial)
scene.add(mesh)

//周围环境显示此贴图,场景的背景
scene.background=envMapTexture  //没有设置此值,只在MeshStandardMaterial 设置 envMap:envMapTexture ,物体也会有贴图,但是场景中没有此背景

//场景中所有的物体都会被使用环境贴图 envMap:envMapTexture,已设置过envMap的不会受其影响
scene.environment=envMapTexture
```



## 10-HDR 详解

图片的格式:1.hdr

**简谈投影的HDR 技术的发展**

HDR 技术并非新鲜事物,在数码摄影领域,这个词汇已经被大家所熟知,而在显示领域,HDR 技术是近一二年才开始兴起的技术,是之前的技术无法实现HDR 效果吗?其实真正的原因并非如此,过去显示领域一直专注于高分辨,3D 以及新面板技术,对于HDR 这种边缘化的技术并不是特别的关注,如今在显示升级遭遇阻力的时候,人们才将眼光投射到了这里

HDR 技术是一种改善动态对比度的技术,HDR 就是高动态范围技术,如其名字一样,HDR 技术增加了亮度范围,同时提升最亮和最暗画面的对比度,从而获得更广泛的色彩范围,除了明显改善灰阶,也带来了更黑和或更白的颜色效果,这样用户就可以看到更多的细节,当然前提是你放映的片源也要支持HDR 技术才可以,目前市面上使用HDR 技术录制的视频还很少

![6-3](D:\学习\wanye\HTML\ThreeJS\2022全网最全three.js最新入门课程【搞定前端前沿技术】\笔记\img\6-3.png)

**HDR 处理的照片效果**

HDR 技术是的图片看上去效果更好,图像充满活力,而不是洗白或者偏色的图像,是的整体画质表现力有较大的提升,从技术角度来看,其的确对于用户来说是有意义的,但是其实HDR 技术和3D 技术在某种意义上有着相同的尴尬,那就是技术到底能不能有用武之地

**仅仅有技术是不够的**

3D 技术大家都非常了解,去看电影很多人也会选择3D 的版本,但是大家自己购买设备的时候,往往并不会选择具有3D 功能的产品,比如3D 显示器的价格的确不贵,但是真正实用起来,用户没有什么显示资源来支持,3D 显示器也就成为了摆设,HDR 技术也是如此,播放普通的片源,HDR 技术并不能显著提高动态范围,因此我们必须有对应的内容源头



```js
import {RGBELoader} from 'three/examples/jsm/loaders/RGBELoader'

//加载hdr 图片
const rgbeLoader=new RGBELoader()
//rgbeLoader.load()  //同步加载
//异步加载, 1.hdr 为一张球型展开图,类似地球展开图,所以需要设置映射类型,为圆柱型(经纬度映射),相当于一盒球型套在圆柱形内,所有的点映射在圆柱上,圆柱展开后,就是球型展开图
rgbeLoader.rgbeLoaderAsync('1.hdr').then(texture=>{
    texture.mapping=THREE.EquirectangularReflectionMapping //经纬度映射
    scene.background=texture   //背景
    scene.environment=texture //场景中所有物体的环境纹理,已有环境纹理的不会被改变
})	
```

