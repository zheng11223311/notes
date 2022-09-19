export class TCanvasTextureEditor{
    // 与threejs 的材质,几何体,合并 进行类比
    
     canvas:HTMLCanvasElement

    constructor(width:number=512,height:number=512,bgColor:string='rgb(255,255,255)'){
        this.canvas=document.createElement('canvas')
        this.canvas.width=width
        this.canvas.height=height
        this.canvas.style.background=bgColor
    }
    draw(fun:(ctx:CanvasRenderingContext2D)=>void):this{
        const ctx=this.canvas.getContext('2d')
        if(ctx){
            fun(ctx)
            return this
        }else{
            console.warn('您的浏览器不支持 canvas 2d')
            return this
        }
    }

    // 预览
    preview():this{
        const canvas=this.canvas
        canvas.style.position='fixed'
        canvas.style.top='25%'
        canvas.style.left='25%'

        document.body.appendChild(this.canvas)
        return this
    }
}