//  贴图文件

import { CanvasTexture, Texture, TextureLoader } from "three";
import { TCanvasTextureEditor } from "./TCanvasTextureEditor";
// 引入标签配置清单
import picturesConfigure from "../json/pictures.json";
console.log(picturesConfigure);

// 创建贴图加载器
// 实例化加载器
const textureLoader:TextureLoader=new TextureLoader()
// 加载图片到贴图中 /表示public 下
export const pictureTexture:Texture=textureLoader.load('/1.jpg')

export const frameColorTexture=textureLoader.load('/WoodFloor051_1K_Color.jpg')
// 引入粗糙纹理
export const frameRoughnessTexture=textureLoader.load('/WoodFloor051_1K_Roughness.jpg')

export const frameDispTexture=textureLoader.load('/WoodFloor051_1K_Displacement.jpg')

//用canvas 绘制的贴图
export const tipsTexture=new CanvasTexture(new TCanvasTextureEditor().draw((ctx)=>{
    ctx.fillStyle="red"
    ctx.fillRect(0,0,20,20)
    ctx.textAlign='center'
    ctx.textBaseline='middle'
    ctx.font="32px 微软雅黑"
    ctx.translate(256,256)
    ctx.scale(5,5)

    ctx.beginPath()
    ctx.fillText("作者:kieed",0,0) 
    ctx.closePath()

    ctx.beginPath()
    ctx.fillText("ID:64226886",0,42) 
    ctx.closePath()

    ctx.beginPath()
    ctx.fillText("时间:2017 年 8月4日",8,82) 
    ctx.closePath()
}).canvas)

export const picturesTextureList:Texture[]=[]
export const tipsTextureList:CanvasTexture[]=[]

picturesConfigure.forEach((elem)=>{
    picturesTextureList.push(textureLoader.load(elem.url))
    tipsTextureList.push(new CanvasTexture(new TCanvasTextureEditor().draw((ctx)=>{
        ctx.fillStyle="red"
        ctx.fillRect(0,0,20,20)
        ctx.textAlign='center'
        ctx.textBaseline='middle'
        ctx.font="32px 微软雅黑"
        ctx.translate(256,256)
        ctx.scale(5,5)
    
        ctx.beginPath()
        ctx.fillText(`作者:${elem.author}`,0,0) 
        ctx.closePath()
    
        ctx.beginPath()
        ctx.fillText(`ID:${elem.ID}`,0,42) 
        ctx.closePath()
    
        ctx.beginPath()
        ctx.fillText(`时间:${elem.date}`,8,82) 
        ctx.closePath()
    }).canvas)
    )
})

