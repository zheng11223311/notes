import { TextureLoader, Texture } from 'three';
// 纹理

const textureLoader:TextureLoader=new TextureLoader()

// 地板纹理
export const flooer:Texture=textureLoader.load('/img/2.jpg')
// 水纹理
export const water:Texture=textureLoader.load('/img/3.jpg')