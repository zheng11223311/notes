import { frameColorTexture, frameRoughnessTexture, frameDispTexture } from './TTextures';
import { Material, MeshStandardMaterial } from 'three';
import { Group, Mesh } from 'three';
// 外部模型导入

//导入模型加载器
import { OBJLoader } from "three/examples/jsm/loaders/OBJLoader";
// 导入材质加载器
import { MTLLoader } from 'three/examples/jsm/loaders/MTLLoader';

//初始化模型加载器
const objLoeader: OBJLoader = new OBJLoader()
// 初始化材质加载器
const mtlLoader: MTLLoader = new MTLLoader()

//模型加载  模型不会直接加载进来,需要回调函数返回,参数为组group
// 这个组才是加载完成后的模型对象,所以frame 不能直接获取到模型对象,应使用异步导入
// const frame:Mesh=objLoeader.load('./frame.obj',(group)=>{
//     //加载完成时调用

// })

//使用异步获取,导入模型,没有材质的模型也可以直接加入到场景中
// export const framePromise =objLoeader.loadAsync('/frame.obj');

// 材质加载,需要先加载好mtl 材质,生成材质给loader,最后使用材质,此过程有两个异步
//threejs 渲染出来的效果和blender 中的差很多,没有表面的凹凸感
// 需要自己调节,外部导入的效果没有使用three 提供的好,每个建模软件都有不同的差别
// export const framePromise = new Promise<Group>((reslove, reject) => {
//     mtlLoader.loadAsync('/frame.mtl').then(materialCreator => {
//         //设置材质,最后加载模型
//         objLoeader.setMaterials(materialCreator)
//             .loadAsync('/frame.obj').then(group => {
//                 //抛出物体
//                 reslove(group)
//             }).catch(err => {
//                 reject(err)
//             })
//     }).catch(err => {
//         reject(err)
//     })
// })

//所以,这里不使用在建模中使用已经整合材质/贴图的模型,
// 使用three 的自己整合材质到模型上
// export const framePromise =objLoeader.loadAsync('/frame.obj');

// export const frameMaterial:MeshStandardMaterial=new MeshStandardMaterial({
//     map:frameColorTexture,  //颜色贴图
//     roughnessMap:frameRoughnessTexture, //粗糙贴图
//     // displacementMap:frameDispTexture,   //位移贴图,会影响网格顶点的位置,出现空隙
//     bumpMap:frameDispTexture,   //凹凸贴图,填补空隙
// })


// 优化代码,导出去时直接添加在app 中可以直接添加,
// 而不需要在其中使用多余的操作步骤
export const framePromise =new Promise<Mesh>((resolve,reject)=>{
    objLoeader.loadAsync('/frame.obj').then((group)=>{
        const frame:Mesh=group.children[0] as Mesh
        (frame.material as Material).dispose(); //清空原来的材质
        frame.material=new MeshStandardMaterial({
                map:frameColorTexture,  //颜色贴图
                roughnessMap:frameRoughnessTexture, //粗糙贴图
                // displacementMap:frameDispTexture,   //位移贴图,会影响网格顶点的位置,出现空隙
                bumpMap:frameDispTexture,   //凹凸贴图,填补空隙
            })
            
            group.position.x=40        
            group.position.y=45        
            group.position.z=20  
            group.rotation.y=Math.PI/180*-90      
            group.scale.set(2,2,2)
            resolve(frame)
    }).catch(err=>{
        reject(err)
    })
})


//再次优化
export const getFrame=async function():Promise<Mesh|null>{
    const group=await objLoeader.loadAsync('/frame.obj');
    if(group instanceof Group){
        //group 是 Group 类型
        const frame:Mesh=group.children[0] as Mesh
        frame.material=new MeshStandardMaterial({
            map:frameColorTexture,  //颜色贴图
            roughnessMap:frameRoughnessTexture, //粗糙贴图
            // displacementMap:frameDispTexture,   //位移贴图,会影响网格顶点的位置,出现空隙
            bumpMap:frameDispTexture,   //凹凸贴图,填补空隙
        })
        
        frame.position.x=40        
        frame.position.y=65        
        frame.position.z=-40  
        frame.rotation.y=-Math.PI/180*90    
        frame.scale.set(2,2,2)
        return frame
    }else{
        console.error(group)
        return null
    }
}
