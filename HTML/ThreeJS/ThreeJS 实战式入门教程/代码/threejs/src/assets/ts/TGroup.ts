import { framePromise } from './TLoadModel';
//  组,将多个物体组合成一个物体

import { Group, Mesh, MeshBasicMaterial, MeshStandardMaterial, PlaneBufferGeometry, Sprite, SpriteMaterial } from "three"
import { picturesTextureList, pictureTexture, tipsTexture, tipsTextureList } from "./TTextures"

// 引入标签配置清单
import picturesConfigure from "../json/pictures.json";





//因为建模模型导入是异步的,所以这里不能直接导入
// export const group:Group=new Group()


export const groupPromise = new Promise<Group>((resolve, reject) => {
    //创建一个组
    const group = new Group()
    // 创建平面相框
    // 长宽
    const photoPlaneG = new PlaneBufferGeometry(100, 20)
    const photoPlaneM = new MeshStandardMaterial({
        map: pictureTexture,     //使用贴图
    })
    const photoPlane: Mesh = new Mesh(photoPlaneG, photoPlaneM)
    // 缩放 xyz
    photoPlane.scale.set(0.2, 1, 0.5)
    photoPlane.rotation.y = Math.PI / 180 * 90



    // 将平面相框添加到组中
    group.add(photoPlane)

    // 创建标签提示
    // 长宽
    // const tipsG = new PlaneBufferGeometry(30, 10)
    // const tipsM = new MeshBasicMaterial({
    //     map: tipsTexture,     //使用canvas 贴图
    // })
    // const tips: Mesh = new Mesh(tipsG, tipsM)


    // 使用精灵物体代替标签
    // 精灵图自动看向相机,不用cpu 处理,放在gpu 中处理
    // 不用我们自己定义渲染朝向相机
    // 精灵物体固定好了骨架(边长为1的矩形),只需要使用材质就行,
    // three 提供了精灵材质
    // 精灵材质,拥有大部分和普通材质一样的属性
    const tips: Sprite = new Sprite(new SpriteMaterial({
        map: tipsTexture,
        // 让尺寸不随相机做衰减,保持原本大小
        sizeAttenuation: false,
        //以下两个参数修改为false,使精灵物体不会被其他物体遮挡
        depthWrite: false,
        depthTest: false,    //不进行深度测试
    }))


    tips.rotation.y = Math.PI / 180 * 90
    tips.position.y = -20
    tips.scale.set(0.16, 0.09, 1)
    group.add(tips)

    // 定义渲染之前的函数
    // 每次渲染之前让标签看向相机的方向
    // 即每次旋转位置,相机一直朝向你的位置
    // tips.onBeforeRender=(renderer,scene,camera)=>{
    //     tips.lookAt(camera.position)
    // }


    // 导入建模模型
    framePromise.then(frame => {
        // frame 加载完成后,也加入到组中
        group.add(frame)
        // 或写在一块 group.add(frame,photoPlane)

        group.position.y = 120
        group.position.z = 70
        resolve(group)
    }).catch(err => {
        reject(err)
    })
})

export const groupListPromise = new Promise<Group[]>((resolve, reject) => {
    
    // 导入建模模型
    framePromise.then(frame => {
        const groupList: Group[] = []
        // frame 加载完成后操作
        picturesConfigure.forEach((texture, i, arr) => {
            const pictureTexture = picturesTextureList[i]
            const tipsTexture = tipsTextureList[i]
            //创建一个组
            const group = new Group()
    
            // 创建图片
            // 长宽
            const pictureG = new PlaneBufferGeometry(100, 20)
            const pictureM = new MeshStandardMaterial({
                map: pictureTexture,     //使用贴图
            })
            const picture: Mesh = new Mesh(pictureG, pictureM)
            // 缩放 xyz
            picture.scale.set(0.2, 1, 0.5)
            picture.rotation.y = Math.PI / 180 * 90
            // 将图片添加到组中
            group.add(picture)
    
            // 创建标签提示
            // 长宽
            const tipsG = new PlaneBufferGeometry(30, 10)
            const tipsM = new MeshBasicMaterial({
                map: tipsTexture,     //使用canvas 贴图
            })
            const tips: Mesh = new Mesh(tipsG, tipsM)
            tips.rotation.y = Math.PI / 180 * 90
            tips.position.y = -20
            tips.scale.set(0.16, 0.09, 1)
            group.add(tips)
            
            // 克隆新的一份,参数 是否深度克隆
            const newFrame=frame.clone()
            group.add(newFrame)
            // 或写在一块 group.add(frame,photoPlane)
    
            group.position.y = 120
            group.position.z = 70
            groupList.push(group) 
            resolve(groupList)
        })
    
       
    }).catch(err => {
        reject(err)
    })
})